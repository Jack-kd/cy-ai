.class public Lcom/luck/picture/lib/PictureSelectorFragment;
.super Lcom/luck/picture/lib/basic/PictureCommonFragment;
.source "PictureSelectorFragment.java"

# interfaces
.implements Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;
.implements Lcom/luck/picture/lib/basic/IPictureSelectorEvent;


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static SELECT_ANIM_DURATION:I = 0x87

.field public static final TAG:Ljava/lang/String; = "PictureSelectorFragment"


# instance fields
.field private albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

.field private allFolderSize:I

.field private bottomNarBar:Lcom/luck/picture/lib/widget/BottomNavBar;

.field private completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

.field private currentPosition:I

.field private intervalClickTime:J

.field private isCameraCallback:Z

.field private isDisplayCamera:Z

.field private isMemoryRecycling:Z

.field private mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

.field private mDragSelectTouchListener:Lcom/luck/picture/lib/widget/SlideSelectTouchListener;

.field private mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

.field private titleBar:Lcom/luck/picture/lib/widget/TitleBar;

.field private tvCurrentDataTime:Landroid/widget/TextView;

.field private tvDataEmpty:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/PictureSelectorFragment;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 98
    iput-wide v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->intervalClickTime:J

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->currentPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/widget/TitleBar;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/luck/picture/lib/PictureSelectorFragment;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->beginLoadData()V

    return-void
.end method

