.class public Lcom/luck/picture/lib/immersive/ImmersiveManager;
.super Ljava/lang/Object;
.source "ImmersiveManager.java"


# static fields
.field private static final TAG_FAKE_STATUS_BAR_VIEW:Ljava/lang/String; = "TAG_FAKE_STATUS_BAR_VIEW"

.field private static final TAG_MARGIN_ADDED:Ljava/lang/String; = "TAG_MARGIN_ADDED"

.field private static final TAG_NAVIGATION_BAR_VIEW:Ljava/lang/String; = "TAG_NAVIGATION_BAR_VIEW"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static immersiveAboveAPI23(Landroidx/appcompat/app/AppCompatActivity;IIZ)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 35
    invoke-static/range {v0 .. v5}, Lcom/luck/picture/lib/immersive/ImmersiveManager;->immersiveAboveAPI23(Landroidx/appcompat/app/AppCompatActivity;ZZIIZ)V

    return-void
.end method

.method public static immersiveAboveAPI23(Landroidx/appcompat/app/AppCompatActivity;ZZIIZ)V
    .locals 5

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 60
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    if-nez p3, :cond_0

    move v3, v4

    .line 62
    :cond_0
    invoke-static {p0, v4, v4, v3, p5}, Lcom/luck/picture/lib/immersive/LightStatusBarUtils;->setLightStatusBar(Landroid/app/Activity;ZZZZ)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_2

    :cond_1
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 72
    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 73
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    .line 76
    :goto_0
    invoke-static {p0, v3, v3, v4, p5}, Lcom/luck/picture/lib/immersive/LightStatusBarUtils;->setLightStatusBar(Landroid/app/Activity;ZZZZ)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_5

    .line 84
    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 85
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    if-nez p3, :cond_4

    move p1, v4

    goto :goto_1

    :cond_4
    move p1, v3

    .line 87
    :goto_1
    invoke-static {p0, v3, v4, p1, p5}, Lcom/luck/picture/lib/immersive/LightStatusBarUtils;->setLightStatusBar(Landroid/app/Activity;ZZZZ)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 98
    :goto_2
    invoke-virtual {v0, p3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 99
    invoke-virtual {v0, p4}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_5
    return-void

    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private static initBarBelowLOLLIPOP(Landroid/app/Activity;)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 160
    invoke-static {p0}, Lcom/luck/picture/lib/immersive/ImmersiveManager;->setupStatusBarView(Landroid/app/Activity;)V

    .line 162
    invoke-static {p0}, Lcom/luck/picture/lib/utils/DensityUtil;->isNavBarVisible(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x8000000

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 166
    invoke-static {p0}, Lcom/luck/picture/lib/immersive/ImmersiveManager;->setupNavBarView(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private static setupNavBarView(Landroid/app/Activity;)V
    .locals 3

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "TAG_NAVIGATION_BAR_VIEW"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    :cond_0
    invoke-static {p0}, Lcom/luck/picture/lib/utils/DensityUtil;->isNavigationAtBottom(Landroid/app/Activity;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0}, Lcom/luck/picture/lib/utils/DensityUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-direct {v0, v2, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0x50

    .line 198
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 200
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0}, Lcom/luck/picture/lib/utils/DensityUtil;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result p0

    invoke-direct {v0, p0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const p0, 0x800005

    .line 201
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 203
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 204
    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 205
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static setupStatusBarView(Landroid/app/Activity;)V
    .locals 5

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "TAG_FAKE_STATUS_BAR_VIEW"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 175
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    .line 176
    invoke-static {p0}, Lcom/luck/picture/lib/utils/DensityUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-direct {v3, v4, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0x30

    .line 177
    iput p0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 178
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    const-string p0, "TAG_MARGIN_ADDED"

    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static translucentStatusBar(Landroid/app/Activity;Z)V
    .locals 2

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, -0x80000000

    .line 122
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0x4000000

    .line 125
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 130
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 p1, 0x2500

    .line 134
    invoke-virtual {v1, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x500

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    const p1, 0x1020002

    .line 147
    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 148
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 150
    invoke-virtual {p0, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 151
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_1
    return-void
.end method
