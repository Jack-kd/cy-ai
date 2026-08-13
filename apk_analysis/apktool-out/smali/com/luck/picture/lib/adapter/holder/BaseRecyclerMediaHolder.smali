.class public Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseRecyclerMediaHolder.java"


# instance fields
.field public btnCheck:Landroid/view/View;

.field private defaultColorFilter:Landroid/graphics/ColorFilter;

.field public isHandleMask:Z

.field public isSelectNumberStyle:Z

.field public ivPicture:Landroid/widget/ImageView;

.field private listener:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnItemClickListener;

.field public mContext:Landroid/content/Context;

.field private maskWhiteColorFilter:Landroid/graphics/ColorFilter;

.field private selectColorFilter:Landroid/graphics/ColorFilter;

.field public selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

.field public tvCheck:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/luck/picture/lib/config/SelectorConfig;)V
    .locals 6

    .line 64
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 65
    iput-object p2, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->mContext:Landroid/content/Context;

    .line 67
    sget v1, Lcom/luck/picture/lib/R$color;->ps_color_20:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/utils/StyleUtils;->getColorFilter(Landroid/content/Context;I)Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->defaultColorFilter:Landroid/graphics/ColorFilter;

    .line 68
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->mContext:Landroid/content/Context;

    sget v1, Lcom/luck/picture/lib/R$color;->ps_color_80:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/utils/StyleUtils;->getColorFilter(Landroid/content/Context;I)Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectColorFilter:Landroid/graphics/ColorFilter;

    .line 69
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->mContext:Landroid/content/Context;

    sget v1, Lcom/luck/picture/lib/R$color;->ps_color_half_white:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/utils/StyleUtils;->getColorFilter(Landroid/content/Context;I)Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->maskWhiteColorFilter:Landroid/graphics/ColorFilter;

    .line 70
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isSelectNumberStyle()Z

    move-result v1

    iput-boolean v1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->isSelectNumberStyle:Z

    .line 72
    sget v1, Lcom/luck/picture/lib/R$id;->ivPicture:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->ivPicture:Landroid/widget/ImageView;

    .line 73
    sget v1, Lcom/luck/picture/lib/R$id;->tvCheck:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    .line 74
    sget v1, Lcom/luck/picture/lib/R$id;->btnCheck:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->btnCheck:Landroid/view/View;

    .line 75
    iget p1, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-boolean p1, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isDirectReturnSingle:Z

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->btnCheck:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->btnCheck:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :goto_0
    iget-boolean p1, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isDirectReturnSingle:Z

    if-nez p1, :cond_1

    iget p1, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-eq p1, v2, :cond_2

    iget p1, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->isHandleMask:Z

    .line 86
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterSelectTextSize()I

    move-result p1

    .line 87
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 88
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    :cond_3
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterSelectTextColor()I

    move-result p1

    .line 91
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 92
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    :cond_4
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectBackground()I

    move-result p1

    .line 95
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 96
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 98
    :cond_5
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterSelectStyleGravity()[I

    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkArrayValidity([I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 100
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x15

    if-eqz p2, :cond_6

    .line 101
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 102
    array-length p2, p1

    move v3, v1

    :goto_2
    if-ge v3, p2, :cond_6

    aget v4, p1, v3

    .line 103
    iget-object v5, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 106
    :cond_6
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->btnCheck:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_7

    .line 107
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->btnCheck:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 108
    array-length p2, p1

    :goto_3
    if-ge v1, p2, :cond_7

    aget v2, p1, v1

    .line 109
    iget-object v3, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->btnCheck:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 113
    :cond_7
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterSelectClickArea()I

    move-result p1

    .line 114
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 115
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->btnCheck:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 116
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_8
    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;)Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnItemClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->listener:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;Lcom/luck/picture/lib/entity/LocalMedia;)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->isSelected(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectedMedia(Z)V

    return-void
.end method

.method private dispatchHandleMask(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 234
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isWithVideoImage:Z

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-ne v0, v2, :cond_0

    .line 236
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v0

    if-ne v0, v1, :cond_7

    goto :goto_3

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v0

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    if-ne v0, v1, :cond_7

    goto :goto_3

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getResultFirstMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    if-lez v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    :goto_0
    move v1, v0

    .line 249
    :goto_1
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 250
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-ne v0, v2, :cond_5

    goto :goto_2

    .line 256
    :cond_5
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    .line 258
    :goto_2
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 259
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 264
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->ivPicture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->maskWhiteColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 265
    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setMaxSelectEnabledMask(Z)V

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    .line 267
    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setMaxSelectEnabledMask(Z)V

    :goto_4
    return-void
.end method

.method public static generate(Landroid/view/ViewGroup;IILcom/luck/picture/lib/config/SelectorConfig;)Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;
    .locals 2

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    .line 55
    new-instance p1, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;

    invoke-direct {p1, p0, p3}, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;-><init>(Landroid/view/View;Lcom/luck/picture/lib/config/SelectorConfig;)V

    return-object p1

    .line 53
    :cond_0
    new-instance p1, Lcom/luck/picture/lib/adapter/holder/AudioViewHolder;

    invoke-direct {p1, p0, p3}, Lcom/luck/picture/lib/adapter/holder/AudioViewHolder;-><init>(Landroid/view/View;Lcom/luck/picture/lib/config/SelectorConfig;)V

    return-object p1

    .line 51
    :cond_1
    new-instance p1, Lcom/luck/picture/lib/adapter/holder/VideoViewHolder;

    invoke-direct {p1, p0, p3}, Lcom/luck/picture/lib/adapter/holder/VideoViewHolder;-><init>(Landroid/view/View;Lcom/luck/picture/lib/config/SelectorConfig;)V

    return-object p1

    .line 49
    :cond_2
    new-instance p1, Lcom/luck/picture/lib/adapter/holder/CameraViewHolder;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/adapter/holder/CameraViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method private isSelected(Lcom/luck/picture/lib/entity/LocalMedia;)Z
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 295
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompareLocalMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCutPath(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 301
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setEditorImage(Z)V

    :cond_0
    return v0
.end method

.method private notifySelectNumberStyle(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 6

    .line 311
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 312
    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 314
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 316
    :cond_0
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getNum()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setNum(I)V

    .line 317
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setPosition(I)V

    .line 318
    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/utils/ValueOf;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private selectedMedia(Z)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isDirectReturnSingle:Z

    if-eqz v0, :cond_1

    .line 281
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->ivPicture:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->defaultColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->ivPicture:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->defaultColorFilter:Landroid/graphics/ColorFilter;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    iput v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    .line 131
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->isSelected(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectedMedia(Z)V

    .line 133
    iget-boolean v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->isSelectNumberStyle:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->notifySelectNumberStyle(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->isHandleMask:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isMaxSelectEnabledMask:Z

    if-eqz v0, :cond_1

    .line 138
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->dispatchHandleMask(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_2
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->loadCover(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    new-instance v1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$1;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$1;-><init>(Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->btnCheck:Landroid/view/View;

    new-instance v1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$2;-><init>(Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;ILcom/luck/picture/lib/entity/LocalMedia;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$3;

    invoke-direct {v1, p0, p2}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$3;-><init>(Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$4;-><init>(Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;Lcom/luck/picture/lib/entity/LocalMedia;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected loadCover(Ljava/lang/String;)V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->ivPicture:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->ivPicture:Landroid/widget/ImageView;

    invoke-interface {v0, v1, p1, v2}, Lcom/luck/picture/lib/engine/ImageEngine;->loadGridImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnItemClickListener;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->listener:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnItemClickListener;

    return-void
.end method
