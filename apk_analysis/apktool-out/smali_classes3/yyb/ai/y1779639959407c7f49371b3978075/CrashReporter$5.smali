.class Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$5;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->reportSingle(Landroid/content/Context;Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$sourceFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 633
    iput-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$5;->val$sourceFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 636
    iget-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$5;->val$sourceFile:Ljava/io/File;

    invoke-static {p1}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->-$$Nest$smdeleteSilently(Ljava/io/File;)V

    .line 637
    const-string p1, "CrashReporter"

    const-string v0, "reportSingle failed"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    .line 642
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :catchall_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    const-string v0, "CrashReporter"

    if-eqz p1, :cond_0

    .line 644
    const-string p1, "reportSingle success"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "reportSingle failed, code="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_0
    iget-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$5;->val$sourceFile:Ljava/io/File;

    invoke-static {p1}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->-$$Nest$smdeleteSilently(Ljava/io/File;)V

    return-void
.end method
