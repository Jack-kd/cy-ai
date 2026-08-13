.class public Lcom/getcapacitor/CapacitorWebView;
.super Landroid/webkit/WebView;
.source "CapacitorWebView.java"


# instance fields
.field private bridge:Lcom/getcapacitor/Bridge;

.field private capInputConnection:Landroid/view/inputmethod/BaseInputConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic lambda$edgeToEdgeHandler$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 76
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 78
    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 79
    iget v1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 80
    iget v1, p1, Landroidx/core/graphics/Insets;->right:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 81
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "document.activeElement.value = document.activeElement.value + \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\';"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/CapacitorWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 p1, 0x0

    return p1

    .line 55
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public edgeToEdgeHandler(Lcom/getcapacitor/Bridge;)V
    .locals 5

    .line 59
    invoke-virtual {p1}, Lcom/getcapacitor/Bridge;->getConfig()Lcom/getcapacitor/CapConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/getcapacitor/CapConfig;->adjustMarginsForEdgeToEdge()Ljava/lang/String;

    move-result-object p1

    .line 61
    const-string v0, "disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    const-string v0, "force"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3

    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 67
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/getcapacitor/CapacitorWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101069a

    const/4 v4, 0x1

    invoke-virtual {v1, v2, p1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 69
    iget p1, p1, Landroid/util/TypedValue;->data:I

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    if-eqz v1, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    if-nez v0, :cond_4

    if-eqz v3, :cond_5

    .line 75
    :cond_4
    new-instance p1, Lcom/getcapacitor/CapacitorWebView$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/getcapacitor/CapacitorWebView$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_5
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/getcapacitor/CapacitorWebView;->bridge:Lcom/getcapacitor/Bridge;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getConfig()Lcom/getcapacitor/CapConfig;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/getcapacitor/CapacitorWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/getcapacitor/CapConfig;->loadDefault(Landroid/content/Context;)Lcom/getcapacitor/CapConfig;

    move-result-object v0

    .line 38
    :goto_0
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->isInputCaptured()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object p1, p0, Lcom/getcapacitor/CapacitorWebView;->capInputConnection:Landroid/view/inputmethod/BaseInputConnection;

    if-nez p1, :cond_1

    .line 41
    new-instance p1, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object p1, p0, Lcom/getcapacitor/CapacitorWebView;->capInputConnection:Landroid/view/inputmethod/BaseInputConnection;

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/getcapacitor/CapacitorWebView;->capInputConnection:Landroid/view/inputmethod/BaseInputConnection;

    return-object p1

    .line 45
    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public setBridge(Lcom/getcapacitor/Bridge;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/getcapacitor/CapacitorWebView;->bridge:Lcom/getcapacitor/Bridge;

    return-void
.end method
