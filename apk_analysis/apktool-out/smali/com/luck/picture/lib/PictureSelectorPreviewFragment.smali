.class public Lcom/luck/picture/lib/PictureSelectorPreviewFragment;
.super Lcom/luck/picture/lib/basic/PictureCommonFragment;
.source "PictureSelectorPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PictureSelectorPreviewFragment"


# instance fields
.field protected bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

.field protected completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

.field protected curPosition:I

.field protected currentAlbum:Ljava/lang/String;

.field protected isAnimationStart:Z

.field protected isDisplayDelete:Z

.field protected isExternalPreview:Z

.field protected isHasMore:Z

.field protected isInternalBottomPreview:Z

.field private isPause:Z

.field protected isSaveInstanceState:Z

.field protected isShowCamera:Z

.field protected mAnimViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mBucketId:J

.field protected mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field protected mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

.field protected mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

.field protected magicalView:Lcom/luck/picture/lib/magical/MagicalView;

.field protected needScaleBig:Z

.field protected needScaleSmall:Z

.field private final pageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field protected screenHeight:I

.field protected screenWidth:I

.field protected selectClickArea:Landroid/view/View;

.field protected titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

.field protected totalNum:I

.field protected tvSelected:Landroid/widget/TextView;

.field protected tvSelectedWord:Landroid/widget/TextView;

.field protected viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

