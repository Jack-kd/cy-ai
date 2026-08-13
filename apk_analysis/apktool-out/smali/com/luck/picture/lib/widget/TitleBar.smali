.class public Lcom/luck/picture/lib/widget/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "TitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;
    }
.end annotation


# instance fields
.field protected config:Lcom/luck/picture/lib/config/SelectorConfig;

.field protected ivArrow:Landroid/widget/ImageView;

.field protected ivDelete:Landroid/widget/ImageView;

.field protected ivLeftBack:Landroid/widget/ImageView;

.field protected rlAlbumBg:Landroid/widget/RelativeLayout;

.field protected titleBarLayout:Landroid/widget/RelativeLayout;

.field protected titleBarLine:Landroid/view/View;

.field protected titleBarListener:Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;

.field protected tvCancel:Landroid/widget/TextView;

.field protected tvTitle:Lcom/luck/picture/lib/widget/MarqueeTextView;

.field protected viewAlbumClickArea:Landroid/view/View;

.field protected viewTopStatusBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar;->init()V

    return-void
.end method


# virtual methods
.method public getImageArrow()Landroid/widget/ImageView;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImageDelete()Landroid/widget/ImageView;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleBarLine()Landroid/view/View;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLine:Landroid/view/View;

    return-object v0
.end method

.method public getTitleCancelView()Landroid/widget/TextView;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvCancel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvTitle:Lcom/luck/picture/lib/widget/MarqueeTextView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/MarqueeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleLayoutUI()V
    .locals 0

    return-void
.end method

.method protected inflateLayout()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$layout;->ps_title_bar:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method protected init()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar;->inflateLayout()V

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->setClickable(Z)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->setFocusable(Z)V

    .line 66
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 67
    sget v0, Lcom/luck/picture/lib/R$id;->top_status_bar:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->viewTopStatusBar:Landroid/view/View;

    .line 68
    sget v0, Lcom/luck/picture/lib/R$id;->rl_title_bar:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLayout:Landroid/widget/RelativeLayout;

    .line 69
    sget v0, Lcom/luck/picture/lib/R$id;->ps_iv_left_back:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivLeftBack:Landroid/widget/ImageView;

    .line 70
    sget v0, Lcom/luck/picture/lib/R$id;->ps_rl_album_bg:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->rlAlbumBg:Landroid/widget/RelativeLayout;

    .line 71
    sget v0, Lcom/luck/picture/lib/R$id;->ps_iv_delete:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivDelete:Landroid/widget/ImageView;

    .line 72
    sget v0, Lcom/luck/picture/lib/R$id;->ps_rl_album_click:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->viewAlbumClickArea:Landroid/view/View;

    .line 73
    sget v0, Lcom/luck/picture/lib/R$id;->ps_tv_title:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/widget/MarqueeTextView;

    iput-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvTitle:Lcom/luck/picture/lib/widget/MarqueeTextView;

    .line 74
    sget v0, Lcom/luck/picture/lib/R$id;->ps_iv_arrow:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivArrow:Landroid/widget/ImageView;

    .line 75
    sget v0, Lcom/luck/picture/lib/R$id;->ps_tv_cancel:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvCancel:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/luck/picture/lib/R$id;->title_bar_line:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLine:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivLeftBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->rlAlbumBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->viewAlbumClickArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$color;->ps_color_grey:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->setBackgroundColor(I)V

    .line 83
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar;->handleLayoutUI()V

    .line 84
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$string;->ps_all_audio:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$string;->ps_camera_roll:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 225
    sget v0, Lcom/luck/picture/lib/R$id;->ps_iv_left_back:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/luck/picture/lib/R$id;->ps_tv_cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$id;->ps_rl_album_bg:I

    if-eq p1, v0, :cond_2

    sget v0, Lcom/luck/picture/lib/R$id;->ps_rl_album_click:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 233
    :cond_1
    sget v0, Lcom/luck/picture/lib/R$id;->rl_title_bar:I

    if-ne p1, v0, :cond_4

    .line 234
    iget-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarListener:Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;

    if-eqz p1, :cond_4

    .line 235
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;->onTitleDoubleClick()V

    goto :goto_2

    .line 230
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarListener:Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;

    if-eqz p1, :cond_4

    .line 231
    invoke-virtual {p1, p0}, Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;->onShowAlbumPopWindow(Landroid/view/View;)V

    goto :goto_2

    .line 226
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarListener:Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;

    if-eqz p1, :cond_4

    .line 227
    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;->onBackPressed()V

    :cond_4
    :goto_2
    return-void
