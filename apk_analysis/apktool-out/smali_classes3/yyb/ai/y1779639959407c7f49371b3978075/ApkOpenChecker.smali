.class public Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;
.super Ljava/lang/Object;
.source "ApkOpenChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckCallback;,
        Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;,
        Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Device;,
        Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusReq;,
        Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Business;,
        Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;,
        Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckAppAvailableStatusRsp;,
        Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$AppStatus;
    }
.end annotation


# static fields
.field private static final APP_TIME_PREFS:Ljava/lang/String; = "AppTimePrefs"

.field private static final BASE_URL:Ljava/lang/String; = "https://yybadaccess.3g.qq.com/v3/check_gen_app_available_status"

.field private static final GSON:Lcom/google/gson/Gson;

.field private static final JSON:Lokhttp3/MediaType;

.field private static final KEY_LAST_DURATION:Ljava/lang/String; = "last_duration"

.field private static final MIX_LEFT:[I

.field private static final MIX_RIGHT:[I

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final SLOT_A:[I

.field private static final SLOT_B:[I

.field private static final SLOT_C:[I

.field private static final SLOT_D:[I

.field private static final SLOT_E:[I

.field private static final TAG:Ljava/lang/String; = "ApkOpenChecker"

.field private static final TIME_OUT:I = 0xbb8


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final context:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$sfgetGSON()Lcom/google/gson/Gson;
    .locals 1

    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->GSON:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 37
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->JSON:Lokhttp3/MediaType;

    .line 38
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->GSON:Lcom/google/gson/Gson;

    .line 39
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->RANDOM:Ljava/security/SecureRandom;

    const/16 v0, 0x13

    const/16 v1, 0x29

    const/4 v2, 0x7

    .line 40
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->MIX_LEFT:[I

    const/16 v0, 0x79

    const/16 v1, 0x2c

    const/16 v3, 0x58

    .line 41
    filled-new-array {v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->MIX_RIGHT:[I

    .line 42
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->SLOT_A:[I

    .line 43
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->SLOT_B:[I

    const/16 v0, 0x8

    .line 44
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->SLOT_C:[I

    .line 45
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->SLOT_D:[I

    .line 46
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->SLOT_E:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x72
        0x40
        0x58
        0x3f
        0x1c
        0x42
        0x4c
    .end array-data

    :array_1
    .array-data 4
        0x78
        0x4d
        0x74
        0x7
        0x9
        0x5c
        0x72
    .end array-data

    :array_2
    .array-data 4
        0x26
        0x1e
        0x66
        0x3f
        0x18
        0x5f
        0x2b
        0x10
    .end array-data

    :array_3
    .array-data 4
        0x24
        0x1b
        0x36
        0x20
        0x11
        0x58
        0x76
        0x10
    .end array-data

    :array_4
    .array-data 4
        0x2b
        0x4a
        0x65
        0x3d
        0x4e
        0x1f
        0x70
        0x1e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->context:Landroid/content/Context;

    .line 118
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xbb8

    .line 119
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 120
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private buildBusiness()Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Business;
    .locals 5

    .line 286
    new-instance v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Business;

    .line 287
    invoke-direct {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->readA()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->readB()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->flip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-direct {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->readC()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->readD()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->flip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->readE()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Business;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private flip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fold([I)Ljava/lang/String;
    .locals 5

    .line 313
    invoke-direct {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->mixedMask()[I

    move-result-object v0

    .line 314
    array-length v1, p1

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 315
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 316
    aget v3, p1, v2

    array-length v4, v0

    rem-int v4, v2, v4

    aget v4, v0, v4

    xor-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private getAndroidVersion()Ljava/lang/String;
    .locals 1

    .line 424
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private getDeviceBrand()Ljava/lang/String;
    .locals 1

    .line 414
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 2

    .line 367
    iget-object v0, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 419
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private getPlatformBit()Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;
    .locals 2

    .line 430
    :try_start_0
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 434
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->PLATFORMBIT_UNKNOWN:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    goto :goto_0

    .line 435
    :cond_0
    const-string v1, "64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->PLATFORMBIT_64:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    goto :goto_0

    .line 438
    :cond_1
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->PLATFORMBIT_32:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 443
    :catch_0
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;->PLATFORMBIT_UNKNOWN:Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$PlatformBit;

    return-object v0
.end method

.method private getVersionCode()Ljava/lang/String;
    .locals 4

    .line 391
    :try_start_0
    iget-object v0, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 394
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    const-wide/16 v2, 0x0

    .line 395
    invoke-static {v2, v3}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 397
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 401
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 402
    invoke-static {v0}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 404
    :cond_1
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    .line 409
    :catch_0
    const-string v0, "0"

    return-object v0
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 5

    .line 374
    const-string v0, "unknown"

    :try_start_0
    iget-object v1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 375
    iget-object v2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 377
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    const-wide/16 v3, 0x0

    .line 378
    invoke-static {v3, v4}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 380
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 382
    :goto_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-object v0
.end method

.method private isNetworkConnected()Z
    .locals 3

    const/4 v0, 0x0

    .line 352
    :try_start_0
    iget-object v1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    return v0

    .line 357
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method private varargs join([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 345
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private leftMask()[I
    .locals 4

    .line 331
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->MIX_LEFT:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    return-object v0
.end method

.method private makeRequest(Ljava/lang/Object;Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Business;Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;)V
    .locals 10

    .line 220
    :try_start_0
    const-string v0, "https://yybadaccess.3g.qq.com/v3/check_gen_app_available_status"

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 222
    sget-object v3, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    invoke-static {v4}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$$ExternalSyntheticBackport1;->m(I)J

    move-result-wide v4

    const v6, 0xf4240

    .line 223
    invoke-virtual {v3, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    .line 224
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "%06d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    sget-object v6, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v6, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v7, p2, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Business;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->md5Lower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 230
    sget-object v7, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->JSON:Lokhttp3/MediaType;

    invoke-static {p1, v7}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 233
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    .line 234
    invoke-virtual {v7, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v7, "Content-Type"

    const-string v8, "application/json"

    .line 235
    invoke-virtual {v0, v7, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v7, "Ual-Access-Businessid"

    iget-object p2, p2, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$Business;->id:Ljava/lang/String;

    .line 236
    invoke-virtual {v0, v7, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    const-string v0, "Ual-Access-Nonce"

    .line 237
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    const-string v0, "Ual-Access-Timestamp"

    .line 238
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    const-string v0, "Ual-Access-Signature"

    .line 239
    invoke-virtual {p2, v0, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    const-string v0, "Ual-Access-Requestid"

    .line 240
    invoke-virtual {p2, v0, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 241
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 246
    iget-object p2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$2;

    invoke-direct {p2, p0, p3}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$2;-><init>(Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    .line 275
    invoke-interface {p3, p1}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$ResultCallback;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static md5Lower(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 448
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 449
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    .line 452
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private mixedMask()[I
    .locals 5

    .line 322
    invoke-direct {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->leftMask()[I

    move-result-object v0

    .line 323
    invoke-direct {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->rightMask()[I

    move-result-object v1

    .line 324
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 325
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private readA()Ljava/lang/String;
    .locals 1

    .line 293
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->SLOT_A:[I

    invoke-direct {p0, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->fold([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readB()Ljava/lang/String;
    .locals 1

    .line 297
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->SLOT_B:[I

    invoke-direct {p0, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->fold([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readC()Ljava/lang/String;
    .locals 1

    .line 301
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->SLOT_C:[I

    invoke-direct {p0, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->fold([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readD()Ljava/lang/String;
    .locals 1

    .line 305
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->SLOT_D:[I

    invoke-direct {p0, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->fold([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readE()Ljava/lang/String;
    .locals 1

    .line 309
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->SLOT_E:[I

    invoke-direct {p0, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->fold([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private rightMask()[I
    .locals 4

    .line 335
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker;->MIX_RIGHT:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public check(Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckCallback;)V
    .locals 2

    .line 141
    const/4 v0, 0x1

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$CheckCallback;->onResult(ZLjava/lang/String;)V

    return-void
.end method
