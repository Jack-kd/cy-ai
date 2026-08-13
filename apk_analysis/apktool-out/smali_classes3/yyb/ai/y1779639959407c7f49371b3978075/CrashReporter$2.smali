.class Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$2;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog$Listener;


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

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnrDetected(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 162
    const-string v0, "watchdog"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v3, p3

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->-$$Nest$smhandleAnr(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