.end method

.method public setOnTitleBarListener(Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarListener:Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvTitle:Lcom/luck/picture/lib/widget/MarqueeTextView;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/widget/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleBarStyle()V
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->viewTopStatusBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/DensityUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    .line 138
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getTitleBarStyle()Lcom/luck/picture/lib/style/TitleBarStyle;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleBarHeight()I

    move-result v1

    .line 140
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v2, v3}, Lcom/luck/picture/lib/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLine:Landroid/view/View;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    .line 147
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->isDisplayTitleBarLine()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLine:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleBarLineColor()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLine:Landroid/view/View;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleBarLineColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/luck/picture/lib/widget/TitleBar;->titleBarLine:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleBackgroundColor()I

    move-result v1

    .line 158
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 159
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/widget/TitleBar;->setBackgroundColor(I)V

    .line 161
    :cond_4
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleLeftBackResource()I

    move-result v1

    .line 162
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 163
    iget-object v4, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivLeftBack:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    :cond_5
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleDefaultTextResId()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 166
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleDefaultTextResId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleDefaultText()Ljava/lang/String;

    move-result-object v1

    .line 167
    :goto_2
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 168
    iget-object v4, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvTitle:Lcom/luck/picture/lib/widget/MarqueeTextView;

    invoke-virtual {v4, v1}, Lcom/luck/picture/lib/widget/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_7
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleTextSize()I

    move-result v1

    .line 171
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 172
    iget-object v4, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvTitle:Lcom/luck/picture/lib/widget/MarqueeTextView;

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Lcom/luck/picture/lib/widget/MarqueeTextView;->setTextSize(F)V

    .line 174
    :cond_8
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleTextColor()I

    move-result v1

    .line 175
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 176
    iget-object v4, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvTitle:Lcom/luck/picture/lib/widget/MarqueeTextView;

    invoke-virtual {v4, v1}, Lcom/luck/picture/lib/widget/MarqueeTextView;->setTextColor(I)V

    .line 178
    :cond_9
    iget-object v1, p0, Lcom/luck/picture/lib/widget/TitleBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isOnlySandboxDir:Z

    if-eqz v1, :cond_a

    .line 179
    iget-object v1, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivArrow:Landroid/widget/ImageView;

    sget v4, Lcom/luck/picture/lib/R$drawable;->ps_ic_trans_1px:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 181
    :cond_a
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleDrawableRightResource()I

    move-result v1

    .line 182
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 183
    iget-object v4, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    :cond_b
    :goto_3
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleAlbumBackgroundResource()I

    move-result v1

    .line 187
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 188
    iget-object v4, p0, Lcom/luck/picture/lib/widget/TitleBar;->rlAlbumBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 191
    :cond_c
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->isHideCancelButton()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 192
    iget-object v1, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 194
    :cond_d
    iget-object v1, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleCancelBackgroundResource()I

    move-result v1

    .line 196
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 197
    iget-object v2, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 199
    :cond_e
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleCancelTextResId()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 200
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleCancelTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_f
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleCancelText()Ljava/lang/String;

    move-result-object v1

    .line 201
    :goto_4
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 202
    iget-object v2, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_10
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleCancelTextColor()I

    move-result v1

    .line 205
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 206
    iget-object v2, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    :cond_11
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getTitleCancelTextSize()I

    move-result v1

    .line 209
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 210
    iget-object v2, p0, Lcom/luck/picture/lib/widget/TitleBar;->tvCancel:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 214
    :cond_12
    :goto_5
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->getPreviewDeleteBackgroundResource()I

    move-result v0

    .line 215
    invoke-static {v0}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 216
    iget-object v1, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivDelete:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_6

    .line 218
    :cond_13
    iget-object v0, p0, Lcom/luck/picture/lib/widget/TitleBar;->ivDelete:Landroid/widget/ImageView;

    sget v1, Lcom/luck/picture/lib/R$drawable;->ps_ic_delete:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_6
    return-void
.end method
