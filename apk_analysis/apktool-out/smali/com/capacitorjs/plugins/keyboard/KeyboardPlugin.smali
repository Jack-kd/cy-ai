.class public Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;
.super Lcom/getcapacitor/Plugin;
.source "KeyboardPlugin.java"


# annotations
.annotation runtime Lcom/getcapacitor/annotation/CapacitorPlugin;
    name = "Keyboard"
.end annotation


# instance fields
.field private implementation:Lcom/capacitorjs/plugins/keyboard/Keyboard;


# direct methods
.method public static synthetic $r8$lambda$8_hNLL61r8cg4ySTMWCRVQ_49pU(Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->lambda$show$1(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kg99rVnYUfBv57qT7hEOx6HsGZM(Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->lambda$hide$3(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jsustbfobakIl6YiasWPUdnS50k(Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;)V
    .locals 0

    invoke-direct {p0}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->lambda$load$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$q726IHMFxEDGWgMKE51vfh0OzwU(Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->lambda$show$2(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/getcapacitor/Plugin;-><init>()V

    return-void
.end method

.method private synthetic lambda$hide$3(Lcom/getcapacitor/PluginCall;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->implementation:Lcom/capacitorjs/plugins/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->hide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const-string v0, "Can\'t close keyboard, not currently focused"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$load$0()V
    .locals 3

    .line 20
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->getConfig()Lcom/getcapacitor/PluginConfig;

    move-result-object v0

    const-string v1, "resizeOnFullScreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/getcapacitor/PluginConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 21
    new-instance v1, Lcom/capacitorjs/plugins/keyboard/Keyboard;

    invoke-virtual {p0}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/capacitorjs/plugins/keyboard/Keyboard;-><init>(Lcom/getcapacitor/Bridge;Z)V

    iput-object v1, p0, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->implementation:Lcom/capacitorjs/plugins/keyboard/Keyboard;

    .line 23
    new-instance v0, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin$$ExternalSyntheticLambda1;-><init>(Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;)V

    invoke-virtual {v1, v0}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->setKeyboardEventListener(Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;)V

    return-void
.end method

.method private synthetic lambda$show$1(Lcom/getcapacitor/PluginCall;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->implementation:Lcom/capacitorjs/plugins/keyboard/Keyboard;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->show()V

    .line 36
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    return-void
.end method

.method private synthetic lambda$show$2(Lcom/getcapacitor/PluginCall;)V
    .locals 4

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin$$ExternalSyntheticLambda4;-><init>(Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;Lcom/getcapacitor/PluginCall;)V

    const-wide/16 v2, 0x15e

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getResizeMode(Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 73
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->unimplemented()V

    return-void
.end method

.method protected handleOnDestroy()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->implementation:Lcom/capacitorjs/plugins/keyboard/Keyboard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/keyboard/Keyboard;->setKeyboardEventListener(Lcom/capacitorjs/plugins/keyboard/Keyboard$KeyboardEventListener;)V

    return-void
.end method

.method public hide(Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 45
    new-instance v0, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin$$ExternalSyntheticLambda3;-><init>(Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;Lcom/getcapacitor/PluginCall;)V

    invoke-virtual {p0, v0}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public load()V
    .locals 1

    .line 18
    new-instance v0, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin$$ExternalSyntheticLambda2;-><init>(Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;)V

    invoke-virtual {p0, v0}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method onKeyboardEvent(Ljava/lang/String;I)V
    .locals 3

    .line 82
    new-instance v0, Lcom/getcapacitor/JSObject;

    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "keyboardWillShow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "keyboardWillHide"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "keyboardDidShow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "keyboardDidHide"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 86
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{ \'keyboardHeight\': "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v2, p1, v1}, Lcom/getcapacitor/Bridge;->triggerWindowJSEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "keyboardHeight"

    invoke-virtual {v0, v1, p2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;I)Lcom/getcapacitor/JSObject;

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->notifyListeners(Ljava/lang/String;Lcom/getcapacitor/JSObject;)V

    goto :goto_1

    .line 93
    :pswitch_1
    iget-object p2, p0, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {p2, p1}, Lcom/getcapacitor/Bridge;->triggerWindowJSEvent(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->notifyListeners(Ljava/lang/String;Lcom/getcapacitor/JSObject;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x27763f86 -> :sswitch_3
        -0x277141cb -> :sswitch_2
        -0x20836c5 -> :sswitch_1
        -0x203390a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAccessoryBarVisible(Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->unimplemented()V

    return-void
.end method

.method public setResizeMode(Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->unimplemented()V

    return-void
.end method

.method public setScroll(Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 78
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->unimplemented()V

    return-void
.end method

.method public setStyle(Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 63
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->unimplemented()V

    return-void
.end method

.method public show(Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 30
    new-instance v0, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin$$ExternalSyntheticLambda0;-><init>(Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;Lcom/getcapacitor/PluginCall;)V

    invoke-virtual {p0, v0}, Lcom/capacitorjs/plugins/keyboard/KeyboardPlugin;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
