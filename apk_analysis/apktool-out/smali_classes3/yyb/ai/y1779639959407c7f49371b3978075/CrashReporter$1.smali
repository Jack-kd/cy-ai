.class Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$1;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 155
    invoke-static {p1, p2}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->-$$Nest$smhandleJavaCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
