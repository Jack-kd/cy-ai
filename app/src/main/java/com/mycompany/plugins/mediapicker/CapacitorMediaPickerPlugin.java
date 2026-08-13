package com.mycompany.plugins.mediapicker;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.widget.Toast;

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
import com.luck.picture.lib.config.SelectLimitType;
import com.luck.picture.lib.config.SelectMimeType;
import com.luck.picture.lib.config.SelectModeConfig;
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

/**
 * CapacitorMediaPickerPlugin (reconstructed from APK).
 *
 * Exposes a "MediaPicker" Capacitor plugin backed by PictureSelector for
 * choosing images / videos from the gallery.
 */
@CapacitorPlugin(name = "MediaPicker", permissions = {
        @Permission(alias = "photos", strings = {PermissionConfig.READ_MEDIA_IMAGES}),
        @Permission(alias = PictureMimeType.MIME_TYPE_PREFIX_VIDEO, strings = {PermissionConfig.READ_MEDIA_VIDEO}),
        @Permission(alias = "storage", strings = {PermissionConfig.READ_EXTERNAL_STORAGE})
})
public class CapacitorMediaPickerPlugin extends Plugin {

    private String savedCallId;

    @PluginMethod
    public void pickMedia(PluginCall pluginCall) {
        this.bridge.saveCall(pluginCall);
        this.savedCallId = pluginCall.getCallbackId();

        if (Build.VERSION.SDK_INT >= 33) {
            boolean hasImages = ContextCompat.checkSelfPermission(getContext(), PermissionConfig.READ_MEDIA_IMAGES)
                    == android.content.pm.PackageManager.PERMISSION_GRANTED;
            boolean hasVideos = ContextCompat.checkSelfPermission(getContext(), PermissionConfig.READ_MEDIA_VIDEO)
                    == android.content.pm.PackageManager.PERMISSION_GRANTED;
            if (!hasImages) {
                requestPermissionForAlias("photos", pluginCall, "handlePermissionResult");
                return;
            } else if (!hasVideos) {
                requestPermissionForAlias(PictureMimeType.MIME_TYPE_PREFIX_VIDEO, pluginCall, "handlePermissionResult");
                return;
            }
        } else if (ContextCompat.checkSelfPermission(getContext(), PermissionConfig.READ_EXTERNAL_STORAGE)
                != android.content.pm.PackageManager.PERMISSION_GRANTED) {
            requestPermissionForAlias("storage", pluginCall, "handlePermissionResult");
            return;
        }
        launchMediaPicker(pluginCall);
    }

    @PermissionCallback
    private void handlePermissionResult(PluginCall pluginCall) {
        if (Build.VERSION.SDK_INT >= 33) {
            boolean hasImages = ContextCompat.checkSelfPermission(getContext(), PermissionConfig.READ_MEDIA_IMAGES)
                    == android.content.pm.PackageManager.PERMISSION_GRANTED;
            boolean hasVideos = ContextCompat.checkSelfPermission(getContext(), PermissionConfig.READ_MEDIA_VIDEO)
                    == android.content.pm.PackageManager.PERMISSION_GRANTED;
            if (hasImages && !hasVideos) {
                requestPermissionForAlias(PictureMimeType.MIME_TYPE_PREFIX_VIDEO, pluginCall, "handlePermissionResult");
            } else if (hasImages && hasVideos) {
                launchMediaPicker(pluginCall);
            } else {
                pluginCall.reject("Photo library access denied. Please grant permission in Settings.");
            }
        } else {
            boolean granted = ContextCompat.checkSelfPermission(getContext(), PermissionConfig.READ_EXTERNAL_STORAGE)
                    == android.content.pm.PackageManager.PERMISSION_GRANTED;
            if (granted) {
                launchMediaPicker(pluginCall);
            } else {
                pluginCall.reject("Photo library access denied. Please grant permission in Settings.");
            }
        }
    }

