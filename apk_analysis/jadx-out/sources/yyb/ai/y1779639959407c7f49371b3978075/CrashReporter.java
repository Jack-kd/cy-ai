package yyb.ai.y1779639959407c7f49371b3978075;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Process;
import android.provider.Settings;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.location.LocationRequestCompat;
import androidx.core.os.EnvironmentCompat;
import com.getcapacitor.Bridge$$ExternalSyntheticApiModelOutline0;
import com.google.gson.Gson;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import yyb.ai.y1779639959407c7f49371b3978075.AnrWatchDog;

/* loaded from: classes3.dex */
public class CrashReporter {
    private static final long DEDUP_WINDOW_MS = 10000;
    private static final String KEY_LAST_REPORTED_ANR_TS = "last_reported_anr_ts";
    private static final int MAX_ALL_STACK_LEN = 32768;
    private static final int MAX_MSG_LEN = 512;
    private static final int MAX_PENDING_FILES = 10;
    private static final int MAX_STACK_LEN = 16384;
    private static final String PENDING_DIR_NAME = "aiappshell_crash_pending";
    private static final String REPORT_URL = "https://yybadaccess.3g.qq.com/v3/gen_app_report_data";
    private static final String SP_NAME = "aiappshell_crash";
    private static final String TAG = "CrashReporter";
    private static final int TIME_OUT_MS = 3000;
    private static volatile Context sAppContext;
    private static volatile Thread.UncaughtExceptionHandler sPrevHandler;
    private static volatile AnrWatchDog sWatchDog;
    private static final MediaType JSON = MediaType.parse("application/json; charset=utf-8");
    private static final Gson GSON = new Gson();
    private static final SecureRandom RANDOM = new SecureRandom();
    private static final int[] MIX_LEFT = {19, 41, 7};
    private static final int[] MIX_RIGHT = {88, 121, 44};
    private static final int[] SLOT_A = {114, 64, 88, 63, 28, 66, 76};
    private static final int[] SLOT_B = {120, 77, 116, 7, 9, 92, 114};
    private static final int[] SLOT_C = {38, 30, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, 63, 24, 95, 43, 16};
    private static final int[] SLOT_D = {36, 27, 54, 32, 17, 88, 118, 16};
    private static final int[] SLOT_E = {43, 74, TypedValues.TYPE_TARGET, 61, 78, 31, 112, 30};
    private static final AtomicBoolean sInstalled = new AtomicBoolean(false);
    private static final AtomicBoolean sFlushTriggered = new AtomicBoolean(false);
    private static Handler sMainHandler = new Handler();

    public static class CrashItem {
        public Long crash_block_duration_ms;
        public String crash_exception_message;
        public long crash_occur_time_ms;
        public String crash_process_name;
        public int crash_report_retry_count;
        public String crash_source;
        public String crash_thread_name;
        public String crash_thread_stack;
        public String crash_type;
    }

    public static class Device {
        public String android_id;
        public String android_version;
        public String brand;
        public String model;
        public int platform_bit;
    }

    public static class ReportReq {
        public Device device;
        public int event_type;
        public Map<String, Object> ext_data;
        public String package_name;
        public long version_code;
        public String version_name;
    }

    private static class Business {
        final String id;
        final String key;

        Business(String str, String str2) {
            this.id = str;
            this.key = str2;
        }
    }

