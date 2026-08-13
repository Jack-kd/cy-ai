.class public Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;
.super Ljava/lang/Object;
.source "PictureSelectionQueryModel.java"


# instance fields
.field private final selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

.field private final selector:Lcom/luck/picture/lib/basic/PictureSelector;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/basic/PictureSelector;I)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    .line 35
    new-instance p1, Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {p1}, Lcom/luck/picture/lib/config/SelectorConfig;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 36
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/config/SelectorProviders;->addSelectorConfigQueue(Lcom/luck/picture/lib/config/SelectorConfig;)V

    .line 37
    iput p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method


# virtual methods
.method public buildMediaLoader()Lcom/luck/picture/lib/loader/IBridgeMediaLoader;
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v1, :cond_0

    .line 207
    new-instance v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {v1, v0, v2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    goto :goto_0

    .line 208
    :cond_0
    new-instance v1, Lcom/luck/picture/lib/loader/LocalMediaLoader;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {v1, v0, v2}, Lcom/luck/picture/lib/loader/LocalMediaLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    :goto_0
    return-object v1

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isBmp(Z)Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isBmp:Z

    return-object p0
.end method

.method public isGif(Z)Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isGif:Z

    return-object p0
.end method

.method public isHeic(Z)Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isHeic:Z

    return-object p0
.end method

.method public isPageStrategy(Z)Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    return-object p0
.end method

.method public isPageStrategy(ZI)Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    .line 60
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    const/16 p2, 0x3c

    :cond_0
    iput p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    return-object p0
.end method

.method public isPageStrategy(ZIZ)Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    .line 74
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    const/16 p2, 0x3c

    :cond_0
    iput p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    .line 75
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p3, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isFilterInvalidFile:Z

    return-object p0
.end method

.method public isWebp(Z)Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isWebp:Z

    return-object p0
.end method

.method public obtainAlbumData(Lcom/luck/picture/lib/interfaces/OnQueryDataSourceListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/interfaces/OnQueryDataSourceListener<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v1, :cond_0

    .line 226
    new-instance v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {v1, v0, v2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    goto :goto_0

    .line 227
    :cond_0
    new-instance v1, Lcom/luck/picture/lib/loader/LocalMediaLoader;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {v1, v0, v2}, Lcom/luck/picture/lib/loader/LocalMediaLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    .line 228
    :goto_0
    new-instance v0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel$1;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel$1;-><init>(Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;Lcom/luck/picture/lib/interfaces/OnQueryDataSourceListener;)V

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->loadAllAlbum(Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener;)V

    return-void

    .line 223
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "OnQueryDataSourceListener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Activity cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public obtainMediaData(Lcom/luck/picture/lib/interfaces/OnQueryDataSourceListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/interfaces/OnQueryDataSourceListener<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v1, :cond_0

    .line 251
    new-instance v1, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {v1, v0, v2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    goto :goto_0

    .line 252
    :cond_0
    new-instance v1, Lcom/luck/picture/lib/loader/LocalMediaLoader;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {v1, v0, v2}, Lcom/luck/picture/lib/loader/LocalMediaLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    .line 253
    :goto_0
    new-instance v0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel$2;

    invoke-direct {v0, p0, v1, p1}, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel$2;-><init>(Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;Lcom/luck/picture/lib/loader/IBridgeMediaLoader;Lcom/luck/picture/lib/interfaces/OnQueryDataSourceListener;)V

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->loadAllAlbum(Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener;)V

    return-void

    .line 248
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "OnQueryDataSourceListener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Activity cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFilterMaxFileSize(J)Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;
    .locals 3

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-wide p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->filterMaxFileSize:J

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const-wide/16 v1, 0x400

    mul-long/2addr p1, v1

    iput-wide p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->filterMaxFileSize:J

    :goto_0
    return-object p0
.end method

.method public setFilterMinFileSize(J)Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;
    .locals 3

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-wide p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->filterMinFileSize:J

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const-wide/16 v1, 0x400

    mul-long/2addr p1, v1

    iput-wide p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->filterMinFileSize:J

    :goto_0
    return-object p0
.end method

.method public setFilterVideoMaxSecond(I)Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMaxSecond:I

    return-object p0
.end method

.method public setFilterVideoMinSecond(I)Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMinSecond:I

    return-object p0
.end method

.method public setQueryFilterListener(Lcom/luck/picture/lib/interfaces/OnQueryFilterListener;)Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onQueryFilterListener:Lcom/luck/picture/lib/interfaces/OnQueryFilterListener;

    return-object p0
.end method

.method public setQuerySortOrder(Ljava/lang/String;)Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;
    .locals 1

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionQueryModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->sortOrder:Ljava/lang/String;

    :cond_0
    return-object p0
.end method
