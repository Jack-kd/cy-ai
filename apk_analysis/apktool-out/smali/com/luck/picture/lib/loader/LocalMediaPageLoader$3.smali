.class Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;
.super Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;
.source "LocalMediaPageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->loadAllAlbum(Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask<",
        "Ljava/util/List<",
        "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

.field final synthetic val$query:Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/loader/LocalMediaPageLoader;Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    iput-object p2, p0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->val$query:Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener;

    invoke-direct {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->doInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doInBackground()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 266
    iget-object v0, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {v0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->QUERY_URI:Landroid/net/Uri;

    iget-object v0, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-static {v0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->access$200(Lcom/luck/picture/lib/loader/LocalMediaPageLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->ALL_PROJECTION:[Ljava/lang/String;

    :goto_0
    move-object v4, v0

    iget-object v0, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    .line 267
    invoke-virtual {v0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getSelection()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {v0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {v0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v7

    .line 266
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 270
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-lez v0, :cond_16

    .line 274
    iget-object v0, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-static {v0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->access$200(Lcom/luck/picture/lib/loader/LocalMediaPageLoader;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "bucket_id"

    const-string v5, "mime_type"

    const-string v6, "bucket_display_name"

    if-eqz v0, :cond_7

    .line 275
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 277
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 278
    iget-object v9, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {v9}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v9

    iget-boolean v9, v9, Lcom/luck/picture/lib/config/SelectorConfig;->isPageSyncAsCount:Z

    if-eqz v9, :cond_2

    .line 279
    iget-object v9, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    const/4 v10, 0x1

    invoke-virtual {v9, v2, v10}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->parseLocalMedia(Landroid/database/Cursor;Z)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_1

    .line 283
    :cond_1
    invoke-virtual {v9}, Lcom/luck/picture/lib/entity/LocalMedia;->recycle()V

    .line 285
    :cond_2
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 286
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    const-wide/16 v12, 0x1

    if-nez v11, :cond_3

    .line 288
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_2

    .line 290
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-long/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 292
    :goto_2
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_1

    .line 297
    :cond_4
    new-instance v11, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v11}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 298
    invoke-virtual {v11, v9, v10}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 300
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 299
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 301
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 302
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_1

    .line 305
    :cond_5
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 306
    const-string v15, "_id"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v16, v8

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 307
    invoke-virtual {v11, v12}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderName(Ljava/lang/String;)V

    .line 308
    invoke-static {v14}, Lcom/luck/picture/lib/utils/ValueOf;->toInt(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderTotalNum(I)V

    .line 309
    invoke-static {v7, v8, v13}, Lcom/luck/picture/lib/utils/MediaUtils;->getRealPathUri(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v11, v13}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 311
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v8, v16

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 314
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 315
    invoke-virtual {v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/luck/picture/lib/utils/ValueOf;->toInt(Ljava/lang/Object;)I

    move-result v7

    .line 316
    invoke-virtual {v6, v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderTotalNum(I)V

    add-int/2addr v5, v7

    goto :goto_3

    .line 320
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 322
    :cond_8
    const-string v7, "_data"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 323
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 324
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 325
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 326
    const-string v12, "count"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 327
    new-instance v13, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v13}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 328
    invoke-virtual {v13, v10, v11}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 329
    invoke-virtual {v13, v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v13, v8}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderName(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v13, v9}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v13, v12}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderTotalNum(I)V

    .line 333
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v12

    .line 335
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_8

    move v5, v0

    .line 338
    :cond_9
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 339
    iget-object v4, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    .line 340
    invoke-virtual {v4}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {v6}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/luck/picture/lib/config/SelectorConfig;->sandboxDir:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/luck/picture/lib/loader/SandboxFileLoader;->loadInAppSandboxFolderFile(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 342
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFirstImagePath()Ljava/lang/String;

    move-result-object v6

    .line 344
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 346
    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderTotalNum()I

    move-result v8

    add-int/2addr v5, v8

    .line 347
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v8}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setData(Ljava/util/ArrayList;)V

    .line 348
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 349
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->access$300(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_a
    invoke-static {v2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->access$400(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v0, v8}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 350
    invoke-static {v2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->access$500(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFirstImagePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 353
    iget-object v8, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {v8}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFirstImagePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/luck/picture/lib/utils/PictureFileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 354
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    goto :goto_5

    .line 356
    :cond_b
    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFirstImagePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    :goto_5
    cmp-long v6, v6, v8

    if-lez v6, :cond_e

    .line 359
    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFirstImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFirstMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    goto :goto_7

    .line 364
    :cond_c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 365
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->access$300(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_d
    invoke-static {v2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->access$400(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v0, v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 366
    invoke-static {v2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->access$500(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_e
    :goto_7
    if-nez v5, :cond_10

    if-eqz v2, :cond_f

    .line 396
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 397
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f
    return-object v3

    .line 372
    :cond_10
    :try_start_2
    invoke-static {v3}, Lcom/luck/picture/lib/utils/SortUtils;->sortFolder(Ljava/util/List;)V

    .line 373
    invoke-virtual {v0, v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderTotalNum(I)V

    const-wide/16 v4, -0x1

    .line 374
    invoke-virtual {v0, v4, v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 376
    iget-object v4, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {v4}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 377
    iget-object v4, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {v4}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v4

    iget v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v5

    if-ne v4, v5, :cond_11

    .line 378
    iget-object v4, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {v4}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/luck/picture/lib/R$string;->ps_all_audio:I

    :goto_8
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_11
    iget-object v4, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {v4}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/luck/picture/lib/R$string;->ps_camera_roll:I

    goto :goto_8

    .line 380
    :cond_12
    iget-object v4, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {v4}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    .line 382
    :goto_9
    invoke-virtual {v0, v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderName(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 383
    invoke-interface {v3, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 384
    iget-object v0, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {v0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isSyncCover:Z

    if-eqz v0, :cond_13

    .line 385
    iget-object v0, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {v0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAll()I

    move-result v4

    if-ne v0, v4, :cond_13

    .line 386
    iget-object v0, v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->this$0:Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-static {v0, v3}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->access$600(Lcom/luck/picture/lib/loader/LocalMediaPageLoader;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_13
    if-eqz v2, :cond_14

    .line 396
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 397
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_14
    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 393
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    sget-object v3, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAllMedia Data Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_17

    .line 396
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_b

    :goto_a
    if-eqz v2, :cond_15

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_15

    .line 397
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 399
    :cond_15
    throw v0

    :cond_16
    if-eqz v2, :cond_17

    .line 396
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 397
    :goto_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 263
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 405
    invoke-static {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->cancel(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    .line 406
    invoke-static {}, Lcom/luck/picture/lib/entity/LocalMedia;->destroyPool()V

    .line 407
    iget-object v0, p0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;->val$query:Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener;

    if-eqz v0, :cond_0

    .line 408
    invoke-interface {v0, p1}, Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener;->onComplete(Ljava/util/List;)V

    :cond_0
    return-void
.end method
