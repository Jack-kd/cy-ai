.class Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$3;
.super Ljava/lang/Thread;
.source "CrashReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->flushPending(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appCtx:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 184
    iput-object p2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$3;->val$appCtx:Landroid/content/Context;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 188
    :try_start_0
    iget-object v0, p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$3;->val$appCtx:Landroid/content/Context;

    invoke-static {v0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->-$$Nest$smdoFlush(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 190
    const-string v1, "CrashReporter"

    const-string v2, "flushPending failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
