.class public Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;
.super Lcom/luck/picture/lib/obj/pool/ObjectPools$SimpleObjectPool;
.source "ObjectPools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/obj/pool/ObjectPools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizedPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/luck/picture/lib/obj/pool/ObjectPools$SimpleObjectPool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/luck/picture/lib/obj/pool/ObjectPools$SimpleObjectPool;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-super {p0}, Lcom/luck/picture/lib/obj/pool/ObjectPools$SimpleObjectPool;->acquire()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-super {p0}, Lcom/luck/picture/lib/obj/pool/ObjectPools$SimpleObjectPool;->destroy()V

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/luck/picture/lib/obj/pool/ObjectPools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    invoke-super {p0, p1}, Lcom/luck/picture/lib/obj/pool/ObjectPools$SimpleObjectPool;->release(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
