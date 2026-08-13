.class Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "PictureSelectorPreviewFragment.java"


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


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 8

    .line 957
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 958
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-boolean v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->needScaleSmall:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iput-boolean v2, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->needScaleSmall:Z

    .line 960
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    .line 961
    new-array v4, v3, [Landroid/animation/Animator;

    iget-object v5, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-array v6, v3, [F

    fill-array-data v6, :array_0

    .line 962
    const-string v7, "scaleX"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    .line 963
    const-string v6, "scaleY"

    invoke-static {v5, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v1

    .line 961
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 964
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x32

    .line 965
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 966
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 967
    new-instance v3, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13$2;

    invoke-direct {v3, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13$2;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 974
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 975
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;->notifyItemChanged(I)V

    .line 976
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-boolean p1, p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    if-eqz p1, :cond_2

    .line 977
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;->getLastCheckPosition()I

    move-result p1

    .line 978
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p2, p2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p2

    if-eq p2, p1, :cond_2

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 979
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p2, p2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 980
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p2, p2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 981
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p2, p2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 983
    :cond_1
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p2, p2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 986
    :cond_2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$2000(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p1}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/style/SelectMainStyle;->isSelectNumberStyle()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 987
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 988
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    .line 989
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_4

    .line 990
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 991
    instance-of v0, p2, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    if-eqz v0, :cond_3

    .line 992
    check-cast p2, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    invoke-virtual {p2, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->sendChangeSubSelectPositionEvent(Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J
    .locals 0

    .line 952
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 888
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x3f333333    # 0.7f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const/16 p1, 0xc

    const/4 p2, 0x0

    .line 889
    invoke-static {p1, p2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 7

    .line 926
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-boolean v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->needScaleBig:Z

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->needScaleBig:Z

    .line 928
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 929
    new-array v3, v2, [Landroid/animation/Animator;

    iget-object v4, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-array v5, v2, [F

    fill-array-data v5, :array_0

    .line 930
    const-string v6, "scaleX"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    .line 931
    const-string v4, "scaleY"

    invoke-static {v1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    .line 929
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x32

    .line 932
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 933
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 934
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 935
    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13$1;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13$1;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 942
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
    .end array-data
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 896
    :try_start_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    .line 898
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p2

    if-ge p1, p2, :cond_1

    move p3, p1

    :goto_0
    if-ge p3, p2, :cond_3

    .line 901
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;->getData()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-static {v0, p3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 902
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$1800(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 903
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-boolean v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-static {v0, p3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    :cond_0
    move p3, v1

    goto :goto_0

    :cond_1
    move p3, p1

    :goto_1
    if-le p3, p2, :cond_3

    .line 909
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;->getData()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-static {v0, p3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 910
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$1900(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 911
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-boolean v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    if-eqz v0, :cond_2

    .line 912
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-static {v0, p3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 916
    :cond_3
    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p3, p3, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    invoke-virtual {p3, p1, p2}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;->notifyItemMoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 918
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 947
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
