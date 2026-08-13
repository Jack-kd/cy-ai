.class abstract Ltop/zibin/luban/io/BaseKeyPool;
.super Ljava/lang/Object;
.source "BaseKeyPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ltop/zibin/luban/io/PoolAble;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MAX_SIZE:I = 0x14


# instance fields
.field private final keyPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 13
    invoke-static {v0}, Ltop/zibin/luban/io/BaseKeyPool;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Ltop/zibin/luban/io/BaseKeyPool;->keyPool:Ljava/util/Queue;

    return-void
.end method

.method public static createQueue(I)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method abstract create()Ltop/zibin/luban/io/PoolAble;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method get()Ltop/zibin/luban/io/PoolAble;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Ltop/zibin/luban/io/BaseKeyPool;->keyPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/zibin/luban/io/PoolAble;

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Ltop/zibin/luban/io/BaseKeyPool;->create()Ltop/zibin/luban/io/PoolAble;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public offer(Ltop/zibin/luban/io/PoolAble;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Ltop/zibin/luban/io/BaseKeyPool;->keyPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 25
    iget-object v0, p0, Ltop/zibin/luban/io/BaseKeyPool;->keyPool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
