.class Lcom/luck/picture/lib/PictureSelectorFragment$16;
.super Ljava/lang/Object;
.source "PictureSelectorFragment.java"

# interfaces
.implements Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorFragment;->addRecyclerAction()V
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

    .line 820
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 2

    .line 850
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$4000(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object p1

    iget p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$4100(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isDirectReturnSingle:Z

    if-eqz p1, :cond_0

    .line 851
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$4200(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 852
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-virtual {p1, p3, v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->confirmSelect(Lcom/luck/picture/lib/entity/LocalMedia;Z)I

    move-result p1

    if-nez p1, :cond_2

    .line 854
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$4300(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    goto :goto_0

    .line 857
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/utils/DoubleUtils;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 860
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {p1, p2, v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$3200(Lcom/luck/picture/lib/PictureSelectorFragment;IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)V
    .locals 2

    .line 866
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$3000(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/widget/SlideSelectTouchListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$4400(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isFastSlidingSelect:Z

    if-eqz p1, :cond_0

    .line 867
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    .line 868
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 869
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$3000(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/widget/SlideSelectTouchListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/widget/SlideSelectTouchListener;->startSlideSelection(I)V

    :cond_0
    return-void
.end method

.method public onSelected(Landroid/view/View;ILcom/luck/picture/lib/entity/LocalMedia;)I
    .locals 4

    .line 832
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {p2, p3, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->confirmSelect(Lcom/luck/picture/lib/entity/LocalMedia;Z)I

    move-result p2

    if-nez p2, :cond_1

    .line 834
    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {p3}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$3700(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object p3

    iget-object p3, p3, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectAnimListener:Lcom/luck/picture/lib/interfaces/OnSelectAnimListener;

    if-eqz p3, :cond_0

    .line 835
    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-static {p3}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$3800(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object p3

    iget-object p3, p3, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectAnimListener:Lcom/luck/picture/lib/interfaces/OnSelectAnimListener;

    invoke-interface {p3, p1}, Lcom/luck/picture/lib/interfaces/OnSelectAnimListener;->onSelectAnim(Landroid/view/View;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    long-to-int p1, v0

    .line 837
    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$3902(I)I

    goto :goto_0

    .line 840
    :cond_0
    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-virtual {p3}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/luck/picture/lib/R$anim;->ps_anim_modal_in:I

    invoke-static {p3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p3

    .line 841
    invoke-virtual {p3}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->access$3902(I)I

    .line 842
    invoke-virtual {p1, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return p2
.end method

.method public openCameraClick()V
    .locals 1

    .line 824
    invoke-static {}, Lcom/luck/picture/lib/utils/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$16;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->openSelectedCamera()V

    return-void
.end method
