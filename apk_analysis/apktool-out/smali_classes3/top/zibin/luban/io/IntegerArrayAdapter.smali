.class public final Ltop/zibin/luban/io/IntegerArrayAdapter;
.super Ljava/lang/Object;
.source "IntegerArrayAdapter.java"

# interfaces
.implements Ltop/zibin/luban/io/ArrayAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltop/zibin/luban/io/ArrayAdapterInterface<",
        "[I>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntegerArrayPool"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getArrayLength(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, [I

    invoke-virtual {p0, p1}, Ltop/zibin/luban/io/IntegerArrayAdapter;->getArrayLength([I)I

    move-result p1

    return p1
.end method

.method public getArrayLength([I)I
    .locals 0

    .line 18
    array-length p1, p1

    return p1
.end method

.method public getElementSizeInBytes()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 13
    const-string v0, "IntegerArrayPool"

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Ltop/zibin/luban/io/IntegerArrayAdapter;->newArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[I
    .locals 0

    .line 23
    new-array p1, p1, [I

    return-object p1
.end method
