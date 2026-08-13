.class Lcom/luck/picture/lib/PictureSelectorPreviewFragment$9;
.super Ljava/lang/Object;
.source "PictureSelectorPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->initTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$9;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 761
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$9;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-boolean p1, p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz p1, :cond_0

    .line 762
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$9;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$1100(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    goto :goto_0

    .line 764
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$9;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$9;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 765
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$9;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v1, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->confirmSelect(Lcom/luck/picture/lib/entity/LocalMedia;Z)I

    move-result p1

    if-nez p1, :cond_2

    .line 767
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$9;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$1200(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectAnimListener:Lcom/luck/picture/lib/interfaces/OnSelectAnimListener;

    if-eqz p1, :cond_1

    .line 768
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$9;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$1300(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectAnimListener:Lcom/luck/picture/lib/interfaces/OnSelectAnimListener;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$9;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Lcom/luck/picture/lib/interfaces/OnSelectAnimListener;->onSelectAnim(Landroid/view/View;)J

    goto :goto_0

    .line 770
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$9;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$9;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$anim;->ps_anim_modal_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_0
    return-void
.end method
