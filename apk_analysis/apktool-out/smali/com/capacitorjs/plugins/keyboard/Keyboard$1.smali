.class Lcom/capacitorjs/plugins/keyboard/Keyboard$1;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capacitorjs/plugins/keyboard/Keyboard;-><init>(Landroidx/appcompat/app/AppCompatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/capacitorjs/plugins/keyboard/Keyboard;

.field final synthetic val$activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic val$resizeOnFullScreen:Z


# direct methods
.method constructor <init>(Lcom/capacitorjs/plugins/keyboard/Keyboard;ILandroidx/appcompat/app/AppCompatActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->this$0:Lcom/capacitorjs/plugins/keyboard/Keyboard;

    iput-object p3, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-boolean p4, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->val$resizeOnFullScreen:Z

    invoke-direct {p0, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V

    .line 99
    iget-object p1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->this$0:Lcom/capacitorjs/plugins/keyboard/Keyboard;

    invoke-static {p1}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->-$$Nest$fgetrootView(Lcom/capacitorjs/plugins/keyboard/Keyboard;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result p1

    .line 100
    iget-object v0, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->this$0:Lcom/capacitorjs/plugins/keyboard/Keyboard;

    invoke-static {v0}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->-$$Nest$fgetrootView(Lcom/capacitorjs/plugins/keyboard/Keyboard;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 101
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 102
    iget-object v1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 103
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->this$0:Lcom/capacitorjs/plugins/keyboard/Keyboard;

    invoke-static {p1}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->-$$Nest$fgetkeyboardEventListener(Lcom/capacitorjs/plugins/keyboard/Keyboard;)Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;

    move-result-object p1

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const-string v1, "keyboardDidShow"

    invoke-interface {p1, v1, v0}, Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;->onKeyboardEvent(Ljava/lang/String;I)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->this$0:Lcom/capacitorjs/plugins/keyboard/Keyboard;

    invoke-static {p1}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->-$$Nest$fgetkeyboardEventListener(Lcom/capacitorjs/plugins/keyboard/Keyboard;)Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;

    move-result-object p1

    const-string v0, "keyboardDidHide"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;->onKeyboardEvent(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    return-object p1
.end method

.method public onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->this$0:Lcom/capacitorjs/plugins/keyboard/Keyboard;

    invoke-static {v0}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->-$$Nest$fgetrootView(Lcom/capacitorjs/plugins/keyboard/Keyboard;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->this$0:Lcom/capacitorjs/plugins/keyboard/Keyboard;

    invoke-static {v1}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->-$$Nest$fgetrootView(Lcom/capacitorjs/plugins/keyboard/Keyboard;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    .line 80
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    .line 81
    iget-object v2, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 82
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 84
    iget-boolean v3, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->val$resizeOnFullScreen:Z

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->this$0:Lcom/capacitorjs/plugins/keyboard/Keyboard;

    invoke-static {v3, v0}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->-$$Nest$mpossiblyResizeChildOfContent(Lcom/capacitorjs/plugins/keyboard/Keyboard;Z)V

    :cond_0
    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->this$0:Lcom/capacitorjs/plugins/keyboard/Keyboard;

    invoke-static {v0}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->-$$Nest$fgetkeyboardEventListener(Lcom/capacitorjs/plugins/keyboard/Keyboard;)Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;

    move-result-object v0

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const-string v2, "keyboardWillShow"

    invoke-interface {v0, v2, v1}, Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;->onKeyboardEvent(Ljava/lang/String;I)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/capacitorjs/plugins/keyboard/Keyboard$1;->this$0:Lcom/capacitorjs/plugins/keyboard/Keyboard;

    invoke-static {v0}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->-$$Nest$fgetkeyboardEventListener(Lcom/capacitorjs/plugins/keyboard/Keyboard;)Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;

    move-result-object v0

    const-string v1, "keyboardWillHide"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;->onKeyboardEvent(Ljava/lang/String;I)V

    .line 93
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;->onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    move-result-object p1

    return-object p1
.end method
