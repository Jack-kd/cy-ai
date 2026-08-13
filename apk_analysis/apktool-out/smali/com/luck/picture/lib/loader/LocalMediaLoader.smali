.class public final Lcom/luck/picture/lib/loader/LocalMediaLoader;
.super Lcom/luck/picture/lib/loader/IBridgeMediaLoader;
.source "LocalMediaLoader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/loader/LocalMediaLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getImageFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object p0

    return-object p0
.end method

.method private getImageFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;"
        }
    .end annotation

    .line 372
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 374
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 378
    :cond_1
    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 382
    :cond_2
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 383
    invoke-virtual {v0, p3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderName(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 386
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getSelectionArgsForAllMediaCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(media_type=?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " OR media_type=?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") AND "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSelectionArgsForAudioMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "media_type=?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSelectionArgsForImageMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "media_type=?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSelectionArgsForVideoMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "media_type=?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAlbumFirstCover(J)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 4

    .line 211
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getDurationCondition()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getFileSizeCondition()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v2

    iget v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getAudioMimeTypeCondition()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getSelectionArgsForAudioMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getVideoMimeTypeCondition()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getSelectionArgsForVideoMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getImageMimeTypeCondition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getSelectionArgsForImageMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 216
    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getImageMimeTypeCondition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getVideoMimeTypeCondition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getSelectionArgsForAllMediaCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .line 232
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 246
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 240
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSortOrder()Ljava/lang/String;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->sortOrder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "date_modified DESC"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->sortOrder:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public loadAllAlbum(Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/loader/LocalMediaLoader$1;-><init>(Lcom/luck/picture/lib/loader/LocalMediaLoader;Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener;)V

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    return-void
.end method

.method public loadOnlyInAppDirAllMedia(Lcom/luck/picture/lib/interfaces/OnQueryAlbumListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/interfaces/OnQueryAlbumListener<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 182
    new-instance v0, Lcom/luck/picture/lib/loader/LocalMediaLoader$2;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/loader/LocalMediaLoader$2;-><init>(Lcom/luck/picture/lib/loader/LocalMediaLoader;Lcom/luck/picture/lib/interfaces/OnQueryAlbumListener;)V

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    return-void
.end method

.method public loadPageMediaData(JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/luck/picture/lib/interfaces/OnQueryDataResultListener<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected parseLocalMedia(Landroid/database/Cursor;Z)Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 258
    sget-object v2, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 259
    sget-object v3, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 260
    sget-object v4, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 261
    sget-object v5, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 262
    sget-object v6, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 263
    sget-object v7, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 264
    sget-object v8, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 265
    sget-object v9, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x7

    aget-object v9, v9, v10

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 266
    sget-object v10, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    const/16 v11, 0x8

    aget-object v10, v10, v11

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 267
    sget-object v11, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    const/16 v12, 0x9

    aget-object v11, v11, v12

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 268
    sget-object v12, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    const/16 v13, 0xa

    aget-object v12, v12, v13

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 269
    sget-object v13, Lcom/luck/picture/lib/loader/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    const/16 v14, 0xb

    aget-object v13, v13, v14

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 270
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move/from16 p2, v11

    .line 271
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 272
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v14, v15, v2}, Lcom/luck/picture/lib/utils/MediaUtils;->getRealPathUri(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 275
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofJPEG()Ljava/lang/String;

    move-result-object v2

    .line 278
    :cond_1
    const-string v0, "image/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_2

    .line 279
    invoke-static {v3}, Lcom/luck/picture/lib/utils/MediaUtils;->getMimeTypeFromMediaUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v18, v11

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v11

    iget-boolean v11, v11, Lcom/luck/picture/lib/config/SelectorConfig;->isGif:Z

    if-nez v11, :cond_3

    .line 281
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasGif(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    return-object v17

    :cond_2
    move-wide/from16 v18, v11

    .line 287
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v17

    .line 291
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isWebp:Z

    if-nez v0, :cond_5

    .line 292
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofWEBP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v17

    .line 296
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isBmp:Z

    if-nez v0, :cond_6

    .line 297
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasBmp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v17

    .line 301
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isHeic:Z

    if-nez v0, :cond_7

    .line 302
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHeic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v17

    .line 307
    :cond_7
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 308
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 309
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/16 v13, 0x5a

    if-eq v12, v13, :cond_8

    const/16 v13, 0x10e

    if-ne v12, v13, :cond_9

    .line 311
    :cond_8
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 312
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 314
    :cond_9
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 315
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 316
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 317
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v12, p2

    .line 318
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 319
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 320
    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->getUrlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 322
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isFilterSizeDuration:Z

    const-wide/16 v20, 0x0

    if-eqz v1, :cond_b

    cmp-long v1, v7, v20

    if-lez v1, :cond_b

    const-wide/16 v22, 0x400

    cmp-long v1, v7, v22

    if-gez v1, :cond_b

    return-object v17

    .line 326
    :cond_b
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_1

    :cond_c
    move-wide/from16 v22, v7

    goto :goto_2

    .line 327
    :cond_d
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v1

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMinSecond:I

    if-lez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v1

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMinSecond:I

    move-wide/from16 v22, v7

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-gez v1, :cond_f

    return-object v17

    :cond_e
    move-wide/from16 v22, v7

    .line 331
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v1

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMaxSecond:I

    if-lez v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v1

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMaxSecond:I

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-lez v1, :cond_10

    return-object v17

    .line 335
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isFilterSizeDuration:Z

    if-eqz v1, :cond_11

    cmp-long v1, v5, v20

    if-gtz v1, :cond_11

    return-object v17

    .line 340
    :cond_11
    :goto_2
    invoke-static {}, Lcom/luck/picture/lib/entity/LocalMedia;->create()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v1

    .line 341
    invoke-virtual {v1, v14, v15}, Lcom/luck/picture/lib/entity/LocalMedia;->setId(J)V

    .line 342
    invoke-virtual {v1, v12, v13}, Lcom/luck/picture/lib/entity/LocalMedia;->setBucketId(J)V

    .line 343
    invoke-virtual {v1, v4}, Lcom/luck/picture/lib/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setRealPath(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v1, v10}, Lcom/luck/picture/lib/entity/LocalMedia;->setFileName(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v1, v9}, Lcom/luck/picture/lib/entity/LocalMedia;->setParentFolderName(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1, v5, v6}, Lcom/luck/picture/lib/entity/LocalMedia;->setDuration(J)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v3

    iget v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setChooseModel(I)V

    .line 349
    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setMimeType(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 351
    invoke-virtual {v1, v11}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    move-wide/from16 v2, v22

    .line 352
    invoke-virtual {v1, v2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setSize(J)V

    move-wide/from16 v2, v18

    .line 353
    invoke-virtual {v1, v2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setDateAddedTime(J)V

    move-object/from16 v0, p0

    .line 354
    iget-object v2, v0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->onQueryFilterListener:Lcom/luck/picture/lib/interfaces/OnQueryFilterListener;

    if-eqz v2, :cond_12

    .line 355
    iget-object v2, v0, Lcom/luck/picture/lib/loader/LocalMediaLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->onQueryFilterListener:Lcom/luck/picture/lib/interfaces/OnQueryFilterListener;

    invoke-interface {v2, v1}, Lcom/luck/picture/lib/interfaces/OnQueryFilterListener;->onFilter(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v17

    :cond_12
    return-object v1
.end method
