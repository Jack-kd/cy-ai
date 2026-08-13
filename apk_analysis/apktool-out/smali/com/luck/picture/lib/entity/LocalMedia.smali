.class public Lcom/luck/picture/lib/entity/LocalMedia;
.super Ljava/lang/Object;
.source "LocalMedia.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private static sPool:Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bucketId:J

.field private chooseModel:I

.field private compareLocalMedia:Lcom/luck/picture/lib/entity/LocalMedia;

.field private compressPath:Ljava/lang/String;

.field private compressed:Z

.field private cropImageHeight:I

.field private cropImageWidth:I

.field private cropOffsetX:I

.field private cropOffsetY:I

.field private cropResultAspectRatio:F

.field private customData:Ljava/lang/String;

.field private cutPath:Ljava/lang/String;

.field private dateAddedTime:J

.field private duration:J

.field private fileName:Ljava/lang/String;

.field private height:I

.field private id:J

.field private isCameraSource:Z

.field private isChecked:Z

.field private isCut:Z

.field private isEditorImage:Z

.field private isGalleryEnabledMask:Z

.field private isMaxSelectEnabledMask:Z

.field private isOriginal:Z

.field private mimeType:Ljava/lang/String;

.field private num:I

.field private originalPath:Ljava/lang/String;

.field private parentFolderName:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field public position:I

.field private realPath:Ljava/lang/String;

.field private sandboxPath:Ljava/lang/String;

.field private size:J

.field private videoThumbnailPath:Ljava/lang/String;

.field private watermarkPath:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 287
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMedia$1;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMedia$1;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/entity/LocalMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 169
    iput-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->bucketId:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 169
    iput-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->bucketId:J

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->id:J

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->realPath:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->originalPath:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressPath:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->watermarkPath:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->videoThumbnailPath:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->sandboxPath:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isChecked:Z

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isCut:Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->num:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->chooseModel:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isCameraSource:Z

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressed:Z

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageWidth:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageHeight:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropOffsetX:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropOffsetY:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropResultAspectRatio:F

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/luck/picture/lib/entity/LocalMedia;->size:J

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isOriginal:Z

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->fileName:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/luck/picture/lib/entity/LocalMedia;->bucketId:J

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/luck/picture/lib/entity/LocalMedia;->dateAddedTime:J

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->customData:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isMaxSelectEnabledMask:Z

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isGalleryEnabledMask:Z

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage:Z

    return-void
.end method

.method public static create()Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 1

    .line 394
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>()V

    return-object v0
.end method

.method public static destroyPool()V
    .locals 1

    .line 773
    sget-object v0, Lcom/luck/picture/lib/entity/LocalMedia;->sPool:Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {v0}, Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;->destroy()V

    const/4 v0, 0x0

    .line 775
    sput-object v0, Lcom/luck/picture/lib/entity/LocalMedia;->sPool:Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;

    :cond_0
    return-void
.end method

