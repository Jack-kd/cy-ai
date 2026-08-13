.class public Lyyb/ai/y1779639959407c7f49371b3978075/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MainApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    :try_start_0
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->install(Landroid/content/Context;)V

    .line 21
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->flushPending(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 24
    const-string v1, "MainApplication"

    const-string v2, "CrashReporter init failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
