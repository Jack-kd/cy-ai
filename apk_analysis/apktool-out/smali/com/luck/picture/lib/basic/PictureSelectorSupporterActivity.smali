.class public Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PictureSelectorSupporterActivity.java"


# instance fields
.field private selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private immersive()V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getStatusBarColor()I

    move-result v1

    .line 47
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getNavigationBarColor()I

    move-result v2

    .line 48
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isDarkStatusBarBlack()Z

    move-result v0

    .line 49
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    sget v1, Lcom/luck/picture/lib/R$color;->ps_color_grey:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 52
    :cond_0
    invoke-static {v2}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    sget v2, Lcom/luck/picture/lib/R$color;->ps_color_grey:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 55
    :cond_1
    invoke-static {p0, v1, v2, v0}, Lcom/luck/picture/lib/immersive/ImmersiveManager;->immersiveAboveAPI23(Landroidx/appcompat/app/AppCompatActivity;IIZ)V

    return-void
.end method

.method private initSelectorConfig()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-void
.end method

.method private setupFragment()V
    .locals 2

    .line 59
    sget-object v0, Lcom/luck/picture/lib/PictureSelectorFragment;->TAG:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/luck/picture/lib/PictureSelectorFragment;->newInstance()Lcom/luck/picture/lib/PictureSelectorFragment;

    move-result-object v1

    .line 59
    invoke-static {p0, v0, v1}, Lcom/luck/picture/lib/basic/FragmentInjectManager;->injectFragment(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 80
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->language:I

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->defaultLanguage:I

    invoke-static {p1, v1, v0}, Lcom/luck/picture/lib/basic/PictureContextWrapper;->wrap(Landroid/content/Context;II)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 90
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 91
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getWindowAnimationStyle()Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    iget v0, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityExitAnimation:I

    invoke-virtual {p0, v1, v0}, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public initAppLanguage()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->language:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isOnlyCamera:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->language:I

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->defaultLanguage:I

    invoke-static {p0, v0, v1}, Lcom/luck/picture/lib/language/PictureLanguageUtils;->setAppLanguage(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;->initAppLanguage()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;->initSelectorConfig()V

    .line 35
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;->immersive()V

    .line 36
    sget p1, Lcom/luck/picture/lib/R$layout;->ps_activity_container:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;->setupFragment()V

    return-void
.end method
