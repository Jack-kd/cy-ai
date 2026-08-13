.class public Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;
.super Ljava/lang/Thread;
.source "AnrWatchDog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog$Listener;
    }
.end annotation


# static fields
.field public static final ANR_TIMEOUT_MS:J = 0x1388L

.field private static final CHECK_INTERVAL_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "AnrWatchDog"


# instance fields
.field private final listener:Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog$Listener;

.field private final mainHandler:Landroid/os/Handler;

.field private volatile ticked:Z


# direct methods
.method static bridge synthetic -$$Nest$fputticked(Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;Z)V
    .locals 0

    iput-boolean p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->ticked:Z

    return-void
.end method

.method public constructor <init>(Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog$Listener;)V
    .locals 3

    .line 42
    const-string v0, "AnrWatchDog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->ticked:Z

    .line 43
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->mainHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->listener:Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog$Listener;

    .line 45
    invoke-virtual {p0, v0}, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->setDaemon(Z)V

    return-void
.end method

.method private static dumpAllThreads()Ljava/lang/String;
    .locals 8

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 129
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    .line 132
    const-string v4, "---- "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (state="

    .line 133
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") ----\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    const/16 v3, 0xa

    if-eqz v2, :cond_1

    .line 136
    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 137
    const-string v7, "  at "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const v7, 0x8000

    if-le v6, v7, :cond_0

    .line 139
    const-string v1, "  ...(truncated)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dumpThread(Ljava/lang/Thread;)Ljava/lang/String;
    .locals 5

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 112
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 115
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 116
    const-string v4, "  at "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x4000

    if-le v3, v4, :cond_0

    .line 118
    const-string p0, "  ...(truncated)\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 50
    const-string v0, "]"

    const-string v1, "AnrWatchDog"

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    .line 53
    :try_start_0
    iput-boolean v2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->ticked:Z

    .line 54
    iget-object v2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->mainHandler:Landroid/os/Handler;

    new-instance v5, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog$1;

    invoke-direct {v5, p0}, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog$1;-><init>(Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v5, 0x1388

    .line 62
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 65
    iget-boolean v2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->ticked:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v2, :cond_0

    .line 70
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v2}, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->dumpThread(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 72
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[dump main thread failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 75
    :goto_1
    :try_start_3
    invoke-static {}, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->dumpAllThreads()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    .line 77
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[dump all threads failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 81
    :goto_2
    iget-object v8, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->listener:Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog$Listener;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v8, :cond_1

    .line 83
    :try_start_5
    invoke-interface {v8, v2, v7, v5, v6}, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog$Listener;->onAnrDetected(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    .line 85
    :try_start_6
    const-string v5, "listener.onAnrDetected throw"

    invoke-static {v1, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_1
    :goto_3
    iget-boolean v2, p0, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->ticked:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lyyb/ai/y1779639959407c7f49371b3978075/AnrWatchDog;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    .line 99
    const-string v5, "watchdog loop error"

    invoke-static {v1, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :try_start_7
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_2
    return-void
.end method
