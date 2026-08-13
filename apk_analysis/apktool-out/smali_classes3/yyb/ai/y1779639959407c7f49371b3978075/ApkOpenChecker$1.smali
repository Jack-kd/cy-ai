.class Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$1;
.super Ljava/lang/Object;
.source "ApkOpenChecker.java"

# interfaces
.implements Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->check(Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appTimePreferences:Landroid/content/SharedPreferences;

.field final synthetic val$callback:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckCallback;

.field final synthetic val$req:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusReq;


# direct methods
.method constructor <init>(Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusReq;Landroid/content/SharedPreferences;Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    iput-object p2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$1;->val$req:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusReq;

    iput-object p3, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$1;->val$appTimePreferences:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$1;->val$callback:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 208
    iget-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$1;->val$callback:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckCallback;

    const/4 v0, 0x0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-interface {p1, v0, v1}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckCallback;->onResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/util/Map;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 178
    const-string p1, " "

    .line 0
    const-string p2, "1234 onSuccess: "

    .line 178
    iget-object v0, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$1;->val$req:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusReq;

    iget v0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusReq;->event_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$1;->val$appTimePreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_duration"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/4 v0, 0x0

    .line 185
    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    if-eqz p3, :cond_4

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 186
    invoke-static {}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->-$$Nest$sfgetGSON()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusRsp;

    invoke-virtual {v3, p3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusRsp;

    .line 187
    const-string v3, "ApkOpenChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p3, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusRsp;->ret_code:I

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusRsp;->err_msg:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusRsp;->app_status:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_4

    .line 189
    iget p1, p3, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusRsp;->ret_code:I

    if-eqz p1, :cond_2

    :cond_1
    move v1, v0

    goto :goto_0

    .line 192
    :cond_2
    iget p1, p3, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusRsp;->app_status:I

    sget-object p2, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$AppStatus;->APP_STATUS_AVAILABLE:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$AppStatus;

    iget p2, p2, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$AppStatus;->value:I

    if-ne p1, p2, :cond_1

    :goto_0
    if-nez v1, :cond_3

    .line 194
    iget-object p1, p3, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusRsp;->err_msg:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p3, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusRsp;->err_msg:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 195
    iget-object p1, p3, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusRsp;->err_msg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    :cond_3
    move v0, v1

    .line 203
    :catch_0
    :cond_4
    iget-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$1;->val$callback:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckCallback;

    invoke-interface {p1, v0, v2}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckCallback;->onResult(ZLjava/lang/String;)V

    return-void
.end method
