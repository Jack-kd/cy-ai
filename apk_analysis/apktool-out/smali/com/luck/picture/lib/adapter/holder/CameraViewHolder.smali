.class public Lcom/luck/picture/lib/adapter/holder/CameraViewHolder;
.super Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;
.source "CameraViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 20
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;-><init>(Landroid/view/View;)V

    .line 21
    sget v0, Lcom/luck/picture/lib/R$id;->tvCamera:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/adapter/holder/CameraViewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 23
    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/CameraViewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v1}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterCameraBackgroundColor()I

    move-result v2

    .line 25
    invoke-static {v2}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterCameraDrawableTop()I

    move-result v2

    .line 29
    invoke-static {v2}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 32
    :cond_1
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterCameraTextResId()I

    move-result v2

    invoke-static {v2}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterCameraTextResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterCameraText()Ljava/lang/String;

    move-result-object v2

    .line 34
    :goto_0
    invoke-static {v2}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 35
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 37
    :cond_3
    iget-object v2, p0, Lcom/luck/picture/lib/adapter/holder/CameraViewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/luck/picture/lib/R$string;->ps_tape:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterCameraTextSize()I

    move-result p1

    .line 42
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v2

    if-eqz v2, :cond_5

    int-to-float p1, p1

    .line 43
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45
    :cond_5
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterCameraTextColor()I

    move-result p1

    .line 46
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 47
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    return-void
.end method
