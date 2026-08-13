.class public final Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;
.super Ljava/lang/Object;
.source "AiyybGuidReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader$EocdInfo;
    }
.end annotation


# static fields
.field private static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final APK_SIGNATURE_SCHEME_V3_BLOCK_ID:I = -0xfac9740

.field private static final APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field private static final APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field private static final APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field private static final CHANNEL_HEAD:I = 0x96fa

.field private static final KEY_GUID:Ljava/lang/String; = "guid"

.field private static final UINT16_MAX_VALUE:I = 0xffff

.field private static final YYB_COMMENT_BLOCK_ID:I = 0x71717874

.field private static final ZIP64_EOCD_LOCATOR_SIG_REVERSE_BYTE_ORDER:I = 0x504b0607

.field private static final ZIP64_EOCD_LOCATOR_SIZE:I = 0x14

.field private static final ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field private static final ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET:I = 0x14

.field private static final ZIP_EOCD_REC_MIN_SIZE:I = 0x16

.field private static final ZIP_EOCD_REC_SIG:I = 0x6054b50


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeMsdkComment([B)Ljava/util/Properties;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 466
    array-length v1, p0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v3, 0x2

    .line 472
    new-array v4, v3, [B

    .line 473
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    .line 474
    aget-byte v6, v4, v5

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    const/4 v8, 0x0

    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v6

    const v6, 0x96fa

    if-eq v4, v6, :cond_1

    return-object v0

    .line 478
    :cond_1
    array-length v4, p0

    sub-int/2addr v4, v3

    if-gt v4, v3, :cond_2

    return-object v0

    .line 482
    :cond_2
    new-array v3, v3, [B

    .line 483
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 484
    aget-byte v4, v3, v5

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v7

    aget-byte v3, v3, v8

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    .line 485
    array-length p0, p0

    sub-int/2addr p0, v2

    if-ge p0, v3, :cond_3

    return-object v0

    .line 488
    :cond_3
    new-array p0, v3, [B

    .line 489
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 490
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 491
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catch_0
    :catchall_0
    :cond_4
    :goto_0
    return-object v0
.end method

.method private static findEocd(Ljava/io/RandomAccessFile;)Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader$EocdInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 231
    invoke-static {p0, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->findEocd(Ljava/io/RandomAccessFile;I)Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader$EocdInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0xffff

    .line 235
    invoke-static {p0, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->findEocd(Ljava/io/RandomAccessFile;I)Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader$EocdInfo;

    move-result-object p0

    return-object p0
.end method

.method private static findEocd(Ljava/io/RandomAccessFile;I)Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader$EocdInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_4

    const v0, 0xffff

    if-gt p1, v0, :cond_4

    .line 242
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x16

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    if-gez v5, :cond_0

    return-object v6

    :cond_0
    int-to-long v7, p1

    sub-long v3, v1, v3

    .line 246
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p1, v3

    add-int/lit8 p1, p1, 0x16

    .line 247
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 248
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 250
    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 251
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 253
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    add-int/lit8 p0, p0, -0x16

    .line 254
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v3, :cond_2

    sub-int v7, p0, v4

    .line 260
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    const v9, 0x6054b50

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v7, 0x14

    .line 261
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    and-int/2addr v8, v0

    if-ne v8, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v7, v5

    :goto_1
    if-ne v7, v5, :cond_3

    return-object v6

    .line 271
    :cond_3
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 272
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 273
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 274
    new-instance p1, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader$EocdInfo;

    int-to-long v3, v7

    add-long/2addr v1, v3

    invoke-direct {p1, p0, v1, v2}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader$EocdInfo;-><init>(Ljava/nio/ByteBuffer;J)V

    return-object p1

    .line 240
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maxCommentSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static findPairWithId(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 7

    .line 384
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 389
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 391
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 392
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, v1, :cond_1

    return-object v2

    .line 395
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    const-wide/16 v5, 0x4

    cmp-long v0, v3, v5

    if-ltz v0, :cond_5

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    long-to-int v0, v3

    .line 400
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    .line 401
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v0, v4, :cond_3

    return-object v2

    .line 404
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    if-ne v4, p1, :cond_4

    add-int/lit8 v0, v0, -0x4

    .line 406
    invoke-static {p0, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 408
    :cond_4
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_5
    :goto_1
    return-object v2
.end method

.method private static getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3

    if-ltz p1, :cond_1

    .line 440
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 441
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr p1, v1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 446
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 448
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 449
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 450
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 454
    throw p1

    .line 444
    :cond_0
    new-instance p0, Ljava/nio/BufferUnderflowException;

    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p0

    .line 438
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getCentralDirOffset(Ljava/nio/ByteBuffer;)J
    .locals 4

    .line 288
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 289
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static getEncryptedGuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 79
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 80
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->getEncryptedGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getEncryptedGuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    :try_start_0
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->readYybCommentBytes(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 104
    :cond_1
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->decodeMsdkComment([B)Ljava/util/Properties;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 108
    :cond_2
    const-string v1, "guid"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method private static isZip64Present(Ljava/io/RandomAccessFile;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x14

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 282
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 284
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    const p1, 0x504b0607

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static readApkSigningBlock(Ljava/io/RandomAccessFile;J)Ljava/nio/ByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x18

    .line 352
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 353
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 354
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 355
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v1, 0x8

    .line 356
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, 0x20676953204b5041L

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const/16 v1, 0x10

    .line 357
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v3

    const-wide v5, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 360
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v3

    .line 361
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4

    const-wide/32 v5, 0x7ffffff7

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x8

    add-long/2addr v5, v3

    long-to-int v0, v5

    int-to-long v5, v0

    sub-long/2addr p1, v5

    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-gez v5, :cond_2

    return-object v2

    .line 370
    :cond_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 371
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 373
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {p0, p1, p2, v5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 374
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide p0

    cmp-long p0, p0, v3

    if-eqz p0, :cond_3

    return-object v2

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    return-object v2
.end method

.method private static readEocdCommentBytes(Ljava/io/RandomAccessFile;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return-object v3

    .line 302
    :cond_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x4

    .line 303
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 304
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v4

    move-wide v5, v0

    :goto_0
    const/4 v7, -0x1

    if-eq v4, v7, :cond_3

    sub-long v7, v0, v5

    const-wide/32 v9, 0x200000

    cmp-long v7, v7, v9

    if-gtz v7, :cond_3

    const/4 v7, 0x0

    .line 311
    aget-byte v8, v2, v7

    and-int/lit16 v8, v8, 0xff

    if-ne v4, v8, :cond_2

    .line 312
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v4

    const/4 v8, 0x1

    .line 313
    aget-byte v9, v2, v8

    and-int/lit16 v9, v9, 0xff

    if-ne v4, v9, :cond_2

    .line 314
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v4

    const/4 v9, 0x2

    .line 315
    aget-byte v10, v2, v9

    and-int/lit16 v10, v10, 0xff

    if-ne v4, v10, :cond_2

    .line 316
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v4

    const/4 v10, 0x3

    .line 317
    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    if-ne v4, v10, :cond_2

    const-wide/16 v0, 0x14

    add-long/2addr v5, v0

    .line 331
    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 332
    new-array v0, v9, [B

    .line 333
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 334
    aget-byte v1, v0, v8

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    return-object v3

    .line 338
    :cond_1
    new-array v0, v0, [B

    .line 339
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    return-object v0

    :cond_2
    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 324
    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 325
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v4

    goto :goto_0

    .line 328
    :cond_3
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "archive is not a ZIP archive"

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data
.end method

.method private static readYYBCommentFromSigningBlock(Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 135
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    invoke-static {v1}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->findEocd(Ljava/io/RandomAccessFile;)Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader$EocdInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_0

    .line 169
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    .line 140
    :cond_0
    :try_start_3
    iget-wide v2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader$EocdInfo;->offset:J

    invoke-static {v1, v2, v3}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->isZip64Present(Ljava/io/RandomAccessFile;J)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 169
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v0

    .line 144
    :cond_1
    :try_start_5
    iget-object v2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader$EocdInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->getCentralDirOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    const-wide/16 v4, 0x20

    cmp-long v4, v2, v4

    if-ltz v4, :cond_6

    .line 145
    iget-wide v4, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader$EocdInfo;->offset:J

    cmp-long p0, v2, v4

    if-ltz p0, :cond_2

    goto :goto_0

    .line 148
    :cond_2
    invoke-static {v1, v2, v3}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->readApkSigningBlock(Ljava/io/RandomAccessFile;J)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p0, :cond_3

    .line 169
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return-object v0

    :cond_3
    const v2, 0x7109871a

    .line 153
    :try_start_7
    invoke-static {p0, v2}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->findPairWithId(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_4

    const v2, -0xfac9740

    .line 154
    invoke-static {p0, v2}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->findPairWithId(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v2, :cond_4

    .line 169
    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    return-object v0

    :cond_4
    const v2, 0x71717874

    .line 157
    :try_start_9
    invoke-static {p0, v2}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->findPairWithId(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez p0, :cond_5

    .line 169
    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    return-object v0

    .line 161
    :cond_5
    :try_start_b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 162
    invoke-virtual {p0, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 169
    :try_start_c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :catch_5
    return-object v3

    :cond_6
    :goto_0
    :try_start_d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :catch_6
    return-object v0

    :catchall_0
    move-object v1, v0

    :catchall_1
    if-eqz v1, :cond_7

    :try_start_e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    :catch_7
    :cond_7
    return-object v0
.end method

.method private static readYybCommentBytes(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->readYYBCommentFromSigningBlock(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 125
    :cond_0
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->readZipEocdComment(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static readZipEocdComment(Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 183
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    .line 208
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    .line 187
    :cond_0
    :try_start_3
    invoke-static {v1}, Lyyb/ai/y1779639959407c7f49371b3978075/AiyybGuidReader;->readEocdCommentBytes(Ljava/io/RandomAccessFile;)[B

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p0, :cond_1

    .line 208
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 192
    :goto_0
    :try_start_5
    array-length v3, p0

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    .line 194
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 195
    aget-byte v4, p0, v3

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    .line 196
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    const v5, 0x96fa

    if-ne v4, v5, :cond_2

    .line 198
    array-length v3, p0

    invoke-static {p0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 208
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return-object p0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    return-object v0

    :catchall_0
    move-object v1, v0

    :catchall_1
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :cond_4
    return-object v0
.end method

.method private static sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 3

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    .line 417
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 420
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 421
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v2, 0x0

    .line 423
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 424
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 425
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 426
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 427
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 431
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 432
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_0
    move-exception p1

    .line 430
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 431
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 432
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 433
    throw p1

    .line 418
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid slice ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
