.class public Lcom/luck/picture/lib/entity/LocalMediaFolder;
.super Ljava/lang/Object;
.source "LocalMediaFolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bucketId:J

.field private currentDataPage:I

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private firstImagePath:Ljava/lang/String;

.field private firstMimeType:Ljava/lang/String;

.field private folderName:Ljava/lang/String;

.field private folderTotalNum:I

.field private isHasMore:Z

.field private isSelectTag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder$1;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder$1;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->currentDataPage:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->currentDataPage:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isSelectTag:Z

    .line 78
    sget-object v1, Lcom/luck/picture/lib/entity/LocalMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->currentDataPage:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isHasMore:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBucketId()J
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    return-wide v0
.end method

.method public getCurrentDataPage()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->currentDataPage:I

    return v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getFirstImagePath()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstMimeType()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getFolderTotalNum()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    return v0
.end method

.method public isHasMore()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isHasMore:Z

    return v0
.end method

.method public isSelectTag()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isSelectTag:Z

    return v0
.end method

.method public setBucketId(J)V
    .locals 0

    .line 142
    iput-wide p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    return-void
.end method

.method public setCurrentDataPage(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->currentDataPage:I

    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/ArrayList;

    return-void
.end method

.method public setFirstImagePath(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    return-void
.end method

.method public setFirstMimeType(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderName:Ljava/lang/String;

    return-void
.end method

.method public setFolderTotalNum(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    return-void
.end method

.method public setHasMore(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isHasMore:Z

    return-void
.end method

.method public setSelectTag(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isSelectTag:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isSelectTag:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 91
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 92
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->currentDataPage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isHasMore:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
