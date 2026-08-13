package com.yyb.capacitor.savefile;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.widget.Toast;
import com.getcapacitor.JSObject;
import com.getcapacitor.PermissionState;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;
import com.getcapacitor.annotation.Permission;
import com.getcapacitor.annotation.PermissionCallback;
import com.luck.picture.lib.permissions.PermissionConfig;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

@CapacitorPlugin(name = "SaveFile", permissions = {@Permission(alias = "storage", strings = {PermissionConfig.WRITE_EXTERNAL_STORAGE})})
/* loaded from: classes.dex */
public class YybSaveFilePlugin extends Plugin {
    private static final String FILE_TYPE_AUDIO = "audio";
    private static final String FILE_TYPE_DOCUMENT = "document";
    private static final String FILE_TYPE_IMAGE = "image";
    private static final String FILE_TYPE_OTHER = "other";
    private static final String FILE_TYPE_VIDEO = "video";
    private static final long MIN_FREE_SPACE_BYTES = 10485760;
    private static final String SAVE_FILE_ROOT_DIR = "YYB";
    private static final String SOURCE_TYPE_BASE64 = "base64";
    private static final String SOURCE_TYPE_PATH = "path";
    private static final String SOURCE_TYPE_URL = "url";
    private static final String TAG = "YybSaveFilePlugin";
    private final ExecutorService ioExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.yyb.capacitor.savefile.YybSaveFilePlugin$$ExternalSyntheticLambda0
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return YybSaveFilePlugin.lambda$new$0(runnable);
        }
    });
    private final Handler mainHandler = new Handler(Looper.getMainLooper());

    static /* synthetic */ Thread lambda$new$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "yyb-savefile-io");
        thread.setDaemon(true);
        return thread;
    }

    @PluginMethod
    public void saveFile(PluginCall pluginCall) {
        try {
            String normalizeFileType = normalizeFileType(pluginCall.getString("fileType"));
            String normalizeSourceType = normalizeSourceType(pluginCall.getString("sourceType"));
            String string = pluginCall.getString("data");
            String string2 = pluginCall.getString("fileName");
            int i = 0;
            boolean equals = Boolean.TRUE.equals(pluginCall.getBoolean("overwrite", false));
            StringBuilder sb = new StringBuilder("saveFile: fileType=");
            sb.append(normalizeFileType);
            sb.append(", sourceType=");
            sb.append(normalizeSourceType);
            sb.append(", fileName=");
            sb.append(string2);
            sb.append(", overwrite=");
            sb.append(equals);
            sb.append(", dataLen=");
            if (string != null) {
                i = string.length();
            }
            sb.append(i);
            Log.i(TAG, sb.toString());
            if (normalizeFileType == null) {
                resolveFail(pluginCall, "invalid fileType, expect image/video/audio/document/other");
                return;
            }
            if (normalizeSourceType == null) {
                resolveFail(pluginCall, "invalid sourceType, expect url/base64/path");
                return;
            }
            if (TextUtils.isEmpty(string)) {
                resolveFail(pluginCall, "data is empty");
                return;
            }
            if (Build.VERSION.SDK_INT > 29 || getPermissionState("storage") == PermissionState.GRANTED) {
                doSaveFileAsync(normalizeFileType, normalizeSourceType, string, string2, equals, pluginCall);
                return;
            }
            Log.i(TAG, "saveFile: need WRITE_EXTERNAL_STORAGE, request now");
            pluginCall.setKeepAlive(true);
            this.bridge.saveCall(pluginCall);
            requestPermissionForAlias("storage", pluginCall, "onStoragePermissionResult");
        } catch (Exception e) {
            Log.w(TAG, "saveFile: exception", e);
            resolveFail(pluginCall, "exception: " + e.getMessage());
        }
    }

    @PermissionCallback
    private void onStoragePermissionResult(PluginCall pluginCall) {
        boolean z = getPermissionState("storage") == PermissionState.GRANTED;
        Log.i(TAG, "saveFile: request permission result granted=" + z);
        PluginCall savedCall = this.bridge.getSavedCall(pluginCall.getCallbackId());
        PluginCall pluginCall2 = savedCall == null ? pluginCall : savedCall;
        if (!z) {
            resolveFail(pluginCall2, "storage permission denied");
            this.bridge.releaseCall(pluginCall2);
        } else {
            doSaveFileAsync(normalizeFileType(pluginCall2.getString("fileType")), normalizeSourceType(pluginCall2.getString("sourceType")), pluginCall2.getString("data"), pluginCall2.getString("fileName"), Boolean.TRUE.equals(pluginCall2.getBoolean("overwrite", false)), pluginCall2);
        }
    }

    private void doSaveFileAsync(final String str, final String str2, final String str3, final String str4, final boolean z, final PluginCall pluginCall) {
        this.ioExecutor.execute(new Runnable() { // from class: com.yyb.capacitor.savefile.YybSaveFilePlugin$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                YybSaveFilePlugin.this.lambda$doSaveFileAsync$2(pluginCall, str, str4, str2, str3, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doSaveFileAsync$2(PluginCall pluginCall, String str, String str2, String str3, String str4, boolean z) {
        try {
            if (!hasEnoughFreeSpace()) {
                resolveFail(pluginCall, "insufficient storage space, need at least 10MB");
                return;
            }
            File ensureSaveFileDir = ensureSaveFileDir(str);
            if (ensureSaveFileDir == null) {
                resolveFail(pluginCall, "prepare target dir failed for " + str);
                return;
            }
            File resolveTargetFile = resolveTargetFile(ensureSaveFileDir, str2, str, str3, str4, z);
            Log.i(TAG, "saveFile: writing to " + resolveTargetFile.getAbsolutePath());
            if (SOURCE_TYPE_BASE64.equals(str3)) {
                writeBase64ToFile(str4, resolveTargetFile);
            } else if (SOURCE_TYPE_PATH.equals(str3)) {
                copyLocalPathToFile(str4, resolveTargetFile);
            } else {
                downloadUrlToFile(str4, resolveTargetFile);
            }
            scanMediaFile(getContext(), resolveTargetFile);
            final String absolutePath = resolveTargetFile.getAbsolutePath();
            this.mainHandler.post(new Runnable() { // from class: com.yyb.capacitor.savefile.YybSaveFilePlugin$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    YybSaveFilePlugin.this.lambda$doSaveFileAsync$1(absolutePath);
                }
            });
            JSObject jSObject = new JSObject();
            jSObject.put("code", 0);
            jSObject.put("errMsg", "");
            jSObject.put("filePath", resolveTargetFile.getAbsolutePath());
            jSObject.put("fileName", resolveTargetFile.getName());
            jSObject.put("size", resolveTargetFile.length());
            pluginCall.resolve(jSObject);
            this.bridge.releaseCall(pluginCall);
        } catch (Throwable th) {
            Log.w(TAG, "saveFile: failed, " + th.getClass().getSimpleName() + " msg=" + th.getMessage(), th);
            StringBuilder sb = new StringBuilder("save failed: ");
            sb.append(th.getMessage());
            resolveFail(pluginCall, sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doSaveFileAsync$1(String str) {
        try {
            Toast.makeText(getContext(), "文件已保存到：" + str, 1).show();
        } catch (Throwable unused) {
        }
    }

    private static String normalizeFileType(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.trim().toLowerCase();
        if ("image".equals(lowerCase) || "video".equals(lowerCase) || "audio".equals(lowerCase) || FILE_TYPE_DOCUMENT.equals(lowerCase) || FILE_TYPE_OTHER.equals(lowerCase)) {
            return lowerCase;
        }
        return null;
    }

    private static String normalizeSourceType(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.trim().toLowerCase();
        if (SOURCE_TYPE_URL.equals(lowerCase) || SOURCE_TYPE_BASE64.equals(lowerCase) || SOURCE_TYPE_PATH.equals(lowerCase)) {
            return lowerCase;
        }
        return null;
    }

    private static File ensureSaveFileDir(String str) {
        String str2;
        str.hashCode();
        switch (str) {
            case "audio":
                str2 = "Audios";
                break;
            case "image":
                str2 = "Images";
                break;
            case "video":
                str2 = "Videos";
                break;
            case "document":
                str2 = "Documents";
                break;
            default:
                str2 = "Others";
                break;
        }
        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        if (externalStoragePublicDirectory == null) {
            return null;
        }
        File file = new File(new File(externalStoragePublicDirectory, SAVE_FILE_ROOT_DIR), str2);
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        Log.w(TAG, "saveFile: mkdirs fail for " + file.getAbsolutePath());
        if (file.exists()) {
            return file;
        }
        return null;
    }

    private static File resolveTargetFile(File file, String str, String str2, String str3, String str4, boolean z) {
        String sb;
        String str5 = "";
        if (!TextUtils.isEmpty(str)) {
            sb = sanitizeFileName(str);
        } else {
            String guessExtension = guessExtension(str2, str3, str4);
            StringBuilder sb2 = new StringBuilder("yyb_");
            sb2.append(System.currentTimeMillis());
            sb2.append(TextUtils.isEmpty(guessExtension) ? "" : "." + guessExtension);
            sb = sb2.toString();
        }
        File file2 = new File(file, sb);
        if (z || !file2.exists()) {
            return file2;
        }
        int lastIndexOf = sb.lastIndexOf(46);
        if (lastIndexOf > 0) {
            String substring = sb.substring(0, lastIndexOf);
            str5 = sb.substring(lastIndexOf);
            sb = substring;
        }
        for (int i = 1; i < 1000; i++) {
            File file3 = new File(file, sb + "_" + i + str5);
            if (!file3.exists()) {
                return file3;
            }
        }
        return new File(file, sb + "_" + System.currentTimeMillis() + str5);
    }

    private static String sanitizeFileName(String str) {
        String trim = str.replace('/', '_').replace('\\', '_').trim();
        while (trim.startsWith(".")) {
            trim = trim.substring(1);
        }
        if (!TextUtils.isEmpty(trim)) {
            return trim;
        }
        return "yyb_" + System.currentTimeMillis();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007e, code lost:
    
        if (r3.equals("audio") == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String guessExtension(String str, String str2, String str3) {
        char c = 0;
        if (SOURCE_TYPE_URL.equals(str2) && !TextUtils.isEmpty(str3)) {
            int indexOf = str3.indexOf(63);
            if (indexOf > 0) {
                str3 = str3.substring(0, indexOf);
            }
            int lastIndexOf = str3.lastIndexOf(47);
            if (lastIndexOf >= 0) {
                str3 = str3.substring(lastIndexOf + 1);
            }
            int lastIndexOf2 = str3.lastIndexOf(46);
            if (lastIndexOf2 > 0 && lastIndexOf2 < str3.length() - 1 && lastIndexOf2 >= str3.length() - 6) {
                return str3.substring(lastIndexOf2 + 1).toLowerCase();
            }
        }
        str.hashCode();
        switch (str.hashCode()) {
            case 93166550:
                break;
            case 100313435:
                if (str.equals("image")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 112202875:
                if (str.equals("video")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 861720859:
                if (str.equals(FILE_TYPE_DOCUMENT)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return "mp3";
            case 1:
                return "jpg";
            case 2:
                return "mp4";
            case 3:
                return "pdf";
            default:
                return "";
        }
    }

    private static void writeBase64ToFile(String str, File file) throws Exception {
        int indexOf = str.indexOf("base64,");
        if (indexOf >= 0) {
            str = str.substring(indexOf + 7);
        }
        byte[] decode = Base64.decode(str, 2);
        if (decode == null) {
            throw new IllegalArgumentException("base64 decode returns null");
        }
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                fileOutputStream2.write(decode);
                fileOutputStream2.flush();
                try {
                    fileOutputStream2.close();
                } catch (Exception unused) {
                }
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void copyLocalPathToFile(String str, File file) throws Exception {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        Throwable th;
        File file2 = new File(str);
        if (!file2.exists() || !file2.isFile()) {
            throw new IllegalArgumentException("source path not exist: " + str);
        }
        try {
            fileInputStream = new FileInputStream(file2);
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read <= 0) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, read);
                        }
                    }
                    fileOutputStream.flush();
                    try {
                        fileOutputStream.close();
                    } catch (Exception unused) {
                    }
                    try {
                        fileInputStream.close();
                    } catch (Exception unused2) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception unused3) {
                        }
                    }
                    if (fileInputStream == null) {
                        try {
                            fileInputStream.close();
                            throw th;
                        } catch (Exception unused4) {
                            throw th;
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
                th = th;
                if (fileOutputStream != null) {
                }
                if (fileInputStream == null) {
                }
            }
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
            fileInputStream = null;
        }
    }

    private static void downloadUrlToFile(String str, File file) throws Exception {
        InputStream inputStream;
        HttpURLConnection httpURLConnection;
        FileOutputStream fileOutputStream = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setReadTimeout(30000);
                httpURLConnection.setInstanceFollowRedirects(true);
                httpURLConnection.setRequestMethod("GET");
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 200) {
                    throw new IllegalStateException("http code=" + responseCode + ", url=" + str);
                }
                inputStream = httpURLConnection.getInputStream();
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    try {
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            } else {
                                fileOutputStream2.write(bArr, 0, read);
                            }
                        }
                        fileOutputStream2.flush();
                        try {
                            fileOutputStream2.close();
                        } catch (Exception unused) {
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                        if (httpURLConnection != null) {
                            try {
                                httpURLConnection.disconnect();
                            } catch (Exception unused3) {
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Exception unused4) {
                            }
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception unused5) {
                            }
                        }
                        if (httpURLConnection != null) {
                            try {
                                httpURLConnection.disconnect();
                                throw th;
                            } catch (Exception unused6) {
                                throw th;
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            inputStream = null;
            httpURLConnection = null;
        }
    }

    private static void scanMediaFile(Context context, File file) {
        if (context == null || file == null) {
            return;
        }
        try {
            if (file.exists()) {
                MediaScannerConnection.scanFile(context.getApplicationContext(), new String[]{file.getAbsolutePath()}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.yyb.capacitor.savefile.YybSaveFilePlugin$$ExternalSyntheticLambda2
                    @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                    public final void onScanCompleted(String str, Uri uri) {
                        Log.i(YybSaveFilePlugin.TAG, "saveFile: media scan completed, path=" + str + ", uri=" + uri);
                    }
                });
            }
        } catch (Throwable th) {
            Log.w(TAG, "saveFile: media scan fail, " + th.getMessage());
        }
    }

    private static boolean hasEnoughFreeSpace() {
        try {
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
            if (externalStoragePublicDirectory == null) {
                return true;
            }
            long availableBytes = new StatFs(externalStoragePublicDirectory.getAbsolutePath()).getAvailableBytes();
            Log.i(TAG, "saveFile: free space=" + availableBytes);
            return availableBytes >= MIN_FREE_SPACE_BYTES;
        } catch (Throwable th) {
            Log.w(TAG, "saveFile: check free space fail, " + th.getMessage());
            return true;
        }
    }

    private void resolveFail(PluginCall pluginCall, String str) {
        JSObject jSObject = new JSObject();
        jSObject.put("code", -1);
        if (str == null) {
            str = "";
        }
        jSObject.put("errMsg", str);
        try {
            pluginCall.resolve(jSObject);
        } catch (Throwable unused) {
        }
    }
}
