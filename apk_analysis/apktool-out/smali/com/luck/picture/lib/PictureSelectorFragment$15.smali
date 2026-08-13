.class Lcom/luck/picture/lib/PictureSelectorFragment$15;
.super Ljava/lang/Object;
.source "PictureSelectorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorFragment;->recoveryRecyclerPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorFragment;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$15;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$15;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$700(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$15;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$3600(Lcom/luck/picture/lib/PictureSelectorFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->scrollToPosition(I)V

    .line 763
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$15;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$700(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$15;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$3600(Lcom/luck/picture/lib/PictureSelectorFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setLastVisiblePosition(I)V

    return-void
.end method
