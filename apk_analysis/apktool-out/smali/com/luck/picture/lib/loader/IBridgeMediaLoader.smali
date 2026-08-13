.class public abstract Lcom/luck/picture/lib/loader/IBridgeMediaLoader;
.super Ljava/lang/Object;
.source "IBridgeMediaLoader.java"


# static fields
.field protected static final ALL_PROJECTION:[Ljava/lang/String;

.field protected static final COLUMN_BUCKET_DISPLAY_NAME:Ljava/lang/String; = "bucket_display_name"

.field protected static final COLUMN_BUCKET_ID:Ljava/lang/String; = "bucket_id"

.field protected static final COLUMN_COUNT:Ljava/lang/String; = "count"

.field protected static final COLUMN_DURATION:Ljava/lang/String; = "duration"

.field protected static final COLUMN_ORIENTATION:Ljava/lang/String; = "orientation"

.field protected static final DISTINCT_BUCKET_Id:Ljava/lang/String; = "DISTINCT bucket_id"

.field protected static final GROUP_BY_BUCKET_Id:Ljava/lang/String; = " GROUP BY (bucket_id"

.field protected static final MAX_SORT_SIZE:I = 0x3c

.field protected static final NOT_BMP:Ljava/lang/String; = " AND (mime_type!=\'image/bmp\')"

.field protected static final NOT_GIF:Ljava/lang/String; = " AND (mime_type!=\'image/gif\')"

.field protected static final NOT_HEIC:Ljava/lang/String; = " AND (mime_type!=\'image/heic\')"

.field protected static final NOT_VND_WAP_BMP:Ljava/lang/String; = " AND (mime_type!=\'image/vnd.wap.wbmp\')"

.field protected static final NOT_WEBP:Ljava/lang/String; = " AND (mime_type!=\'image/webp\')"

.field protected static final NOT_XMS_BMP:Ljava/lang/String; = " AND (mime_type!=\'image/x-ms-bmp\')"

.field protected static final ORDER_BY:Ljava/lang/String; = "date_modified DESC"

.field protected static final PROJECTION:[Ljava/lang/String;

.field protected static final QUERY_URI:Landroid/net/Uri;

.field protected static final TAG:Ljava/lang/String; = "IBridgeMediaLoader"


# instance fields
.field protected final mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 26
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->QUERY_URI:Landroid/net/Uri;

    .line 63
    const-string v11, "date_added"

    const-string v12, "orientation"

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v3, "mime_type"

    const-string v4, "width"

    const-string v5, "height"

    const-string v6, "duration"

    const-string v7, "_size"

    const-string v8, "bucket_display_name"

    const-string v9, "_display_name"

    const-string v10, "bucket_id"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->PROJECTION:[Ljava/lang/String;

    .line 80
    const-string v12, "orientation"

    const-string v13, "COUNT(*) AS count"

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v3, "mime_type"

    const-string v4, "width"

    const-string v5, "height"

    const-string v6, "duration"

    const-string v7, "_size"

    const-string v8, "bucket_display_name"

    const-string v9, "_display_name"

    const-string v10, "bucket_id"

    const-string v11, "date_added"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->ALL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-void
.end method


# virtual methods
.method public abstract getAlbumFirstCover(J)Ljava/lang/String;
.end method

.method protected getAudioMimeTypeCondition()Ljava/lang/String;
    .locals 5

    .line 213
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyAudioList:Ljava/util/List;

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 215
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 216
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 217
    const-string v4, " AND "

    goto :goto_1

    :cond_0
    const-string v4, " OR "

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mime_type=\'"

    .line 218
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    .line 219
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConfig()Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDurationCondition()Ljava/lang/String;
    .locals 7

    .line 156
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMaxSecond:I

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMaxSecond:I

    int-to-long v0, v0

    .line 157
    :goto_0
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 158
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v3

    iget v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMinSecond:I

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "="

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    aput-object v0, v1, v3

    .line 157
    const-string v0, "%d <%s duration and duration <= %d"

    invoke-static {v2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFileSizeCondition()Ljava/lang/String;
    .locals 7

    .line 167
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-wide v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->filterMaxFileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-wide v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->filterMaxFileSize:J

    .line 168
    :goto_0
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 169
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v5

    iget-wide v5, v5, Lcom/luck/picture/lib/config/SelectorConfig;->filterMinFileSize:J

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "="

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 168
    const-string v0, "%d <%s _size and _size <= %d"

    invoke-static {v4, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getImageMimeTypeCondition()Ljava/lang/String;
    .locals 5

    .line 173
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/List;

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 175
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 176
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 177
    const-string v4, " AND "

    goto :goto_1

    :cond_0
    const-string v4, " OR "

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mime_type=\'"

    .line 178
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isGif:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/List;

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofGIF()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    const-string v0, " AND (mime_type!=\'image/gif\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isWebp:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/List;

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofWEBP()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    const-string v0, " AND (mime_type!=\'image/webp\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isBmp:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/List;

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofBMP()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 188
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/List;

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofXmsBMP()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 189
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/List;

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofWapBMP()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 191
    const-string v0, " AND (mime_type!=\'image/bmp\') AND (mime_type!=\'image/x-ms-bmp\') AND (mime_type!=\'image/vnd.wap.wbmp\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isHeic:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/List;

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofHeic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 194
    const-string v0, " AND (mime_type!=\'image/heic\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getSelection()Ljava/lang/String;
.end method

.method protected abstract getSelectionArgs()[Ljava/lang/String;
.end method

.method protected abstract getSortOrder()Ljava/lang/String;
.end method

.method protected getVideoMimeTypeCondition()Ljava/lang/String;
    .locals 5

    .line 201
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyVideoList:Ljava/util/List;

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 203
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 204
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 205
    const-string v4, " AND "

    goto :goto_1

    :cond_0
    const-string v4, " OR "

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mime_type=\'"

    .line 206
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    .line 207
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract loadAllAlbum(Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadOnlyInAppDirAllMedia(Lcom/luck/picture/lib/interfaces/OnQueryAlbumListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/interfaces/OnQueryAlbumListener<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadPageMediaData(JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/luck/picture/lib/interfaces/OnQueryDataResultListener<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract parseLocalMedia(Landroid/database/Cursor;Z)Lcom/luck/picture/lib/entity/LocalMedia;
.end method
