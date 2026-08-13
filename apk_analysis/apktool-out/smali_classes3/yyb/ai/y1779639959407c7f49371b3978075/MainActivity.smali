.class public Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;
.super Lcom/getcapacitor/BridgeActivity;
.source "MainActivity.java"


# static fields
.field private static final KEY_LAST_DURATION:Ljava/lang/String; = "last_duration"

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private apkChecker:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;

.field private preferences:Landroid/content/SharedPreferences;

.field private startTime:J


# direct methods
.method public static synthetic $r8$lambda$3-Klk7LmA4lGJ2epmR9hDRMXDNQ(Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->lambda$startCheckApk$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gqo79hduq2d8LhVJIvzJAxpIhVw(Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->lambda$startCheckApk$2(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cBj-Zi3ypicUrWcLQDtj1Xm2jrg(Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->lambda$startCheckApk$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/getcapacitor/BridgeActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$startCheckApk$0()V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$startCheckApk$1(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 34
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 36
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity$$ExternalSyntheticLambda0;-><init>(Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$startCheckApk$2(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    .line 33
    new-instance p1, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p3}, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity$$ExternalSyntheticLambda2;-><init>(Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 41
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5e94\u7528\u68c0\u67e5\u901a\u8fc7\uff0csource="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MainActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startCheckApk(Ljava/lang/String;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->apkChecker:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;

    new-instance v1, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity$$ExternalSyntheticLambda1;-><init>(Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->check(Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckCallback;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    const-class v0, Lyyb/ai/y1779639959407c7f49371b3978075/CustomHttpPlugin;

    invoke-virtual {p0, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->registerPlugin(Ljava/lang/Class;)V

    .line 22
    invoke-super {p0, p1}, Lcom/getcapacitor/BridgeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance p1, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;

    invoke-direct {p1, p0}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->apkChecker:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;

    .line 24
    const-string p1, "AppTimePrefs"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->preferences:Landroid/content/SharedPreferences;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->startTime:J

    .line 26
    const-string p1, "onCreate"

    invoke-direct {p0, p1}, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->startCheckApk(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 50
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 51
    :goto_0
    iget-object v1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_duration"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/MainActivity;->startCheckApk(Ljava/lang/String;)V

    .line 53
    invoke-super {p0}, Lcom/getcapacitor/BridgeActivity;->onDestroy()V

    return-void
.end method
