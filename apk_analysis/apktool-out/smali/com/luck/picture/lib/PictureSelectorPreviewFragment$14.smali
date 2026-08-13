.class Lcom/luck/picture/lib/PictureSelectorPreviewFragment$14;
.super Ljava/lang/Object;
.source "PictureSelectorPreviewFragment.java"

# interfaces
.implements Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->initPreviewSelectGallery(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

.field final synthetic val$mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1000
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$14;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$14;->val$mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;)V
    .locals 2

    .line 1003
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$14;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {p2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "vibrator"

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    .line 1004
    invoke-virtual {p2, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1005
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$14;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p2, p2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;->getItemCount()I

    move-result p2

    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$14;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {p3}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$2100(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object p3

    iget p3, p3, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    if-eq p2, p3, :cond_0

    .line 1006
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$14;->val$mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void

    .line 1009
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p2

    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$14;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p3, p3, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    invoke-virtual {p3}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-eq p2, p3, :cond_1

    .line 1010
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$14;->val$mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    return-void
.end method
