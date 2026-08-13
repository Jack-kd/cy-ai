.class public Lcom/luck/picture/lib/widget/BottomNavBar;
.super Landroid/widget/RelativeLayout;
.source "BottomNavBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;
    }
.end annotation


# instance fields
.field protected bottomNavBarListener:Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;

.field protected config:Lcom/luck/picture/lib/config/SelectorConfig;

.field private originalCheckbox:Landroid/widget/CheckBox;

.field protected tvImageEditor:Landroid/widget/TextView;

.field protected tvPreview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/widget/BottomNavBar;)Landroid/widget/CheckBox;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private calculateFileTotalSize()V
    .locals 8

    .line 233
    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isOriginalControl:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    move-wide v4, v1

    .line 235
    :goto_0
    iget-object v6, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v6}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 236
    iget-object v6, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v6}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 237
    invoke-virtual {v6}, Lcom/luck/picture/lib/entity/LocalMedia;->getSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    cmp-long v1, v4, v1

    if-lez v1, :cond_1

    .line 240
    invoke-static {v4, v5}, Lcom/luck/picture/lib/utils/PictureFileUtils;->formatAccurateUnitFileSize(J)Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/luck/picture/lib/R$string;->ps_original_image:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/luck/picture/lib/R$string;->ps_default_original_image:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/luck/picture/lib/R$string;->ps_default_original_image:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected handleLayoutUI()V
    .locals 0

    return-void
.end method

.method protected inflateLayout()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$layout;->ps_bottom_nav_bar:I

    invoke-static {v0, v1, p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method protected init()V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->inflateLayout()V

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/BottomNavBar;->setClickable(Z)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/BottomNavBar;->setFocusable(Z)V

    .line 53
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 54
    sget v0, Lcom/luck/picture/lib/R$id;->ps_tv_preview:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/BottomNavBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/luck/picture/lib/R$id;->ps_tv_editor:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/BottomNavBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvImageEditor:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/luck/picture/lib/R$id;->cb_original:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/BottomNavBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    .line 57
    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvImageEditor:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$color;->ps_color_grey:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/BottomNavBar;->setBackgroundColor(I)V

    .line 60
    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isCheckOriginalImage:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/luck/picture/lib/widget/BottomNavBar$1;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/widget/BottomNavBar$1;-><init>(Lcom/luck/picture/lib/widget/BottomNavBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->handleLayoutUI()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->bottomNavBarListener:Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 256
    sget v0, Lcom/luck/picture/lib/R$id;->ps_tv_preview:I

    if-ne p1, v0, :cond_1

    .line 257
    iget-object p1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->bottomNavBarListener:Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;->onPreview()V

    :cond_1
    return-void
.end method

.method public setBottomNavBarStyle()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isDirectReturnSingle:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 87
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/BottomNavBar;->setVisibility(I)V

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    .line 91
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getBottomBarStyle()Lcom/luck/picture/lib/style/BottomNavBarStyle;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isOriginalControl:Z

    if-eqz v1, :cond_5

    .line 93
    iget-object v1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 94
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomOriginalDrawableLeft()I

    move-result v1

    .line 95
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 98
    :cond_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomOriginalTextResId()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomOriginalTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomOriginalText()Ljava/lang/String;

    move-result-object v1

    .line 100
    :goto_0
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_3
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomOriginalTextSize()I

    move-result v1

    .line 104
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 107
    :cond_4
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomOriginalTextColor()I

    move-result v1

    .line 108
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 113
    :cond_5
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomNarBarHeight()I

    move-result v1

    .line 114
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 115
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 117
    :cond_6
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42380000    # 46.0f

    invoke-static {v2, v3}, Lcom/luck/picture/lib/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    :goto_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomNarBarBackgroundColor()I

    move-result v1

    .line 121
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 122
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/widget/BottomNavBar;->setBackgroundColor(I)V

    .line 125
    :cond_7
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewNormalTextColor()I

    move-result v1

    .line 126
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 127
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    :cond_8
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewNormalTextSize()I

    move-result v1

    .line 130
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 131
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 133
    :cond_9
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewNormalTextResId()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 134
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewNormalTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewNormalText()Ljava/lang/String;

    move-result-object v1

    .line 135
    :goto_2
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 136
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_b
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomEditorTextResId()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 140
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomEditorTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomEditorText()Ljava/lang/String;

    move-result-object v1

    .line 141
    :goto_3
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 142
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvImageEditor:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_d
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomEditorTextSize()I

    move-result v1

    .line 145
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 146
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvImageEditor:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 148
    :cond_e
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomEditorTextColor()I

    move-result v1

    .line 149
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 150
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvImageEditor:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    :cond_f
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomOriginalDrawableLeft()I

    move-result v1

    .line 154
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 155
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 158
    :cond_10
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomOriginalTextResId()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 159
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomOriginalTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_11
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomOriginalText()Ljava/lang/String;

    move-result-object v1

    .line 160
    :goto_4
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 161
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_12
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomOriginalTextSize()I

    move-result v1

    .line 165
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 166
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 169
    :cond_13
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomOriginalTextColor()I

    move-result v0

    .line 170
    invoke-static {v0}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 171
    iget-object v1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTextColor(I)V

    :cond_14
    return-void
.end method

.method public setOnBottomNavBarListener(Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->bottomNavBarListener:Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;

    return-void
.end method

.method public setOriginalCheck()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isCheckOriginalImage:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setSelectedChange()V
    .locals 7

    .line 186
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->calculateFileTotalSize()V

    .line 187
    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    .line 188
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getBottomBarStyle()Lcom/luck/picture/lib/style/BottomNavBarStyle;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_5

    .line 190
    iget-object v1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 191
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewSelectTextColor()I

    move-result v1

    .line 192
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    iget-object v4, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/luck/picture/lib/R$color;->ps_color_fa632d:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    :goto_0
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewSelectTextResId()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewSelectTextResId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewSelectText()Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_1
    invoke-static {v0}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    invoke-static {v0}, Lcom/luck/picture/lib/utils/StyleUtils;->getFormatCount(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 202
    iget-object v1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v4}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 204
    iget-object v1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v5}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v6, v6, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v2

    aput-object v6, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/luck/picture/lib/R$string;->ps_preview_num:I

    iget-object v5, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v5}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 212
    :cond_5
    iget-object v1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 213
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewNormalTextColor()I

    move-result v1

    .line 214
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 215
    iget-object v2, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 217
    :cond_6
    iget-object v1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/luck/picture/lib/R$color;->ps_color_9b:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    :goto_2
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewNormalTextResId()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 220
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewNormalTextResId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewNormalText()Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_3
    invoke-static {v0}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 222
    iget-object v1, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 224
    :cond_8
    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/luck/picture/lib/R$string;->ps_preview:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void
.end method
