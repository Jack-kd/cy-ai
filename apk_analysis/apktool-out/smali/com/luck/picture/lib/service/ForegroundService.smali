.class public Lcom/luck/picture/lib/service/ForegroundService;
.super Landroid/app/Service;
.source "ForegroundService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String;

.field private static final CHANNEL_NAME:Ljava/lang/String; = "com.luck.picture.lib"

.field private static final NOTIFICATION_ID:I = 0x1

.field private static isForegroundServiceIng:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.luck.picture.lib."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/luck/picture/lib/service/ForegroundService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/service/ForegroundService;->CHANNEL_ID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/luck/picture/lib/service/ForegroundService;->isForegroundServiceIng:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createForegroundNotification()Landroid/app/Notification;
    .locals 5

    .line 65
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isMaxN()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    .line 68
    :goto_0
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isO()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 69
    invoke-static {}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m()V

    sget-object v2, Lcom/luck/picture/lib/service/ForegroundService;->CHANNEL_ID:Ljava/lang/String;

    const-string v4, "com.luck.picture.lib"

    invoke-static {v2, v4, v0}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    const v2, -0xffff01

    .line 70
    invoke-static {v0, v2}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;I)V

    .line 71
    invoke-static {v0}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;)Z

    .line 72
    invoke-static {v0, v3}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 73
    invoke-static {v0, v1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;I)V

    .line 74
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/service/ForegroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 75
    invoke-static {v1, v0}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 77
    :cond_1
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    .line 78
    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 79
    sget v0, Lcom/luck/picture/lib/R$string;->ps_use_sound:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/luck/picture/lib/R$string;->ps_use_camera:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/service/ForegroundService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v2, Lcom/luck/picture/lib/service/ForegroundService;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/luck/picture/lib/R$drawable;->ps_ic_trans_1px:I

    .line 81
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 82
    invoke-direct {p0}, Lcom/luck/picture/lib/service/ForegroundService;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private getAppName()Ljava/lang/String;
    .locals 3

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/service/ForegroundService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/service/ForegroundService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 91
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/luck/picture/lib/service/ForegroundService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const-string v0, ""

    return-object v0
.end method

.method public static startForegroundService(Landroid/content/Context;Z)V
    .locals 1

    .line 105
    :try_start_0
    sget-boolean v0, Lcom/luck/picture/lib/service/ForegroundService;->isForegroundServiceIng:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 106
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/luck/picture/lib/service/ForegroundService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p0, p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static stopService(Landroid/content/Context;)V
    .locals 2

    .line 125
    :try_start_0
    sget-boolean v0, Lcom/luck/picture/lib/service/ForegroundService;->isForegroundServiceIng:Z

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/luck/picture/lib/service/ForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 41
    invoke-direct {p0}, Lcom/luck/picture/lib/service/ForegroundService;->createForegroundNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 42
    invoke-virtual {p0, v1, v0}, Lcom/luck/picture/lib/service/ForegroundService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Lcom/luck/picture/lib/service/ForegroundService;->isForegroundServiceIng:Z

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/service/ForegroundService;->stopForeground(Z)V

    .line 55
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    .line 47
    sput-boolean v0, Lcom/luck/picture/lib/service/ForegroundService;->isForegroundServiceIng:Z

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