.method static synthetic access$1300(Lcom/luck/picture/lib/PictureSelectorFragment;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isDisplayCamera:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/luck/picture/lib/PictureSelectorFragment;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isDisplayCamera:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/luck/picture/lib/PictureSelectorFragment;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    return p0
.end method

.method static synthetic access$1800(Lcom/luck/picture/lib/PictureSelectorFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/luck/picture/lib/PictureSelectorFragment;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    return p1
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/luck/picture/lib/PictureSelectorFragment;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    return p1
.end method

.method static synthetic access$2100(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/luck/picture/lib/PictureSelectorFragment;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    return p0
.end method

.method static synthetic access$2300(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/luck/picture/lib/PictureSelectorFragment;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorFragment;->handleSwitchAlbum(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/luck/picture/lib/PictureSelectorFragment;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    return p0
.end method

.method static synthetic access$2700(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/loader/IBridgeMediaLoader;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mLoader:Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/PictureSelectorFragment;)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->onExitPictureSelector()V

    return-void
.end method

.method static synthetic access$3000(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/widget/SlideSelectTouchListener;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mDragSelectTouchListener:Lcom/luck/picture/lib/widget/SlideSelectTouchListener;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/luck/picture/lib/PictureSelectorFragment;IZ)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorFragment;->onStartPreview(IZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/luck/picture/lib/PictureSelectorFragment;ZLjava/util/List;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorFragment;->handleAllAlbumData(ZLjava/util/List;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/luck/picture/lib/PictureSelectorFragment;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorFragment;->handleFirstPageMedia(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/luck/picture/lib/PictureSelectorFragment;Lcom/luck/picture/lib/entity/LocalMediaFolder;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->handleInAppDirAllMedia(Lcom/luck/picture/lib/entity/LocalMediaFolder;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/luck/picture/lib/PictureSelectorFragment;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->currentPosition:I

    return p0
.end method

.method static synthetic access$3700(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$3902(I)I
    .locals 0

    .line 84
    sput p0, Lcom/luck/picture/lib/PictureSelectorFragment;->SELECT_ANIM_DURATION:I

    return p0
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/PictureSelectorFragment;)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->dispatchTransformResult()V

    return-void
.end method

.method static synthetic access$4000(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/luck/picture/lib/PictureSelectorFragment;)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->dispatchTransformResult()V

    return-void
.end method

.method static synthetic access$4400(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/luck/picture/lib/PictureSelectorFragment;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->setCurrentMediaCreateTimeText()V

    return-void
.end method

.method static synthetic access$500(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/luck/picture/lib/PictureSelectorFragment;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->showCurrentMediaCreateTimeUI()V

    return-void
.end method

.method static synthetic access$5100(Lcom/luck/picture/lib/PictureSelectorFragment;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->hideCurrentMediaCreateTimeUI()V

    return-void
.end method

.method static synthetic access$5200(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/luck/picture/lib/PictureSelectorFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterDataComplete(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/luck/picture/lib/PictureSelectorFragment;Ljava/util/List;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorFragment;->handleMoreMediaData(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/luck/picture/lib/PictureSelectorFragment;)J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->intervalClickTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/luck/picture/lib/PictureSelectorFragment;J)J
    .locals 0

    .line 84
    iput-wide p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->intervalClickTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/widget/RecyclerPreloadView;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/dialog/AlbumListPopWindow;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    return-object p0
.end method

.method static synthetic access$900(Lcom/luck/picture/lib/PictureSelectorFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method private addAlbumPopWindowAction()V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorFragment$7;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$7;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->setOnIBridgeAlbumWidget(Lcom/luck/picture/lib/interfaces/OnAlbumItemClickListener;)V

    return-void
.end method

.method private addRecyclerAction()V
    .locals 3

    .line 820
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorFragment$16;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$16;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->setOnItemClickListener(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnItemClickListener;)V

    .line 874
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorFragment$17;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$17;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setOnRecyclerViewScrollStateListener(Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;)V

    .line 889
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorFragment$18;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$18;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setOnRecyclerViewScrollListener(Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollListener;)V

    .line 905
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isFastSlidingSelect:Z

    if-eqz v0, :cond_0

    .line 906
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 907
    new-instance v1, Lcom/luck/picture/lib/widget/SlideSelectionHandler;

    new-instance v2, Lcom/luck/picture/lib/PictureSelectorFragment$19;

    invoke-direct {v2, p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment$19;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;Ljava/util/HashSet;)V

    invoke-direct {v1, v2}, Lcom/luck/picture/lib/widget/SlideSelectionHandler;-><init>(Lcom/luck/picture/lib/widget/SlideSelectionHandler$ISelectionHandler;)V

    .line 928
    new-instance v0, Lcom/luck/picture/lib/widget/SlideSelectTouchListener;

    invoke-direct {v0}, Lcom/luck/picture/lib/widget/SlideSelectTouchListener;-><init>()V

    .line 929
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDisplayCamera()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/widget/SlideSelectTouchListener;->setRecyclerViewHeaderCount(I)Lcom/luck/picture/lib/widget/SlideSelectTouchListener;

    move-result-object v0

    .line 930
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/SlideSelectTouchListener;->withSelectListener(Lcom/luck/picture/lib/widget/SlideSelectTouchListener$OnSlideSelectListener;)Lcom/luck/picture/lib/widget/SlideSelectTouchListener;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mDragSelectTouchListener:Lcom/luck/picture/lib/widget/SlideSelectTouchListener;

    .line 931
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_0
    return-void
.end method

.method private beginLoadData()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 474
    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->onPermissionExplainEvent(Z[Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isOnlySandboxDir:Z

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->loadOnlyInAppDirectoryAllMediaData()V

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->loadAllAlbumData()V

    :goto_0
    return-void
.end method

.method private checkNotifyStrategy(Z)Z
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isMaxSelectEnabledMask:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 191
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isWithVideoImage:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_2

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v0

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    if-eq v0, v3, :cond_5

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 196
    invoke-virtual {p1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result p1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_6

    goto :goto_1

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getResultFirstMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    if-lez v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    .line 206
    :goto_0
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v3}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v3

    if-eq v3, v0, :cond_5

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 207
    invoke-virtual {p1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result p1

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_6

    goto :goto_1

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v0

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    if-eq v0, v3, :cond_5

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 210
    invoke-virtual {p1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result p1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_6

    :cond_5
    :goto_1
    move v1, v2

    :cond_6
    :goto_2
    return v1
.end method

.method private handleAllAlbumData(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 649
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 652
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 655
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 656
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    goto :goto_0

    .line 658
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz p1, :cond_2

    .line 659
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    goto :goto_0

    .line 661
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 662
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 665
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->bindAlbumData(Ljava/util/List;)V

    .line 667
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz p2, :cond_4

    .line 668
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isPreloadFirst:Z

    if-eqz p2, :cond_3

    .line 669
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setEnabledLoadMore(Z)V

    goto :goto_1

    .line 671
    :cond_3
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorFragment;->loadFirstPageMediaData(J)V

    goto :goto_1

    .line 674
    :cond_4
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterData(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 677
    :cond_5
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->showDataNull()V

    :goto_1
    return-void
.end method

.method private handleFirstPageMedia(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;Z)V"
        }
    .end annotation

    .line 706
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setEnabledLoadMore(Z)V

    .line 710
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 713
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->onRecyclerViewPreloadMore()V

    goto :goto_0

    .line 715
    :cond_1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterData(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method private handleInAppDirAllMedia(Lcom/luck/picture/lib/entity/LocalMediaFolder;)V
    .locals 3

    .line 740
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 741
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->sandboxDir:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 743
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 744
    :goto_1
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {v2, v0}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 746
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 747
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterData(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 749
    :cond_2
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->showDataNull()V

    :cond_3
    :goto_2
    return-void
.end method

.method private handleMoreMediaData(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;Z)V"
        }
    .end annotation

    .line 1091
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setEnabledLoadMore(Z)V

    .line 1095
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1096
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->removePageCameraRepeatData(Ljava/util/List;)V

    .line 1097
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 1098
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1099
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1100
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyItemRangeChanged(II)V

    .line 1101
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->hideDataNull()V

    goto :goto_0

    .line 1104
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->onRecyclerViewPreloadMore()V

    .line 1106
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xa

    if-ge p1, p2, :cond_2

    .line 1108
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->getScrollX()I

    move-result p2

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->getScrollY()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onScrolled(II)V

    :cond_2
    return-void
.end method

.method private handleRecoverAlbumData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 408
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 411
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 412
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object v0, v1, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 414
    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->bindAlbumData(Ljava/util/List;)V

    .line 416
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz p1, :cond_2

    .line 417
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->dataSource:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->handleFirstPageMedia(Ljava/util/ArrayList;Z)V

    goto :goto_1

    .line 419
    :cond_2
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterData(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 422
    :cond_3
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->showDataNull()V

    :goto_1
    return-void
.end method

.method private handleSwitchAlbum(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;Z)V"
        }
    .end annotation

    .line 577
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setEnabledLoadMore(Z)V

    .line 581
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 583
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 585
    :cond_1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterData(Ljava/util/ArrayList;)V

    .line 586
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onScrolled(II)V

    .line 587
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private hideCurrentMediaCreateTimeUI()V
    .locals 3

    .line 966
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayTimeAxis:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvCurrentDataTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private hideDataNull()V
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initAlbumListPopWindow()V
    .locals 2

    .line 372
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-static {v0, v1}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->buildPopWindow(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    .line 373
    new-instance v1, Lcom/luck/picture/lib/PictureSelectorFragment$4;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$4;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->setOnPopupWindowStatusListener(Lcom/luck/picture/lib/dialog/AlbumListPopWindow$OnPopupWindowStatusListener;)V

    .line 388
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->addAlbumPopWindowAction()V

    return-void
.end method

.method private initBottomNavBar()V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/BottomNavBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/BottomNavBar;->setBottomNavBarStyle()V

    .line 593
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/BottomNavBar;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorFragment$8;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$8;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/BottomNavBar;->setOnBottomNavBarListener(Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;)V

    .line 604
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/BottomNavBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/BottomNavBar;->setSelectedChange()V

    return-void
.end method

.method private initComplete()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isDirectReturnSingle:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getTitleBarStyle()Lcom/luck/picture/lib/style/TitleBarStyle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/style/TitleBarStyle;->setHideCancelButton(Z)V

    .line 283
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/TitleBar;->getTitleCancelView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setVisibility(I)V

    goto/16 :goto_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setCompleteSelectViewStyle()V

    .line 287
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setSelectedChange(Z)V

    .line 288
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isCompleteSelectRelativeTop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    .line 292
    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget v1, Lcom/luck/picture/lib/R$id;->title_bar:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 293
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    .line 294
    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    sget v1, Lcom/luck/picture/lib/R$id;->title_bar:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 295
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    .line 297
    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/DensityUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    .line 302
    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/DensityUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 306
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorFragment$2;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$2;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method private initRecycler(Landroid/view/View;)V
    .locals 5

    .line 770
    sget v0, Lcom/luck/picture/lib/R$id;->recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    .line 771
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    .line 772
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v0

    .line 773
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getMainListBackgroundColor()I

    move-result v1

    .line 774
    invoke-static {v1}, Lcom/luck/picture/lib/utils/StyleUtils;->checkStyleValidity(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 775
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v2, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setBackgroundColor(I)V

    goto :goto_0

    .line 777
    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/luck/picture/lib/R$color;->ps_color_black:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setBackgroundColor(I)V

    .line 779
    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->imageSpanCount:I

    if-gtz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->imageSpanCount:I

    .line 780
    :goto_1
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->getItemDecorationCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 781
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterItemSpacingSize()I

    move-result v2

    invoke-static {v2}, Lcom/luck/picture/lib/utils/StyleUtils;->checkSizeValidity(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 782
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v2, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;

    .line 783
    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->getAdapterItemSpacingSize()I

    move-result v3

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isAdapterItemIncludeEdge()Z

    move-result v0

    invoke-direct {v2, v1, v3, v0}, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 782
    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_2

    .line 785
    :cond_2
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v3, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;

    .line 786
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p1, v4}, Lcom/luck/picture/lib/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isAdapterItemIncludeEdge()Z

    move-result v0

    invoke-direct {v3, v1, p1, v0}, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 785
    invoke-virtual {v2, v3}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 789
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 790
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 792
    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 793
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 795
    :cond_4
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 796
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setReachBottomRow(I)V

    .line 797
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1, p0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setOnRecyclerViewPreloadListener(Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;)V

    goto :goto_3

    .line 799
    :cond_5
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setHasFixedSize(Z)V

    .line 801
    :goto_3
    new-instance p1, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {p1, v2, v3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    .line 802
    iget-boolean v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isDisplayCamera:Z

    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->setDisplayCamera(Z)V

    .line 803
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->animationMode:I

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_6

    .line 811
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_4

    .line 808
    :cond_6
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v0, Lcom/luck/picture/lib/animators/SlideInBottomAnimationAdapter;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-direct {v0, v1}, Lcom/luck/picture/lib/animators/SlideInBottomAnimationAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_4

    .line 805
    :cond_7
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v0, Lcom/luck/picture/lib/animators/AlphaInAnimationAdapter;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-direct {v0, v1}, Lcom/luck/picture/lib/animators/AlphaInAnimationAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 815
    :goto_4
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->addRecyclerAction()V

    return-void
.end method

.method private initTitleBar()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getTitleBarStyle()Lcom/luck/picture/lib/style/TitleBarStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/TitleBarStyle;->isHideTitleBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/TitleBar;->setVisibility(I)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/TitleBar;->setTitleBarStyle()V

    .line 339
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorFragment$3;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$3;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/TitleBar;->setOnTitleBarListener(Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;)V

    return-void
.end method

.method private isAddSameImp(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1254
    :cond_0
    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->allFolderSize:I

    if-lez v1, :cond_1

    if-ge v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private mergeFolder(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 10

    .line 1184
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->getAlbumList()Ljava/util/List;

    move-result-object v0

    .line 1185
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {v1}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->getFolderCount()I

    move-result v1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 1187
    new-instance v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 1189
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v5, v5, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1190
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v5, v5, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v6

    if-ne v5, v6, :cond_0

    sget v5, Lcom/luck/picture/lib/R$string;->ps_all_audio:I

    goto :goto_0

    :cond_0
    sget v5, Lcom/luck/picture/lib/R$string;->ps_camera_roll:I

    :goto_0
    invoke-virtual {p0, v5}, Lcom/luck/picture/lib/PictureSelectorFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1192
    :cond_1
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v5, v5, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    .line 1194
    :goto_1
    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderName(Ljava/lang/String;)V

    .line 1195
    const-string v5, ""

    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {v1, v2, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 1197
    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 1200
    :cond_2
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {v1, v4}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->getFolder(I)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v1

    .line 1202
    :goto_2
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 1204
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v5}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setData(Ljava/util/ArrayList;)V

    .line 1205
    invoke-virtual {v1, v2, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 1206
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderTotalNum()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/luck/picture/lib/PictureSelectorFragment;->isAddSameImp(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderTotalNum()I

    move-result v5

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderTotalNum()I

    move-result v5

    add-int/2addr v5, v6

    :goto_3
    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderTotalNum(I)V

    .line 1207
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v5, v5, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz v5, :cond_4

    .line 1208
    invoke-virtual {v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderTotalNum()I

    move-result v5

    if-nez v5, :cond_5

    .line 1209
    :cond_4
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object v1, v5, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    :cond_5
    move v5, v4

    .line 1213
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 1214
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 1215
    invoke-virtual {v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getParentFolderName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_8

    .line 1222
    new-instance v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 1223
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1225
    :cond_8
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getParentFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderName(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v8

    cmp-long v2, v8, v2

    if-eqz v2, :cond_9

    invoke-virtual {v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-nez v2, :cond_a

    .line 1227
    :cond_9
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getBucketId()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 1230
    :cond_a
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v2, :cond_b

    .line 1231
    invoke-virtual {v7, v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setHasMore(Z)V

    goto :goto_6

    .line 1234
    :cond_b
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderTotalNum()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/luck/picture/lib/PictureSelectorFragment;->isAddSameImp(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->outPutCameraDir:Ljava/lang/String;

    .line 1235
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioDir:Ljava/lang/String;

    .line 1236
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1237
    :cond_c
    invoke-virtual {v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1240
    :cond_d
    :goto_6
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderTotalNum()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->isAddSameImp(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1241
    invoke-virtual {v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderTotalNum()I

    move-result v1

    goto :goto_7

    :cond_e
    invoke-virtual {v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderTotalNum()I

    move-result v1

    add-int/2addr v1, v6

    .line 1240
    :goto_7
    invoke-virtual {v7, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderTotalNum(I)V

    .line 1242
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 1244
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->bindAlbumData(Ljava/util/List;)V

    return-void
.end method

.method public static newInstance()Lcom/luck/picture/lib/PictureSelectorFragment;
    .locals 2

    .line 118
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorFragment;

    invoke-direct {v0}, Lcom/luck/picture/lib/PictureSelectorFragment;-><init>()V

    .line 119
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onStartPreview(IZ)V
    .locals 12

    .line 978
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->checkFragmentNonExits(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 983
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 984
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    :goto_0
    move-object v9, v1

    move v5, v2

    move-wide v7, v3

    goto :goto_1

    .line 986
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 987
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz v2, :cond_1

    .line 989
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderTotalNum()I

    move-result v3

    .line 990
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v4

    move-object v9, v1

    move-wide v7, v4

    move v5, v3

    goto :goto_1

    .line 992
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 993
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getBucketId()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    const-wide/16 v3, -0x1

    goto :goto_0

    :goto_1
    if-nez p2, :cond_4

    .line 996
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v1, :cond_4

    .line 997
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    .line 998
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/DensityUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 997
    :goto_2
    invoke-static {v1, v0}, Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;->generateViewParams(Landroid/view/ViewGroup;I)V

    .line 1000
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPreviewInterceptListener:Lcom/luck/picture/lib/interfaces/OnPreviewInterceptListener;

    if-eqz v0, :cond_5

    .line 1001
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPreviewInterceptListener:Lcom/luck/picture/lib/interfaces/OnPreviewInterceptListener;

    .line 1002
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {v2}, Lcom/luck/picture/lib/widget/TitleBar;->getTitleText()Ljava/lang/String;

    move-result-object v10

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    .line 1003
    invoke-virtual {v2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDisplayCamera()Z

    move-result v11

    move v2, p1

    move v3, v5

    move-wide v5, v7

    move-object v7, v10

    move v8, v11

    move v10, p2

    .line 1002
    invoke-interface/range {v0 .. v10}, Lcom/luck/picture/lib/interfaces/OnPreviewInterceptListener;->onPreview(Landroid/content/Context;IIIJLjava/lang/String;ZLjava/util/ArrayList;Z)V

    goto :goto_3

    .line 1005
    :cond_5
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->checkFragmentNonExits(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1006
    invoke-static {}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->newInstance()Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    move-result-object v10

    .line 1007
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/TitleBar;->getTitleText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDisplayCamera()Z

    move-result v3

    iget v6, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    move-object v0, v10

    move v1, p2

    move v4, p1

    invoke-virtual/range {v0 .. v9}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->setInternalPreviewData(ZLjava/lang/String;ZIIIJLjava/util/ArrayList;)V

    .line 1009
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v10}, Lcom/luck/picture/lib/basic/FragmentInjectManager;->injectFragment(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private preloadPageFirstData()Z
    .locals 4

    .line 632
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreloadFirst:Z

    if-eqz v0, :cond_2

    .line 633
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    const-wide/16 v1, -0x1

    .line 634
    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 635
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/luck/picture/lib/R$string;->ps_all_audio:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/luck/picture/lib/R$string;->ps_camera_roll:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 638
    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 640
    :goto_1
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {v1}, Lcom/luck/picture/lib/widget/TitleBar;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderName(Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object v0, v1, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 642
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->loadFirstPageMediaData(J)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private recoverSaveInstanceData()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isDisplayCamera:Z

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->setDisplayCamera(Z)V

    const-wide/16 v0, 0x0

    .line 393
    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setEnterAnimationDuration(J)V

    .line 394
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isOnlySandboxDir:Z

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->handleInAppDirAllMedia(Lcom/luck/picture/lib/entity/LocalMediaFolder;)V

    goto :goto_0

    .line 397
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->albumDataSource:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->handleRecoverAlbumData(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private recoveryRecyclerPosition()V
    .locals 2

    .line 758
    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->currentPosition:I

    if-lez v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorFragment$15;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$15;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removePageCameraRepeatData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1115
    :try_start_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isCameraCallback:Z

    if-eqz v1, :cond_2

    .line 1116
    sget-object v1, Lcom/luck/picture/lib/PictureSelectorFragment;->LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1117
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1118
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1119
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1120
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1123
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1126
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1128
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isCameraCallback:Z

    return-void

    :goto_2
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isCameraCallback:Z

    .line 1129
    throw p1
.end method

.method private requestLoadData()V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isDisplayCamera:Z

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->setDisplayCamera(Z)V

    .line 429
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->isCheckReadStorage(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->beginLoadData()V

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/permissions/PermissionConfig;->getReadPermissionArray(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 433
    invoke-virtual {p0, v1, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->onPermissionExplainEvent(Z[Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 435
    invoke-virtual {p0, v1, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->onApplyPermissionsEvent(I[Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_1
    invoke-static {}, Lcom/luck/picture/lib/permissions/PermissionChecker;->getInstance()Lcom/luck/picture/lib/permissions/PermissionChecker;

    move-result-object v1

    new-instance v2, Lcom/luck/picture/lib/PictureSelectorFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment$5;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;[Ljava/lang/String;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/luck/picture/lib/permissions/PermissionResultCallback;)V

    :goto_0
    return-void
.end method

.method private setAdapterData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1019
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getEnterAnimationDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->requireView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/luck/picture/lib/PictureSelectorFragment$20;

    invoke-direct {v3, p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment$20;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1028
    :cond_0
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterDataComplete(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method private setAdapterDataComplete(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1033
    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setEnterAnimationDuration(J)V

    const/4 v0, 0x0

    .line 1034
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->sendChangeSubSelectPositionEvent(Z)V

    .line 1035
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->setDataAndDataSetChanged(Ljava/util/ArrayList;)V

    .line 1036
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->dataSource:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1037
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->albumDataSource:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1038
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->recoveryRecyclerPosition()V

    .line 1039
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDataEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1040
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->showDataNull()V

    goto :goto_0

    .line 1042
    :cond_0
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->hideDataNull()V

    :goto_0
    return-void
.end method

.method private setCurrentMediaCreateTimeText()V
    .locals 6

    .line 939
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayTimeAxis:Z

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 942
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v1

    .line 943
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getDateAddedTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 944
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvCurrentDataTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 945
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getDateAddedTime()J

    move-result-wide v0

    .line 944
    invoke-static {v3, v0, v1}, Lcom/luck/picture/lib/utils/DateUtils;->getDataFormat(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showCurrentMediaCreateTimeUI()V
    .locals 3

    .line 955
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayTimeAxis:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvCurrentDataTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvCurrentDataTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private showDataNull()V
    .locals 4

    .line 1270
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 1271
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1275
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$drawable;->ps_ic_no_data:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 1276
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v1

    if-ne v0, v1, :cond_2

    sget v0, Lcom/luck/picture/lib/R$string;->ps_audio_empty:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/luck/picture/lib/R$string;->ps_empty:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1277
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public dispatchCameraMediaResult(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 5

    .line 1135
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->getFirstAlbumImageCount()I

    move-result v0

    .line 1136
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->isAddSameImp(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1138
    iput-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isCameraCallback:Z

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isDirectReturnSingle:Z

    if-eqz v0, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1142
    invoke-virtual {p0, p1, v2}, Lcom/luck/picture/lib/PictureSelectorFragment;->confirmSelect(Lcom/luck/picture/lib/entity/LocalMedia;Z)I

    move-result v0

    if-nez v0, :cond_2

    .line 1144
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->dispatchTransformResult()V

    goto :goto_0

    .line 1147
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/luck/picture/lib/PictureSelectorFragment;->confirmSelect(Lcom/luck/picture/lib/entity/LocalMedia;Z)I

    .line 1149
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayCamera:Z

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyItemInserted(I)V

    .line 1150
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayCamera:Z

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyItemRangeChanged(II)V

    .line 1151
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isOnlySandboxDir:Z

    if-eqz v0, :cond_4

    .line 1152
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-nez v0, :cond_3

    .line 1154
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 1156
    :cond_3
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getParentFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/ValueOf;->toLong(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 1157
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getParentFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderName(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 1160
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFolderTotalNum(I)V

    .line 1161
    iget p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setCurrentDataPage(I)V

    .line 1162
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setHasMore(Z)V

    .line 1163
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setData(Ljava/util/ArrayList;)V

    .line 1164
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setEnabledLoadMore(Z)V

    .line 1165
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object v0, p1, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    goto :goto_1

    .line 1167
    :cond_4
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->mergeFolder(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 1169
    :goto_1
    iput v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->allFolderSize:I

    .line 1170
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_6

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isDirectReturnSingle:Z

    if-eqz p1, :cond_5

    goto :goto_2

    .line 1173
    :cond_5
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->showDataNull()V

    goto :goto_3

    .line 1171
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->hideDataNull()V

    :goto_3
    return-void
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .line 125
    sget-object v0, Lcom/luck/picture/lib/PictureSelectorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-static {v0, v1, v2}, Lcom/luck/picture/lib/config/InjectResourceSource;->getLayoutResource(Landroid/content/Context;ILcom/luck/picture/lib/config/SelectorConfig;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 134
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$layout;->ps_fragment_selector:I

    return v0
.end method

.method public handlePermissionSettingResult([Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 487
    invoke-virtual {p0, v1, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->onPermissionExplainEvent(Z[Ljava/lang/String;)V

    .line 488
    array-length v0, p1

    if-lez v0, :cond_1

    aget-object v0, p1, v1

    sget-object v2, Lcom/luck/picture/lib/permissions/PermissionConfig;->CAMERA:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 490
    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    if-eqz v2, :cond_2

    .line 491
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    invoke-interface {v2, p0, p1}, Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;->hasPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    .line 493
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->isCheckSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 497
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->openSelectedCamera()V

    goto :goto_2

    .line 499
    :cond_3
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->beginLoadData()V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 503
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/luck/picture/lib/R$string;->ps_camera:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 505
    :cond_5
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/luck/picture/lib/R$string;->ps_jurisdiction:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->onKeyBackFragmentFinish()V

    .line 509
    :goto_2
    new-array p1, v1, [Ljava/lang/String;

    sput-object p1, Lcom/luck/picture/lib/permissions/PermissionConfig;->CURRENT_REQUEST_PERMISSION:[Ljava/lang/String;

    return-void
.end method

.method public loadAllAlbumData()V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->loaderDataEngine:Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->loaderDataEngine:Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/luck/picture/lib/PictureSelectorFragment$9;

    invoke-direct {v2, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$9;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/luck/picture/lib/engine/ExtendLoaderEngine;->loadAllAlbumData(Landroid/content/Context;Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener;)V

    goto :goto_0

    .line 619
    :cond_0
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->preloadPageFirstData()Z

    move-result v0

    .line 620
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mLoader:Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    new-instance v2, Lcom/luck/picture/lib/PictureSelectorFragment$10;

    invoke-direct {v2, p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment$10;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;Z)V

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->loadAllAlbum(Lcom/luck/picture/lib/interfaces/OnQueryAllAlbumListener;)V

    :goto_0
    return-void
.end method

.method public loadFirstPageMediaData(J)V
    .locals 15

    move-object v0, p0

    const/4 v1, 0x1

    .line 683
    iput v1, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    .line 684
    iget-object v2, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v2, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setEnabledLoadMore(Z)V

    .line 685
    iget-object v1, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->loaderDataEngine:Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

    if-eqz v1, :cond_0

    .line 686
    iget-object v1, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->loaderDataEngine:Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v6, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    iget v1, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    iget-object v4, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    mul-int v7, v1, v4

    new-instance v8, Lcom/luck/picture/lib/PictureSelectorFragment$11;

    invoke-direct {v8, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$11;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    move-wide/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/luck/picture/lib/engine/ExtendLoaderEngine;->loadFirstPageMediaData(Landroid/content/Context;JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V

    goto :goto_0

    .line 695
    :cond_0
    iget-object v9, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->mLoader:Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    iget v12, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    iget v1, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    iget-object v2, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    mul-int v13, v1, v2

    new-instance v14, Lcom/luck/picture/lib/PictureSelectorFragment$12;

    invoke-direct {v14, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$12;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    move-wide/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->loadPageMediaData(JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V

    :goto_0
    return-void
.end method

.method public loadMoreMediaData()V
    .locals 10

    .line 1066
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1067
    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    .line 1068
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 1070
    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->loaderDataEngine:Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

    if-eqz v2, :cond_1

    .line 1071
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->loaderDataEngine:Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v6, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v7, v4, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v8, v4, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    new-instance v9, Lcom/luck/picture/lib/PictureSelectorFragment$22;

    invoke-direct {v9, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$22;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    move-wide v4, v0

    invoke-interface/range {v2 .. v9}, Lcom/luck/picture/lib/engine/ExtendLoaderEngine;->loadMoreMediaData(Landroid/content/Context;JIIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V

    goto :goto_1

    .line 1079
    :cond_1
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mLoader:Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    iget v5, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v6, v3, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    new-instance v7, Lcom/luck/picture/lib/PictureSelectorFragment$23;

    invoke-direct {v7, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$23;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    move-wide v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->loadPageMediaData(JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public loadOnlyInAppDirectoryAllMediaData()V
    .locals 3

    .line 721
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->loaderDataEngine:Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->loaderDataEngine:Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/luck/picture/lib/PictureSelectorFragment$13;

    invoke-direct {v2, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$13;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/luck/picture/lib/engine/ExtendLoaderEngine;->loadOnlyInAppDirAllMediaData(Landroid/content/Context;Lcom/luck/picture/lib/interfaces/OnQueryAlbumListener;)V

    goto :goto_0

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mLoader:Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorFragment$14;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$14;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/loader/IBridgeMediaLoader;->loadOnlyInAppDirAllMedia(Lcom/luck/picture/lib/interfaces/OnQueryAlbumListener;)V

    :goto_0
    return-void
.end method

.method public onApplyPermissionsEvent(I[Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 455
    invoke-super {p0, p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onApplyPermissionsEvent(I[Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorFragment$6;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$6;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-interface {p1, p0, p2, v0}, Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;->requestPermission(Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/luck/picture/lib/interfaces/OnRequestPermissionListener;)V

    :goto_0
    return-void
.end method

.method public onCheckOriginalChange()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/BottomNavBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/BottomNavBar;->setOriginalCheck()V

    return-void
.end method

.method public onCreateLoader()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->loaderFactory:Lcom/luck/picture/lib/basic/IBridgeLoaderFactory;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->loaderFactory:Lcom/luck/picture/lib/basic/IBridgeLoaderFactory;

    invoke-interface {v0}, Lcom/luck/picture/lib/basic/IBridgeLoaderFactory;->onCreateLoader()Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mLoader:Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    .line 324
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mLoader:Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 325
    :cond_0
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

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v0, :cond_2

    .line 329
    new-instance v0, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/loader/LocalMediaPageLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    goto :goto_0

    .line 330
    :cond_2
    new-instance v0, Lcom/luck/picture/lib/loader/LocalMediaLoader;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/loader/LocalMediaLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    :goto_0
    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mLoader:Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

    :goto_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1260
    invoke-super {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onDestroyView()V

    .line 1261
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mDragSelectTouchListener:Lcom/luck/picture/lib/widget/SlideSelectTouchListener;

    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/SlideSelectTouchListener;->stopAutoScroll()V

    :cond_0
    return-void
.end method

.method public onFixedSelectedChange(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget p1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyItemPositionChanged(I)V

    return-void
.end method

.method public onFragmentResume()V
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->setRootViewKeyListener(Landroid/view/View;)V

    return-void
.end method

.method public onRecyclerViewPreloadMore()V
    .locals 4

    .line 1048
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isMemoryRecycling:Z

    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->requireView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorFragment$21;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$21;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1057
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->loadMoreMediaData()V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 220
    invoke-super {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 221
    const-string v0, "com.luck.picture.lib.all_folder_size"

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->allFolderSize:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    const-string v0, "com.luck.picture.lib.current_page"

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    if-eqz v0, :cond_0

    .line 224
    const-string v1, "com.luck.picture.lib.current_preview_position"

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz v0, :cond_1

    .line 227
    const-string v1, "com.luck.picture.lib.display_camera"

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDisplayCamera()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/config/SelectorConfig;->addDataSource(Ljava/util/ArrayList;)V

    .line 230
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    if-eqz p1, :cond_2

    .line 231
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->getAlbumList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/config/SelectorConfig;->addAlbumDataSource(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public onSelectedChange(ZLcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/BottomNavBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/BottomNavBar;->setSelectedChange()V

    .line 141
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setSelectedChange(Z)V

    .line 143
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->checkNotifyStrategy(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget p2, p2, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyItemPositionChanged(I)V

    .line 145
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorFragment$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$1;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    sget v1, Lcom/luck/picture/lib/PictureSelectorFragment;->SELECT_ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {p2, v0, v1, v2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget p2, p2, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyItemPositionChanged(I)V

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 155
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->sendChangeSubSelectPositionEvent(Z)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 237
    invoke-super {p0, p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 238
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorFragment;->reStartSavedInstance(Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 239
    :goto_0
    iput-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isMemoryRecycling:Z

    .line 240
    sget p2, Lcom/luck/picture/lib/R$id;->tv_data_empty:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    .line 241
    sget p2, Lcom/luck/picture/lib/R$id;->ps_complete_select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/widget/CompleteSelectView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    .line 242
    sget p2, Lcom/luck/picture/lib/R$id;->title_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/widget/TitleBar;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    .line 243
    sget p2, Lcom/luck/picture/lib/R$id;->bottom_nar_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/widget/BottomNavBar;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/BottomNavBar;

    .line 244
    sget p2, Lcom/luck/picture/lib/R$id;->tv_current_data_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvCurrentDataTime:Landroid/widget/TextView;

    .line 245
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->onCreateLoader()V

    .line 246
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->initAlbumListPopWindow()V

    .line 247
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->initTitleBar()V

    .line 248
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->initComplete()V

    .line 249
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->initRecycler(Landroid/view/View;)V

    .line 250
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->initBottomNavBar()V

    .line 251
    iget-boolean p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isMemoryRecycling:Z

    if-eqz p1, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->recoverSaveInstanceData()V

    goto :goto_1

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->requestLoadData()V

    :goto_1
    return-void
.end method

.method public reStartSavedInstance(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 267
    const-string v0, "com.luck.picture.lib.all_folder_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->allFolderSize:I

    .line 268
    const-string v0, "com.luck.picture.lib.current_page"

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mPage:I

    .line 269
    const-string v0, "com.luck.picture.lib.current_preview_position"

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->currentPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->currentPosition:I

    .line 270
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayCamera:Z

    const-string v1, "com.luck.picture.lib.display_camera"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isDisplayCamera:Z

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayCamera:Z

    iput-boolean p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isDisplayCamera:Z

    :goto_0
    return-void
.end method

.method public sendChangeSubSelectPositionEvent(Z)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isSelectNumberStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 167
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    add-int/lit8 v0, v0, 0x1

    .line 169
    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setNum(I)V

    if-eqz p1, :cond_0

    .line 171
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget v1, v1, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    invoke-virtual {v2, v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyItemPositionChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
