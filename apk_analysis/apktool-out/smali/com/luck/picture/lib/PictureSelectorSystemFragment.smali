.class public Lcom/luck/picture/lib/PictureSelectorSystemFragment;
.super Lcom/luck/picture/lib/basic/PictureCommonFragment;
.source "PictureSelectorSystemFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PictureSelectorSystemFragment"


# instance fields
.field private mContentLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentsLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDocMultipleLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDocSingleLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->openSystemAlbum()V

    return-void
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/PictureSelectorSystemFragment;Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->buildLocalMedia(Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->dispatchTransformResult()V

    return-void
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->dispatchTransformResult()V

    return-void
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/PictureSelectorSystemFragment;Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->buildLocalMedia(Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->dispatchTransformResult()V

    return-void
.end method

.method static synthetic access$600(Lcom/luck/picture/lib/PictureSelectorSystemFragment;Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->buildLocalMedia(Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)Lcom/luck/picture/lib/config/SelectorConfig;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-object p0
.end method

.method static synthetic access$800(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->dispatchTransformResult()V

    return-void
.end method

.method static synthetic access$900(Lcom/luck/picture/lib/PictureSelectorSystemFragment;Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->buildLocalMedia(Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object p0

    return-object p0
.end method

.method private createContent()V
    .locals 2

    .line 306
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorSystemFragment$9;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$9;-><init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)V

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorSystemFragment$10;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$10;-><init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private createMultipleContents()V
    .locals 2

    .line 249
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorSystemFragment$7;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$7;-><init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)V

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorSystemFragment$8;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$8;-><init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mContentsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private createMultipleDocuments()V
    .locals 2

    .line 155
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorSystemFragment$3;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$3;-><init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)V

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;-><init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mDocMultipleLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private createSingleDocuments()V
    .locals 2

    .line 207
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorSystemFragment$5;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$5;-><init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)V

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorSystemFragment$6;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$6;-><init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mDocSingleLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private createSystemContracts()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAll()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->createSingleDocuments()V

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->createContent()V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAll()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 143
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->createMultipleDocuments()V

    goto :goto_0

    .line 145
    :cond_2
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->createMultipleContents()V

    :goto_0
    return-void
.end method

.method private getInput()Ljava/lang/String;
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofVideo()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 355
    const-string v0, "video/*"

    return-object v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 357
    const-string v0, "audio/*"

    return-object v0

    .line 359
    :cond_1
    const-string v0, "image/*"

    return-object v0
.end method

.method public static newInstance()Lcom/luck/picture/lib/PictureSelectorSystemFragment;
    .locals 1

    .line 44
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;

    invoke-direct {v0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;-><init>()V

    return-object v0
.end method

.method private openSystemAlbum()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->onPermissionExplainEvent(Z[Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    const/4 v1, 0x1

    const-string v2, "image/*,video/*"

    if-ne v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAll()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mDocSingleLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->getInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAll()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 124
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mDocMultipleLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mContentsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->getInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .line 54
    sget v0, Lcom/luck/picture/lib/R$layout;->ps_empty:I

    return v0
.end method

.method public handlePermissionSettingResult([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 365
    invoke-virtual {p0, v1, v0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->onPermissionExplainEvent(Z[Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    .line 369
    invoke-interface {v0, p0, p1}, Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;->hasPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 371
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->isCheckReadStorage(ILandroid/content/Context;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->openSystemAlbum()V

    goto :goto_1

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/luck/picture/lib/R$string;->ps_jurisdiction:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->onKeyBackFragmentFinish()V

    .line 379
    :goto_1
    new-array p1, v1, [Ljava/lang/String;

    sput-object p1, Lcom/luck/picture/lib/permissions/PermissionConfig;->CURRENT_REQUEST_PERMISSION:[Ljava/lang/String;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 384
    invoke-super {p0, p1, p2, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->onKeyBackFragmentFinish()V

    :cond_0
    return-void
.end method

.method public onApplyPermissionsEvent(I[Ljava/lang/String;)V
    .locals 1

    const/4 p2, -0x2

    if-ne p1, p2, :cond_0

    .line 97
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    .line 98
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->getAppContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {p2, v0}, Lcom/luck/picture/lib/permissions/PermissionConfig;->getReadPermissionArray(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorSystemFragment$2;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$2;-><init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;)V

    .line 97
    invoke-interface {p1, p0, p2, v0}, Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;->requestPermission(Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/luck/picture/lib/interfaces/OnRequestPermissionListener;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 392
    invoke-super {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onDestroy()V

    .line 393
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mDocMultipleLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mDocSingleLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mContentsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_2

    .line 400
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_3

    .line 403
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->createSystemContracts()V

    .line 71
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/luck/picture/lib/permissions/PermissionChecker;->isCheckReadStorage(ILandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->openSystemAlbum()V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->getAppContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {p1, p2}, Lcom/luck/picture/lib/permissions/PermissionConfig;->getReadPermissionArray(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 75
    invoke-virtual {p0, p2, p1}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->onPermissionExplainEvent(Z[Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    if-eqz p2, :cond_1

    const/4 p2, -0x2

    .line 77
    invoke-virtual {p0, p2, p1}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->onApplyPermissionsEvent(I[Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-static {}, Lcom/luck/picture/lib/permissions/PermissionChecker;->getInstance()Lcom/luck/picture/lib/permissions/PermissionChecker;

    move-result-object p2

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorSystemFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$1;-><init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;[Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/luck/picture/lib/permissions/PermissionResultCallback;)V

    :goto_0
    return-void
.end method
