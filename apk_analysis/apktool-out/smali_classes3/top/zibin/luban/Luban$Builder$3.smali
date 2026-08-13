.class Ltop/zibin/luban/Luban$Builder$3;
.super Ltop/zibin/luban/InputStreamAdapter;
.source "Luban.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/zibin/luban/Luban$Builder;->load(Landroid/net/Uri;I)Ltop/zibin/luban/Luban$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/zibin/luban/Luban$Builder;

.field final synthetic val$index:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ltop/zibin/luban/Luban$Builder;Landroid/net/Uri;I)V
    .locals 0

    .line 362
    iput-object p1, p0, Ltop/zibin/luban/Luban$Builder$3;->this$0:Ltop/zibin/luban/Luban$Builder;

    iput-object p2, p0, Ltop/zibin/luban/Luban$Builder$3;->val$uri:Landroid/net/Uri;

    iput p3, p0, Ltop/zibin/luban/Luban$Builder$3;->val$index:I

    invoke-direct {p0}, Ltop/zibin/luban/InputStreamAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 373
    iget v0, p0, Ltop/zibin/luban/Luban$Builder$3;->val$index:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Ltop/zibin/luban/Luban$Builder$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltop/zibin/luban/Checker;->isContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltop/zibin/luban/Luban$Builder$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltop/zibin/luban/Luban$Builder$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public openInternal()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Ltop/zibin/luban/Luban$Builder$3;->this$0:Ltop/zibin/luban/Luban$Builder;

    invoke-static {v0}, Ltop/zibin/luban/Luban$Builder;->access$200(Ltop/zibin/luban/Luban$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-static {}, Ltop/zibin/luban/io/ArrayPoolProvide;->getInstance()Ltop/zibin/luban/io/ArrayPoolProvide;

    move-result-object v0

    iget-object v1, p0, Ltop/zibin/luban/Luban$Builder$3;->this$0:Ltop/zibin/luban/Luban$Builder;

    invoke-static {v1}, Ltop/zibin/luban/Luban$Builder;->access$1200(Ltop/zibin/luban/Luban$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Ltop/zibin/luban/Luban$Builder$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Ltop/zibin/luban/io/ArrayPoolProvide;->openInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 368
    :cond_0
    iget-object v0, p0, Ltop/zibin/luban/Luban$Builder$3;->this$0:Ltop/zibin/luban/Luban$Builder;

    invoke-static {v0}, Ltop/zibin/luban/Luban$Builder;->access$1200(Ltop/zibin/luban/Luban$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ltop/zibin/luban/Luban$Builder$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