    private void launchMediaPicker(PluginCall pluginCall) {
        int maxCount = pluginCall.getInt("maxCount", 9);
        String mediaType = pluginCall.getString("mediaType", "all");

        int ofType;
        String albumName;
        boolean withVideoImage;
        String tip;

        if (PictureMimeType.MIME_TYPE_PREFIX_IMAGE.equals(mediaType)) {
            ofType = SelectMimeType.ofImage();
            albumName = "图片";
            withVideoImage = false;
            tip = "最多只能选择" + maxCount + "张图片";
        } else if (PictureMimeType.MIME_TYPE_PREFIX_VIDEO.equals(mediaType)) {
            ofType = SelectMimeType.ofVideo();
            albumName = "视频";
            withVideoImage = false;
            tip = "最多只能选择" + maxCount + "个视频";
        } else {
            ofType = SelectMimeType.ofAll();
            albumName = "图片和视频";
            withVideoImage = true;
            tip = "最多只能选择" + maxCount + "个文件";
        }
        final String limitTip = tip;

        PictureSelector.create(getActivity())
                .openGallery(ofType)
                .setImageEngine(GlideEngine.createGlideEngine())
                .setMaxSelectNum(maxCount)
                .setMaxVideoSelectNum(maxCount)
                .setMinSelectNum(0)
                .setMinVideoSelectNum(0)
                .isWithSelectVideoImage(withVideoImage)
                .isDisplayCamera(false)
                .isOriginalControl(true)
                .setDefaultAlbumName(albumName)
                .isPageStrategy(true)
                .isPageSyncAlbumCount(true)
                .setSelectionMode(maxCount != 1 ? SelectModeConfig.MULTIPLE : SelectModeConfig.SINGLE)
                .setSelectLimitTipsListener(new OnSelectLimitTipsListener() {
                    @Override
                    public boolean onSelectLimitTips(Context context, LocalMedia currentMedia, SelectorConfig config, int tips) {
                        if (tips == SelectLimitType.SELECT_MAX_SELECT_LIMIT
                                || tips == SelectLimitType.SELECT_MAX_VIDEO_SELECT_LIMIT) {
                            Toast.makeText(context, limitTip, Toast.LENGTH_SHORT).show();
                            return true;
                        }
                        return false;
                    }
                })
                .forResult(new OnResultCallbackListener<LocalMedia>() {
                    @Override
                    public void onResult(ArrayList<LocalMedia> result) {
                        handleMediaResult(result);
                    }

                    @Override
                    public void onCancel() {
                        PluginCall savedCall = CapacitorMediaPickerPlugin.this.bridge.getSavedCall(CapacitorMediaPickerPlugin.this.savedCallId);
                        if (savedCall != null) {
                            savedCall.reject("User cancelled");
                            CapacitorMediaPickerPlugin.this.bridge.releaseCall(savedCall);
                        }
                    }
                });
    }

    private void handleMediaResult(final ArrayList<LocalMedia> mediaList) {
        if (this.bridge.getSavedCall(this.savedCallId) == null) {
            return;
        }
        new Thread(new Runnable() {
            @Override
            public void run() {
                final ArrayList<JSObject> results = new ArrayList<>();
                Context context = getContext();
                Iterator<LocalMedia> it = mediaList.iterator();
                while (it.hasNext()) {
                    LocalMedia media = it.next();
                    try {
                        String path = resolveMediaPath(context, media);
                        JSObject obj;
                        if (!TextUtils.isEmpty(path) && (obj = buildMediaFileObject(context, media, path)) != null) {
                            results.add(obj);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                getActivity().runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        resolveMediaResult(results);
                    }
                });
            }
        }).start();
    }

    private void resolveMediaResult(ArrayList<JSObject> results) {
        PluginCall savedCall = this.bridge.getSavedCall(this.savedCallId);
        if (savedCall == null) {
            return;
        }
        if (!results.isEmpty()) {
            JSObject ret = new JSObject();
            JSArray array = new JSArray();
            for (JSObject obj : results) {
                array.put(obj);
            }
            ret.put("files", array);
            savedCall.resolve(ret);
        } else {
            savedCall.reject("No files selected");
        }
        this.bridge.releaseCall(savedCall);
    }

