package com.luck.picture.lib.loader;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.luck.picture.lib.R;
import com.luck.picture.lib.config.PictureMimeType;
import com.luck.picture.lib.config.SelectMimeType;
import com.luck.picture.lib.config.SelectorConfig;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.entity.LocalMediaFolder;
import com.luck.picture.lib.entity.MediaData;
import com.luck.picture.lib.interfaces.OnQueryAlbumListener;
import com.luck.picture.lib.interfaces.OnQueryAllAlbumListener;
import com.luck.picture.lib.interfaces.OnQueryDataResultListener;
import com.luck.picture.lib.thread.PictureThreadUtils;
import com.luck.picture.lib.utils.MediaUtils;
import com.luck.picture.lib.utils.PictureFileUtils;
import com.luck.picture.lib.utils.SdkVersionUtils;
import com.luck.picture.lib.utils.SortUtils;
import com.luck.picture.lib.utils.ValueOf;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public final class LocalMediaPageLoader extends IBridgeMediaLoader {
    public LocalMediaPageLoader(Context context, SelectorConfig selectorConfig) {
        super(context, selectorConfig);
    }

    private String getSelectionArgsForAllMediaCondition(String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder("(media_type=?");
        sb.append(str3);
        sb.append(" OR media_type=?");
        sb.append(str4);
        sb.append(" AND ");
        sb.append(str);
        sb.append(") AND ");
        sb.append(str2);
        if (isWithAllQuery()) {
            return sb.toString();
        }
        sb.append(") GROUP BY (bucket_id");
        return sb.toString();
    }

    private String getSelectionArgsForImageMediaCondition(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (isWithAllQuery()) {
            sb.append("media_type=?");
            sb.append(str2);
            sb.append(" AND ");
            sb.append(str);
            return sb.toString();
        }
        sb.append("(media_type=?");
        sb.append(str2);
        sb.append(") AND ");
        sb.append(str);
        sb.append(") GROUP BY (bucket_id");
        return sb.toString();
    }

    private String getSelectionArgsForVideoMediaCondition(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (isWithAllQuery()) {
            sb.append("media_type=?");
            sb.append(str2);
            sb.append(" AND ");
            sb.append(str);
            return sb.toString();
        }
        sb.append("(media_type=?");
        sb.append(str2);
        sb.append(") AND ");
        sb.append(str);
        sb.append(") GROUP BY (bucket_id");
        return sb.toString();
    }

    private String getSelectionArgsForAudioMediaCondition(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (isWithAllQuery()) {
            sb.append("media_type=?");
            sb.append(str2);
            sb.append(" AND ");
            sb.append(str);
            return sb.toString();
        }
        sb.append("(media_type=?");
        sb.append(str2);
        sb.append(") AND ");
        sb.append(str);
        sb.append(") GROUP BY (bucket_id");
        return sb.toString();
    }

    private static String[] getSelectionArgsForPageSingleMediaType(int i, long j) {
        return j == -1 ? new String[]{String.valueOf(i)} : new String[]{String.valueOf(i), ValueOf.toString(Long.valueOf(j))};
    }

    @Override // com.luck.picture.lib.loader.IBridgeMediaLoader
    public String getAlbumFirstCover(long j) {
        Cursor cursor;
        Cursor query;
        Cursor cursor2 = null;
        try {
            if (SdkVersionUtils.isR()) {
                query = getContext().getContentResolver().query(QUERY_URI, new String[]{"_id", "mime_type", "_data"}, MediaUtils.createQueryArgsBundle(getPageSelection(j), getPageSelectionArgs(j), 1, 0, getSortOrder()), null);
            } else {
                query = getContext().getContentResolver().query(QUERY_URI, new String[]{"_id", "mime_type", "_data"}, getPageSelection(j), getPageSelectionArgs(j), getSortOrder() + " limit 1 offset 0");
            }
            if (query != null) {
                try {
                    if (query.getCount() > 0) {
                        if (!query.moveToFirst()) {
                            if (query != null && !query.isClosed()) {
                                query.close();
                            }
                            return null;
                        }
                        String realPathUri = SdkVersionUtils.isQ() ? MediaUtils.getRealPathUri(query.getLong(query.getColumnIndexOrThrow("_id")), query.getString(query.getColumnIndexOrThrow("mime_type"))) : query.getString(query.getColumnIndexOrThrow("_data"));
                        if (query != null && !query.isClosed()) {
                            query.close();
                        }
                        return realPathUri;
                    }
                } catch (Exception e) {
                    cursor = query;
                    e = e;
                    try {
                        e.printStackTrace();
                        if (cursor != null && !cursor.isClosed()) {
                            cursor.close();
                        }
                        return null;
                    } catch (Throwable th) {
                        th = th;
                        cursor2 = cursor;
                        if (cursor2 != null && !cursor2.isClosed()) {
                            cursor2.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    cursor2 = query;
                    th = th2;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
            if (query != null && !query.isClosed()) {
                query.close();
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
        }
        return null;
    }

    @Override // com.luck.picture.lib.loader.IBridgeMediaLoader
    public void loadPageMediaData(final long j, final int i, final int i2, final OnQueryDataResultListener<LocalMedia> onQueryDataResultListener) {
        PictureThreadUtils.executeByIo(new PictureThreadUtils.SimpleTask<MediaData>() { // from class: com.luck.picture.lib.loader.LocalMediaPageLoader.1
            @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
            public MediaData doInBackground() {
                String str;
                ArrayList<LocalMedia> loadInAppSandboxFile;
                Cursor cursor = null;
                try {
                    try {
                        boolean z = true;
                        if (SdkVersionUtils.isR()) {
                            String pageSelection = LocalMediaPageLoader.this.getPageSelection(j);
                            String[] pageSelectionArgs = LocalMediaPageLoader.this.getPageSelectionArgs(j);
                            int i3 = i2;
                            cursor = LocalMediaPageLoader.this.getContext().getContentResolver().query(IBridgeMediaLoader.QUERY_URI, IBridgeMediaLoader.PROJECTION, MediaUtils.createQueryArgsBundle(pageSelection, pageSelectionArgs, i3, (i - 1) * i3, LocalMediaPageLoader.this.getSortOrder()), null);
                        } else {
                            if (i == -1) {
                                str = LocalMediaPageLoader.this.getSortOrder();
                            } else {
                                str = LocalMediaPageLoader.this.getSortOrder() + " limit " + i2 + " offset " + ((i - 1) * i2);
                            }
                            cursor = LocalMediaPageLoader.this.getContext().getContentResolver().query(IBridgeMediaLoader.QUERY_URI, IBridgeMediaLoader.PROJECTION, LocalMediaPageLoader.this.getPageSelection(j), LocalMediaPageLoader.this.getPageSelectionArgs(j), str);
                        }
                        if (cursor == null) {
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                            return new MediaData();
                        }
                        ArrayList arrayList = new ArrayList();
                        if (cursor.getCount() > 0) {
                            cursor.moveToFirst();
                            do {
                                LocalMedia parseLocalMedia = LocalMediaPageLoader.this.parseLocalMedia(cursor, false);
                                if (parseLocalMedia != null) {
                                    arrayList.add(parseLocalMedia);
                                }
                            } while (cursor.moveToNext());
                        }
                        if (j == -1 && i == 1 && (loadInAppSandboxFile = SandboxFileLoader.loadInAppSandboxFile(LocalMediaPageLoader.this.getContext(), LocalMediaPageLoader.this.getConfig().sandboxDir)) != null) {
                            arrayList.addAll(loadInAppSandboxFile);
                            SortUtils.sortLocalMediaAddedTime(arrayList);
                        }
                        if (cursor.getCount() <= 0) {
                            z = false;
                        }
                        MediaData mediaData = new MediaData(z, arrayList);
                        if (cursor != null && !cursor.isClosed()) {
                            cursor.close();
                        }
                        return mediaData;
                    } catch (Exception e) {
                        e.printStackTrace();
                        Log.i(IBridgeMediaLoader.TAG, "loadMedia Page Data Error: " + e.getMessage());
                        MediaData mediaData2 = new MediaData();
                        if (cursor != null && !cursor.isClosed()) {
                            cursor.close();
                        }
                        return mediaData2;
                    }
                } catch (Throwable th) {
                    if (cursor != null && !cursor.isClosed()) {
                        cursor.close();
                    }
                    throw th;
                }
            }

            @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
            public void onSuccess(MediaData mediaData) {
                PictureThreadUtils.cancel(this);
                OnQueryDataResultListener onQueryDataResultListener2 = onQueryDataResultListener;
                if (onQueryDataResultListener2 != null) {
                    onQueryDataResultListener2.onComplete(mediaData.data != null ? mediaData.data : new ArrayList<>(), mediaData.isHasNextMore);
                }
            }
        });
    }

    @Override // com.luck.picture.lib.loader.IBridgeMediaLoader
    public void loadOnlyInAppDirAllMedia(final OnQueryAlbumListener<LocalMediaFolder> onQueryAlbumListener) {
        PictureThreadUtils.executeByIo(new PictureThreadUtils.SimpleTask<LocalMediaFolder>() { // from class: com.luck.picture.lib.loader.LocalMediaPageLoader.2
            @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
            public LocalMediaFolder doInBackground() {
                return SandboxFileLoader.loadInAppSandboxFolderFile(LocalMediaPageLoader.this.getContext(), LocalMediaPageLoader.this.getConfig().sandboxDir);
            }

            @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
            public void onSuccess(LocalMediaFolder localMediaFolder) {
                PictureThreadUtils.cancel(this);
                OnQueryAlbumListener onQueryAlbumListener2 = onQueryAlbumListener;
                if (onQueryAlbumListener2 != null) {
                    onQueryAlbumListener2.onComplete(localMediaFolder);
                }
            }
        });
    }

    @Override // com.luck.picture.lib.loader.IBridgeMediaLoader
    public void loadAllAlbum(final OnQueryAllAlbumListener<LocalMediaFolder> onQueryAllAlbumListener) {
        PictureThreadUtils.executeByIo(new PictureThreadUtils.SimpleTask<List<LocalMediaFolder>>() { // from class: com.luck.picture.lib.loader.LocalMediaPageLoader.3
            /* JADX WARN: Code restructure failed: missing block: B:114:0x02e0, code lost:
            
                if (r2.isClosed() == false) goto L103;
             */
            /* JADX WARN: Code restructure failed: missing block: B:8:0x02f5, code lost:
            
                if (r2.isClosed() == false) goto L103;
             */
            /* JADX WARN: Code restructure failed: missing block: B:9:0x02f7, code lost:
            
                r2.close();
             */
            @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public List<LocalMediaFolder> doInBackground() {
                int i;
                String str;
                Context context;
                int i2;
                Cursor query = LocalMediaPageLoader.this.getContext().getContentResolver().query(IBridgeMediaLoader.QUERY_URI, LocalMediaPageLoader.this.isWithAllQuery() ? IBridgeMediaLoader.PROJECTION : IBridgeMediaLoader.ALL_PROJECTION, LocalMediaPageLoader.this.getSelection(), LocalMediaPageLoader.this.getSelectionArgs(), LocalMediaPageLoader.this.getSortOrder());
                if (query != null) {
                    try {
                        try {
                            int count = query.getCount();
                            ArrayList<LocalMediaFolder> arrayList = new ArrayList();
                            if (count > 0) {
                                if (LocalMediaPageLoader.this.isWithAllQuery()) {
                                    HashMap hashMap = new HashMap();
                                    HashSet hashSet = new HashSet();
                                    while (query.moveToNext()) {
                                        if (LocalMediaPageLoader.this.getConfig().isPageSyncAsCount) {
                                            LocalMedia parseLocalMedia = LocalMediaPageLoader.this.parseLocalMedia(query, true);
                                            if (parseLocalMedia != null) {
                                                parseLocalMedia.recycle();
                                            }
                                        }
                                        long j = query.getLong(query.getColumnIndexOrThrow("bucket_id"));
                                        Long l = (Long) hashMap.get(Long.valueOf(j));
                                        hashMap.put(Long.valueOf(j), l == null ? 1L : Long.valueOf(l.longValue() + 1));
                                        if (!hashSet.contains(Long.valueOf(j))) {
                                            LocalMediaFolder localMediaFolder = new LocalMediaFolder();
                                            localMediaFolder.setBucketId(j);
                                            String string = query.getString(query.getColumnIndexOrThrow("bucket_display_name"));
                                            String string2 = query.getString(query.getColumnIndexOrThrow("mime_type"));
                                            if (hashMap.containsKey(Long.valueOf(j))) {
                                                Long l2 = (Long) hashMap.get(Long.valueOf(j));
                                                l2.longValue();
                                                long j2 = query.getLong(query.getColumnIndexOrThrow("_id"));
                                                localMediaFolder.setFolderName(string);
                                                localMediaFolder.setFolderTotalNum(ValueOf.toInt(l2));
                                                localMediaFolder.setFirstImagePath(MediaUtils.getRealPathUri(j2, string2));
                                                localMediaFolder.setFirstMimeType(string2);
                                                arrayList.add(localMediaFolder);
                                                hashSet = hashSet;
                                                hashSet.add(Long.valueOf(j));
                                            }
                                        }
                                    }
                                    i = 0;
                                    for (LocalMediaFolder localMediaFolder2 : arrayList) {
                                        int i3 = ValueOf.toInt(hashMap.get(Long.valueOf(localMediaFolder2.getBucketId())));
                                        localMediaFolder2.setFolderTotalNum(i3);
                                        i += i3;
                                    }
                                } else {
                                    query.moveToFirst();
                                    int i4 = 0;
                                    do {
                                        String string3 = query.getString(query.getColumnIndexOrThrow("_data"));
                                        String string4 = query.getString(query.getColumnIndexOrThrow("bucket_display_name"));
                                        String string5 = query.getString(query.getColumnIndexOrThrow("mime_type"));
                                        long j3 = query.getLong(query.getColumnIndexOrThrow("bucket_id"));
                                        int i5 = query.getInt(query.getColumnIndexOrThrow("count"));
                                        LocalMediaFolder localMediaFolder3 = new LocalMediaFolder();
                                        localMediaFolder3.setBucketId(j3);
                                        localMediaFolder3.setFirstImagePath(string3);
                                        localMediaFolder3.setFolderName(string4);
                                        localMediaFolder3.setFirstMimeType(string5);
                                        localMediaFolder3.setFolderTotalNum(i5);
                                        arrayList.add(localMediaFolder3);
                                        i4 += i5;
                                    } while (query.moveToNext());
                                    i = i4;
                                }
                                LocalMediaFolder localMediaFolder4 = new LocalMediaFolder();
                                LocalMediaFolder loadInAppSandboxFolderFile = SandboxFileLoader.loadInAppSandboxFolderFile(LocalMediaPageLoader.this.getContext(), LocalMediaPageLoader.this.getConfig().sandboxDir);
                                if (loadInAppSandboxFolderFile != null) {
                                    arrayList.add(loadInAppSandboxFolderFile);
                                    long lastModified = new File(loadInAppSandboxFolderFile.getFirstImagePath()).lastModified();
                                    i += loadInAppSandboxFolderFile.getFolderTotalNum();
                                    localMediaFolder4.setData(new ArrayList<>());
                                    if (query.moveToFirst()) {
                                        localMediaFolder4.setFirstImagePath(SdkVersionUtils.isQ() ? LocalMediaPageLoader.getFirstUri(query) : LocalMediaPageLoader.getFirstUrl(query));
                                        localMediaFolder4.setFirstMimeType(LocalMediaPageLoader.getFirstCoverMimeType(query));
                                        if (lastModified > (PictureMimeType.isContent(localMediaFolder4.getFirstImagePath()) ? new File(PictureFileUtils.getPath(LocalMediaPageLoader.this.getContext(), Uri.parse(localMediaFolder4.getFirstImagePath()))).lastModified() : new File(localMediaFolder4.getFirstImagePath()).lastModified())) {
                                            localMediaFolder4.setFirstImagePath(loadInAppSandboxFolderFile.getFirstImagePath());
                                            localMediaFolder4.setFirstMimeType(loadInAppSandboxFolderFile.getFirstMimeType());
                                        }
                                    }
                                } else if (query.moveToFirst()) {
                                    localMediaFolder4.setFirstImagePath(SdkVersionUtils.isQ() ? LocalMediaPageLoader.getFirstUri(query) : LocalMediaPageLoader.getFirstUrl(query));
                                    localMediaFolder4.setFirstMimeType(LocalMediaPageLoader.getFirstCoverMimeType(query));
                                }
                                if (i == 0) {
                                    return arrayList;
                                }
                                SortUtils.sortFolder(arrayList);
                                localMediaFolder4.setFolderTotalNum(i);
                                localMediaFolder4.setBucketId(-1L);
                                if (TextUtils.isEmpty(LocalMediaPageLoader.this.getConfig().defaultAlbumName)) {
                                    if (LocalMediaPageLoader.this.getConfig().chooseMode == SelectMimeType.ofAudio()) {
                                        context = LocalMediaPageLoader.this.getContext();
                                        i2 = R.string.ps_all_audio;
                                    } else {
                                        context = LocalMediaPageLoader.this.getContext();
                                        i2 = R.string.ps_camera_roll;
                                    }
                                    str = context.getString(i2);
                                } else {
                                    str = LocalMediaPageLoader.this.getConfig().defaultAlbumName;
                                }
                                localMediaFolder4.setFolderName(str);
                                arrayList.add(0, localMediaFolder4);
                                if (LocalMediaPageLoader.this.getConfig().isSyncCover && LocalMediaPageLoader.this.getConfig().chooseMode == SelectMimeType.ofAll()) {
                                    LocalMediaPageLoader.this.synchronousFirstCover(arrayList);
                                }
                                if (query != null && !query.isClosed()) {
                                    query.close();
                                }
                                return arrayList;
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            Log.i(IBridgeMediaLoader.TAG, "loadAllMedia Data Error: " + e.getMessage());
                            if (query != null) {
                            }
                        }
                    } finally {
                        if (query != null && !query.isClosed()) {
                            query.close();
                        }
                    }
                }
                if (query != null) {
                }
                return new ArrayList();
            }

            @Override // com.luck.picture.lib.thread.PictureThreadUtils.Task
            public void onSuccess(List<LocalMediaFolder> list) {
                PictureThreadUtils.cancel(this);
                LocalMedia.destroyPool();
                OnQueryAllAlbumListener onQueryAllAlbumListener2 = onQueryAllAlbumListener;
                if (onQueryAllAlbumListener2 != null) {
                    onQueryAllAlbumListener2.onComplete(list);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void synchronousFirstCover(List<LocalMediaFolder> list) {
        for (int i = 0; i < list.size(); i++) {
            LocalMediaFolder localMediaFolder = list.get(i);
            if (localMediaFolder != null) {
                String albumFirstCover = getAlbumFirstCover(localMediaFolder.getBucketId());
                if (!TextUtils.isEmpty(albumFirstCover)) {
                    localMediaFolder.setFirstImagePath(albumFirstCover);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getFirstUri(Cursor cursor) {
        return MediaUtils.getRealPathUri(cursor.getLong(cursor.getColumnIndexOrThrow("_id")), cursor.getString(cursor.getColumnIndexOrThrow("mime_type")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getFirstCoverMimeType(Cursor cursor) {
        return cursor.getString(cursor.getColumnIndexOrThrow("mime_type"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getFirstUrl(Cursor cursor) {
        return cursor.getString(cursor.getColumnIndexOrThrow("_data"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPageSelection(long j) {
        String durationCondition = getDurationCondition();
        String fileSizeCondition = getFileSizeCondition();
        int i = getConfig().chooseMode;
        if (i == 0) {
            return getPageSelectionArgsForAllMediaCondition(j, getImageMimeTypeCondition(), getVideoMimeTypeCondition(), durationCondition, fileSizeCondition);
        }
        if (i == 1) {
            return getPageSelectionArgsForImageMediaCondition(j, getImageMimeTypeCondition(), fileSizeCondition);
        }
        if (i == 2) {
            return getPageSelectionArgsForVideoMediaCondition(j, getVideoMimeTypeCondition(), durationCondition, fileSizeCondition);
        }
        if (i != 3) {
            return null;
        }
        return getPageSelectionArgsForAudioMediaCondition(j, getAudioMimeTypeCondition(), durationCondition, fileSizeCondition);
    }

    private static String getPageSelectionArgsForAllMediaCondition(long j, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder("(media_type=?");
        sb.append(str);
        sb.append(" OR media_type=?");
        sb.append(str2);
        sb.append(" AND ");
        sb.append(str3);
        sb.append(") AND ");
        if (j == -1) {
            sb.append(str4);
            return sb.toString();
        }
        sb.append("bucket_id=? AND ");
        sb.append(str4);
        return sb.toString();
    }

    private static String getPageSelectionArgsForImageMediaCondition(long j, String str, String str2) {
        StringBuilder sb = new StringBuilder("(media_type=?");
        if (j == -1) {
            sb.append(str);
            sb.append(") AND ");
            sb.append(str2);
            return sb.toString();
        }
        sb.append(str);
        sb.append(") AND bucket_id=? AND ");
        sb.append(str2);
        return sb.toString();
    }

    private static String getPageSelectionArgsForVideoMediaCondition(long j, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("(media_type=?");
        sb.append(str);
        sb.append(" AND ");
        sb.append(str2);
        sb.append(") AND ");
        if (j == -1) {
            sb.append(str3);
            return sb.toString();
        }
        sb.append("bucket_id=? AND ");
        sb.append(str3);
        return sb.toString();
    }

    private static String getPageSelectionArgsForAudioMediaCondition(long j, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("(media_type=?");
        sb.append(str);
        sb.append(" AND ");
        sb.append(str2);
        sb.append(") AND ");
        if (j == -1) {
            sb.append(str3);
            return sb.toString();
        }
        sb.append("bucket_id=? AND ");
        sb.append(str3);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] getPageSelectionArgs(long j) {
        int i = getConfig().chooseMode;
        if (i == 0) {
            if (j == -1) {
                return new String[]{String.valueOf(1), String.valueOf(3)};
            }
            return new String[]{String.valueOf(1), String.valueOf(3), ValueOf.toString(Long.valueOf(j))};
        }
        if (i == 1) {
            return getSelectionArgsForPageSingleMediaType(1, j);
        }
        if (i == 2) {
            return getSelectionArgsForPageSingleMediaType(3, j);
        }
        if (i != 3) {
            return null;
        }
        return getSelectionArgsForPageSingleMediaType(2, j);
    }

    @Override // com.luck.picture.lib.loader.IBridgeMediaLoader
    protected String getSelection() {
        String durationCondition = getDurationCondition();
        String fileSizeCondition = getFileSizeCondition();
        int i = getConfig().chooseMode;
        if (i == 0) {
            return getSelectionArgsForAllMediaCondition(durationCondition, fileSizeCondition, getImageMimeTypeCondition(), getVideoMimeTypeCondition());
        }
        if (i == 1) {
            return getSelectionArgsForImageMediaCondition(fileSizeCondition, getImageMimeTypeCondition());
        }
        if (i == 2) {
            return getSelectionArgsForVideoMediaCondition(durationCondition, getVideoMimeTypeCondition());
        }
        if (i != 3) {
            return null;
        }
        return getSelectionArgsForAudioMediaCondition(durationCondition, getAudioMimeTypeCondition());
    }

    @Override // com.luck.picture.lib.loader.IBridgeMediaLoader
    protected String[] getSelectionArgs() {
        int i = getConfig().chooseMode;
        if (i == 0) {
            return new String[]{String.valueOf(1), String.valueOf(3)};
        }
        if (i == 1) {
            return new String[]{String.valueOf(1)};
        }
        if (i == 2) {
            return new String[]{String.valueOf(3)};
        }
        if (i != 3) {
            return null;
        }
        return new String[]{String.valueOf(2)};
    }

    @Override // com.luck.picture.lib.loader.IBridgeMediaLoader
    protected String getSortOrder() {
        return TextUtils.isEmpty(getConfig().sortOrder) ? "date_modified DESC" : getConfig().sortOrder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isWithAllQuery() {
        if (SdkVersionUtils.isQ()) {
            return true;
        }
        return getConfig().isPageSyncAsCount;
    }

    @Override // com.luck.picture.lib.loader.IBridgeMediaLoader
    protected LocalMedia parseLocalMedia(Cursor cursor, boolean z) {
        String str;
        int i;
        long j;
        int columnIndexOrThrow = cursor.getColumnIndexOrThrow(PROJECTION[0]);
        int columnIndexOrThrow2 = cursor.getColumnIndexOrThrow(PROJECTION[1]);
        int columnIndexOrThrow3 = cursor.getColumnIndexOrThrow(PROJECTION[2]);
        int columnIndexOrThrow4 = cursor.getColumnIndexOrThrow(PROJECTION[3]);
        int columnIndexOrThrow5 = cursor.getColumnIndexOrThrow(PROJECTION[4]);
        int columnIndexOrThrow6 = cursor.getColumnIndexOrThrow(PROJECTION[5]);
        int columnIndexOrThrow7 = cursor.getColumnIndexOrThrow(PROJECTION[6]);
        int columnIndexOrThrow8 = cursor.getColumnIndexOrThrow(PROJECTION[7]);
        int columnIndexOrThrow9 = cursor.getColumnIndexOrThrow(PROJECTION[8]);
        int columnIndexOrThrow10 = cursor.getColumnIndexOrThrow(PROJECTION[9]);
        int columnIndexOrThrow11 = cursor.getColumnIndexOrThrow(PROJECTION[10]);
        int columnIndexOrThrow12 = cursor.getColumnIndexOrThrow(PROJECTION[11]);
        long j2 = cursor.getLong(columnIndexOrThrow);
        String string = cursor.getString(columnIndexOrThrow3);
        String string2 = cursor.getString(columnIndexOrThrow2);
        String realPathUri = SdkVersionUtils.isQ() ? MediaUtils.getRealPathUri(j2, string) : string2;
        if (TextUtils.isEmpty(string)) {
            string = PictureMimeType.ofJPEG();
        }
        if (getConfig().isFilterInvalidFile) {
            if (PictureMimeType.isHasImage(string)) {
                if (!TextUtils.isEmpty(string2) && !PictureFileUtils.isImageFileExists(string2)) {
                    return null;
                }
            } else if (!PictureFileUtils.isFileExists(string2)) {
                return null;
            }
        }
        if (string.endsWith(SelectMimeType.SYSTEM_IMAGE)) {
            string = MediaUtils.getMimeTypeFromMediaUrl(string2);
            str = realPathUri;
            if (!getConfig().isGif && PictureMimeType.isHasGif(string)) {
                return null;
            }
        } else {
            str = realPathUri;
        }
        if (string.endsWith(SelectMimeType.SYSTEM_IMAGE)) {
            return null;
        }
        if (!getConfig().isWebp && string.startsWith(PictureMimeType.ofWEBP())) {
            return null;
        }
        if (!getConfig().isBmp && PictureMimeType.isHasBmp(string)) {
            return null;
        }
        if (!getConfig().isHeic && PictureMimeType.isHasHeic(string)) {
            return null;
        }
        int i2 = cursor.getInt(columnIndexOrThrow4);
        int i3 = cursor.getInt(columnIndexOrThrow5);
        int i4 = cursor.getInt(columnIndexOrThrow12);
        if (i4 == 90 || i4 == 270) {
            i = cursor.getInt(columnIndexOrThrow5);
            i3 = cursor.getInt(columnIndexOrThrow4);
        } else {
            i = i2;
        }
        long j3 = cursor.getLong(columnIndexOrThrow6);
        long j4 = cursor.getLong(columnIndexOrThrow7);
        String string3 = cursor.getString(columnIndexOrThrow8);
        String string4 = cursor.getString(columnIndexOrThrow9);
        long j5 = cursor.getLong(columnIndexOrThrow10);
        long j6 = cursor.getLong(columnIndexOrThrow11);
        if (TextUtils.isEmpty(string4)) {
            string4 = PictureMimeType.getUrlToFileName(string2);
        }
        if (getConfig().isFilterSizeDuration && j4 > 0 && j4 < 1024) {
            return null;
        }
        if (PictureMimeType.isHasVideo(string) || PictureMimeType.isHasAudio(string)) {
            if (getConfig().filterVideoMinSecond > 0) {
                j = j6;
                if (j3 < getConfig().filterVideoMinSecond) {
                    return null;
                }
            } else {
                j = j6;
            }
            if (getConfig().filterVideoMaxSecond > 0 && j3 > getConfig().filterVideoMaxSecond) {
                return null;
            }
            if (getConfig().isFilterSizeDuration && j3 <= 0) {
                return null;
            }
        } else {
            j = j6;
        }
        LocalMedia obtain = z ? LocalMedia.obtain() : LocalMedia.create();
        obtain.setId(j2);
        obtain.setBucketId(j5);
        obtain.setPath(str);
        obtain.setRealPath(string2);
        obtain.setFileName(string4);
        obtain.setParentFolderName(string3);
        obtain.setDuration(j3);
        obtain.setChooseModel(getConfig().chooseMode);
        obtain.setMimeType(string);
        obtain.setWidth(i);
        obtain.setHeight(i3);
        obtain.setSize(j4);
        obtain.setDateAddedTime(j);
        if (this.mConfig.onQueryFilterListener == null || !this.mConfig.onQueryFilterListener.onFilter(obtain)) {
            return obtain;
        }
        return null;
    }
}
