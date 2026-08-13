package com.luck.picture.lib.loader;

import android.content.Context;
import android.text.TextUtils;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.SelectMimeType;
import com.luck.picture.lib.config.SelectorConfig;
import com.luck.picture.lib.config.SelectorProviders;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.entity.LocalMediaFolder;
import com.luck.picture.lib.entity.MediaExtraInfo;
import com.luck.picture.lib.utils.MediaUtils;
import com.luck.picture.lib.utils.SdkVersionUtils;
import com.luck.picture.lib.utils.SortUtils;
import com.luck.picture.lib.utils.ValueOf;
import java.io.File;
import java.io.FileFilter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class SandboxFileLoader {
    public static LocalMediaFolder loadInAppSandboxFolderFile(Context context, String str) {
        ArrayList<LocalMedia> loadInAppSandboxFile = loadInAppSandboxFile(context, str);
        if (loadInAppSandboxFile == null || loadInAppSandboxFile.size() <= 0) {
            return null;
        }
        SortUtils.sortLocalMediaAddedTime(loadInAppSandboxFile);
        LocalMedia localMedia = loadInAppSandboxFile.get(0);
        LocalMediaFolder localMediaFolder = new LocalMediaFolder();
        localMediaFolder.setFolderName(localMedia.getParentFolderName());
        localMediaFolder.setFirstImagePath(localMedia.getPath());
        localMediaFolder.setFirstMimeType(localMedia.getMimeType());
        localMediaFolder.setBucketId(localMedia.getBucketId());
        localMediaFolder.setFolderTotalNum(loadInAppSandboxFile.size());
        localMediaFolder.setData(loadInAppSandboxFile);
        return localMediaFolder;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0184, code lost:
    
        if (r2 < r6.filterVideoMinSecond) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0195, code lost:
    
        if (r2 > r6.filterVideoMaxSecond) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x019c, code lost:
    
        if (r2 != 0) goto L93;
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x018a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList<LocalMedia> loadInAppSandboxFile(Context context, String str) {
        MessageDigest messageDigest;
        long lastModified;
        int i;
        int i2;
        MessageDigest messageDigest2;
        int i3;
        int i4;
        long j;
        long j2;
        int width;
        int height;
        long duration;
        File[] fileArr;
        long j3;
        ArrayList<LocalMedia> arrayList;
        Context context2 = context;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList<LocalMedia> arrayList2 = new ArrayList<>();
        File file = new File(str);
        if (file.exists()) {
            File[] listFiles = file.listFiles(new FileFilter() { // from class: com.luck.picture.lib.loader.SandboxFileLoader.1
                @Override // java.io.FileFilter
                public boolean accept(File file2) {
                    return !file2.isDirectory();
                }
            });
            if (listFiles == null) {
                return arrayList2;
            }
            SelectorConfig selectorConfig = SelectorProviders.getInstance().getSelectorConfig();
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
                messageDigest = null;
            }
            int length = listFiles.length;
            int i5 = 0;
            while (i5 < length) {
                File file2 = listFiles[i5];
                String mimeTypeFromMediaUrl = MediaUtils.getMimeTypeFromMediaUrl(file2.getAbsolutePath());
                if (selectorConfig.chooseMode != SelectMimeType.ofImage() ? selectorConfig.chooseMode != SelectMimeType.ofVideo() ? selectorConfig.chooseMode != SelectMimeType.ofAudio() || (PictureMimeType.isHasAudio(mimeTypeFromMediaUrl) && (selectorConfig.queryOnlyAudioList == null || selectorConfig.queryOnlyAudioList.size() <= 0 || selectorConfig.queryOnlyAudioList.contains(mimeTypeFromMediaUrl))) : PictureMimeType.isHasVideo(mimeTypeFromMediaUrl) && (selectorConfig.queryOnlyVideoList == null || selectorConfig.queryOnlyVideoList.size() <= 0 || selectorConfig.queryOnlyVideoList.contains(mimeTypeFromMediaUrl)) : PictureMimeType.isHasImage(mimeTypeFromMediaUrl) && (selectorConfig.queryOnlyImageList == null || selectorConfig.queryOnlyImageList.size() <= 0 || selectorConfig.queryOnlyImageList.contains(mimeTypeFromMediaUrl))) {
                    if (selectorConfig.isGif || !PictureMimeType.isHasGif(mimeTypeFromMediaUrl)) {
                        String absolutePath = file2.getAbsolutePath();
                        long length2 = file2.length();
                        if (length2 > 0) {
                            if (messageDigest != null) {
                                messageDigest.update(absolutePath.getBytes());
                                lastModified = new BigInteger(1, messageDigest.digest()).longValue();
                            } else {
                                lastModified = file2.lastModified() / 1000;
                            }
                            i = length;
                            i2 = i5;
                            long j4 = ValueOf.toLong(Integer.valueOf(file.getName().hashCode()));
                            ArrayList<LocalMedia> arrayList3 = arrayList2;
                            long lastModified2 = file2.lastModified() / 1000;
                            if (PictureMimeType.isHasVideo(mimeTypeFromMediaUrl)) {
                                MediaExtraInfo videoSize = MediaUtils.getVideoSize(context2, absolutePath);
                                width = videoSize.getWidth();
                                height = videoSize.getHeight();
                                duration = videoSize.getDuration();
                            } else if (PictureMimeType.isHasAudio(mimeTypeFromMediaUrl)) {
                                MediaExtraInfo audioSize = MediaUtils.getAudioSize(context2, absolutePath);
                                width = audioSize.getWidth();
                                height = audioSize.getHeight();
                                duration = audioSize.getDuration();
                            } else {
                                MediaExtraInfo imageSize = MediaUtils.getImageSize(context2, absolutePath);
                                int width2 = imageSize.getWidth();
                                int height2 = imageSize.getHeight();
                                messageDigest2 = messageDigest;
                                i3 = width2;
                                i4 = height2;
                                j = lastModified2;
                                j2 = 0;
                                if (!PictureMimeType.isHasVideo(mimeTypeFromMediaUrl) || PictureMimeType.isHasAudio(mimeTypeFromMediaUrl)) {
                                    fileArr = listFiles;
                                    j3 = selectorConfig.filterVideoMinSecond <= 0 ? j4 : j4;
                                    if (selectorConfig.filterVideoMaxSecond > 0) {
                                    }
                                } else {
                                    fileArr = listFiles;
                                    j3 = j4;
                                }
                                LocalMedia create = LocalMedia.create();
                                create.setId(lastModified);
                                create.setPath(absolutePath);
                                create.setRealPath(absolutePath);
                                create.setFileName(file2.getName());
                                create.setParentFolderName(file.getName());
                                create.setDuration(j2);
                                create.setChooseModel(selectorConfig.chooseMode);
                                create.setMimeType(mimeTypeFromMediaUrl);
                                create.setWidth(i3);
                                create.setHeight(i4);
                                create.setSize(length2);
                                create.setBucketId(j3);
                                create.setDateAddedTime(j);
                                if (selectorConfig.onQueryFilterListener == null || !selectorConfig.onQueryFilterListener.onFilter(create)) {
                                    if (!SdkVersionUtils.isQ()) {
                                        absolutePath = null;
                                    }
                                    create.setSandboxPath(absolutePath);
                                    arrayList = arrayList3;
                                    arrayList.add(create);
                                    i5 = i2 + 1;
                                    length = i;
                                    arrayList2 = arrayList;
                                    messageDigest = messageDigest2;
                                    listFiles = fileArr;
                                    context2 = context;
                                }
                                arrayList = arrayList3;
                                i5 = i2 + 1;
                                length = i;
                                arrayList2 = arrayList;
                                messageDigest = messageDigest2;
                                listFiles = fileArr;
                                context2 = context;
                            }
                            messageDigest2 = messageDigest;
                            i3 = width;
                            i4 = height;
                            j = lastModified2;
                            j2 = duration;
                            if (PictureMimeType.isHasVideo(mimeTypeFromMediaUrl)) {
                            }
                            fileArr = listFiles;
                            if (selectorConfig.filterVideoMinSecond <= 0) {
                            }
                            if (selectorConfig.filterVideoMaxSecond > 0) {
                            }
                        }
                    }
                }
                messageDigest2 = messageDigest;
                arrayList = arrayList2;
                fileArr = listFiles;
                i = length;
                i2 = i5;
                i5 = i2 + 1;
                length = i;
                arrayList2 = arrayList;
                messageDigest = messageDigest2;
                listFiles = fileArr;
                context2 = context;
            }
        }
        return arrayList2;
    }
}