.field protected viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 92
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMore:Z

    const-wide/16 v1, -0x1

    .line 144
    iput-wide v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mBucketId:J

    .line 154
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->needScaleBig:Z

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->needScaleSmall:Z

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    .line 164
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isPause:Z

    .line 1425
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$22;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$22;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->pageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;[I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->changeViewParams([I)V

    return-void
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Ljava/util/List;Z)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->handleMoreData(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onBackCurrentFragment()V

    return-void
.end method

.method static synthetic access$1100(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->deletePreview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->notifyGallerySelectMedia(Lcom/luck/picture/lib/entity/LocalMedia;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;[I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->start([I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->previewFullScreenMode()V

    return-void
.end method

.method static synthetic access$2800(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onBackCurrentFragment()V

    return-void
.end method

.method static synthetic access$3100(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onExternalLongPressDownload(Lcom/luck/picture/lib/entity/LocalMedia;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Z
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMagicalEffect()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->changeMagicalViewParams(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->startAutoVideoPlay(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->loadMoreData()V

    return-void
.end method

.method static synthetic access$4200(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;III)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->setMagicalViewParams(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$600(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->dispatchTransformResult()V

    return-void
.end method

.method static synthetic access$700(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$800(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->handleExternalPreviewBack()V

    return-void
.end method

.method static synthetic access$900(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method private changeMagicalViewParams(I)V
    .locals 3

    .line 1494
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1495
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1496
    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V

    invoke-direct {p0, v0, v2, v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getVideoRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    goto :goto_0

    .line 1503
    :cond_0
    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$25;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$25;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V

    invoke-direct {p0, v0, v2, v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getImageRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    :goto_0
    return-void
.end method

.method private changeViewParams([I)V
    .locals 11

    .line 555
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    :goto_0
    invoke-static {v0}, Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;->getItemViewParams(I)Lcom/luck/picture/lib/magical/ViewParams;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 556
    aget v3, p1, v2

    if-eqz v3, :cond_2

    aget v3, p1, v1

    if-nez v3, :cond_1

    goto :goto_1

    .line 560
    :cond_1
    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    iget v5, v0, Lcom/luck/picture/lib/magical/ViewParams;->left:I

    iget v6, v0, Lcom/luck/picture/lib/magical/ViewParams;->top:I

    iget v7, v0, Lcom/luck/picture/lib/magical/ViewParams;->width:I

    iget v8, v0, Lcom/luck/picture/lib/magical/ViewParams;->height:I

    aget v9, p1, v2

    aget v10, p1, v1

    invoke-virtual/range {v4 .. v10}, Lcom/luck/picture/lib/magical/MagicalView;->setViewParams(IIIIII)V

    .line 561
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/magical/MagicalView;->resetStart()V

    goto :goto_2

    .line 557
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    aget v8, p1, v2

    aget v9, p1, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/luck/picture/lib/magical/MagicalView;->setViewParams(IIIIII)V

    .line 558
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    aget v3, p1, v2

    aget p1, p1, v1

    invoke-virtual {v0, v3, p1, v2}, Lcom/luck/picture/lib/magical/MagicalView;->resetStartNormal(IIZ)V

    :goto_2
    return-void
.end method

.method private deletePreview()V
    .locals 8

    .line 1058
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isDisplayDelete:Z

    if-eqz v0, :cond_2

    .line 1059
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onExternalPreviewEventListener:Lcom/luck/picture/lib/interfaces/OnExternalPreviewEventListener;

    if-eqz v0, :cond_2

    .line 1060
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onExternalPreviewEventListener:Lcom/luck/picture/lib/interfaces/OnExternalPreviewEventListener;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/luck/picture/lib/interfaces/OnExternalPreviewEventListener;->onPreviewDelete(I)V

    .line 1061
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 1062
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1063
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->handleExternalPreviewBack()V

    return-void

    .line 1067
    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    sget v2, Lcom/luck/picture/lib/R$string;->ps_preview_image_num:I

    iget v3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 1068
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v5, v6, v4

    .line 1067
    invoke-virtual {p0, v2, v6}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/widget/PreviewTitleBar;->setTitle(Ljava/lang/String;)V

    .line 1069
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    .line 1070
    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    .line 1071
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1073
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    invoke-virtual {v0, v1, v7}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_2
    return-void
.end method

.method private externalPreviewStyle()V
    .locals 3

    .line 1134
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/PreviewTitleBar;->getImageDelete()Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isDisplayDelete:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1135
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1136
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setVisibility(I)V

    return-void
.end method

.method private getImageRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            "Z",
            "Lcom/luck/picture/lib/interfaces/OnCallbackListener<",
            "[I>;)V"
        }
    .end annotation

    .line 1539
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/utils/MediaUtils;->isLongImage(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1540
    iget p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->screenWidth:I

    .line 1541
    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->screenHeight:I

    goto :goto_0

    .line 1543
    :cond_0
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result v0

    .line 1544
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result v2

    if-eqz p2, :cond_2

    if-lez v0, :cond_1

    if-lez v2, :cond_1

    if-le v0, v2, :cond_2

    .line 1547
    :cond_1
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isSyncWidthAndHeight:Z

    if-eqz p2, :cond_2

    .line 1550
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAlpha(F)V

    .line 1551
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;

    invoke-direct {v3, p0, p1, p3}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    invoke-static {p2, v1, v3}, Lcom/luck/picture/lib/utils/MediaUtils;->getImageSize(Landroid/content/Context;Ljava/lang/String;Lcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    const/4 v1, 0x0

    :cond_2
    move p2, v0

    move v0, v2

    .line 1569
    :goto_0
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getCropImageWidth()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getCropImageHeight()I

    move-result v2

    if-lez v2, :cond_3

    .line 1570
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getCropImageWidth()I

    move-result p2

    .line 1571
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getCropImageHeight()I

    move-result v0

    :cond_3
    if-eqz v1, :cond_4

    .line 1574
    filled-new-array {p2, v0}, [I

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/luck/picture/lib/interfaces/OnCallbackListener;->onCall(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private getVideoRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            "Z",
            "Lcom/luck/picture/lib/interfaces/OnCallbackListener<",
            "[I>;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1588
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 1589
    :cond_0
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isSyncWidthAndHeight:Z

    if-eqz p2, :cond_1

    .line 1592
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAlpha(F)V

    .line 1593
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$27;

    invoke-direct {v1, p0, p1, p3}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$27;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    invoke-static {p2, v0, v1}, Lcom/luck/picture/lib/utils/MediaUtils;->getVideoSize(Landroid/content/Context;Ljava/lang/String;Lcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    goto :goto_0

    .line 1611
    :cond_1
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result p1

    filled-new-array {p2, p1}, [I

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/luck/picture/lib/interfaces/OnCallbackListener;->onCall(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private handleExternalPreviewBack()V
    .locals 1

    .line 1084
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v0, :cond_0

    .line 1086
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->hideFullScreenStatusBar()V

    .line 1088
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onExitPictureSelector()V

    :cond_1
    return-void
.end method

.method private handleMoreData(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;Z)V"
        }
    .end annotation

    .line 606
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 609
    :cond_0
    iput-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMore:Z

    if-eqz p2, :cond_2

    .line 611
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 612
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 613
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 614
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 615
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    invoke-virtual {v0, p2, p1}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 617
    :cond_1
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->loadMoreData()V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideFullScreenStatusBar()V
    .locals 3

    const/4 v0, 0x0

    .line 1367
    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 1368
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->getEditor()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private iniMagicalView()V
    .locals 3

    .line 327
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMagicalEffect()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 328
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isSaveInstanceState:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/magical/MagicalView;->setBackgroundAlpha(F)V

    const/4 v0, 0x0

    .line 330
    :goto_1
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 331
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/luck/picture/lib/widget/TitleBar;

    if-eqz v2, :cond_1

    goto :goto_2

    .line 334
    :cond_1
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/magical/MagicalView;->setBackgroundAlpha(F)V

    :cond_3
    return-void
.end method

.method private initBottomNavBar()V
    .locals 2

    .line 1100
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->setBottomNavBarStyle()V

    .line 1101
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->setSelectedChange()V

    .line 1102
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$15;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$15;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->setOnBottomNavBarListener(Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;)V

    return-void
.end method

.method private initComplete()V
    .locals 3

    .line 624
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewSelectBackground()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewSelectBackground()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 628
    :cond_0
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectBackground()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getSelectBackground()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 631
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewSelectTextResId()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 632
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewSelectTextResId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 633
    :cond_2
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewSelectText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 634
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewSelectText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 636
    :cond_3
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    :goto_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewSelectTextSize()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 639
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewSelectTextSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 642
    :cond_4
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewSelectTextColor()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 643
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewSelectTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 646
    :cond_5
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewSelectMarginRight()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 647
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_6

    .line 648
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_7

    .line 649
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 650
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewSelectMarginRight()I

    move-result v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 652
    :cond_6
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_7

    .line 653
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 654
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewSelectMarginRight()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 657
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    invoke-virtual {v1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setCompleteSelectViewStyle()V

    .line 658
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setSelectedChange(Z)V

    .line 659
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isCompleteSelectRelativeTop()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 660
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    invoke-virtual {v1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_8

    .line 661
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    .line 662
    invoke-virtual {v1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget v2, Lcom/luck/picture/lib/R$id;->title_bar:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 663
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    .line 664
    invoke-virtual {v1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget v2, Lcom/luck/picture/lib/R$id;->title_bar:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 665
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v1, :cond_9

    .line 666
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    .line 667
    invoke-virtual {v1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/utils/DensityUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    goto :goto_3

    .line 669
    :cond_8
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    invoke-virtual {v1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_9

    .line 670
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v1, :cond_9

    .line 671
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    .line 672
    invoke-virtual {v1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/utils/DensityUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 677
    :cond_9
    :goto_3
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isPreviewSelectRelativeBottom()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 678
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_c

    .line 679
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    .line 680
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget v2, Lcom/luck/picture/lib/R$id;->bottom_nar_bar:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 681
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    .line 682
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget v2, Lcom/luck/picture/lib/R$id;->bottom_nar_bar:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 684
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    .line 685
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget v2, Lcom/luck/picture/lib/R$id;->bottom_nar_bar:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 686
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    .line 687
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget v2, Lcom/luck/picture/lib/R$id;->bottom_nar_bar:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 689
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectClickArea:Landroid/view/View;

    .line 690
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget v2, Lcom/luck/picture/lib/R$id;->bottom_nar_bar:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 691
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectClickArea:Landroid/view/View;

    .line 692
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget v2, Lcom/luck/picture/lib/R$id;->bottom_nar_bar:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto :goto_4

    .line 695
    :cond_a
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v1, :cond_c

    .line 696
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_b

    .line 697
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    .line 698
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/utils/DensityUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    goto :goto_4

    .line 699
    :cond_b
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_c

    .line 700
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    .line 701
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/utils/DensityUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 705
    :cond_c
    :goto_4
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    new-instance v2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$6;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Lcom/luck/picture/lib/style/SelectMainStyle;)V

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTitleBar()V
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getTitleBarStyle()Lcom/luck/picture/lib/style/TitleBarStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->isHideTitleBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/PreviewTitleBar;->setVisibility(I)V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/PreviewTitleBar;->setTitleBarStyle()V

    .line 732
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$7;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$7;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/PreviewTitleBar;->setOnTitleBarListener(Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;)V

    .line 750
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/PreviewTitleBar;->setTitle(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/PreviewTitleBar;->getImageDelete()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$8;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$8;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectClickArea:Landroid/view/View;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$9;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$9;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$10;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$10;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewPagerData(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1153
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->createAdapter()Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    .line 1154
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->setData(Ljava/util/List;)V

    .line 1155
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->setOnPreviewEventListener(Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder$OnPreviewEventListener;)V

    .line 1156
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 1157
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1158
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedPreviewResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1159
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    if-gez v0, :cond_0

    goto :goto_2

    .line 1163
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1164
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1165
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 1164
    :goto_1
    invoke-virtual {v2, v3}, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->isDisplayEditor(Z)V

    .line 1166
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v3}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1167
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->pageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 1168
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Landroidx/viewpager2/widget/MarginPageTransformer;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v4, v5}, Lcom/luck/picture/lib/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 1169
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget v3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    invoke-virtual {v2, v3, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 1170
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->sendChangeSubSelectPositionEvent(Z)V

    .line 1171
    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->notifySelectNumberStyle(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 1172
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->startZoomEffect(Lcom/luck/picture/lib/entity/LocalMedia;)V

    return-void

    .line 1160
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onKeyBackFragmentFinish()V

    return-void
.end method

.method private isHasMagicalEffect()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPlaying()Z
    .locals 2

    .line 1719
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->isPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadMoreData()V
    .locals 15

    .line 586
    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mPage:I

    .line 587
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->loaderDataEngine:Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->loaderDataEngine:Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mBucketId:J

    iget v5, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mPage:I

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v6, v0, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v7, v0, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    new-instance v8, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$4;

    invoke-direct {v8, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$4;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-interface/range {v1 .. v8}, Lcom/luck/picture/lib/engine/ExtendLoaderEngine;->loadMoreMediaData(Landroid/content/Context;JIIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V

    goto :goto_0

    .line 596
    :cond_0
    iget-object v9, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mLoader:Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    iget-wide v10, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mBucketId:J

    iget v12, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mPage:I

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v13, v0, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    new-instance v14, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$5;

    invoke-direct {v14, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$5;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-virtual/range {v9 .. v14}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->loadPageMediaData(JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V

    :goto_0
    return-void
.end method

.method public static newInstance()Lcom/luck/picture/lib/PictureSelectorPreviewFragment;
    .locals 2

    .line 167
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-direct {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;-><init>()V

    .line 168
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private notifyGallerySelectMedia(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    .line 1024
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isPreviewDisplaySelectGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;->isSelectMedia(Lcom/luck/picture/lib/entity/LocalMedia;)V

    :cond_0
    return-void
.end method

.method private notifyPreviewGalleryData(ZLcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 3

    .line 1033
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    .line 1034
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isPreviewDisplaySelectGallery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1035
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_2

    .line 1039
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1040
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;->clear()V

    .line 1042
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;->addGalleryData(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 1043
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 1045
    :cond_2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;->removeGalleryData(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 1046
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result p1

    if-nez p1, :cond_3

    .line 1047
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onExternalLongPressDownload(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 3

    .line 1379
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onExternalPreviewEventListener:Lcom/luck/picture/lib/interfaces/OnExternalPreviewEventListener;

    if-eqz v0, :cond_4

    .line 1380
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onExternalPreviewEventListener:Lcom/luck/picture/lib/interfaces/OnExternalPreviewEventListener;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/luck/picture/lib/interfaces/OnExternalPreviewEventListener;->onLongPressDownload(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1382
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1383
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isUrlHasAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1385
    :cond_0
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1386
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isUrlHasVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1389
    :cond_1
    sget v0, Lcom/luck/picture/lib/R$string;->ps_prompt_image_content:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1387
    :cond_2
    :goto_0
    sget v0, Lcom/luck/picture/lib/R$string;->ps_prompt_video_content:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1384
    :cond_3
    :goto_1
    sget v0, Lcom/luck/picture/lib/R$string;->ps_prompt_audio_content:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1391
    :goto_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/luck/picture/lib/R$string;->ps_prompt:I

    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/luck/picture/lib/dialog/PictureCommonDialog;

    move-result-object v0

    .line 1392
    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Lcom/luck/picture/lib/entity/LocalMedia;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/PictureCommonDialog;->setOnDialogEventListener(Lcom/luck/picture/lib/dialog/PictureCommonDialog$OnDialogEventListener;)V

    :cond_4
    return-void
.end method

.method private onKeyDownBackToMin()V
    .locals 1

    .line 1283
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1284
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/magical/MagicalView;->backToMin()V

    goto :goto_0

    .line 1288
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onExitPictureSelector()V

    goto :goto_0

    .line 1290
    :cond_1
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    if-eqz v0, :cond_2

    .line 1291
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onBackCurrentFragment()V

    goto :goto_0

    .line 1292
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v0, :cond_3

    .line 1293
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/magical/MagicalView;->backToMin()V

    goto :goto_0

    .line 1295
    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onBackCurrentFragment()V

    :cond_4
    :goto_0
    return-void
.end method

.method private previewFullScreenMode()V
    .locals 14

    .line 1304
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isAnimationStart:Z

    if-eqz v0, :cond_0

    return-void

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/PreviewTitleBar;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1308
    :goto_0
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz v0, :cond_2

    move v5, v1

    goto :goto_1

    .line 1309
    :cond_2
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    invoke-virtual {v5}, Lcom/luck/picture/lib/widget/PreviewTitleBar;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    :goto_1
    if-eqz v0, :cond_3

    .line 1310
    iget-object v6, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    invoke-virtual {v6}, Lcom/luck/picture/lib/widget/PreviewTitleBar;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    move v8, v7

    goto :goto_3

    :cond_4
    move v8, v1

    :goto_3
    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v1, v7

    :goto_4
    move v7, v2

    .line 1313
    :goto_5
    iget-object v9, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_7

    .line 1314
    iget-object v9, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1315
    new-array v10, v3, [Landroid/animation/Animator;

    const/4 v11, 0x2

    new-array v12, v11, [F

    aput v8, v12, v2

    aput v1, v12, v3

    const-string v13, "alpha"

    invoke-static {v9, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v10, v2

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1316
    instance-of v10, v9, Lcom/luck/picture/lib/widget/TitleBar;

    if-eqz v10, :cond_6

    .line 1317
    new-array v10, v3, [Landroid/animation/Animator;

    new-array v11, v11, [F

    aput v5, v11, v2

    aput v6, v11, v3

    const-string v12, "translationY"

    invoke-static {v9, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v10, v2

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    const-wide/16 v1, 0x15e

    .line 1320
    invoke-virtual {v4, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1321
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 1322
    iput-boolean v3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isAnimationStart:Z

    .line 1323
    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$20;

    invoke-direct {v1, p0, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$20;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Z)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v0, :cond_8

    .line 1347
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->showFullScreenStatusBar()V

    goto :goto_6

    .line 1349
    :cond_8
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->hideFullScreenStatusBar()V

    :goto_6
    return-void
.end method

.method private resumePausePlay()V
    .locals 2

    .line 1710
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    if-eqz v0, :cond_0

    .line 1711
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getCurrentHolder(I)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1713
    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->resumePausePlay()V

    :cond_0
    return-void
.end method

.method private setMagicalViewBackgroundColor()V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getPreviewBackgroundColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/magical/MagicalView;->setBackgroundColor(I)V

    goto :goto_1

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 292
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/luck/picture/lib/R$color;->ps_color_black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/magical/MagicalView;->setBackgroundColor(I)V

    goto :goto_1

    .line 293
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/luck/picture/lib/R$color;->ps_color_white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/magical/MagicalView;->setBackgroundColor(I)V

    :goto_1
    return-void
.end method

.method private setMagicalViewParams(III)V
    .locals 12

    .line 1520
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/luck/picture/lib/magical/MagicalView;->changeRealScreenHeight(IIZ)V

    .line 1521
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    if-eqz v0, :cond_0

    add-int/lit8 p3, p3, 0x1

    :cond_0
    invoke-static {p3}, Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;->getItemViewParams(I)Lcom/luck/picture/lib/magical/ViewParams;

    move-result-object p3

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1525
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    iget v1, p3, Lcom/luck/picture/lib/magical/ViewParams;->left:I

    iget v2, p3, Lcom/luck/picture/lib/magical/ViewParams;->top:I

    iget v3, p3, Lcom/luck/picture/lib/magical/ViewParams;->width:I

    iget v4, p3, Lcom/luck/picture/lib/magical/ViewParams;->height:I

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/luck/picture/lib/magical/MagicalView;->setViewParams(IIIIII)V

    goto :goto_1

    .line 1523
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v10, p1

    move v11, p2

    invoke-virtual/range {v5 .. v11}, Lcom/luck/picture/lib/magical/MagicalView;->setViewParams(IIIIII)V

    :goto_1
    return-void
.end method

.method private showFullScreenStatusBar()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1357
    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1358
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1360
    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    invoke-virtual {v1}, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->getEditor()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private start([I)V
    .locals 11

    .line 1213
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-virtual {v0, v2, v4, v1}, Lcom/luck/picture/lib/magical/MagicalView;->changeRealScreenHeight(IIZ)V

    .line 1214
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    :goto_0
    invoke-static {v0}, Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;->getItemViewParams(I)Lcom/luck/picture/lib/magical/ViewParams;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1215
    aget v2, p1, v1

    if-nez v2, :cond_1

    aget v2, p1, v3

    if-nez v2, :cond_1

    goto :goto_1

    .line 1227
    :cond_1
    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    iget v5, v0, Lcom/luck/picture/lib/magical/ViewParams;->left:I

    iget v6, v0, Lcom/luck/picture/lib/magical/ViewParams;->top:I

    iget v7, v0, Lcom/luck/picture/lib/magical/ViewParams;->width:I

    iget v8, v0, Lcom/luck/picture/lib/magical/ViewParams;->height:I

    aget v9, p1, v1

    aget v10, p1, v3

    invoke-virtual/range {v4 .. v10}, Lcom/luck/picture/lib/magical/MagicalView;->setViewParams(IIIIII)V

    .line 1228
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/magical/MagicalView;->start(Z)V

    goto :goto_3

    .line 1216
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$19;

    invoke-direct {v2, p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$19;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;[I)V

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->post(Ljava/lang/Runnable;)Z

    .line 1222
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/magical/MagicalView;->setBackgroundAlpha(F)V

    .line 1223
    :goto_2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 1224
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1230
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAutoVideoPlay(I)V
    .locals 2

    .line 1480
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$23;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$23;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public varargs addAminViews([Landroid/view/View;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method protected createAdapter()Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;
    .locals 2

    .line 1141
    new-instance v0, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {v0, v1}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;-><init>(Lcom/luck/picture/lib/config/SelectorConfig;)V

    return-object v0
.end method

.method public getAdapter()Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    return-object v0
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .line 174
    sget-object v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .locals 3

    .line 221
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-static {v0, v1, v2}, Lcom/luck/picture/lib/config/InjectResourceSource;->getLayoutResource(Landroid/content/Context;ILcom/luck/picture/lib/config/SelectorConfig;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 225
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$layout;->ps_fragment_preview:I

    return v0
.end method

.method public getViewPager2()Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-object v0
.end method

.method protected initPreviewSelectGallery(Landroid/view/ViewGroup;)V
    .locals 5

    .line 785
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v0

    .line 786
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isPreviewDisplaySelectGallery()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 787
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    .line 788
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterPreviewGalleryBackgroundResource()I

    move-result v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterPreviewGalleryBackgroundResource()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundResource(I)V

    goto :goto_0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    sget v1, Lcom/luck/picture/lib/R$drawable;->ps_preview_gallery_bg:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundResource(I)V

    .line 793
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 795
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 796
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 797
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v0, -0x1

    .line 798
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 799
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 800
    sget v0, Lcom/luck/picture/lib/R$id;->bottom_nar_bar:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 801
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 802
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 804
    :cond_1
    new-instance p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$11;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$11;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Landroid/content/Context;)V

    .line 818
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 820
    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 822
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 823
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/luck/picture/lib/decoration/HorizontalItemDecoration;

    .line 824
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v3, v4}, Lcom/luck/picture/lib/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const v4, 0x7fffffff

    invoke-direct {v2, v4, v3}, Lcom/luck/picture/lib/decoration/HorizontalItemDecoration;-><init>(II)V

    .line 823
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 826
    :cond_3
    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/decoration/WrapContentLinearLayoutManager;->setOrientation(I)V

    .line 827
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 828
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 829
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    .line 830
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/luck/picture/lib/R$anim;->ps_anim_layout_fall_enter:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    .line 829
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 832
    :cond_4
    new-instance p1, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    invoke-direct {p1, v0, v2}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;-><init>(Lcom/luck/picture/lib/config/SelectorConfig;Z)V

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    .line 833
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->notifyGallerySelectMedia(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 834
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 835
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$12;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$12;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;->setItemClickListener(Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter$OnItemClickListener;)V

    .line 870
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result p1

    if-lez p1, :cond_5

    .line 871
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1

    .line 873
    :cond_5
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_1
    const/4 p1, 0x1

    .line 875
    new-array p1, p1, [Landroid/view/View;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->addAminViews([Landroid/view/View;)V

    .line 876
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$13;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 999
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryRecycle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1000
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mGalleryAdapter:Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$14;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$14;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Landroidx/recyclerview/widget/ItemTouchHelper;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter;->setItemLongClickListener(Lcom/luck/picture/lib/adapter/holder/PreviewGalleryAdapter$OnItemLongClickListener;)V

    :cond_6
    return-void
.end method

.method protected isSelected(Lcom/luck/picture/lib/entity/LocalMedia;)Z
    .locals 1

    .line 1642
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notifySelectNumberStyle(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 6

    .line 1619
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isPreviewSelectNumberStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1620
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isSelectNumberStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1621
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 1622
    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1623
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1624
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1625
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1626
    :cond_0
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getNum()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setNum(I)V

    .line 1627
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setPosition(I)V

    .line 1628
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/utils/ValueOf;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onCheckOriginalChange()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->setOriginalCheck()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 533
    invoke-super {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 534
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMagicalEffect()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    if-le p1, v0, :cond_1

    .line 535
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 536
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 537
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$2;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$2;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getVideoRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    goto :goto_0

    .line 544
    :cond_0
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$3;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$3;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getImageRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 2

    .line 500
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMagicalEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getWindowAnimationStyle()Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    move-result-object v0

    .line 505
    iget v1, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewEnterAnimation:I

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewExitAnimation:I

    if-eqz v1, :cond_3

    .line 506
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 507
    iget p3, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewEnterAnimation:I

    goto :goto_0

    :cond_1
    iget p3, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewExitAnimation:I

    .line 506
    :goto_0
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 509
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onEnterFragment()V

    goto :goto_1

    .line 511
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onExitFragment()V

    :goto_1
    return-object p1

    .line 515
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public onCreateLoader()V
    .locals 3

    .line 567
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz v0, :cond_0

    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->loaderFactory:Lcom/luck/picture/lib/basic/IBridgeLoaderFactory;

    if-eqz v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->loaderFactory:Lcom/luck/picture/lib/basic/IBridgeLoaderFactory;

    invoke-interface {v0}, Lcom/luck/picture/lib/basic/IBridgeLoaderFactory;->onCreateLoader()Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mLoader:Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    .line 572
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mLoader:Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 573
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No available "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " loader found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v0, :cond_3

    .line 577
    new-instance v0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    goto :goto_0

    .line 578
    :cond_3
    new-instance v0, Lcom/luck/picture/lib/loader/LocalMediaLoader;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/loader/LocalMediaLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    :goto_0
    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mLoader:Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1724
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    if-eqz v0, :cond_0

    .line 1725
    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->destroy()V

    .line 1727
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    .line 1728
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->pageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 1730
    :cond_1
    invoke-super {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onDestroy()V

    return-void
.end method

.method public onEditMedia(Landroid/content/Intent;)V
    .locals 3

    .line 1647
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 1648
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1649
    invoke-static {p1}, Lcom/luck/picture/lib/config/Crop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1650
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCutPath(Ljava/lang/String;)V

    .line 1651
    invoke-static {p1}, Lcom/luck/picture/lib/config/Crop;->getOutputImageWidth(Landroid/content/Intent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageWidth(I)V

    .line 1652
    invoke-static {p1}, Lcom/luck/picture/lib/config/Crop;->getOutputImageHeight(Landroid/content/Intent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageHeight(I)V

    .line 1653
    invoke-static {p1}, Lcom/luck/picture/lib/config/Crop;->getOutputImageOffsetX(Landroid/content/Intent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetX(I)V

    .line 1654
    invoke-static {p1}, Lcom/luck/picture/lib/config/Crop;->getOutputImageOffsetY(Landroid/content/Intent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetY(I)V

    .line 1655
    invoke-static {p1}, Lcom/luck/picture/lib/config/Crop;->getOutputCropAspectRatio(Landroid/content/Intent;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropResultAspectRatio(F)V

    .line 1656
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 1657
    invoke-static {p1}, Lcom/luck/picture/lib/config/Crop;->getOutputCustomExtraData(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCustomData(Ljava/lang/String;)V

    .line 1658
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setEditorImage(Z)V

    .line 1659
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setSandboxPath(Ljava/lang/String;)V

    .line 1660
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1661
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompareLocalMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1663
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCutPath(Ljava/lang/String;)V

    .line 1664
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 1665
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setEditorImage(Z)V

    .line 1666
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCustomData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCustomData(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setSandboxPath(Ljava/lang/String;)V

    .line 1668
    invoke-static {p1}, Lcom/luck/picture/lib/config/Crop;->getOutputImageWidth(Landroid/content/Intent;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageWidth(I)V

    .line 1669
    invoke-static {p1}, Lcom/luck/picture/lib/config/Crop;->getOutputImageHeight(Landroid/content/Intent;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageHeight(I)V

    .line 1670
    invoke-static {p1}, Lcom/luck/picture/lib/config/Crop;->getOutputImageOffsetX(Landroid/content/Intent;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetX(I)V

    .line 1671
    invoke-static {p1}, Lcom/luck/picture/lib/config/Crop;->getOutputImageOffsetY(Landroid/content/Intent;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetY(I)V

    .line 1672
    invoke-static {p1}, Lcom/luck/picture/lib/config/Crop;->getOutputCropAspectRatio(Landroid/content/Intent;)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropResultAspectRatio(F)V

    .line 1674
    :cond_1
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->sendFixedSelectedChangeEvent(Lcom/luck/picture/lib/entity/LocalMedia;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1676
    invoke-virtual {p0, v0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->confirmSelect(Lcom/luck/picture/lib/entity/LocalMedia;Z)I

    .line 1678
    :goto_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->notifyItemChanged(I)V

    .line 1679
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->notifyGallerySelectMedia(Lcom/luck/picture/lib/entity/LocalMedia;)V

    :cond_3
    return-void
.end method

.method public onExitFragment()V
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v0, :cond_0

    .line 1095
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->hideFullScreenStatusBar()V

    :cond_0
    return-void
.end method

.method protected onExitPictureSelector()V
    .locals 1

    .line 1685
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    if-eqz v0, :cond_0

    .line 1686
    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->destroy()V

    .line 1688
    :cond_0
    invoke-super {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onExitPictureSelector()V

    return-void
.end method

.method public onKeyBackFragmentFinish()V
    .locals 0

    .line 320
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onKeyDownBackToMin()V

    return-void
.end method

.method protected onMojitoBackgroundAlpha(F)V
    .locals 2

    const/4 v0, 0x0

    .line 416
    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/luck/picture/lib/widget/TitleBar;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMojitoBeginAnimComplete(Lcom/luck/picture/lib/magical/MagicalView;Z)V
    .locals 1

    .line 450
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getCurrentHolder(I)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 454
    :cond_0
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 456
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCropImageWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCropImageHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 457
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCropImageWidth()I

    move-result v0

    .line 458
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCropImageHeight()I

    move-result p2

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result v0

    .line 461
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result p2

    .line 463
    :goto_0
    invoke-static {v0, p2}, Lcom/luck/picture/lib/utils/MediaUtils;->isLongImage(II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 464
    iget-object p2, p1, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 466
    :cond_2
    iget-object p2, p1, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 468
    :goto_1
    instance-of p2, p1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    if-eqz p2, :cond_4

    .line 469
    check-cast p1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    .line 470
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isAutoVideoPlay:Z

    if-eqz p2, :cond_3

    .line 471
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->startAutoVideoPlay(I)V

    goto :goto_2

    .line 473
    :cond_3
    iget-object p2, p1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->ivPlayButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_4

    .line 474
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isPlaying()Z

    move-result p2

    if-nez p2, :cond_4

    .line 475
    iget-object p1, p1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->ivPlayButton:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onMojitoBeginBackMinAnim()V
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getCurrentHolder(I)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    iget-object v1, v0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {v1}, Lcom/luck/picture/lib/photoview/PhotoView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 389
    iget-object v1, v0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/photoview/PhotoView;->setVisibility(I)V

    .line 391
    :cond_1
    instance-of v1, v0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    if-eqz v1, :cond_2

    .line 392
    check-cast v0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    .line 393
    iget-object v1, v0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->ivPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 394
    iget-object v0, v0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->ivPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected onMojitoBeginBackMinFinish(Z)V
    .locals 3

    .line 430
    iget-boolean p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    :goto_0
    invoke-static {p1}, Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;->getItemViewParams(I)Lcom/luck/picture/lib/magical/ViewParams;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getCurrentHolder(I)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 438
    :cond_2
    iget-object v1, v0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {v1}, Lcom/luck/picture/lib/photoview/PhotoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p1, Lcom/luck/picture/lib/magical/ViewParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 439
    iget-object v1, v0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {v1}, Lcom/luck/picture/lib/photoview/PhotoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget p1, p1, Lcom/luck/picture/lib/magical/ViewParams;->height:I

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 440
    iget-object p1, v0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method protected onMojitoMagicalViewFinish()V
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isNormalDefaultEnter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMagicalEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onExitPictureSelector()V

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onBackCurrentFragment()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1702
    invoke-super {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onPause()V

    .line 1703
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->resumePausePlay()V

    const/4 v0, 0x1

    .line 1705
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isPause:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1693
    invoke-super {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onResume()V

    .line 1694
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isPause:Z

    if-eqz v0, :cond_0

    .line 1695
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->resumePausePlay()V

    const/4 v0, 0x0

    .line 1696
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isPause:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 484
    invoke-super {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 485
    const-string v0, "com.luck.picture.lib.current_page"

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 486
    const-string v0, "com.luck.picture.lib.current_bucketId"

    iget-wide v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mBucketId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 487
    const-string v0, "com.luck.picture.lib.current_preview_position"

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 488
    const-string v0, "com.luck.picture.lib.current_album_total"

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 489
    const-string v0, "com.luck.picture.lib.external_preview"

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 490
    const-string v0, "com.luck.picture.lib.external_preview_display_delete"

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isDisplayDelete:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 491
    const-string v0, "com.luck.picture.lib.display_camera"

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 492
    const-string v0, "com.luck.picture.lib.bottom_preview"

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 493
    const-string v0, "com.luck.picture.lib.current_album_name"

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->currentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/config/SelectorConfig;->addSelectedPreviewResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onSelectedChange(ZLcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 232
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->setSelectedChange()V

    .line 233
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setSelectedChange(Z)V

    .line 234
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->notifySelectNumberStyle(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->notifyPreviewGalleryData(ZLcom/luck/picture/lib/entity/LocalMedia;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 246
    invoke-super {p0, p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->reStartSavedInstance(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 248
    :goto_0
    iput-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isSaveInstanceState:Z

    .line 249
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/luck/picture/lib/utils/DensityUtil;->getRealScreenWidth(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->screenWidth:I

    .line 250
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/luck/picture/lib/utils/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->screenHeight:I

    .line 251
    sget p2, Lcom/luck/picture/lib/R$id;->title_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/widget/PreviewTitleBar;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    .line 252
    sget p2, Lcom/luck/picture/lib/R$id;->ps_tv_selected:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    .line 253
    sget p2, Lcom/luck/picture/lib/R$id;->ps_tv_selected_word:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    .line 254
    sget p2, Lcom/luck/picture/lib/R$id;->select_click_area:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectClickArea:Landroid/view/View;

    .line 255
    sget p2, Lcom/luck/picture/lib/R$id;->ps_complete_select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/widget/CompleteSelectView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    .line 256
    sget p2, Lcom/luck/picture/lib/R$id;->magical:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/magical/MagicalView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    .line 257
    new-instance p2, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 258
    sget p2, Lcom/luck/picture/lib/R$id;->bottom_nar_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    .line 259
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, v2}, Lcom/luck/picture/lib/magical/MagicalView;->setMagicalContent(Landroid/view/View;)V

    .line 260
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->setMagicalViewBackgroundColor()V

    .line 261
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->setMagicalViewAction()V

    const/4 p2, 0x6

    .line 262
    new-array p2, p2, [Landroid/view/View;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    aput-object v2, p2, v1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    aput-object v1, p2, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    aput-object v1, p2, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectClickArea:Landroid/view/View;

    aput-object v1, p2, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    aput-object v1, p2, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    aput-object v1, p2, v0

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->addAminViews([Landroid/view/View;)V

    .line 263
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onCreateLoader()V

    .line 264
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->initTitleBar()V

    .line 265
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->initViewPagerData(Ljava/util/ArrayList;)V

    .line 266
    iget-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz p2, :cond_1

    .line 267
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->externalPreviewStyle()V

    goto :goto_1

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->initBottomNavBar()V

    .line 270
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->initPreviewSelectGallery(Landroid/view/ViewGroup;)V

    .line 271
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->initComplete()V

    .line 273
    :goto_1
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->iniMagicalView()V

    return-void
.end method

.method public reStartSavedInstance(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 303
    const-string v0, "com.luck.picture.lib.current_page"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mPage:I

    .line 304
    const-string v0, "com.luck.picture.lib.current_bucketId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mBucketId:J

    .line 305
    const-string v0, "com.luck.picture.lib.current_preview_position"

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    .line 306
    const-string v0, "com.luck.picture.lib.display_camera"

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    .line 307
    const-string v0, "com.luck.picture.lib.current_album_total"

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    .line 308
    const-string v0, "com.luck.picture.lib.external_preview"

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    .line 309
    const-string v0, "com.luck.picture.lib.external_preview_display_delete"

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isDisplayDelete:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isDisplayDelete:Z

    .line 310
    const-string v0, "com.luck.picture.lib.bottom_preview"

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    .line 311
    const-string v0, "com.luck.picture.lib.current_album_name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->currentAlbum:Ljava/lang/String;

    .line 312
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->selectedPreviewResult:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public sendChangeSubSelectPositionEvent(Z)V
    .locals 1

    .line 521
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p1}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/style/SelectMainStyle;->isPreviewSelectNumberStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 522
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p1}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/style/SelectMainStyle;->isSelectNumberStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 523
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    add-int/lit8 p1, p1, 0x1

    .line 525
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setNum(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExternalPreviewData(IILjava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;Z)V"
        }
    .end annotation

    .line 212
    iput-object p3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    .line 213
    iput p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    .line 214
    iput p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    .line 215
    iput-boolean p4, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isDisplayDelete:Z

    const/4 p1, 0x1

    .line 216
    iput-boolean p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    return-void
.end method

.method public setInternalPreviewData(ZLjava/lang/String;ZIIIJLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZIIIJ",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 193
    iput p6, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mPage:I

    .line 194
    iput-wide p7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mBucketId:J

    .line 195
    iput-object p9, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    .line 196
    iput p5, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    .line 197
    iput p4, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    .line 198
    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->currentAlbum:Ljava/lang/String;

    .line 199
    iput-boolean p3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    .line 200
    iput-boolean p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    return-void
.end method

.method protected setMagicalViewAction()V
    .locals 2

    .line 349
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMagicalEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/magical/MagicalView;->setOnMojitoViewCallback(Lcom/luck/picture/lib/magical/OnMagicalViewCallback;)V

    :cond_0
    return-void
.end method

.method protected startZoomEffect(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 2

    .line 1179
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isSaveInstanceState:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v0, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$16;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$16;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->post(Ljava/lang/Runnable;)Z

    .line 1189
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHttp(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$17;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$17;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getVideoRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    goto :goto_0

    .line 1197
    :cond_1
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHttp(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$18;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$18;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getImageRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    :cond_2
    :goto_0
    return-void
.end method
