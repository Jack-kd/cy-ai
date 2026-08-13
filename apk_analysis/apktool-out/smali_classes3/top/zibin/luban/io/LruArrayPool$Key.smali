.class final Ltop/zibin/luban/io/LruArrayPool$Key;
.super Ljava/lang/Object;
.source "LruArrayPool.java"

# interfaces
.implements Ltop/zibin/luban/io/PoolAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/zibin/luban/io/LruArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Key"
.end annotation


# instance fields
.field private arrayClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final pool:Ltop/zibin/luban/io/LruArrayPool$KeyPool;

.field size:I


# direct methods
.method constructor <init>(Ltop/zibin/luban/io/LruArrayPool$KeyPool;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Ltop/zibin/luban/io/LruArrayPool$Key;->pool:Ltop/zibin/luban/io/LruArrayPool$KeyPool;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 239
    instance-of v0, p1, Ltop/zibin/luban/io/LruArrayPool$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    check-cast p1, Ltop/zibin/luban/io/LruArrayPool$Key;

    .line 241
    iget v0, p0, Ltop/zibin/luban/io/LruArrayPool$Key;->size:I

    iget v2, p1, Ltop/zibin/luban/io/LruArrayPool$Key;->size:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Ltop/zibin/luban/io/LruArrayPool$Key;->arrayClass:Ljava/lang/Class;

    iget-object p1, p1, Ltop/zibin/luban/io/LruArrayPool$Key;->arrayClass:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 258
    iget v0, p0, Ltop/zibin/luban/io/LruArrayPool$Key;->size:I

    mul-int/lit8 v0, v0, 0x1f

    .line 259
    iget-object v1, p0, Ltop/zibin/luban/io/LruArrayPool$Key;->arrayClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method init(ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 233
    iput p1, p0, Ltop/zibin/luban/io/LruArrayPool$Key;->size:I

    .line 234
    iput-object p2, p0, Ltop/zibin/luban/io/LruArrayPool$Key;->arrayClass:Ljava/lang/Class;

    return-void
.end method

.method public offer()V
    .locals 1

    .line 253
    iget-object v0, p0, Ltop/zibin/luban/io/LruArrayPool$Key;->pool:Ltop/zibin/luban/io/LruArrayPool$KeyPool;

    invoke-virtual {v0, p0}, Ltop/zibin/luban/io/LruArrayPool$KeyPool;->offer(Ltop/zibin/luban/io/PoolAble;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key{size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltop/zibin/luban/io/LruArrayPool$Key;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "array="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltop/zibin/luban/io/LruArrayPool$Key;->arrayClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