    private JSObject buildMediaFileObject(Context context, LocalMedia media, String path) {
        File file = new File(path);
        String name = file.getName();
        long length = file.length();
        String mimeType = media.getMimeType();
        if (TextUtils.isEmpty(mimeType)) {
            mimeType = guessMimeType(path);
        }
        boolean isVideo = !TextUtils.isEmpty(mimeType) && mimeType.startsWith("video/");
        int width = media.getWidth();
        int height = media.getHeight();
        long duration = isVideo ? media.getDuration() / 1000 : 0;
        String previewUrl = this.bridge.getLocalUrl() + Bridge.CAPACITOR_FILE_START + path;

        JSObject obj = new JSObject();
        obj.put("path", path);
        obj.put("name", name);
        obj.put("mimeType", mimeType);
        obj.put("size", length);
        obj.put("type", isVideo ? PictureMimeType.MIME_TYPE_PREFIX_VIDEO : PictureMimeType.MIME_TYPE_PREFIX_IMAGE);
        obj.put("duration", duration);
        obj.put("width", width);
        obj.put("height", height);
        obj.put("previewUrl", previewUrl);
        return obj;
    }

    private String resolveMediaPath(Context context, LocalMedia media) throws IOException {
        if (media.isCompressed() && !TextUtils.isEmpty(media.getCompressPath())) {
            return media.getCompressPath();
        }
        if (!TextUtils.isEmpty(media.getSandboxPath())) {
            return media.getSandboxPath();
        }
        if (!TextUtils.isEmpty(media.getRealPath())) {
            File file = new File(media.getRealPath());
            if (file.exists() && file.canRead()) {
                return media.getRealPath();
            }
        }
        String path = media.getPath();
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        return copyUriToCache(context, Uri.parse(path), guessExtension(media));
    }

    private String copyUriToCache(Context context, Uri uri, String extension) throws IOException {
        InputStream in = context.getContentResolver().openInputStream(uri);
        if (in == null) {
            throw new IOException("Cannot open input stream for URI: " + uri);
        }
        File out = new File(context.getCacheDir(), UUID.randomUUID().toString() + extension);
        FileOutputStream fos = new FileOutputStream(out);
        byte[] buffer = new byte[8192];
        int read;
        while ((read = in.read(buffer)) != -1) {
            fos.write(buffer, 0, read);
        }
        fos.flush();
        fos.close();
        in.close();
        return out.getAbsolutePath();
    }

    private String guessExtension(LocalMedia media) {
        String mimeType = media.getMimeType();
        if (TextUtils.isEmpty(mimeType)) {
            return PictureMimeType.JPG;
        }
        if (mimeType.startsWith("video/")) {
            return PictureMimeType.MP4;
        }
        if (mimeType.contains("png")) {
            return PictureMimeType.PNG;
        }
        if (mimeType.contains("gif")) {
            return PictureMimeType.GIF;
        }
        if (mimeType.contains("webp")) {
            return PictureMimeType.WEBP;
        }
        return PictureMimeType.JPG;
    }

    private String guessMimeType(String path) {
        String lower = path.toLowerCase();
        if (lower.endsWith(PictureMimeType.JPG) || lower.endsWith(PictureMimeType.JPEG)) {
            return "image/jpeg";
        }
        if (lower.endsWith(PictureMimeType.PNG)) {
            return PictureMimeType.PNG_Q;
        }
        if (lower.endsWith(PictureMimeType.GIF)) {
            return "image/gif";
        }
        if (lower.endsWith(PictureMimeType.WEBP)) {
            return "image/webp";
        }
        if (lower.endsWith(".heic") || lower.endsWith(".heif")) {
            return "image/heic";
        }
        if (lower.endsWith(PictureMimeType.MP4) || lower.endsWith(".m4v")) {
            return "video/mp4";
        }
        if (lower.endsWith(".mov")) {
            return "video/quicktime";
        }
        if (lower.endsWith(PictureMimeType.AVI)) {
            return "video/x-msvideo";
        }
        if (lower.endsWith(".3gp")) {
            return "video/3gpp";
        }
        return "application/octet-stream";
    }
}
