.class public Lyyb/ai/y1779639959407c7f49371b3978075/CustomHttpPlugin;
.super Lcom/getcapacitor/plugin/CapacitorHttp;
.source "CustomHttpPlugin.java"


# annotations
.annotation runtime Lcom/getcapacitor/annotation/CapacitorPlugin;
    name = "CapacitorHttp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/getcapacitor/plugin/CapacitorHttp;-><init>()V

    return-void
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 2

    .line 34
    invoke-virtual {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CustomHttpPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 33
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CustomHttpPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private injectCommonHeaders(Lcom/getcapacitor/PluginCall;)V
    .locals 6

    .line 15
    new-instance v0, Lcom/getcapacitor/JSObject;

    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    const-string v1, "headers"

    invoke-virtual {p1, v1, v0}, Lcom/getcapacitor/PluginCall;->getObject(Ljava/lang/String;Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/JSObject;

    move-result-object v0

    .line 16
    const-string v2, ""

    const-string v3, "Cookie"

    invoke-virtual {v0, v3, v2}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 19
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_0
    const-string v2, "package_name="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CustomHttpPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; device="

    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CustomHttpPlugin;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v0, v3, v2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 25
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u8bf7\u6c42\u5934 headers: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/getcapacitor/JSObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CustomHttpPlugin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public delete(Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lyyb/ai/y1779639959407c7f49371b3978075/CustomHttpPlugin;->injectCommonHeaders(Lcom/getcapacitor/PluginCall;)V

    .line 85
    invoke-super {p0, p1}, Lcom/getcapacitor/plugin/CapacitorHttp;->delete(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public get(Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lyyb/ai/y1779639959407c7f49371b3978075/CustomHttpPlugin;->injectCommonHeaders(Lcom/getcapacitor/PluginCall;)V

    .line 57
    invoke-super {p0, p1}, Lcom/getcapacitor/plugin/CapacitorHttp;->get(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public patch(Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lyyb/ai/y1779639959407c7f49371b3978075/CustomHttpPlugin;->injectCommonHeaders(Lcom/getcapacitor/PluginCall;)V

    .line 78
    invoke-super {p0, p1}, Lcom/getcapacitor/plugin/CapacitorHttp;->patch(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public post(Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lyyb/ai/y1779639959407c7f49371b3978075/CustomHttpPlugin;->injectCommonHeaders(Lcom/getcapacitor/PluginCall;)V

    .line 64
    invoke-super {p0, p1}, Lcom/getcapacitor/plugin/CapacitorHttp;->post(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public put(Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lyyb/ai/y1779639959407c7f49371b3978075/CustomHttpPlugin;->injectCommonHeaders(Lcom/getcapacitor/PluginCall;)V

    .line 71
    invoke-super {p0, p1}, Lcom/getcapacitor/plugin/CapacitorHttp;->put(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public request(Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lyyb/ai/y1779639959407c7f49371b3978075/CustomHttpPlugin;->injectCommonHeaders(Lcom/getcapacitor/PluginCall;)V

    .line 50
    invoke-super {p0, p1}, Lcom/getcapacitor/plugin/CapacitorHttp;->request(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method
