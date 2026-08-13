.class public abstract Ltop/zibin/luban/InputStreamAdapter;
.super Ljava/lang/Object;
.source "InputStreamAdapter.java"

# interfaces
.implements Ltop/zibin/luban/InputStreamProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 23
    invoke-static {}, Ltop/zibin/luban/io/ArrayPoolProvide;->getInstance()Ltop/zibin/luban/io/ArrayPoolProvide;

    move-result-object v0

    invoke-virtual {v0}, Ltop/zibin/luban/io/ArrayPoolProvide;->clearMemory()V

    return-void
.end method

.method public open()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Ltop/zibin/luban/InputStreamAdapter;->openInternal()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract openInternal()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
