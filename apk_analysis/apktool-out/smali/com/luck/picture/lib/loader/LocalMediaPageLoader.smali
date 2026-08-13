.class public final Lcom/luck/picture/lib/loader/LocalMediaPageLoader;
.super Lcom/luck/picture/lib/loader/IBridgeMediaLoader;
.source "LocalMediaPageLoader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/loader/LocalMediaPageLoader;J)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getPageSelection(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/loader/LocalMediaPageLoader;J)[Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getPageSelectionArgs(J)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/loader/LocalMediaPageLoader;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->isWithAllQuery()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getFirstUri(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getFirstUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getFirstCoverMimeType(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/luck/picture/lib/loader/LocalMediaPageLoader;Ljava/util/List;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->synchronousFirstCover(Ljava/util/List;)V

    return-void
.end method

.method private static getFirstCoverMimeType(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 452
    const-string v0, "mime_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFirstUri(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    .line 440
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 441
    const-string v2, "mime_type"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 442
    invoke-static {v0, v1, p0}, Lcom/luck/picture/lib/utils/MediaUtils;->getRealPathUri(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFirstUrl(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 462
    const-string v0, "_data"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPageSelection(J)Ljava/lang/String;
    .locals 6

    .line 466
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getDurationCondition()Ljava/lang/String;

    move-result-object v4

    .line 467
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getFileSizeCondition()Ljava/lang/String;

    move-result-object v5

    .line 468
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getAudioMimeTypeCondition()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, v4, v5}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getPageSelectionArgsForAudioMediaCondition(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 477
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getVideoMimeTypeCondition()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, v4, v5}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getPageSelectionArgsForVideoMediaCondition(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 474
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getImageMimeTypeCondition()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, v5}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getPageSelectionArgsForImageMediaCondition(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 471
    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getImageMimeTypeCondition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getVideoMimeTypeCondition()Ljava/lang/String;

    move-result-object v3

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getPageSelectionArgsForAllMediaCondition(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPageSelectionArgs(J)[Ljava/lang/String;
    .locals 5

    .line 537
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 560
    :cond_0
    invoke-static {v2, p1, p2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getSelectionArgsForPageSingleMediaType(IJ)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 557
    :cond_1
    invoke-static {v1, p1, p2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getSelectionArgsForPageSingleMediaType(IJ)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 554
    :cond_2
    invoke-static {v2, p1, p2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getSelectionArgsForPageSingleMediaType(IJ)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-wide/16 v3, -0x1

    cmp-long v0, p1, v3

    if-nez v0, :cond_4

    .line 542
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 543
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 548
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/utils/ValueOf;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getPageSelectionArgsForAllMediaCondition(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(media_type=?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " OR media_type=?"

    .line 493
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    .line 495
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") AND "

    .line 497
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 p2, -0x1

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    .line 500
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 502
    :cond_0
    const-string p0, "bucket_id=? AND "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPageSelectionArgsForAudioMediaCondition(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(media_type=?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 p2, -0x1

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    .line 530
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 532
    :cond_0
    const-string p0, "bucket_id=? AND "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPageSelectionArgsForImageMediaCondition(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(media_type=?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    cmp-long p0, p0, v1

    if-nez p0, :cond_0

    .line 510
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") AND "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 512
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") AND bucket_id=? AND "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPageSelectionArgsForVideoMediaCondition(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(media_type=?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 p2, -0x1

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    .line 520
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 522
    :cond_0
    const-string p0, "bucket_id=? AND "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSelectionArgsForAllMediaCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(media_type=?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " OR media_type=?"

    .line 66
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " AND "

    .line 68
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") AND "

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->isWithAllQuery()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    const-string p1, ") GROUP BY (bucket_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSelectionArgsForAudioMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    invoke-direct {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->isWithAllQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "media_type=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 127
    :cond_0
    const-string v1, "(media_type=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") GROUP BY (bucket_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSelectionArgsForImageMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-direct {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->isWithAllQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "media_type=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    const-string v1, "(media_type=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") GROUP BY (bucket_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getSelectionArgsForPageSingleMediaType(IJ)[Ljava/lang/String;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 138
    new-array p1, v1, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/luck/picture/lib/utils/ValueOf;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getSelectionArgsForVideoMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-direct {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->isWithAllQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "media_type=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 111
    :cond_0
    const-string v1, "(media_type=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") GROUP BY (bucket_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isWithAllQuery()Z
    .locals 1

    .line 617
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPageSyncAsCount:Z

    return v0
.end method

.method private synchronousFirstCover(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 420
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 421
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-nez v1, :cond_0

    goto :goto_1

    .line 425
    :cond_0
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getAlbumFirstCover(J)Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 429
    :cond_1
    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getAlbumFirstCover(J)Ljava/lang/String;
    .locals 13

    const/4 v0, 0x0

    .line 145
    :try_start_0
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isR()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "_data"

    const-string v3, "mime_type"

    const-string v4, "_id"

    if-eqz v1, :cond_0

    .line 146
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getPageSelection(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getPageSelectionArgs(J)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getSortOrder()Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v1, p1, v5, v6, p2}, Lcom/luck/picture/lib/utils/MediaUtils;->createQueryArgsBundle(Ljava/lang/String;[Ljava/lang/String;IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 147
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->QUERY_URI:Landroid/net/Uri;

    filled-new-array {v4, v3, v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v1, v5, p1, v0}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " limit 1 offset 0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 153
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->QUERY_URI:Landroid/net/Uri;

    filled-new-array {v4, v3, v2}, [Ljava/lang/String;

    move-result-object v8

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getPageSelection(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getPageSelectionArgs(J)[Ljava/lang/String;

    move-result-object v10

    .line 153
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz p1, :cond_5

    .line 158
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_5

    .line 159
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 160
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 161
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 162
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v4, v5, p2}, Lcom/luck/picture/lib/utils/MediaUtils;->getRealPathUri(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 163
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz p1, :cond_2

    .line 170
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    .line 170
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_4

    .line 171
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_4

    :catch_0
    move-exception p2

    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 170
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_6

    .line 171
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object p2, v0

    .line 168
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p2, :cond_6

    .line 170
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_6

    .line 171
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    return-object v0

    :catchall_2
    move-exception p1

    move-object v0, p2

    :goto_4
    if-eqz v0, :cond_7

    .line 170
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_7

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_7
    throw p1
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 4

    .line 567
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getDurationCondition()Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getFileSizeCondition()Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

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

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getAudioMimeTypeCondition()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getSelectionArgsForAudioMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getVideoMimeTypeCondition()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getSelectionArgsForVideoMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 576
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getImageMimeTypeCondition()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getSelectionArgsForImageMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 573
    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getImageMimeTypeCondition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getVideoMimeTypeCondition()Ljava/lang/String;

    move-result-object v3

    .line 572
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getSelectionArgsForAllMediaCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .line 589
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

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

    .line 603
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 600
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 597
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 593
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSortOrder()Ljava/lang/String;
    .locals 1

    .line 610
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->sortOrder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "date_modified DESC"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

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

    .line 263
    new-instance v0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$3;-><init>(Lcom/luck/picture/lib/loader/LocalMediaPageLoader;Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener;)V

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

    .line 239
    new-instance v0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$2;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$2;-><init>(Lcom/luck/picture/lib/loader/LocalMediaPageLoader;Lcom/luck/picture/lib/interfaces/OnQueryAlbumListener;)V

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    return-void
.end method

.method public loadPageMediaData(JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/luck/picture/lib/interfaces/OnQueryDataResultListener<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 180
    new-instance v7, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move v4, p4

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader$1;-><init>(Lcom/luck/picture/lib/loader/LocalMediaPageLoader;JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V

    invoke-static {v7}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    return-void
.end method

.method protected parseLocalMedia(Landroid/database/Cursor;Z)Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 626
    sget-object v2, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 627
    sget-object v3, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 628
    sget-object v4, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 629
    sget-object v5, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 630
    sget-object v6, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 631
    sget-object v7, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 632
    sget-object v8, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 633
    sget-object v9, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x7

    aget-object v9, v9, v10

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 634
    sget-object v10, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->PROJECTION:[Ljava/lang/String;

    const/16 v11, 0x8

    aget-object v10, v10, v11

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 635
    sget-object v11, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->PROJECTION:[Ljava/lang/String;

    const/16 v12, 0x9

    aget-object v11, v11, v12

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 636
    sget-object v12, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->PROJECTION:[Ljava/lang/String;

    const/16 v13, 0xa

    aget-object v12, v12, v13

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 637
    sget-object v13, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->PROJECTION:[Ljava/lang/String;

    const/16 v14, 0xb

    aget-object v13, v13, v14

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 638
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 639
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 641
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v14, v15, v2}, Lcom/luck/picture/lib/utils/MediaUtils;->getRealPathUri(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 642
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofJPEG()Ljava/lang/String;

    move-result-object v2

    .line 643
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isFilterInvalidFile:Z

    const/16 v16, 0x0

    if-eqz v0, :cond_3

    .line 644
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lcom/luck/picture/lib/utils/PictureFileUtils;->isImageFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v16

    .line 649
    :cond_2
    invoke-static {v3}, Lcom/luck/picture/lib/utils/PictureFileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v16

    .line 656
    :cond_3
    const-string v0, "image/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 657
    invoke-static {v3}, Lcom/luck/picture/lib/utils/MediaUtils;->getMimeTypeFromMediaUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v4

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->isGif:Z

    if-nez v4, :cond_5

    .line 659
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasGif(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v16

    :cond_4
    move-object/from16 v17, v4

    .line 664
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v16

    .line 667
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isWebp:Z

    if-nez v0, :cond_7

    .line 668
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofWEBP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v16

    .line 672
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isBmp:Z

    if-nez v0, :cond_8

    .line 673
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasBmp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object v16

    .line 677
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isHeic:Z

    if-nez v0, :cond_9

    .line 678
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHeic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object v16

    .line 682
    :cond_9
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 683
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 684
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v18, v0

    const/16 v0, 0x5a

    if-eq v13, v0, :cond_b

    const/16 v0, 0x10e

    if-ne v13, v0, :cond_a

    goto :goto_1

    :cond_a
    move/from16 v0, v18

    goto :goto_2

    .line 686
    :cond_b
    :goto_1
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 687
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 689
    :goto_2
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 690
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 691
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 692
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-wide/from16 v18, v14

    .line 693
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 694
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 695
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 696
    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->getUrlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 698
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isFilterSizeDuration:Z

    const-wide/16 v20, 0x0

    if-eqz v1, :cond_d

    cmp-long v1, v7, v20

    if-lez v1, :cond_d

    const-wide/16 v22, 0x400

    cmp-long v1, v7, v22

    if-gez v1, :cond_d

    return-object v16

    .line 702
    :cond_d
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3

    :cond_e
    move-wide/from16 v22, v11

    goto :goto_4

    .line 703
    :cond_f
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v1

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMinSecond:I

    if-lez v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v1

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMinSecond:I

    move-wide/from16 v22, v11

    int-to-long v11, v1

    cmp-long v1, v5, v11

    if-gez v1, :cond_11

    return-object v16

    :cond_10
    move-wide/from16 v22, v11

    .line 707
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v1

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMaxSecond:I

    if-lez v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v1

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMaxSecond:I

    int-to-long v11, v1

    cmp-long v1, v5, v11

    if-lez v1, :cond_12

    return-object v16

    .line 711
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isFilterSizeDuration:Z

    if-eqz v1, :cond_13

    cmp-long v1, v5, v20

    if-gtz v1, :cond_13

    return-object v16

    :cond_13
    :goto_4
    if-eqz p2, :cond_14

    .line 716
    invoke-static {}, Lcom/luck/picture/lib/entity/LocalMedia;->obtain()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v1

    goto :goto_5

    :cond_14
    invoke-static {}, Lcom/luck/picture/lib/entity/LocalMedia;->create()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v1

    :goto_5
    move-wide/from16 v11, v18

    .line 717
    invoke-virtual {v1, v11, v12}, Lcom/luck/picture/lib/entity/LocalMedia;->setId(J)V

    .line 718
    invoke-virtual {v1, v13, v14}, Lcom/luck/picture/lib/entity/LocalMedia;->setBucketId(J)V

    move-object/from16 v11, v17

    .line 719
    invoke-virtual {v1, v11}, Lcom/luck/picture/lib/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setRealPath(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v1, v10}, Lcom/luck/picture/lib/entity/LocalMedia;->setFileName(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v1, v9}, Lcom/luck/picture/lib/entity/LocalMedia;->setParentFolderName(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v1, v5, v6}, Lcom/luck/picture/lib/entity/LocalMedia;->setDuration(J)V

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->getConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v3

    iget v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setChooseModel(I)V

    .line 725
    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setMimeType(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 727
    invoke-virtual {v1, v4}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    .line 728
    invoke-virtual {v1, v7, v8}, Lcom/luck/picture/lib/entity/LocalMedia;->setSize(J)V

    move-wide/from16 v2, v22

    .line 729
    invoke-virtual {v1, v2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setDateAddedTime(J)V

    move-object/from16 v0, p0

    .line 730
    iget-object v2, v0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->onQueryFilterListener:Lcom/luck/picture/lib/interfaces/OnQueryFilterListener;

    if-eqz v2, :cond_15

    .line 731
    iget-object v2, v0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->onQueryFilterListener:Lcom/luck/picture/lib/interfaces/OnQueryFilterListener;

    invoke-interface {v2, v1}, Lcom/luck/picture/lib/interfaces/OnQueryFilterListener;->onFilter(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v2

    if-eqz v2, :cond_15

    return-object v16

    :cond_15
    return-object v1
.end method
