package com.mycompany.plugins.mediapicker;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import com.getcapacitor.Bridge;
import com.getcapacitor.JSArray;
import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;
import com.getcapacitor.annotation.Permission;
import com.getcapacitor.annotation.PermissionCallback;
import com.luck.picture.lib.basic.PictureSelector;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.SelectMimeType;
import com.luck.picture.lib.config.SelectorConfig;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.interfaces.OnResultCallbackListener;
import com.luck.picture.lib.interfaces.OnSelectLimitTipsListener;
import com.luck.picture.lib.permissions.PermissionConfig;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;

@CapacitorPlugin(name = "MediaPicker", permissions = {@Permission(alias = "photos", strings = {PermissionConfig.READ_MEDIA_IMAGES}), @Permission(alias = PictureMimeType.MIME_TYPE_PREFIX_VIDEO, strings = {PermissionConfig.READ_MEDIA_VIDEO}), @Permission(alias = "storage", strings = {PermissionConfig.READ_EXTERNAL_STORAGE})})
/* loaded from: classes.dex */
public class CapacitorMediaPickerPlugin extends Plugin {
    private String savedCallId;

    @PluginMethod
    public void pickMedia(PluginCall pluginCall) {
        this.bridge.saveCall(pluginCall);
        this.savedCallId = pluginCall.getCallbackId();
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z = ContextCompat.checkSelfPermission(getContext(), PermissionConfig.READ_MEDIA_IMAGES) == 0;
            boolean z2 = ContextCompat.checkSelfPermission(getContext(), PermissionConfig.READ_MEDIA_VIDEO) == 0;
            if (!z) {
                requestPermissionForAlias("photos", pluginCall, "handlePermissionResult");
                return;
            } else if (!z2) {
                requestPermissionForAlias(PictureMimeType.MIME_TYPE_PREFIX_VIDEO, pluginCall, "handlePermissionResult");
                return;
            }
        } else if (ContextCompat.checkSelfPermission(getContext(), PermissionConfig.READ_EXTERNAL_STORAGE) != 0) {
            requestPermissionForAlias("storage", pluginCall, "handlePermissionResult");
            return;
        }
        launchMediaPicker(pluginCall);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
    
