.class public Lcom/luck/picture/lib/widget/PreviewBottomNavBar;
.super Lcom/luck/picture/lib/widget/BottomNavBar;
.source "PreviewBottomNavBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/widget/BottomNavBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/widget/BottomNavBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/luck/picture/lib/widget/BottomNavBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getEditor()Landroid/widget/TextView;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->tvImageEditor:Landroid/widget/TextView;

    return-object v0
.end method

.method protected handleLayoutUI()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->tvPreview:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->tvImageEditor:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->tvImageEditor:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->onEditMediaEventListener:Lcom/luck/picture/lib/interfaces/OnMediaEditInterceptListener;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public isDisplayEditor(Z)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->tvImageEditor:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->onEditMediaEventListener:Lcom/luck/picture/lib/interfaces/OnMediaEditInterceptListener;

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/luck/picture/lib/widget/BottomNavBar;->onClick(Landroid/view/View;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/luck/picture/lib/R$id;->ps_tv_editor:I

    if-ne p1, v0, :cond_0

    .line 62
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->bottomNavBarListener:Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->bottomNavBarListener:Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;->onEditImage()V

    :cond_0
    return-void
.end method

.method public setBottomNavBarStyle()V
    .locals 2

    .line 49
    invoke-super {p0}, Lcom/luck/picture/lib/widget/BottomNavBar;->setBottomNavBarStyle()V

    .line 50
    iget-object v0, p0, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getBottomBarStyle()Lcom/luck/picture/lib/style/BottomNavBarStyle;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewNarBarBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomPreviewNarBarBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->setBackgroundColor(I)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomNarBarBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/BottomNavBarStyle;->getBottomNarBarBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method
