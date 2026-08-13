.class public Lcom/luck/picture/lib/widget/CompleteSelectView;
.super Landroid/widget/LinearLayout;
.source "CompleteSelectView.java"


# instance fields
.field private config:Lcom/luck/picture/lib/config/SelectorConfig;

.field private numberChangeAnimation:Landroid/view/animation/Animation;

.field private tvComplete:Landroid/widget/TextView;

.field private tvSelectNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->inflateLayout()V

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setOrientation(I)V

    .line 54
    sget v0, Lcom/luck/picture/lib/R$id;->ps_tv_select_num:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvSelectNum:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/luck/picture/lib/R$id;->ps_tv_complete:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    const/16 v0, 0x10

    .line 56
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setGravity(I)V

    .line 57
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$anim;->ps_anim_modal_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->numberChangeAnimation:Landroid/view/animation/Animation;

    .line 58
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    return-void
.end method


# virtual methods
.method protected inflateLayout()V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$layout;->ps_complete_selected_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setCompleteSelectViewStyle()V
    .locals 9

    .line 69
    iget-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    .line 70
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectNormalBackgroundResources()I

    move-result v2

    invoke-static {v2}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectNormalBackgroundResources()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setBackgroundResource(I)V

    .line 74
    :cond_0
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectNormalTextResId()I

    move-result v2

    invoke-static {v2}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectNormalTextResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectNormalText()Ljava/lang/String;

    move-result-object v2

    .line 76
    :goto_0
    invoke-static {v2}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    invoke-static {v2}, Lcom/luck/picture/lib/utils/StyleUtils;->getFormatCount(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 79
    iget-object v3, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v6}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 81
    iget-object v3, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v7}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v8, v8, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v4

    aput-object v8, v6, v5

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 83
    :cond_3
    iget-object v3, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectNormalTextSize()I

    move-result v2

    .line 88
    invoke-static {v2}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 89
    iget-object v3, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 92
    :cond_5
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectNormalTextColor()I

    move-result v1

    .line 93
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 94
    iget-object v2, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    :cond_6
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getBottomBarStyle()Lcom/luck/picture/lib/style/BottomNavBarStyle;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->isCompleteCountTips()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 100
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomSelectNumResources()I

    move-result v1

    .line 101
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 102
    iget-object v2, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvSelectNum:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 104
    :cond_7
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomSelectNumTextSize()I

    move-result v1

    .line 105
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 106
    iget-object v2, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvSelectNum:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    :cond_8
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomSelectNumTextColor()I

    move-result v0

    .line 110
    invoke-static {v0}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 111
    iget-object v1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvSelectNum:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    return-void
.end method

.method public setSelectedChange(Z)V
    .locals 9

    .line 120
    iget-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    .line 121
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v2, :cond_c

    .line 123
    invoke-virtual {p0, v6}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setEnabled(Z)V

    .line 124
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectBackgroundResources()I

    move-result p1

    .line 125
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setBackgroundResource(I)V

    goto :goto_0

    .line 128
    :cond_0
    sget p1, Lcom/luck/picture/lib/R$drawable;->ps_ic_trans_1px:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setBackgroundResource(I)V

    .line 130
    :goto_0
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectTextResId()I

    move-result p1

    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectTextResId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectText()Ljava/lang/String;

    move-result-object p1

    .line 132
    :goto_1
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->getFormatCount(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 135
    iget-object v2, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v4}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v5

    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    if-ne v2, v4, :cond_3

    .line 137
    iget-object v2, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v7}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v8, v8, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v5

    aput-object v8, v4, v6

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 139
    :cond_3
    iget-object v2, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 142
    :cond_4
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/luck/picture/lib/R$string;->ps_completed:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_2
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectTextSize()I

    move-result p1

    .line 145
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    iget-object v2, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 148
    :cond_5
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectTextColor()I

    move-result p1

    .line 149
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 150
    iget-object v1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 152
    :cond_6
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/luck/picture/lib/R$color;->ps_color_fa632d:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    :goto_3
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getBottomBarStyle()Lcom/luck/picture/lib/style/BottomNavBarStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->isCompleteCountTips()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 155
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvSelectNum:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eq p1, v3, :cond_7

    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvSelectNum:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 156
    :cond_7
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvSelectNum:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    :cond_8
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/utils/ValueOf;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvSelectNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto/16 :goto_9

    .line 161
    :cond_9
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvSelectNum:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ValueOf;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectAnimListener:Lcom/luck/picture/lib/interfaces/OnSelectAnimListener;

    if-eqz p1, :cond_a

    .line 163
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectAnimListener:Lcom/luck/picture/lib/interfaces/OnSelectAnimListener;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvSelectNum:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Lcom/luck/picture/lib/interfaces/OnSelectAnimListener;->onSelectAnim(Landroid/view/View;)J

    goto/16 :goto_9

    .line 165
    :cond_a
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvSelectNum:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->numberChangeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_9

    .line 169
    :cond_b
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvSelectNum:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_c
    if-eqz p1, :cond_f

    .line 172
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->isCompleteSelectRelativeTop()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 173
    invoke-virtual {p0, v6}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setEnabled(Z)V

    .line 174
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectBackgroundResources()I

    move-result p1

    .line 175
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 176
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setBackgroundResource(I)V

    goto :goto_4

    .line 178
    :cond_d
    sget p1, Lcom/luck/picture/lib/R$drawable;->ps_ic_trans_1px:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setBackgroundResource(I)V

    .line 180
    :goto_4
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectTextColor()I

    move-result p1

    .line 181
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 182
    iget-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 184
    :cond_e
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/luck/picture/lib/R$color;->ps_color_9b:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 187
    :cond_f
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isEmptyResultReturn:Z

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setEnabled(Z)V

    .line 188
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectNormalBackgroundResources()I

    move-result p1

    .line 189
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 190
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setBackgroundResource(I)V

    goto :goto_5

    .line 192
    :cond_10
    sget p1, Lcom/luck/picture/lib/R$drawable;->ps_ic_trans_1px:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setBackgroundResource(I)V

    .line 194
    :goto_5
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectNormalTextColor()I

    move-result p1

    .line 195
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 196
    iget-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 198
    :cond_11
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/luck/picture/lib/R$color;->ps_color_9b:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    :goto_6
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvSelectNum:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectNormalTextResId()I

    move-result p1

    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 204
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectNormalTextResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_12
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectNormalText()Ljava/lang/String;

    move-result-object p1

    .line 205
    :goto_7
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 206
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->getFormatCount(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_13

    .line 208
    iget-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_13
    if-ne v0, v4, :cond_14

    .line 210
    iget-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v3, v4, v6

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 212
    :cond_14
    iget-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 215
    :cond_15
    iget-object p1, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/luck/picture/lib/R$string;->ps_please_select:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :goto_8
    invoke-virtual {v1}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectNormalTextSize()I

    move-result p1

    .line 218
    invoke-static {p1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 219
    iget-object v0, p0, Lcom/luck/picture/lib/widget/CompleteSelectView;->tvComplete:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_16
    :goto_9
    return-void
.end method
