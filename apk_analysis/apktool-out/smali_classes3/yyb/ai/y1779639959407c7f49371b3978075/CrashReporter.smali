.class public Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;
.super Ljava/lang/Object;
.source "CrashReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;,
        Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;,
        Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Device;,
        Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Business;
    }
.end annotation


# static fields
.field private static final DEDUP_WINDOW_MS:J = 0x2710L

.field private static final GSON:Lcom/google/gson/Gson;

.field private static final JSON:Lokhttp3/MediaType;

.field private static final KEY_LAST_REPORTED_ANR_TS:Ljava/lang/String; = "last_reported_anr_ts"

.field private static final MAX_ALL_STACK_LEN:I = 0x8000

.field private static final MAX_MSG_LEN:I = 0x200

.field private static final MAX_PENDING_FILES:I = 0xa

.field private static final MAX_STACK_LEN:I = 0x4000

.field private static final MIX_LEFT:[I

.field private static final MIX_RIGHT:[I

.field private static final PENDING_DIR_NAME:Ljava/lang/String; = "aiappshell_crash_pending"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final REPORT_URL:Ljava/lang/String; = "https://yybadaccess.3g.qq.com/v3/gen_app_report_data"

.field private static final SLOT_A:[I

.field private static final SLOT_B:[I

.field private static final SLOT_C:[I

.field private static final SLOT_D:[I

.field private static final SLOT_E:[I

.field private static final SP_NAME:Ljava/lang/String; = "aiappshell_crash"

.field private static final TAG:Ljava/lang/String; = "CrashReporter"

.field private static final TIME_OUT_MS:I = 0xbb8

.field private static volatile sAppContext:Landroid/content/Context;

.field private static final sFlushTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sInstalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sMainHandler:Landroid/os/Handler;

.field private static volatile sPrevHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static volatile sWatchDog:Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;


# direct methods
.method static bridge synthetic -$$Nest$smdeleteSilently(Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->deleteSilently(Ljava/io/File;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smdoFlush(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->doFlush(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smhandleAnr(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->handleAnr(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smhandleJavaCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->handleJavaCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 64
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->JSON:Lokhttp3/MediaType;

    .line 65
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->GSON:Lcom/google/gson/Gson;

    .line 66
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->RANDOM:Ljava/security/SecureRandom;

    const/16 v0, 0x13

    const/16 v1, 0x29

    const/4 v2, 0x7

    .line 69
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->MIX_LEFT:[I

    const/16 v0, 0x79

    const/16 v1, 0x2c

    const/16 v3, 0x58

    .line 70
    filled-new-array {v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->MIX_RIGHT:[I

    .line 71
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->SLOT_A:[I

    .line 72
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->SLOT_B:[I

    const/16 v0, 0x8

    .line 73
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->SLOT_C:[I

    .line 74
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->SLOT_D:[I

    .line 75
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->SLOT_E:[I

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sInstalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sFlushTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sMainHandler:Landroid/os/Handler;

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

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attemptRealtimeReport(Landroid/content/Context;Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;)Z
    .locals 14

    .line 513
    const-string v0, "CrashReporter"

    .line 0
    const-string v1, "\u5b9e\u65f6\u4e0a\u62a5\u5931\u8d25, code="

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 518
    :cond_0
    :try_start_0
    new-instance v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;

    invoke-direct {v3}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;-><init>()V

    .line 519
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->package_name:Ljava/lang/String;

    .line 520
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->getVersionCode(Landroid/content/Context;)J

    move-result-wide v4

    iput-wide v4, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->version_code:J

    .line 521
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->version_name:Ljava/lang/String;

    .line 522
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->buildDevice(Landroid/content/Context;)Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Device;

    move-result-object p0

    iput-object p0, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->device:Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Device;

    const/4 p0, 0x2

    .line 523
    iput p0, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->event_type:I

    .line 526
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    .line 527
    iget-object p0, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v4, "crash_type"

    iget-object v5, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_type:Ljava/lang/String;

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object p0, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v4, "crash_source"

    iget-object v5, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_source:Ljava/lang/String;

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object p0, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v4, "crash_occur_time_ms"

    iget-wide v5, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_occur_time_ms:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object p0, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v4, "crash_report_retry_count"

    iget v5, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_report_retry_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object p0, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v4, "crash_thread_name"

    iget-object v5, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_thread_name:Ljava/lang/String;

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget-object p0, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v4, "crash_process_name"

    iget-object v5, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_process_name:Ljava/lang/String;

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object p0, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v4, "crash_thread_stack"

    iget-object v5, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_thread_stack:Ljava/lang/String;

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object p0, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v4, "crash_exception_message"

    iget-object v5, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_exception_message:Ljava/lang/String;

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object p0, v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v4, "crash_block_duration_ms"

    iget-object p1, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_block_duration_ms:Ljava/lang/Long;

    invoke-interface {p0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {p0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 539
    invoke-static {}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->buildBusiness()Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Business;

    move-result-object p1

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 541
    sget-object v5, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    invoke-static {v6}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$$ExternalSyntheticBackport1;->m(I)J

    move-result-wide v6

    const v8, 0xf4240

    .line 542
    invoke-virtual {v5, v8}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    .line 543
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "%06d"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v5, v11, v2

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 544
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Business;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->md5Lower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 547
    new-instance v9, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v9}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x5dc

    .line 548
    invoke-virtual {v9, v12, v13, v11}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 549
    invoke-virtual {v9, v12, v13, v11}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v9

    .line 550
    invoke-virtual {v9}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v9

    .line 552
    new-instance v11, Lokhttp3/Request$Builder;

    invoke-direct {v11}, Lokhttp3/Request$Builder;-><init>()V

    const-string v12, "https://yybadaccess.3g.qq.com/v3/gen_app_report_data"

    .line 553
    invoke-virtual {v11, v12}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    const-string v12, "Content-Type"

    const-string v13, "application/json"

    .line 554
    invoke-virtual {v11, v12, v13}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    const-string v12, "Ual-Access-Businessid"

    iget-object p1, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Business;->id:Ljava/lang/String;

    .line 555
    invoke-virtual {v11, v12, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v11, "Ual-Access-Nonce"

    .line 556
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v11, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v6, "Ual-Access-Timestamp"

    .line 557
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v6, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v3, "Ual-Access-Signature"

    .line 558
    invoke-virtual {p1, v3, v8}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v3, "Ual-Access-Requestid"

    .line 559
    invoke-virtual {p1, v3, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    sget-object v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->JSON:Lokhttp3/MediaType;

    .line 560
    invoke-static {p0, v3}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 561
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 564
    invoke-virtual {v9, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 566
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 567
    const-string p1, "\u5b9e\u65f6\u4e0a\u62a5\u6210\u529f"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    :try_start_2
    invoke-virtual {p0}, Lokhttp3/Response;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v10

    .line 570
    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 574
    :try_start_4
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    return v2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 575
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 577
    const-string p1, "\u5b9e\u65f6\u4e0a\u62a5\u5f02\u5e38"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v2
.end method

.method private static buildBusiness()Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Business;
    .locals 5

    .line 747
    new-instance v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Business;

    sget-object v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->SLOT_A:[I

    .line 748
    invoke-static {v1}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->fold([I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->SLOT_B:[I

    invoke-static {v2}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->fold([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->flip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->SLOT_C:[I

    .line 749
    invoke-static {v2}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->fold([I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->SLOT_D:[I

    invoke-static {v3}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->fold([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->flip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->SLOT_E:[I

    invoke-static {v4}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->fold([I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Business;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildDevice(Landroid/content/Context;)Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Device;
    .locals 1

    .line 668
    new-instance v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Device;

    invoke-direct {v0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Device;-><init>()V

    .line 669
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Device;->android_id:Ljava/lang/String;

    .line 670
    invoke-static {}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->getAndroidVersion()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Device;->android_version:Ljava/lang/String;

    .line 671
    invoke-static {}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->getDeviceBrand()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Device;->brand:Ljava/lang/String;

    .line 672
    invoke-static {}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->getDeviceModel()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Device;->model:Ljava/lang/String;

    .line 673
    invoke-static {}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->getPlatformBit()I

    move-result p0

    iput p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Device;->platform_bit:I

    return-object v0
.end method

.method private static collectSystemAnr(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    return-object v0

    .line 393
    :cond_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_1

    return-object v0

    .line 397
    :cond_1
    const-string v2, "aiappshell_crash"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 398
    const-string v4, "last_reported_anr_ts"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 402
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v9, 0xa

    .line 401
    invoke-static {v1, p0, v3, v9}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 406
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v9, v7

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v1

    .line 407
    invoke-static {v1}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ApplicationExitInfo;)I

    move-result v11

    const/4 v12, 0x6

    if-eq v11, v12, :cond_4

    goto :goto_0

    .line 410
    :cond_4
    invoke-static {v1}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v11

    cmp-long v13, v11, v7

    if-gtz v13, :cond_5

    goto :goto_0

    .line 414
    :cond_5
    new-instance v13, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;

    invoke-direct {v13}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;-><init>()V

    .line 415
    const-string v14, "anr"

    iput-object v14, v13, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_type:Ljava/lang/String;

    .line 416
    const-string v14, "system_exit"

    iput-object v14, v13, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_source:Ljava/lang/String;

    .line 417
    iput-wide v11, v13, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_occur_time_ms:J

    .line 418
    iput v3, v13, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_report_retry_count:I

    .line 419
    const-string v14, "main"

    iput-object v14, v13, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_thread_name:Ljava/lang/String;

    .line 420
    invoke-static {v1}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_process_name:Ljava/lang/String;

    .line 421
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v13, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_block_duration_ms:Ljava/lang/Long;

    .line 422
    invoke-static {v1}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->readTraceInputStream(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v1

    const v14, 0x8000

    .line 423
    invoke-static {v1, v14}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_thread_stack:Ljava/lang/String;

    .line 424
    const-string v1, ""

    iput-object v1, v13, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_exception_message:Ljava/lang/String;

    .line 425
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmp-long v1, v11, v9

    if-lez v1, :cond_3

    move-wide v9, v11

    goto :goto_0

    :cond_6
    cmp-long p0, v9, v7

    if-lez p0, :cond_7

    .line 432
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v4, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    return-object v0
.end method

.method private static dedupAnrInPlace(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 471
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 475
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "anr"

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;

    .line 477
    iget-object v4, v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "system_exit"

    iget-object v4, v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 478
    iget-wide v2, v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_occur_time_ms:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 481
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 485
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    .line 486
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;

    .line 487
    iget-object v4, v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "watchdog"

    iget-object v5, v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_source:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 489
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 490
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_occur_time_ms:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    cmp-long v5, v5, v7

    if-gtz v5, :cond_4

    .line 496
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 497
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_5

    .line 499
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method private static deleteSilently(Ljava/io/File;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 660
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static doFlush(Landroid/content/Context;)V
    .locals 10

    .line 332
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->getPendingDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 339
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 341
    array-length v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    .line 342
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".log"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 346
    :cond_1
    :try_start_0
    invoke-static {v6}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 347
    sget-object v8, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->GSON:Lcom/google/gson/Gson;

    const-class v9, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;

    invoke-virtual {v8, v7, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;

    if-eqz v7, :cond_2

    .line 349
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 355
    :catchall_0
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 361
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v0, v4, :cond_4

    .line 363
    :try_start_1
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->collectSystemAnr(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;

    .line 365
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 366
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 369
    const-string v4, "CrashReporter"

    const-string v5, "collectSystemAnr failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 379
    :cond_5
    invoke-static {v1, v2}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->dedupAnrInPlace(Ljava/util/List;Ljava/util/List;)V

    .line 382
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 383
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-static {p0, v0, v4}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->reportSingle(Landroid/content/Context;Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private static flip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static flushPending(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 179
    :cond_0
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sFlushTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 182
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 184
    new-instance v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$3;

    const-string v1, "CrashReporter-flush"

    invoke-direct {v0, v1, p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static fold([I)Ljava/lang/String;
    .locals 5

    .line 754
    invoke-static {}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->mixedMask()[I

    move-result-object v0

    .line 755
    array-length v1, p0

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 756
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 757
    aget v3, p0, v2

    array-length v4, v0

    rem-int v4, v2, v4

    aget v4, v0, v4

    xor-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 759
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static getAndroidVersion()Ljava/lang/String;
    .locals 1

    .line 695
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 859
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 860
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_1

    .line 862
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 864
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 865
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_0

    .line 866
    iget-object p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 873
    :catchall_0
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDeviceBrand()Ljava/lang/String;
    .locals 1

    .line 687
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 679
    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :catchall_0
    :goto_0
    return-object v0
.end method

.method private static getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 691
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private static getPendingDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    .line 796
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "aiappshell_crash_pending"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 797
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :catchall_0
    return-object v0
.end method

.method private static getPlatformBit()I
    .locals 3

    const/4 v0, 0x0

    .line 701
    :try_start_0
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 705
    :cond_0
    const-string v2, "64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :catchall_0
    :goto_0
    return v0
.end method

.method private static getVersionCode(Landroid/content/Context;)J
    .locals 5

    const-wide/16 v0, 0x0

    .line 713
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 715
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    .line 716
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    invoke-static {v2, p0, v3}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    goto :goto_0

    .line 718
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 720
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 721
    invoke-static {p0}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    return-wide v0

    .line 723
    :cond_1
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, p0

    :catchall_0
    return-wide v0
.end method

.method private static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 732
    const-string v0, "unknown"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 734
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    .line 735
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    goto :goto_0

    .line 737
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 739
    :goto_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-object v0
.end method

.method private static handleAnr(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 246
    :try_start_0
    new-instance v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;

    invoke-direct {v0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;-><init>()V

    .line 247
    const-string v1, "anr"

    iput-object v1, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_type:Ljava/lang/String;

    .line 248
    iput-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_source:Ljava/lang/String;

    .line 249
    iput-wide p1, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_occur_time_ms:J

    const/4 p0, 0x0

    .line 250
    iput p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_report_retry_count:I

    .line 251
    const-string p0, "main"

    iput-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_thread_name:Ljava/lang/String;

    .line 252
    sget-object p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sAppContext:Landroid/content/Context;

    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_process_name:Ljava/lang/String;

    .line 253
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_block_duration_ms:Ljava/lang/Long;

    if-eqz p5, :cond_0

    .line 255
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, p6

    :goto_0
    const/16 p0, 0x4000

    .line 256
    invoke-static {p5, p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_thread_stack:Ljava/lang/String;

    .line 257
    const-string p0, ""

    iput-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_exception_message:Ljava/lang/String;

    .line 260
    sget-object p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sAppContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->attemptRealtimeReport(Landroid/content/Context;Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 264
    sget-object p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sAppContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->writePendingFile(Landroid/content/Context;Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 267
    const-string p1, "CrashReporter"

    const-string p2, "handleAnr failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private static handleJavaCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    const/16 v0, 0xa

    .line 204
    :try_start_0
    new-instance v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;

    invoke-direct {v1}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;-><init>()V

    .line 205
    const-string v2, "java"

    iput-object v2, v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_type:Ljava/lang/String;

    .line 206
    const-string v2, "uncaught_handler"

    iput-object v2, v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_source:Ljava/lang/String;

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_occur_time_ms:J

    const/4 v2, 0x0

    .line 208
    iput v2, v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_report_retry_count:I

    if-eqz p0, :cond_0

    .line 209
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "unknown"

    :goto_0
    iput-object v2, v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_thread_name:Ljava/lang/String;

    .line 210
    sget-object v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sAppContext:Landroid/content/Context;

    invoke-static {v2}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_process_name:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    const/16 v3, 0x200

    .line 212
    invoke-static {v2, v3}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_exception_message:Ljava/lang/String;

    .line 213
    invoke-static {p1}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->stackToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-static {v2, v3}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_thread_stack:Ljava/lang/String;

    const/4 v2, 0x0

    .line 214
    iput-object v2, v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_block_duration_ms:Ljava/lang/Long;

    .line 217
    sget-object v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sAppContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->attemptRealtimeReport(Landroid/content/Context;Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    sget-object v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sAppContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->writePendingFile(Landroid/content/Context;Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_2
    :try_start_1
    sget-object v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sPrevHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_3

    .line 229
    :goto_2
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sPrevHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 231
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    :goto_3
    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 232
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_4

    .line 228
    :catchall_0
    sget-object v1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sPrevHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_4

    goto :goto_2

    .line 231
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    :goto_4
    return-void
.end method

.method public static install(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 141
    :cond_0
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sInstalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 145
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sAppContext:Landroid/content/Context;

    .line 147
    sget-object p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sAppContext:Landroid/content/Context;

    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->isMainProcess(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 151
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    sput-object p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sPrevHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 152
    new-instance p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$1;

    invoke-direct {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$1;-><init>()V

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 159
    new-instance p0, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;

    new-instance v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$2;

    invoke-direct {v0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$2;-><init>()V

    invoke-direct {p0, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;-><init>(Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog$Listener;)V

    sput-object p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sWatchDog:Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;

    .line 165
    sget-object p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->sWatchDog:Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;

    invoke-virtual {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 167
    const-string v0, "CrashReporter"

    const-string v1, "install failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static isMainProcess(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    .line 849
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 850
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_0

    .line 851
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :catchall_0
    :goto_0
    return v0
.end method

.method private static varargs join([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 775
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 776
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 778
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static md5Lower(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 782
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    .line 785
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

    .line 787
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static mixedMask()[I
    .locals 5

    .line 763
    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->MIX_LEFT:[I

    array-length v1, v0

    sget-object v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->MIX_RIGHT:[I

    array-length v3, v2

    add-int/2addr v1, v3

    new-array v1, v1, [I

    .line 764
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    array-length v0, v0

    array-length v3, v2

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 809
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x20000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p0, v1

    new-array v1, p0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_1

    sub-int v4, p0, v3

    .line 812
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v3, v4

    goto :goto_0

    .line 816
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 819
    :catch_1
    throw p0
.end method

.method private static readTraceInputStream(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;
    .locals 5

    .line 439
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const-string v2, ""

    if-ge v0, v1, :cond_0

    return-object v2

    .line 445
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/getcapacitor/Bridge$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    if-eqz p0, :cond_1

    .line 464
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-object v2

    .line 449
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x2000

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 452
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 453
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const v4, 0x8000

    if-le v3, v4, :cond_3

    .line 455
    const-string v0, "...(truncated)\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_5

    .line 464
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_5
    return-object v0

    :catchall_0
    const/4 p0, 0x0

    :catchall_1
    if-eqz p0, :cond_6

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_6
    return-object v2
.end method

.method private static reportSingle(Landroid/content/Context;Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;Ljava/io/File;)V
    .locals 10

    .line 589
    :try_start_0
    new-instance v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;

    invoke-direct {v0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;-><init>()V

    .line 590
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->package_name:Ljava/lang/String;

    .line 591
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->getVersionCode(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->version_code:J

    .line 592
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->version_name:Ljava/lang/String;

    .line 593
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->buildDevice(Landroid/content/Context;)Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Device;

    move-result-object p0

    iput-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->device:Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Device;

    const/4 p0, 0x2

    .line 594
    iput p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->event_type:I

    .line 597
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    .line 598
    iget-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v1, "crash_type"

    iget-object v2, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_type:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v1, "crash_source"

    iget-object v2, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_source:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v1, "crash_occur_time_ms"

    iget-wide v2, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_occur_time_ms:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v1, "crash_report_retry_count"

    iget v2, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_report_retry_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v1, "crash_thread_name"

    iget-object v2, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_thread_name:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v1, "crash_process_name"

    iget-object v2, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_process_name:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v1, "crash_thread_stack"

    iget-object v2, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_thread_stack:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v1, "crash_exception_message"

    iget-object v2, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_exception_message:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object p0, v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$ReportReq;->ext_data:Ljava/util/Map;

    const-string v1, "crash_block_duration_ms"

    iget-object p1, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_block_duration_ms:Ljava/lang/Long;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 610
    invoke-static {}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->buildBusiness()Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Business;

    move-result-object p1

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 612
    sget-object v2, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    invoke-static {v3}, Lyyb/ai/y1779639959407c7f49371b3978075/ApkOpenChecker$$ExternalSyntheticBackport1;->m(I)J

    move-result-wide v3

    const v5, 0xf4240

    .line 613
    invoke-virtual {v2, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    .line 614
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "%06d"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Business;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->md5Lower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 617
    new-instance v6, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v6}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0xbb8

    .line 618
    invoke-virtual {v6, v8, v9, v7}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 619
    invoke-virtual {v6, v8, v9, v7}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v6

    .line 620
    invoke-virtual {v6}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v6

    .line 622
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    const-string v8, "https://yybadaccess.3g.qq.com/v3/gen_app_report_data"

    .line 623
    invoke-virtual {v7, v8}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    const-string v8, "Content-Type"

    const-string v9, "application/json"

    .line 624
    invoke-virtual {v7, v8, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    const-string v8, "Ual-Access-Businessid"

    iget-object p1, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$Business;->id:Ljava/lang/String;

    .line 625
    invoke-virtual {v7, v8, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v7, "Ual-Access-Nonce"

    .line 626
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v7, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v3, "Ual-Access-Timestamp"

    .line 627
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "Ual-Access-Signature"

    .line 628
    invoke-virtual {p1, v0, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v0, "Ual-Access-Requestid"

    .line 629
    invoke-virtual {p1, v0, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    sget-object v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->JSON:Lokhttp3/MediaType;

    .line 630
    invoke-static {p0, v0}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 631
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 633
    invoke-virtual {v6, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$5;

    invoke-direct {p1, p2}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$5;-><init>(Ljava/io/File;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 652
    :catchall_0
    invoke-static {p2}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->deleteSilently(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method private static stackToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 824
    const-string p0, ""

    return-object p0

    .line 826
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 827
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 829
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 832
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 834
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 831
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 832
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 833
    throw p0
.end method

.method private static trimPendingDirIfNeeded(Ljava/io/File;)V
    .locals 3

    .line 314
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 315
    array-length v0, p0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 318
    :cond_0
    new-instance v0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$4;

    invoke-direct {v0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$4;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 324
    array-length v0, p0

    add-int/lit8 v0, v0, -0x9

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 325
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 326
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return-void
.end method

.method private static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 839
    const-string p0, ""

    return-object p0

    .line 841
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1

    return-object p0

    .line 844
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n...(truncated)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static writePendingFile(Landroid/content/Context;Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;)V
    .locals 4

    .line 276
    const-string v0, "_"

    if-nez p0, :cond_0

    return-void

    .line 280
    :cond_0
    :try_start_0
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->getPendingDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 285
    :cond_1
    invoke-static {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->trimPendingDirIfNeeded(Ljava/io/File;)V

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_occur_time_ms:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter$CrashItem;->crash_source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".log"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".tmp"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    sget-object p0, Lyyb/ai/y1779639959407c7f49371b3978075/CrashReporter;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p1, 0x0

    .line 293
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    :try_start_2
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 295
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 296
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 303
    :catch_0
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 304
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz p1, :cond_2

    .line 299
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 301
    :catch_1
    :cond_2
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    .line 308
    const-string p1, "CrashReporter"

    const-string v0, "writePendingFile failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method
