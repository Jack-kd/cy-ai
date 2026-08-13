.class final Ltop/zibin/luban/io/LruArrayPool$KeyPool;
.super Ltop/zibin/luban/io/BaseKeyPool;
.source "LruArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/zibin/luban/io/LruArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltop/zibin/luban/io/BaseKeyPool<",
        "Ltop/zibin/luban/io/LruArrayPool$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ltop/zibin/luban/io/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Ltop/zibin/luban/io/LruArrayPool$Key;
    .locals 1

    .line 219
    new-instance v0, Ltop/zibin/luban/io/LruArrayPool$Key;

    invoke-direct {v0, p0}, Ltop/zibin/luban/io/LruArrayPool$Key;-><init>(Ltop/zibin/luban/io/LruArrayPool$KeyPool;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ltop/zibin/luban/io/PoolAble;
    .locals 1

    .line 206
    invoke-virtual {p0}, Ltop/zibin/luban/io/LruArrayPool$KeyPool;->create()Ltop/zibin/luban/io/LruArrayPool$Key;

    move-result-object v0

    return-object v0
.end method

.method get(ILjava/lang/Class;)Ltop/zibin/luban/io/LruArrayPool$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ltop/zibin/luban/io/LruArrayPool$Key;"
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Ltop/zibin/luban/io/LruArrayPool$KeyPool;->get()Ltop/zibin/luban/io/PoolAble;

    move-result-object v0

    check-cast v0, Ltop/zibin/luban/io/LruArrayPool$Key;

    .line 213
    invoke-virtual {v0, p1, p2}, Ltop/zibin/luban/io/LruArrayPool$Key;->init(ILjava/lang/Class;)V

    return-object v0
.end method
