.class public Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;
.super Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;
.source "ImageViewHolder.java"


# instance fields
.field private final ivEditor:Landroid/widget/ImageView;

.field private final tvMediaTag:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/luck/picture/lib/config/SelectorConfig;)V
    .locals 6

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;-><init>(Landroid/view/View;Lcom/luck/picture/lib/config/SelectorConfig;)V

    .line 28
    sget p2, Lcom/luck/picture/lib/R$id;->tv_media_tag:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->tvMediaTag:Landroid/widget/TextView;

    .line 29
    sget p2, Lcom/luck/picture/lib/R$id;->ivEditor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->ivEditor:Landroid/widget/ImageView;

    .line 30
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p2}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterImageEditorResources()I

    move-result v0

    .line 32
    invoke-static {v0}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    :cond_0
    invoke-virtual {p2}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterImageEditorGravity()[I

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/luck/picture/lib/utils/StyleUtils;->checkArrayValidity([I)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 39
    array-length p1, v0

    move v1, v2

    :goto_0
    if-ge v1, p1, :cond_1

    aget v4, v0, v1

    .line 40
    iget-object v5, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->ivEditor:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterTagGravity()[I

    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkArrayValidity([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->tvMediaTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->tvMediaTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 49
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->tvMediaTag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 50
    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_2

    aget v1, p1, v2

    .line 51
    iget-object v3, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->tvMediaTag:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p2}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterTagBackgroundResources()I

    move-result p1

    .line 56
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->tvMediaTag:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 60
    :cond_3
    invoke-virtual {p2}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterTagTextSize()I

    move-result p1

    .line 61
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->tvMediaTag:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 65
    :cond_4
    invoke-virtual {p2}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterTagTextColor()I

    move-result p1

    .line 66
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 67
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->tvMediaTag:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V
    .locals 2

    .line 74
    invoke-super {p0, p1, p2}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V

    .line 75
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 76
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->ivEditor:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->ivEditor:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :goto_0
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->tvMediaTag:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasGif(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 82
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->tvMediaTag:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->mContext:Landroid/content/Context;

    sget v0, Lcom/luck/picture/lib/R$string;->ps_gif_tag:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasWebp(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 84
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->tvMediaTag:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->mContext:Landroid/content/Context;

    sget v0, Lcom/luck/picture/lib/R$string;->ps_webp_tag:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/luck/picture/lib/utils/MediaUtils;->isLongImage(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->tvMediaTag:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->mContext:Landroid/content/Context;

    sget v0, Lcom/luck/picture/lib/R$string;->ps_long_chart:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;->tvMediaTag:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