    public static void install(Context context) {
        if (context != null && sInstalled.compareAndSet(false, true)) {
            try {
                sAppContext = context.getApplicationContext();
                if (isMainProcess(sAppContext)) {
                    sPrevHandler = Thread.getDefaultUncaughtExceptionHandler();
                    Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: yyb.ai.y1779639959407c7f49371b3978075.CrashReporter.1
                        @Override // java.lang.Thread.UncaughtExceptionHandler
                        public void uncaughtException(Thread thread, Throwable th) {
                            CrashReporter.handleJavaCrash(thread, th);
                        }
                    });
                    sWatchDog = new AnrWatchDog(new AnrWatchDog.Listener() { // from class: yyb.ai.y1779639959407c7f49371b3978075.CrashReporter.2
                        @Override // yyb.ai.y1779639959407c7f49371b3978075.AnrWatchDog.Listener
                        public void onAnrDetected(String str, String str2, long j) {
                            CrashReporter.handleAnr("watchdog", System.currentTimeMillis(), j, str, str2);
                        }
                    });
                    sWatchDog.start();
                }
            } catch (Throwable th) {
                Log.w(TAG, "install failed", th);
            }
        }
    }

    public static void flushPending(Context context) {
        if (context != null && sFlushTriggered.compareAndSet(false, true)) {
            final Context applicationContext = context.getApplicationContext();
            Thread thread = new Thread("CrashReporter-flush") { // from class: yyb.ai.y1779639959407c7f49371b3978075.CrashReporter.3
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        CrashReporter.doFlush(applicationContext);
                    } catch (Throwable th) {
                        Log.w(CrashReporter.TAG, "flushPending failed", th);
                    }
                }
            };
            thread.setDaemon(true);
            thread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleJavaCrash(Thread thread, Throwable th) {
        int myPid;
        try {
            try {
                CrashItem crashItem = new CrashItem();
                crashItem.crash_type = "java";
                crashItem.crash_source = "uncaught_handler";
                crashItem.crash_occur_time_ms = System.currentTimeMillis();
                crashItem.crash_report_retry_count = 0;
                crashItem.crash_thread_name = thread != null ? thread.getName() : EnvironmentCompat.MEDIA_UNKNOWN;
                crashItem.crash_process_name = getCurrentProcessName(sAppContext);
                crashItem.crash_exception_message = truncate((th == null || th.getMessage() == null) ? "" : th.getMessage(), 512);
                crashItem.crash_thread_stack = truncate(stackToString(th), 16384);
                crashItem.crash_block_duration_ms = null;
                if (!attemptRealtimeReport(sAppContext, crashItem)) {
                    writePendingFile(sAppContext, crashItem);
                }
            } catch (Throwable unused) {
                if (sPrevHandler == null) {
                    myPid = Process.myPid();
                }
            }
            if (sPrevHandler == null) {
                myPid = Process.myPid();
                Process.killProcess(myPid);
                System.exit(10);
                return;
            }
            sPrevHandler.uncaughtException(thread, th);
        } catch (Throwable unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleAnr(String str, long j, long j2, String str2, String str3) {
        try {
            CrashItem crashItem = new CrashItem();
            crashItem.crash_type = "anr";
            crashItem.crash_source = str;
            crashItem.crash_occur_time_ms = j;
            crashItem.crash_report_retry_count = 0;
            crashItem.crash_thread_name = "main";
            crashItem.crash_process_name = getCurrentProcessName(sAppContext);
            crashItem.crash_block_duration_ms = Long.valueOf(j2);
            if (str2 == null || str2.length() <= 0) {
                str2 = str3;
            }
            crashItem.crash_thread_stack = truncate(str2, 16384);
            crashItem.crash_exception_message = "";
            if (attemptRealtimeReport(sAppContext, crashItem)) {
                return;
            }
            writePendingFile(sAppContext, crashItem);
        } catch (Throwable th) {
            Log.w(TAG, "handleAnr failed", th);
        }
    }

    private static void writePendingFile(Context context, CrashItem crashItem) {
        if (context == null) {
            return;
        }
        try {
            File pendingDir = getPendingDir(context);
            if (pendingDir == null) {
                return;
            }
            trimPendingDirIfNeeded(pendingDir);
            String str = crashItem.crash_occur_time_ms + "_" + crashItem.crash_type + "_" + crashItem.crash_source + ".log";
            File file = new File(pendingDir, str);
            File file2 = new File(pendingDir, str + ".tmp");
            String json = GSON.toJson(crashItem);
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    fileOutputStream2.write(json.getBytes(StandardCharsets.UTF_8));
                    fileOutputStream2.flush();
                    fileOutputStream2.getFD().sync();
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused) {
                    }
                    if (file2.renameTo(file)) {
                        return;
                    }
                    file2.delete();
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            Log.w(TAG, "writePendingFile failed", th3);
        }
    }

    private static void trimPendingDirIfNeeded(File file) {
        try {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length >= 10) {
                Arrays.sort(listFiles, new Comparator<File>() { // from class: yyb.ai.y1779639959407c7f49371b3978075.CrashReporter.4
                    @Override // java.util.Comparator
                    public int compare(File file2, File file3) {
                        return Long.compare(file2.lastModified(), file3.lastModified());
                    }
                });
                int length = listFiles.length - 9;
                for (int i = 0; i < length; i++) {
                    if (i >= listFiles.length) {
                        return;
                    }
                    listFiles[i].delete();
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void doFlush(Context context) {
        File pendingDir = getPendingDir(context);
        if (pendingDir == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        File[] listFiles = pendingDir.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.getName().endsWith(".log")) {
                    try {
                        CrashItem crashItem = (CrashItem) GSON.fromJson(readFile(file), CrashItem.class);
                        if (crashItem != null) {
                            arrayList.add(crashItem);
                            arrayList2.add(file);
                        } else {
                            file.delete();
                        }
                    } catch (Throwable unused) {
                        file.delete();
                    }
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                Iterator<CrashItem> it = collectSystemAnr(context).iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next());
                    arrayList2.add(null);
                }
            } catch (Throwable th) {
                Log.w(TAG, "collectSystemAnr failed", th);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        dedupAnrInPlace(arrayList, arrayList2);
        for (int i = 0; i < arrayList.size(); i++) {
            reportSingle(context, (CrashItem) arrayList.get(i), (File) arrayList2.get(i));
        }
    }

    private static List<CrashItem> collectSystemAnr(Context context) {
        ActivityManager activityManager;
        List historicalProcessExitReasons;
        int reason;
        long timestamp;
        String processName;
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT < 30 || (activityManager = (ActivityManager) context.getSystemService("activity")) == null) {
            return arrayList;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(SP_NAME, 0);
        long j = sharedPreferences.getLong(KEY_LAST_REPORTED_ANR_TS, 0L);
        historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(context.getPackageName(), 0, 10);
        if (historicalProcessExitReasons == null) {
            return arrayList;
        }
        Iterator it = historicalProcessExitReasons.iterator();
        long j2 = j;
        while (it.hasNext()) {
            ApplicationExitInfo m = Bridge$$ExternalSyntheticApiModelOutline0.m(it.next());
            reason = m.getReason();
            if (reason == 6) {
                timestamp = m.getTimestamp();
                if (timestamp > j) {
                    CrashItem crashItem = new CrashItem();
                    crashItem.crash_type = "anr";
                    crashItem.crash_source = "system_exit";
                    crashItem.crash_occur_time_ms = timestamp;
                    crashItem.crash_report_retry_count = 0;
                    crashItem.crash_thread_name = "main";
                    processName = m.getProcessName();
                    crashItem.crash_process_name = processName;
                    crashItem.crash_block_duration_ms = 0L;
                    crashItem.crash_thread_stack = truncate(readTraceInputStream(m), 32768);
                    crashItem.crash_exception_message = "";
                    arrayList.add(crashItem);
                    if (timestamp > j2) {
                        j2 = timestamp;
                    }
                }
            }
        }
        if (j2 > j) {
            sharedPreferences.edit().putLong(KEY_LAST_REPORTED_ANR_TS, j2).apply();
        }
        return arrayList;
    }

    private static String readTraceInputStream(ApplicationExitInfo applicationExitInfo) {
        InputStream inputStream;
        if (Build.VERSION.SDK_INT < 30) {
            return "";
        }
        try {
            inputStream = applicationExitInfo.getTraceInputStream();
            if (inputStream == null) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                return "";
            }
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
                StringBuilder sb = new StringBuilder(8192);
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                    sb.append('\n');
                    if (sb.length() > 32768) {
                        sb.append("...(truncated)\n");
                        break;
                    }
                }
                String sb2 = sb.toString();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                return sb2;
            } catch (Throwable unused3) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused4) {
                    }
                }
                return "";
            }
        } catch (Throwable unused5) {
            inputStream = null;
        }
    }

    private static void dedupAnrInPlace(List<CrashItem> list, List<File> list2) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (CrashItem crashItem : list) {
            if ("anr".equals(crashItem.crash_type) && "system_exit".equals(crashItem.crash_source)) {
                arrayList.add(Long.valueOf(crashItem.crash_occur_time_ms));
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            CrashItem crashItem2 = list.get(size);
            if ("anr".equals(crashItem2.crash_type) && "watchdog".equals(crashItem2.crash_source)) {
                Iterator it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (Math.abs(((Long) it.next()).longValue() - crashItem2.crash_occur_time_ms) <= DEDUP_WINDOW_MS) {
                        list.remove(size);
                        File remove = list2.remove(size);
                        if (remove != null) {
                            try {
                                remove.delete();
                            } catch (Throwable unused) {
                            }
                        }
                    }
                }
            }
        }
    }

    private static boolean attemptRealtimeReport(Context context, CrashItem crashItem) {
        if (context != null && crashItem != null) {
            try {
                ReportReq reportReq = new ReportReq();
                reportReq.package_name = context.getPackageName();
                reportReq.version_code = getVersionCode(context);
                reportReq.version_name = getVersionName(context);
                reportReq.device = buildDevice(context);
                reportReq.event_type = 2;
                reportReq.ext_data = new HashMap();
                reportReq.ext_data.put("crash_type", crashItem.crash_type);
                reportReq.ext_data.put("crash_source", crashItem.crash_source);
                reportReq.ext_data.put("crash_occur_time_ms", Long.valueOf(crashItem.crash_occur_time_ms));
                reportReq.ext_data.put("crash_report_retry_count", Integer.valueOf(crashItem.crash_report_retry_count));
                reportReq.ext_data.put("crash_thread_name", crashItem.crash_thread_name);
                reportReq.ext_data.put("crash_process_name", crashItem.crash_process_name);
                reportReq.ext_data.put("crash_thread_stack", crashItem.crash_thread_stack);
                reportReq.ext_data.put("crash_exception_message", crashItem.crash_exception_message);
                reportReq.ext_data.put("crash_block_duration_ms", crashItem.crash_block_duration_ms);
                String json = GSON.toJson(reportReq);
                Business buildBusiness = buildBusiness();
                long currentTimeMillis = System.currentTimeMillis();
                SecureRandom secureRandom = RANDOM;
                long m = ApkOpenChecker$$ExternalSyntheticBackport1.m(secureRandom.nextInt());
                Response execute = new OkHttpClient.Builder().connectTimeout(1500L, TimeUnit.MILLISECONDS).readTimeout(1500L, TimeUnit.MILLISECONDS).build().newCall(new Request.Builder().url(REPORT_URL).addHeader("Content-Type", "application/json").addHeader("Ual-Access-Businessid", buildBusiness.id).addHeader("Ual-Access-Nonce", String.valueOf(m)).addHeader("Ual-Access-Timestamp", String.valueOf(currentTimeMillis)).addHeader("Ual-Access-Signature", md5Lower(json + currentTimeMillis + buildBusiness.key + m)).addHeader("Ual-Access-Requestid", currentTimeMillis + String.format("%06d", Integer.valueOf(secureRandom.nextInt(1000000)))).post(RequestBody.create(json, JSON)).build()).execute();
                try {
                    if (execute.isSuccessful()) {
                        Log.d(TAG, "实时上报成功");
                        return true;
                    }
                    Log.w(TAG, "实时上报失败, code=" + execute.code());
                    return false;
                } finally {
                    execute.close();
                }
            } catch (Throwable th) {
                Log.w(TAG, "实时上报异常", th);
            }
        }
        return false;
    }

    private static void reportSingle(Context context, CrashItem crashItem, final File file) {
        try {
            ReportReq reportReq = new ReportReq();
            reportReq.package_name = context.getPackageName();
            reportReq.version_code = getVersionCode(context);
            reportReq.version_name = getVersionName(context);
            reportReq.device = buildDevice(context);
            reportReq.event_type = 2;
            reportReq.ext_data = new HashMap();
            reportReq.ext_data.put("crash_type", crashItem.crash_type);
            reportReq.ext_data.put("crash_source", crashItem.crash_source);
            reportReq.ext_data.put("crash_occur_time_ms", Long.valueOf(crashItem.crash_occur_time_ms));
            reportReq.ext_data.put("crash_report_retry_count", Integer.valueOf(crashItem.crash_report_retry_count));
            reportReq.ext_data.put("crash_thread_name", crashItem.crash_thread_name);
            reportReq.ext_data.put("crash_process_name", crashItem.crash_process_name);
            reportReq.ext_data.put("crash_thread_stack", crashItem.crash_thread_stack);
            reportReq.ext_data.put("crash_exception_message", crashItem.crash_exception_message);
            reportReq.ext_data.put("crash_block_duration_ms", crashItem.crash_block_duration_ms);
            String json = GSON.toJson(reportReq);
            Business buildBusiness = buildBusiness();
            long currentTimeMillis = System.currentTimeMillis();
            SecureRandom secureRandom = RANDOM;
            long m = ApkOpenChecker$$ExternalSyntheticBackport1.m(secureRandom.nextInt());
            new OkHttpClient.Builder().connectTimeout(3000L, TimeUnit.MILLISECONDS).readTimeout(3000L, TimeUnit.MILLISECONDS).build().newCall(new Request.Builder().url(REPORT_URL).addHeader("Content-Type", "application/json").addHeader("Ual-Access-Businessid", buildBusiness.id).addHeader("Ual-Access-Nonce", String.valueOf(m)).addHeader("Ual-Access-Timestamp", String.valueOf(currentTimeMillis)).addHeader("Ual-Access-Signature", md5Lower(json + currentTimeMillis + buildBusiness.key + m)).addHeader("Ual-Access-Requestid", currentTimeMillis + String.format("%06d", Integer.valueOf(secureRandom.nextInt(1000000)))).post(RequestBody.create(json, JSON)).build()).enqueue(new Callback() { // from class: yyb.ai.y1779639959407c7f49371b3978075.CrashReporter.5
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    CrashReporter.deleteSilently(file);
                    Log.w(CrashReporter.TAG, "reportSingle failed", iOException);
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) {
                    try {
                        response.close();
                    } catch (Throwable unused) {
                    }
                    if (response.isSuccessful()) {
                        Log.d(CrashReporter.TAG, "reportSingle success");
                    } else {
                        Log.w(CrashReporter.TAG, "reportSingle failed, code=" + response.code());
                    }
                    CrashReporter.deleteSilently(file);
                }
            });
        } catch (Throwable unused) {
            deleteSilently(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void deleteSilently(File file) {
        if (file == null) {
            return;
        }
        try {
            file.delete();
        } catch (Throwable unused) {
        }
    }

    private static Device buildDevice(Context context) {
        Device device = new Device();
        device.android_id = getDeviceId(context);
        device.android_version = getAndroidVersion();
        device.brand = getDeviceBrand();
        device.model = getDeviceModel();
        device.platform_bit = getPlatformBit();
        return device;
    }

    private static String getDeviceId(Context context) {
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            return string == null ? "" : string;
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String getDeviceBrand() {
        return Build.BRAND == null ? EnvironmentCompat.MEDIA_UNKNOWN : Build.BRAND;
    }

    private static String getDeviceModel() {
        return Build.MODEL == null ? EnvironmentCompat.MEDIA_UNKNOWN : Build.MODEL;
    }

    private static String getAndroidVersion() {
        return Build.VERSION.RELEASE == null ? EnvironmentCompat.MEDIA_UNKNOWN : Build.VERSION.RELEASE;
    }

    private static int getPlatformBit() {
        try {
            String property = System.getProperty("os.arch");
            if (property == null) {
                return 0;
            }
            return property.contains("64") ? 2 : 1;
        } catch (Throwable unused) {
            return 0;
        }
    }

    private static long getVersionCode(Context context) {
        PackageInfo packageInfo;
        long longVersionCode;
        PackageManager.PackageInfoFlags of;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (Build.VERSION.SDK_INT >= 33) {
                String packageName = context.getPackageName();
                of = PackageManager.PackageInfoFlags.of(0L);
                packageInfo = packageManager.getPackageInfo(packageName, of);
            } else {
                packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            }
            if (Build.VERSION.SDK_INT >= 28) {
                longVersionCode = packageInfo.getLongVersionCode();
                return longVersionCode;
            }
            return packageInfo.versionCode;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    private static String getVersionName(Context context) {
        PackageInfo packageInfo;
        PackageManager.PackageInfoFlags of;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (Build.VERSION.SDK_INT >= 33) {
                String packageName = context.getPackageName();
                of = PackageManager.PackageInfoFlags.of(0L);
                packageInfo = packageManager.getPackageInfo(packageName, of);
            } else {
                packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            }
            return packageInfo.versionName == null ? EnvironmentCompat.MEDIA_UNKNOWN : packageInfo.versionName;
        } catch (Throwable unused) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    private static Business buildBusiness() {
        return new Business(join(fold(SLOT_A), flip(fold(SLOT_B))), join(fold(SLOT_C), flip(fold(SLOT_D)), fold(SLOT_E)));
    }

    private static String fold(int[] iArr) {
        int[] mixedMask = mixedMask();
        char[] cArr = new char[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            cArr[i] = (char) (iArr[i] ^ mixedMask[i % mixedMask.length]);
        }
        return new String(cArr);
    }

    private static int[] mixedMask() {
        int[] iArr = MIX_LEFT;
        int length = iArr.length;
        int[] iArr2 = MIX_RIGHT;
        int[] iArr3 = new int[length + iArr2.length];
        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
        return iArr3;
    }

    private static String flip(String str) {
        return new StringBuilder(str).reverse().toString();
    }

    private static String join(String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            sb.append(str);
        }
        return sb.toString();
    }

    private static String md5Lower(String str) throws Exception {
        byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes(StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder();
        for (byte b : digest) {
            sb.append(String.format("%02x", Byte.valueOf(b)));
        }
        return sb.toString();
    }

    private static File getPendingDir(Context context) {
        try {
            File file = new File(context.getFilesDir(), PENDING_DIR_NAME);
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    return null;
                }
            }
            return file;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String readFile(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            int min = (int) Math.min(file.length(), 131072L);
            byte[] bArr = new byte[min];
            int i = 0;
            while (i < min) {
                int read = fileInputStream.read(bArr, i, min - i);
                if (read <= 0) {
                    break;
                }
                i += read;
            }
            return new String(bArr, 0, i, StandardCharsets.UTF_8);
        } finally {
            try {
                fileInputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    private static String stackToString(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter(2048);
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            th.printStackTrace(printWriter);
            printWriter.flush();
            printWriter.close();
            return stringWriter.toString();
        } catch (Throwable th2) {
            printWriter.flush();
            printWriter.close();
            throw th2;
        }
    }

    private static String truncate(String str, int i) {
        if (str == null) {
            return "";
        }
        if (str.length() <= i) {
            return str;
        }
        return str.substring(0, i) + "\n...(truncated)";
    }

    private static boolean isMainProcess(Context context) {
        try {
            String packageName = context.getPackageName();
            String currentProcessName = getCurrentProcessName(context);
            if (packageName != null) {
                if (packageName.equals(currentProcessName)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable unused) {
            return true;
        }
    }

    private static String getCurrentProcessName(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            int myPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == myPid) {
                        return runningAppProcessInfo.processName;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return context.getPackageName();
    }
}
