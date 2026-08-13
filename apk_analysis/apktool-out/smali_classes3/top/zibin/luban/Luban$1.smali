.class Ltop/zibin/luban/Luban$1;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/zibin/luban/Luban;->launch(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/zibin/luban/Luban;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$path:Ltop/zibin/luban/InputStreamProvider;


# direct methods
.method constructor <init>(Ltop/zibin/luban/Luban;Landroid/content/Context;Ltop/zibin/luban/InputStreamProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    iput-object p2, p0, Ltop/zibin/luban/Luban$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Ltop/zibin/luban/Luban$1;->val$path:Ltop/zibin/luban/InputStreamProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 145
    const-string v0, "source"

    :try_start_0
    iget-object v1, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    invoke-static {v1}, Ltop/zibin/luban/Luban;->access$900(Ltop/zibin/luban/Luban;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    invoke-static {v2}, Ltop/zibin/luban/Luban;->access$900(Ltop/zibin/luban/Luban;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    iget-object v1, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    iget-object v2, p0, Ltop/zibin/luban/Luban$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Ltop/zibin/luban/Luban$1;->val$path:Ltop/zibin/luban/InputStreamProvider;

    invoke-static {v1, v2, v3}, Ltop/zibin/luban/Luban;->access$1000(Ltop/zibin/luban/Luban;Landroid/content/Context;Ltop/zibin/luban/InputStreamProvider;)Ljava/io/File;

    move-result-object v1

    .line 147
    iget-object v2, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    invoke-static {v2}, Ltop/zibin/luban/Luban;->access$900(Ltop/zibin/luban/Luban;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 148
    iget-object v3, p0, Ltop/zibin/luban/Luban$1;->val$path:Ltop/zibin/luban/InputStreamProvider;

    invoke-interface {v3}, Ltop/zibin/luban/InputStreamProvider;->getIndex()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 149
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 151
    iget-object v3, p0, Ltop/zibin/luban/Luban$1;->val$path:Ltop/zibin/luban/InputStreamProvider;

    invoke-interface {v3}, Ltop/zibin/luban/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 153
    iget-object v1, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    invoke-static {v1}, Ltop/zibin/luban/Luban;->access$900(Ltop/zibin/luban/Luban;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    iget-object v1, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    invoke-static {v1}, Ltop/zibin/luban/Luban;->access$900(Ltop/zibin/luban/Luban;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 156
    iget-object v2, p0, Ltop/zibin/luban/Luban$1;->val$path:Ltop/zibin/luban/InputStreamProvider;

    invoke-interface {v2}, Ltop/zibin/luban/InputStreamProvider;->getIndex()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 157
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 158
    iget-object v3, p0, Ltop/zibin/luban/Luban$1;->val$path:Ltop/zibin/luban/InputStreamProvider;

    invoke-interface {v3}, Ltop/zibin/luban/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 160
    iget-object v0, p0, Ltop/zibin/luban/Luban$1;->this$0:Ltop/zibin/luban/Luban;

    invoke-static {v0}, Ltop/zibin/luban/Luban;->access$900(Ltop/zibin/luban/Luban;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
