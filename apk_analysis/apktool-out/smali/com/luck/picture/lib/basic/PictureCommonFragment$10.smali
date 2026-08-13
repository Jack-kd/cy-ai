.class Lcom/luck/picture/lib/basic/PictureCommonFragment$10;
.super Ljava/lang/Object;
.source "PictureCommonFragment.java"

# interfaces
.implements Lcom/luck/picture/lib/interfaces/OnKeyValueResultCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/basic/PictureCommonFragment;->onCompress(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

.field final synthetic val$queue:Ljava/util/concurrent/ConcurrentHashMap;

.field final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1455
    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$10;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    iput-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$10;->val$result:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$10;->val$queue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1458
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1459
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$10;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$10;->val$result:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onResultEvent(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$10;->val$queue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    if-eqz v0, :cond_4

    .line 1463
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1464
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Android/data/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "data/user/"

    .line 1465
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1466
    :cond_1
    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCompressPath(Ljava/lang/String;)V

    .line 1467
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCompressed(Z)V

    .line 1468
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/entity/LocalMedia;->setSandboxPath(Ljava/lang/String;)V

    goto :goto_0

    .line 1471
    :cond_2
    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCompressPath(Ljava/lang/String;)V

    .line 1472
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCompressed(Z)V

    .line 1474
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$10;->val$queue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    :cond_4
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$10;->val$queue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 1477
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$10;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$10;->val$result:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onResultEvent(Ljava/util/ArrayList;)V

    :cond_5
    :goto_1
    return-void
.end method
