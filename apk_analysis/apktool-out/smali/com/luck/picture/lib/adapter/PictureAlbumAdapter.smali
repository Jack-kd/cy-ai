.class public Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PictureAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private albumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;"
        }
    .end annotation
.end field

.field private onAlbumItemClickListener:Lcom/luck/picture/lib/interfaces/OnAlbumItemClickListener;

.field private final selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/config/SelectorConfig;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;)Lcom/luck/picture/lib/interfaces/OnAlbumItemClickListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->onAlbumItemClickListener:Lcom/luck/picture/lib/interfaces/OnAlbumItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method


# virtual methods
.method public bindAlbumData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->albumList:Ljava/util/List;

    return-void
.end method

.method public getAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->albumList:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->albumList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 31
    check-cast p1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->onBindViewHolder(Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;I)V
    .locals 12

    .line 58
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->albumList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 59
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderTotalNum()I

    move-result v2

    .line 61
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFirstImagePath()Ljava/lang/String;

    move-result-object v3

    .line 62
    iget-object v4, p1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->tvSelectTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isSelectTag()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v4, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 64
    iget-object v5, p1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    .line 65
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v8

    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-nez v4, :cond_1

    move v4, v7

    goto :goto_1

    :cond_1
    move v4, v6

    .line 64
    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    .line 66
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFirstMimeType()Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    iget-object v3, p1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->ivFirstImage:Landroid/widget/ImageView;

    sget v4, Lcom/luck/picture/lib/R$drawable;->ps_audio_placeholder:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 70
    :cond_2
    iget-object v4, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    if-eqz v4, :cond_3

    .line 71
    iget-object v4, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    iget-object v5, p1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v8, p1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->ivFirstImage:Landroid/widget/ImageView;

    invoke-interface {v4, v5, v3, v8}, Lcom/luck/picture/lib/engine/ImageEngine;->loadAlbumCover(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 75
    :cond_3
    :goto_2
    iget-object v3, p1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 76
    iget-object v4, p1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->tvFolderName:Landroid/widget/TextView;

    sget v5, Lcom/luck/picture/lib/R$string;->ps_camera_roll_num:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v6

    aput-object v2, v8, v7

    invoke-virtual {v3, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;-><init>(Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;ILcom/luck/picture/lib/entity/LocalMediaFolder;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-static {p2, v0, v1}, Lcom/luck/picture/lib/config/InjectResourceSource;->getLayoutResource(Landroid/content/Context;ILcom/luck/picture/lib/config/SelectorConfig;)I

    move-result p2

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    sget p2, Lcom/luck/picture/lib/R$layout;->ps_album_folder_item:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;-><init>(Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnIBridgeAlbumWidget(Lcom/luck/picture/lib/interfaces/OnAlbumItemClickListener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->onAlbumItemClickListener:Lcom/luck/picture/lib/interfaces/OnAlbumItemClickListener;

    return-void
.end method
