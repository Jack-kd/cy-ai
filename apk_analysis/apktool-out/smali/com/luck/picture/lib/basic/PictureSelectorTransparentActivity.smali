.class public Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PictureSelectorTransparentActivity.java"


# instance fields
.field private selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private immersive()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getStatusBarColor()I

    move-result v1

    .line 67
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getNavigationBarColor()I

    move-result v2

    .line 68
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isDarkStatusBarBlack()Z

    move-result v0

    .line 69
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    sget v1, Lcom/luck/picture/lib/R$color;->ps_color_grey:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 72
    :cond_1
    invoke-static {v2}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 73
    sget v2, Lcom/luck/picture/lib/R$color;->ps_color_grey:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 75
    :cond_2
    invoke-static {p0, v1, v2, v0}, Lcom/luck/picture/lib/immersive/ImmersiveManager;->immersiveAboveAPI23(Landroidx/appcompat/app/AppCompatActivity;IIZ)V

    return-void
.end method

.method private initSelectorConfig()V
    .locals 1

    .line 53
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-void
.end method

.method private isExternalPreview()Z
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.luck.picture.lib.mode_type_source"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private setActivitySize()V
    .locals 3

    .line 114
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x33

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 116
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 117
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 118
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x1

    .line 119
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 120
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setupFragment()V
    .locals 8

    .line 81
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.luck.picture.lib.mode_type_source"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    sget-object v0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->TAG:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->newInstance()Lcom/luck/picture/lib/PictureSelectorSystemFragment;

    move-result-object v1

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 86
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onInjectActivityPreviewListener:Lcom/luck/picture/lib/interfaces/OnInjectActivityPreviewListener;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onInjectActivityPreviewListener:Lcom/luck/picture/lib/interfaces/OnInjectActivityPreviewListener;

    invoke-interface {v0}, Lcom/luck/picture/lib/interfaces/OnInjectActivityPreviewListener;->onInjectPreviewFragment()Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 90
    move-object v1, v0

    check-cast v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    .line 92
    :cond_2
    sget-object v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->TAG:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->newInstance()Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    move-result-object v1

    .line 95
    :goto_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.luck.picture.lib.current_preview_position"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v5, v5, Lcom/luck/picture/lib/config/SelectorConfig;->selectedPreviewResult:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.luck.picture.lib.external_preview_display_delete"

    .line 98
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 99
    move-object v5, v1

    check-cast v5, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v3, v6, v4, v2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->setExternalPreviewData(IILjava/util/ArrayList;Z)V

    goto :goto_2

    .line 101
    :cond_3
    sget-object v0, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->TAG:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->newInstance()Lcom/luck/picture/lib/PictureOnlyCameraFragment;

    move-result-object v1

    .line 104
    :goto_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 105
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 107
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 109
    :cond_4
    invoke-static {v2, v0, v1}, Lcom/luck/picture/lib/basic/FragmentInjectManager;->injectSystemRoomFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 126
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 127
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.luck.picture.lib.mode_type_source"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getWindowAnimationStyle()Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    move-result-object v0

    .line 130
    iget v0, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityExitAnimation:I

    invoke-virtual {p0, v2, v0}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 132
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$anim;->ps_anim_fade_out:I

    invoke-virtual {p0, v2, v0}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->initSelectorConfig()V

    .line 42
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->immersive()V

    .line 43
    sget p1, Lcom/luck/picture/lib/R$layout;->ps_empty:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->setContentView(I)V

    .line 44
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->isExternalPreview()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->setActivitySize()V

    .line 49
    :goto_0
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;->setupFragment()V

    return-void
.end method
