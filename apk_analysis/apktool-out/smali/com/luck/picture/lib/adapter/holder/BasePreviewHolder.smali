.class public abstract Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BasePreviewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder$OnPreviewEventListener;
    }
.end annotation


# static fields
.field public static final ADAPTER_TYPE_AUDIO:I = 0x3

.field public static final ADAPTER_TYPE_IMAGE:I = 0x1

.field public static final ADAPTER_TYPE_VIDEO:I = 0x2


# instance fields
.field public coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

.field protected mPreviewEventListener:Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder$OnPreviewEventListener;

.field protected media:Lcom/luck/picture/lib/entity/LocalMedia;

.field protected final screenAppInHeight:I

.field protected final screenHeight:I

.field protected final screenWidth:I

.field protected final selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 62
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/DensityUtil;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenWidth:I

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenHeight:I

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/DensityUtil;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenAppInHeight:I

    .line 66
    sget v0, Lcom/luck/picture/lib/R$id;->preview_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/photoview/PhotoView;

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    .line 67
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->findViews(Landroid/view/View;)V

    return-void
.end method

.method public static generate(Landroid/view/ViewGroup;II)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;
    .locals 2

    .line 50
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 52
    new-instance p1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 54
    new-instance p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 56
    :cond_1
    new-instance p1, Lcom/luck/picture/lib/adapter/holder/PreviewImageHolder;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/adapter/holder/PreviewImageHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method


# virtual methods
.method public bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V
    .locals 3

    .line 103
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->media:Lcom/luck/picture/lib/entity/LocalMedia;

    .line 104
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->getRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;)[I

    move-result-object p2

    const/4 v0, 0x0

    .line 105
    aget v1, p2, v0

    const/4 v2, 0x1

    aget p2, p2, v2

    invoke-static {v1, p2}, Lcom/luck/picture/lib/utils/BitmapUtils;->getMaxImageSize(II)[I

    move-result-object p2

    .line 106
    aget v0, p2, v0

    aget p2, p2, v2

    invoke-virtual {p0, p1, v0, p2}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->loadImage(Lcom/luck/picture/lib/entity/LocalMedia;II)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->setScaleDisplaySize(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->setCoverScaleType(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 109
    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->onClickBackPressed()V

    .line 110
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->onLongPressDownload(Lcom/luck/picture/lib/entity/LocalMedia;)V

    return-void
.end method

.method protected abstract findViews(Landroid/view/View;)V
.end method

.method protected getRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;)[I
    .locals 1

    .line 114
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getCropImageWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getCropImageHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getCropImageWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getCropImageHeight()I

    move-result p1

    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result p1

    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method public isPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract loadImage(Lcom/luck/picture/lib/entity/LocalMedia;II)V
.end method

.method protected abstract onClickBackPressed()V
.end method

.method protected abstract onLongPressDownload(Lcom/luck/picture/lib/entity/LocalMedia;)V
.end method

.method public onViewAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public resumePausePlay()V
    .locals 0

    return-void
.end method

.method protected setCoverScaleType(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 1

    .line 122
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/luck/picture/lib/utils/MediaUtils;->isLongImage(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public setOnPreviewEventListener(Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder$OnPreviewEventListener;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->mPreviewEventListener:Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder$OnPreviewEventListener;

    return-void
.end method

.method protected setScaleDisplaySize(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenWidth:I

    iget v1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenHeight:I

    if-ge v0, v1, :cond_0

    .line 131
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/photoview/PhotoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 133
    iget v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenWidth:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 134
    iget v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenAppInHeight:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 135
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    return-void
.end method