        if (r1 != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
    
        launchMediaPicker(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0040, code lost:
    
        if (androidx.core.content.ContextCompat.checkSelfPermission(getContext(), com.luck.picture.lib.permissions.PermissionConfig.READ_EXTERNAL_STORAGE) == 0) goto L21;
     */
    @PermissionCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void handlePermissionResult(PluginCall pluginCall) {
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z = ContextCompat.checkSelfPermission(getContext(), PermissionConfig.READ_MEDIA_IMAGES) == 0;
            boolean z2 = ContextCompat.checkSelfPermission(getContext(), PermissionConfig.READ_MEDIA_VIDEO) == 0;
            if (z && !z2) {
                requestPermissionForAlias(PictureMimeType.MIME_TYPE_PREFIX_VIDEO, pluginCall, "handlePermissionResult");
            } else {
                if (z) {
                }
                pluginCall.reject("Photo library access denied. Please grant permission in Settings.");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void launchMediaPicker(PluginCall pluginCall) {
        int ofImage;
        String str;
        boolean z;
        final String str2;
        int intValue = pluginCall.getInt("maxCount", 9).intValue();
        String string = pluginCall.getString("mediaType", "all");
        string.hashCode();
        if (string.equals(PictureMimeType.MIME_TYPE_PREFIX_IMAGE)) {
            ofImage = SelectMimeType.ofImage();
            str = "图片";
        } else if (string.equals(PictureMimeType.MIME_TYPE_PREFIX_VIDEO)) {
            ofImage = SelectMimeType.ofVideo();
            str = "视频";
        } else {
            ofImage = SelectMimeType.ofAll();
            str = "图片和视频";
            z = true;
            string.hashCode();
            if (!string.equals(PictureMimeType.MIME_TYPE_PREFIX_IMAGE)) {
                str2 = "最多只能选择" + intValue + "张图片";
            } else if (string.equals(PictureMimeType.MIME_TYPE_PREFIX_VIDEO)) {
                str2 = "最多只能选择" + intValue + "个视频";
            } else {
                str2 = "最多只能选择" + intValue + "个文件";
            }
            PictureSelector.create(getActivity()).openGallery(ofImage).setImageEngine(GlideEngine.createGlideEngine()).setMaxSelectNum(intValue).setMaxVideoSelectNum(intValue).setMinSelectNum(0).setMinVideoSelectNum(0).isWithSelectVideoImage(z).isDisplayCamera(false).isOriginalControl(true).setDefaultAlbumName(str).isPageStrategy(true).isPageSyncAlbumCount(true).setSelectionMode(intValue != 1 ? 2 : 1).setSelectLimitTipsListener(new OnSelectLimitTipsListener() { // from class: com.mycompany.plugins.mediapicker.CapacitorMediaPickerPlugin.2
                @Override // com.luck.picture.lib.interfaces.OnSelectLimitTipsListener
                public boolean onSelectLimitTips(Context context, LocalMedia localMedia, SelectorConfig selectorConfig, int i) {
                    if (i != 4 && i != 6) {
                        return false;
                    }
                    Toast.makeText(context, str2, 0).show();
                    return true;
                }
            }).forResult(new OnResultCallbackListener<LocalMedia>() { // from class: com.mycompany.plugins.mediapicker.CapacitorMediaPickerPlugin.1
                @Override // com.luck.picture.lib.interfaces.OnResultCallbackListener
                public void onResult(ArrayList<LocalMedia> arrayList) {
                    CapacitorMediaPickerPlugin.this.handleMediaResult(arrayList);
                }

                @Override // com.luck.picture.lib.interfaces.OnResultCallbackListener
                public void onCancel() {
                    PluginCall savedCall = CapacitorMediaPickerPlugin.this.bridge.getSavedCall(CapacitorMediaPickerPlugin.this.savedCallId);
                    if (savedCall != null) {
                        savedCall.reject("User cancelled");
                        CapacitorMediaPickerPlugin.this.bridge.releaseCall(savedCall);
                    }
                }
            });
        }
        z = false;
        string.hashCode();
        if (!string.equals(PictureMimeType.MIME_TYPE_PREFIX_IMAGE)) {
        }
        PictureSelector.create(getActivity()).openGallery(ofImage).setImageEngine(GlideEngine.createGlideEngine()).setMaxSelectNum(intValue).setMaxVideoSelectNum(intValue).setMinSelectNum(0).setMinVideoSelectNum(0).isWithSelectVideoImage(z).isDisplayCamera(false).isOriginalControl(true).setDefaultAlbumName(str).isPageStrategy(true).isPageSyncAlbumCount(true).setSelectionMode(intValue != 1 ? 2 : 1).setSelectLimitTipsListener(new OnSelectLimitTipsListener() { // from class: com.mycompany.plugins.mediapicker.CapacitorMediaPickerPlugin.2
            @Override // com.luck.picture.lib.interfaces.OnSelectLimitTipsListener
            public boolean onSelectLimitTips(Context context, LocalMedia localMedia, SelectorConfig selectorConfig, int i) {
                if (i != 4 && i != 6) {
                    return false;
                }
                Toast.makeText(context, str2, 0).show();
                return true;
            }
        }).forResult(new OnResultCallbackListener<LocalMedia>() { // from class: com.mycompany.plugins.mediapicker.CapacitorMediaPickerPlugin.1
            @Override // com.luck.picture.lib.interfaces.OnResultCallbackListener
            public void onResult(ArrayList<LocalMedia> arrayList) {
                CapacitorMediaPickerPlugin.this.handleMediaResult(arrayList);
            }

            @Override // com.luck.picture.lib.interfaces.OnResultCallbackListener
            public void onCancel() {
                PluginCall savedCall = CapacitorMediaPickerPlugin.this.bridge.getSavedCall(CapacitorMediaPickerPlugin.this.savedCallId);
                if (savedCall != null) {
                    savedCall.reject("User cancelled");
                    CapacitorMediaPickerPlugin.this.bridge.releaseCall(savedCall);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMediaResult(final ArrayList<LocalMedia> arrayList) {
        if (this.bridge.getSavedCall(this.savedCallId) == null) {
            return;
        }
        new Thread(new Runnable() { // from class: com.mycompany.plugins.mediapicker.CapacitorMediaPickerPlugin$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CapacitorMediaPickerPlugin.this.lambda$handleMediaResult$1(arrayList);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleMediaResult$1(ArrayList arrayList) {
        JSObject buildMediaFileObject;
        final ArrayList arrayList2 = new ArrayList();
        Context context = getContext();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            LocalMedia localMedia = (LocalMedia) it.next();
            try {
                String resolveMediaPath = resolveMediaPath(context, localMedia);
                if (!TextUtils.isEmpty(resolveMediaPath) && (buildMediaFileObject = buildMediaFileObject(context, localMedia, resolveMediaPath)) != null) {
                    arrayList2.add(buildMediaFileObject);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        getActivity().runOnUiThread(new Runnable() { // from class: com.mycompany.plugins.mediapicker.CapacitorMediaPickerPlugin$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                CapacitorMediaPickerPlugin.this.lambda$handleMediaResult$0(arrayList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleMediaResult$0(ArrayList arrayList) {
        PluginCall savedCall = this.bridge.getSavedCall(this.savedCallId);
        if (savedCall == null) {
            return;
        }
        if (!arrayList.isEmpty()) {
            JSObject jSObject = new JSObject();
            JSArray jSArray = new JSArray();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                jSArray.put((JSObject) it.next());
            }
            jSObject.put("files", (Object) jSArray);
            savedCall.resolve(jSObject);
        } else {
            savedCall.reject("No files selected");
        }
        this.bridge.releaseCall(savedCall);
    }

    private JSObject buildMediaFileObject(Context context, LocalMedia localMedia, String str) {
        File file = new File(str);
        String name = file.getName();
        long length = file.length();
        String mimeType = localMedia.getMimeType();
        if (TextUtils.isEmpty(mimeType)) {
            mimeType = guessMimeType(str);
        }
        boolean z = !TextUtils.isEmpty(mimeType) && mimeType.startsWith("video/");
        int width = localMedia.getWidth();
        int height = localMedia.getHeight();
        long duration = localMedia.getDuration() / 1000;
        String str2 = this.bridge.getLocalUrl() + Bridge.CAPACITOR_FILE_START + str;
        JSObject jSObject = new JSObject();
        jSObject.put("path", str);
        jSObject.put("name", name);
        jSObject.put("mimeType", mimeType);
        jSObject.put("size", length);
        jSObject.put("type", z ? PictureMimeType.MIME_TYPE_PREFIX_VIDEO : PictureMimeType.MIME_TYPE_PREFIX_IMAGE);
        if (!z) {
            duration = 0;
        }
        jSObject.put(TypedValues.TransitionType.S_DURATION, duration);
        jSObject.put("width", width);
        jSObject.put("height", height);
        jSObject.put("previewUrl", str2);
        return jSObject;
    }

    private String resolveMediaPath(Context context, LocalMedia localMedia) throws IOException {
        if (localMedia.isCompressed() && !TextUtils.isEmpty(localMedia.getCompressPath())) {
            return localMedia.getCompressPath();
        }
        if (!TextUtils.isEmpty(localMedia.getSandboxPath())) {
            return localMedia.getSandboxPath();
        }
        if (!TextUtils.isEmpty(localMedia.getRealPath())) {
            File file = new File(localMedia.getRealPath());
            if (file.exists() && file.canRead()) {
                return localMedia.getRealPath();
            }
        }
        String path = localMedia.getPath();
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        return copyUriToCache(context, Uri.parse(path), guessExtension(localMedia));
    }

    private String copyUriToCache(Context context, Uri uri, String str) throws IOException {
        InputStream openInputStream = context.getContentResolver().openInputStream(uri);
        if (openInputStream == null) {
            throw new IOException("Cannot open input stream for URI: " + uri);
        }
        File file = new File(context.getCacheDir(), UUID.randomUUID().toString() + str);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[8192];
        while (true) {
            int read = openInputStream.read(bArr);
            if (read != -1) {
                fileOutputStream.write(bArr, 0, read);
            } else {
                fileOutputStream.flush();
                fileOutputStream.close();
                openInputStream.close();
                return file.getAbsolutePath();
            }
        }
    }

    private String guessExtension(LocalMedia localMedia) {
        String mimeType = localMedia.getMimeType();
        if (TextUtils.isEmpty(mimeType)) {
            return PictureMimeType.JPG;
        }
        return mimeType.startsWith("video/") ? PictureMimeType.MP4 : mimeType.contains("png") ? PictureMimeType.PNG : mimeType.contains("gif") ? PictureMimeType.GIF : mimeType.contains("webp") ? PictureMimeType.WEBP : PictureMimeType.JPG;
    }

    private String guessMimeType(String str) {
        String lowerCase = str.toLowerCase();
        if (lowerCase.endsWith(PictureMimeType.JPG) || lowerCase.endsWith(PictureMimeType.JPEG)) {
            return "image/jpeg";
        }
        if (lowerCase.endsWith(PictureMimeType.PNG)) {
            return PictureMimeType.PNG_Q;
        }
        if (lowerCase.endsWith(PictureMimeType.GIF)) {
            return "image/gif";
        }
        if (lowerCase.endsWith(PictureMimeType.WEBP)) {
            return "image/webp";
        }
        if (lowerCase.endsWith(".heic") || lowerCase.endsWith(".heif")) {
            return "image/heic";
        }
        if (lowerCase.endsWith(PictureMimeType.MP4) || lowerCase.endsWith(".m4v")) {
            return "video/mp4";
        }
        return lowerCase.endsWith(".mov") ? "video/quicktime" : lowerCase.endsWith(PictureMimeType.AVI) ? "video/x-msvideo" : lowerCase.endsWith(".3gp") ? "video/3gpp" : "application/octet-stream";
    }
}
