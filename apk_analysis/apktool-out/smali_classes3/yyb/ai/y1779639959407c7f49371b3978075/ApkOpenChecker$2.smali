.class Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$2;
.super Ljava/lang/Object;
.source "ApkOpenChecker.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->makeRequest(Ljava/lang/Object;Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Business;Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;


# direct methods
.method constructor <init>(Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 246
    iput-object p2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$2;->val$callback:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 249
    iget-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$2;->val$callback:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;

    if-eqz p1, :cond_0

    .line 250
    invoke-interface {p1, p2}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    .line 257
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    .line 258
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    .line 259
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 260
    :goto_0
    iget-object v2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$2;->val$callback:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;

    if-eqz v2, :cond_1

    .line 261
    invoke-interface {v2, p1, v0, v1}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;->onSuccess(ILjava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 264
    :try_start_1
    iget-object v0, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$2;->val$callback:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;

    if-eqz v0, :cond_1

    .line 265
    invoke-interface {v0, p1}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;->onFailure(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void

    :goto_2
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 269
    throw p1
.end method
