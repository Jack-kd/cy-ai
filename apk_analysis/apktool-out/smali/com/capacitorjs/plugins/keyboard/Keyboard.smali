.class public Lcom/capacitorjs/plugins/keyboard/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;
    }
.end annotation


# static fields
.field static final EVENT_KB_DID_HIDE:Ljava/lang/String; = "keyboardDidHide"

.field static final EVENT_KB_DID_SHOW:Ljava/lang/String; = "keyboardDidShow"

.field static final EVENT_KB_WILL_HIDE:Ljava/lang/String; = "keyboardWillHide"

.field static final EVENT_KB_WILL_SHOW:Ljava/lang/String; = "keyboardWillShow"


# instance fields
.field private activity:Landroidx/appcompat/app/AppCompatActivity;

.field private bridge:Lcom/getcapacitor/Bridge;

.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private keyboardEventListener:Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;

.field private mChildOfContent:Landroid/view/View;

.field private rootView:Landroid/view/View;

.field private usableHeightPrevious:I


# direct methods
.method static bridge synthetic -$$Nest$fgetkeyboardEventListener(Lcom/capacitorjs/plugins/keyboard/Keyboard;)Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;
    .locals 0

    iget-object p0, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->keyboardEventListener:Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrootView(Lcom/capacitorjs/plugins/keyboard/Keyboard;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpossiblyResizeChildOfContent(Lcom/capacitorjs/plugins/keyboard/Keyboard;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->possiblyResizeChildOfContent(Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Z)V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 57
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 58
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->rootView:Landroid/view/View;

    .line 60
    new-instance v2, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;-><init>(Lcom/capacitorjs/plugins/keyboard/Keyboard;ILandroidx/appcompat/app/AppCompatActivity;Z)V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 114
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->mChildOfContent:Landroid/view/View;

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/getcapacitor/Bridge;Z)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Lcom/getcapacitor/Bridge;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/capacitorjs/plugins/keyboard/Keyboard;-><init>(Landroidx/appcompat/app/AppCompatActivity;Z)V

    .line 49
    iput-object p1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->bridge:Lcom/getcapacitor/Bridge;

    return-void
.end method

.method private computeUsableHeight()I
    .locals 3

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 144
    iget-object v1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 145
    invoke-direct {p0}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->shouldApplyEdgeToEdgeAdjustments()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->rootView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    if-lez v1, :cond_0

    .line 150
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->isOverlays()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    return v0
.end method

.method private isOverlays()Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private possiblyResizeChildOfContent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->computeUsableHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 135
    :goto_0
    iget v0, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->usableHeightPrevious:I

    if-eq v0, p1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 137
    iget-object v0, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 138
    iput p1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->usableHeightPrevious:I

    :cond_1
    return-void
.end method

.method private shouldApplyEdgeToEdgeAdjustments()Z
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->bridge:Lcom/getcapacitor/Bridge;

    const-string v1, "auto"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getConfig()Lcom/getcapacitor/CapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->adjustMarginsForEdgeToEdge()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_0
    const-string v2, "force"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 162
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x23

    const/4 v5, 0x0

    if-lt v2, v4, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 165
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101069a

    .line 166
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    .line 171
    :cond_2
    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    return v3

    :cond_4
    return v5
.end method


# virtual methods
.method public hide()Z
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 124
    iget-object v1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setKeyboardEventListener(Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->keyboardEventListener:Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;

    return-void
.end method

.method public show()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