.method public static generateHttpAsLocalMedia(Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 1

    .line 307
    invoke-static {}, Lcom/luck/picture/lib/entity/LocalMedia;->create()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v0

    .line 308
    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    .line 309
    invoke-static {p0}, Lcom/luck/picture/lib/utils/MediaUtils;->getMimeTypeFromMediaHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/entity/LocalMedia;->setMimeType(Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateHttpAsLocalMedia(Ljava/lang/String;Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 1

    .line 321
    invoke-static {}, Lcom/luck/picture/lib/entity/LocalMedia;->create()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v0

    .line 322
    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setMimeType(Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateLocalMedia(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 8

    .line 335
    invoke-static {}, Lcom/luck/picture/lib/entity/LocalMedia;->create()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v0

    .line 336
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/luck/picture/lib/utils/PictureFileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    :goto_0
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setRealPath(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setFileName(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/utils/MediaUtils;->generateCameraFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setParentFolderName(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/utils/MediaUtils;->getMimeTypeFromMediaUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setMimeType(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setSize(J)V

    .line 343
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setDateAddedTime(J)V

    .line 344
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 345
    const-string v3, "Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_3

    const-string v3, "data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 350
    :cond_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/luck/picture/lib/utils/MediaUtils;->getPathMediaBucketId(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    .line 351
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_1

    :cond_2
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setId(J)V

    const/4 v2, 0x1

    .line 352
    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setBucketId(J)V

    goto :goto_3

    .line 346
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setId(J)V

    .line 347
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 348
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v4, v1

    :cond_4
    invoke-virtual {v0, v4, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->setBucketId(J)V

    .line 355
    :goto_3
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    invoke-static {p0, p1}, Lcom/luck/picture/lib/utils/MediaUtils;->getVideoSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p0

    .line 357
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 358
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    .line 359
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getDuration()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setDuration(J)V

    goto :goto_4

    .line 360
    :cond_5
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 361
    invoke-static {p0, p1}, Lcom/luck/picture/lib/utils/MediaUtils;->getAudioSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p0

    .line 362
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getDuration()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setDuration(J)V

    goto :goto_4

    .line 364
    :cond_6
    invoke-static {p0, p1}, Lcom/luck/picture/lib/utils/MediaUtils;->getImageSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p0

    .line 365
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 366
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    :goto_4
    return-object v0
.end method

.method public static generateLocalMedia(Ljava/lang/String;Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    invoke-static {}, Lcom/luck/picture/lib/entity/LocalMedia;->create()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v0

    .line 382
    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setMimeType(Ljava/lang/String;)V

    return-object v0
.end method

.method public static obtain()Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 1

    .line 749
    sget-object v0, Lcom/luck/picture/lib/entity/LocalMedia;->sPool:Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;

    invoke-direct {v0}, Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/entity/LocalMedia;->sPool:Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;

    .line 752
    :cond_0
    sget-object v0, Lcom/luck/picture/lib/entity/LocalMedia;->sPool:Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;

    invoke-virtual {v0}, Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    if-nez v0, :cond_1

    .line 754
    invoke-static {}, Lcom/luck/picture/lib/entity/LocalMedia;->create()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 418
    :cond_0
    instance-of v1, p1, Lcom/luck/picture/lib/entity/LocalMedia;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 419
    :cond_1
    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 420
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 421
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 422
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 423
    :goto_1
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compareLocalMedia:Lcom/luck/picture/lib/entity/LocalMedia;

    return v0
.end method

.method public getAvailablePath()Ljava/lang/String;
    .locals 2

    .line 433
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v0

    .line 440
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->isToSandboxPath()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getSandboxPath()Ljava/lang/String;

    move-result-object v0

    .line 443
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->isOriginal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 444
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->isWatermarkPath()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 447
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getWatermarkPath()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public getBucketId()J
    .locals 2

    .line 669
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->bucketId:J

    return-wide v0
.end method

.method public getChooseModel()I
    .locals 1

    .line 557
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->chooseModel:I

    return v0
.end method

.method public getCompareLocalMedia()Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compareLocalMedia:Lcom/luck/picture/lib/entity/LocalMedia;

    return-object v0
.end method

.method public getCompressPath()Ljava/lang/String;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCropImageHeight()I
    .locals 1

    .line 605
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageHeight:I

    return v0
.end method

.method public getCropImageWidth()I
    .locals 1

    .line 597
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageWidth:I

    return v0
.end method

.method public getCropOffsetX()I
    .locals 1

    .line 613
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropOffsetX:I

    return v0
.end method

.method public getCropOffsetY()I
    .locals 1

    .line 621
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropOffsetY:I

    return v0
.end method

.method public getCropResultAspectRatio()F
    .locals 1

    .line 629
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropResultAspectRatio:F

    return v0
.end method

.method public getCustomData()Ljava/lang/String;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->customData:Ljava/lang/String;

    return-object v0
.end method

.method public getCutPath()Ljava/lang/String;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateAddedTime()J
    .locals 2

    .line 693
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->dateAddedTime:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 509
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 453
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->id:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .locals 1

    .line 541
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->num:I

    return v0
.end method

.method public getOriginalPath()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->originalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getParentFolderName()Ljava/lang/String;
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 533
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    return v0
.end method

.method public getRealPath()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->realPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSandboxPath()Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->sandboxPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 637
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->size:J

    return-wide v0
.end method

.method public getVideoThumbnailPath()Ljava/lang/String;
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->videoThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWatermarkPath()Ljava/lang/String;
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->watermarkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 581
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    return v0
.end method

.method public isCameraSource()Z
    .locals 1

    .line 565
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isCameraSource:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 517
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isChecked:Z

    return v0
.end method

.method public isCompressed()Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCut()Z
    .locals 1

    .line 525
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isCut:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEditorImage()Z
    .locals 1

    .line 685
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGalleryEnabledMask()Z
    .locals 1

    .line 717
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isGalleryEnabledMask:Z

    return v0
.end method

.method public isMaxSelectEnabledMask()Z
    .locals 1

    .line 677
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isMaxSelectEnabledMask:Z

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .line 645
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isOriginal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getOriginalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isToSandboxPath()Z
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getSandboxPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isWatermarkPath()Z
    .locals 1

    .line 713
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMedia;->getWatermarkPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 764
    sget-object v0, Lcom/luck/picture/lib/entity/LocalMedia;->sPool:Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;

    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setBucketId(J)V
    .locals 0

    .line 673
    iput-wide p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->bucketId:J

    return-void
.end method

.method public setCameraSource(Z)V
    .locals 0

    .line 569
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isCameraSource:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 521
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isChecked:Z

    return-void
.end method

.method public setChooseModel(I)V
    .locals 0

    .line 561
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->chooseModel:I

    return-void
.end method

.method public setCompressPath(Ljava/lang/String;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressPath:Ljava/lang/String;

    return-void
.end method

.method public setCompressed(Z)V
    .locals 0

    .line 577
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressed:Z

    return-void
.end method

.method public setCropImageHeight(I)V
    .locals 0

    .line 609
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageHeight:I

    return-void
.end method

.method public setCropImageWidth(I)V
    .locals 0

    .line 601
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageWidth:I

    return-void
.end method

.method public setCropOffsetX(I)V
    .locals 0

    .line 617
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropOffsetX:I

    return-void
.end method

.method public setCropOffsetY(I)V
    .locals 0

    .line 625
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropOffsetY:I

    return-void
.end method

.method public setCropResultAspectRatio(F)V
    .locals 0

    .line 633
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropResultAspectRatio:F

    return-void
.end method

.method public setCustomData(Ljava/lang/String;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->customData:Ljava/lang/String;

    return-void
.end method

.method public setCut(Z)V
    .locals 0

    .line 529
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isCut:Z

    return-void
.end method

.method public setCutPath(Ljava/lang/String;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    return-void
.end method

.method public setDateAddedTime(J)V
    .locals 0

    .line 697
    iput-wide p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->dateAddedTime:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 513
    iput-wide p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    return-void
.end method

.method public setEditorImage(Z)V
    .locals 0

    .line 689
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage:Z

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setGalleryEnabledMask(Z)V
    .locals 0

    .line 721
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isGalleryEnabledMask:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 593
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 457
    iput-wide p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->id:J

    return-void
.end method

.method public setMaxSelectEnabledMask(Z)V
    .locals 0

    .line 681
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isMaxSelectEnabledMask:Z

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setNum(I)V
    .locals 0

    .line 545
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->num:I

    return-void
.end method

.method public setOriginal(Z)V
    .locals 0

    .line 649
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isOriginal:Z

    return-void
.end method

.method public setOriginalPath(Ljava/lang/String;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->originalPath:Ljava/lang/String;

    return-void
.end method

.method public setParentFolderName(Ljava/lang/String;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 537
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    return-void
.end method

.method public setRealPath(Ljava/lang/String;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->realPath:Ljava/lang/String;

    return-void
.end method

.method public setSandboxPath(Ljava/lang/String;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->sandboxPath:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 641
    iput-wide p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->size:J

    return-void
.end method

.method public setVideoThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->videoThumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public setWatermarkPath(Ljava/lang/String;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->watermarkPath:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 585
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 245
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 246
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->realPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->originalPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->watermarkPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->videoThumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->sandboxPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 255
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isChecked:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 256
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isCut:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 257
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->num:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->chooseModel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isCameraSource:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 262
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->compressed:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 263
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropOffsetX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropOffsetY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->cropResultAspectRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 270
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 271
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isOriginal:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 272
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->bucketId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 275
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->dateAddedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->customData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isMaxSelectEnabledMask:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 278
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isGalleryEnabledMask:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 279
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
