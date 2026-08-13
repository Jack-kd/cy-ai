.class Lcom/luck/picture/lib/basic/PictureCommonFragment$13;
.super Ljava/lang/Object;
.source "PictureCommonFragment.java"

# interfaces
.implements Lcom/luck/picture/lib/interfaces/OnKeyValueResultCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/basic/PictureCommonFragment;->addBitmapWatermark(Ljava/util/ArrayList;)V
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

    .line 1669
    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$13;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    iput-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$13;->val$result:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$13;->val$queue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1672
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1673
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$13;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$13;->val$result:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->access$300(Lcom/luck/picture/lib/basic/PictureCommonFragment;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$13;->val$queue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    if-eqz v0, :cond_1

    .line 1677
    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/entity/LocalMedia;->setWatermarkPath(Ljava/lang/String;)V

    .line 1678
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$13;->val$queue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$13;->val$queue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 1681
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$13;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$13;->val$result:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->access$300(Lcom/luck/picture/lib/basic/PictureCommonFragment;Ljava/util/ArrayList;)V

    :cond_2
    :goto_0
    return-void
.end method
