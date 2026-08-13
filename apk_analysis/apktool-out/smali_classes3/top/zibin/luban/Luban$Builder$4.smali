.class Ltop/zibin/luban/Luban$Builder$4;
.super Ltop/zibin/luban/InputStreamAdapter;
.source "Luban.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/zibin/luban/Luban$Builder;->get(Ljava/lang/String;I)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/zibin/luban/Luban$Builder;

.field final synthetic val$index:I

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltop/zibin/luban/Luban$Builder;Ljava/lang/String;I)V
    .locals 0

    .line 465
    iput-object p1, p0, Ltop/zibin/luban/Luban$Builder$4;->this$0:Ltop/zibin/luban/Luban$Builder;

    iput-object p2, p0, Ltop/zibin/luban/Luban$Builder$4;->val$path:Ljava/lang/String;

    iput p3, p0, Ltop/zibin/luban/Luban$Builder$4;->val$index:I

    invoke-direct {p0}, Ltop/zibin/luban/InputStreamAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 473
    iget v0, p0, Ltop/zibin/luban/Luban$Builder$4;->val$index:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Ltop/zibin/luban/Luban$Builder$4;->val$path:Ljava/lang/String;

    return-object v0
.end method

.method public openInternal()Ljava/io/InputStream;
    .locals 2

    .line 468
    invoke-static {}, Ltop/zibin/luban/io/ArrayPoolProvide;->getInstance()Ltop/zibin/luban/io/ArrayPoolProvide;

    move-result-object v0

    iget-object v1, p0, Ltop/zibin/luban/Luban$Builder$4;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltop/zibin/luban/io/ArrayPoolProvide;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
