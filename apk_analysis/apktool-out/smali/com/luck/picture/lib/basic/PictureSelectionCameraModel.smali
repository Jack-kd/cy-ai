.class public final Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
.super Ljava/lang/Object;
.source "PictureSelectionCameraModel.java"


# instance fields
.field private final selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

.field private final selector:Lcom/luck/picture/lib/basic/PictureSelector;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/basic/PictureSelector;I)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    .line 56
    new-instance p1, Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {p1}, Lcom/luck/picture/lib/config/SelectorConfig;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 57
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/config/SelectorProviders;->addSelectorConfigQueue(Lcom/luck/picture/lib/config/SelectorConfig;)V

    .line 58
    iput p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    const/4 p2, 0x1

    .line 59
    iput-boolean p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isOnlyCamera:Z

    const/4 p2, 0x0

    .line 60
    iput-boolean p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayTimeAxis:Z

    .line 61
    iput-boolean p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    .line 62
    iput-boolean p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    .line 63
    iput-boolean p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isOpenClickSound:Z

    return-void
.end method

.method private setMaxSelectNum(I)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move p1, v2

    :cond_0
    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    return-object p0
.end method


# virtual methods
.method public build()Lcom/luck/picture/lib/PictureOnlyCameraFragment;
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 698
    instance-of v0, v0, Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    .line 704
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    .line 705
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    .line 706
    new-instance v0, Lcom/luck/picture/lib/PictureOnlyCameraFragment;

    invoke-direct {v0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;-><init>()V

    return-object v0

    .line 699
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Use only build PictureOnlyCameraFragment,Activity or Fragment interface needs to be implemented "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buildLaunch(ILcom/luck/picture/lib/interfaces/OnResultCallbackListener;)Lcom/luck/picture/lib/PictureOnlyCameraFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/luck/picture/lib/interfaces/OnResultCallbackListener<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)",
            "Lcom/luck/picture/lib/PictureOnlyCameraFragment;"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 725
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    .line 726
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    .line 727
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    .line 729
    instance-of p2, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_0

    .line 730
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 735
    new-instance v0, Lcom/luck/picture/lib/PictureOnlyCameraFragment;

    invoke-direct {v0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;-><init>()V

    .line 736
    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 738
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 740
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 741
    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 742
    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 743
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object v0

    .line 733
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "FragmentManager cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 722
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "OnResultCallbackListener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 719
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Activity cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forResult()V
    .locals 3

    .line 619
    invoke-static {}, Lcom/luck/picture/lib/utils/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_5

    .line 620
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 624
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    .line 625
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    .line 627
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 628
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 633
    instance-of v0, v0, Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

    if-eqz v0, :cond_2

    .line 637
    sget-object v0, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 639
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 641
    :cond_1
    sget-object v0, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->TAG:Ljava/lang/String;

    .line 642
    invoke-static {}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->newInstance()Lcom/luck/picture/lib/PictureOnlyCameraFragment;

    move-result-object v2

    .line 641
    invoke-static {v1, v0, v2}, Lcom/luck/picture/lib/basic/FragmentInjectManager;->injectSystemRoomFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 634
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Use only camera openCamera mode,Activity or Fragment interface needs to be implemented "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "FragmentManager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void
.end method

.method public forResult(Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/interfaces/OnResultCallbackListener<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 657
    invoke-static {}, Lcom/luck/picture/lib/utils/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_5

    .line 658
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 666
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    .line 667
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    .line 668
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    .line 670
    instance-of p1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_0

    .line 671
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 676
    sget-object v0, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 680
    :cond_1
    sget-object v0, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->TAG:Ljava/lang/String;

    .line 681
    invoke-static {}, Lcom/luck/picture/lib/PictureOnlyCameraFragment;->newInstance()Lcom/luck/picture/lib/PictureOnlyCameraFragment;

    move-result-object v1

    .line 680
    invoke-static {p1, v0, v1}, Lcom/luck/picture/lib/basic/FragmentInjectManager;->injectSystemRoomFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 674
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "FragmentManager cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 663
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "OnResultCallbackListener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 660
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Activity cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public forResultActivity(I)V
    .locals 4

    .line 756
    invoke-static {}, Lcom/luck/picture/lib/utils/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_2

    .line 757
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 761
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    .line 762
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    .line 763
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 764
    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v3}, Lcom/luck/picture/lib/basic/PictureSelector;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 766
    invoke-virtual {v3, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 768
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 770
    :goto_0
    sget p1, Lcom/luck/picture/lib/R$anim;->ps_anim_fade_in:I

    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 759
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Activity cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public forResultActivity(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 783
    invoke-static {}, Lcom/luck/picture/lib/utils/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_2

    .line 784
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    .line 792
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    .line 793
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 794
    invoke-virtual {p1, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 795
    sget p1, Lcom/luck/picture/lib/R$anim;->ps_anim_fade_in:I

    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 789
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ActivityResultLauncher cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 786
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Activity cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public forResultActivity(Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/interfaces/OnResultCallbackListener<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 808
    invoke-static {}, Lcom/luck/picture/lib/utils/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_2

    .line 809
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    .line 818
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    .line 819
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    .line 820
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 821
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 822
    sget p1, Lcom/luck/picture/lib/R$anim;->ps_anim_fade_in:I

    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 814
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "OnResultCallbackListener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 811
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Activity cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public isCameraAroundState(Z)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isCameraAroundState:Z

    return-object p0
.end method

.method public isCameraForegroundService(Z)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isCameraForegroundService:Z

    return-object p0
.end method

.method public isCameraRotateImage(Z)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isCameraRotateImage:Z

    return-object p0
.end method

.method public isNewKeyBackMode(Z)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isNewKeyBackMode:Z

    return-object p0
.end method

.method public isOriginalControl(Z)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isOriginalControl:Z

    .line 336
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isCheckOriginalImage:Z

    return-object p0
.end method

.method public isOriginalSkipCompress(Z)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isOriginalSkipCompress:Z

    return-object p0
.end method

.method public isQuickCapture(Z)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isQuickCapture:Z

    return-object p0
.end method

.method public setAddBitmapWatermarkListener(Lcom/luck/picture/lib/interfaces/OnBitmapWatermarkEventListener;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onBitmapWatermarkListener:Lcom/luck/picture/lib/interfaces/OnBitmapWatermarkEventListener;

    :cond_0
    return-object p0
.end method

.method public setCameraImageFormat(Ljava/lang/String;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraImageFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setCameraImageFormatForQ(Ljava/lang/String;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraImageFormatForQ:Ljava/lang/String;

    return-object p0
.end method

.method public setCameraInterceptListener(Lcom/luck/picture/lib/interfaces/OnCameraInterceptListener;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onCameraInterceptListener:Lcom/luck/picture/lib/interfaces/OnCameraInterceptListener;

    return-object p0
.end method

.method public setCameraVideoFormat(Ljava/lang/String;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraVideoFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setCameraVideoFormatForQ(Ljava/lang/String;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraVideoFormatForQ:Ljava/lang/String;

    return-object p0
.end method

.method public setCompressEngine(Lcom/luck/picture/lib/engine/CompressEngine;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->compressEngine:Lcom/luck/picture/lib/engine/CompressEngine;

    .line 98
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isCompressEngine:Z

    return-object p0
.end method

.method public setCompressEngine(Lcom/luck/picture/lib/engine/CompressFileEngine;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->compressFileEngine:Lcom/luck/picture/lib/engine/CompressFileEngine;

    .line 110
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isCompressEngine:Z

    return-object p0
.end method

.method public setCropEngine(Lcom/luck/picture/lib/engine/CropEngine;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->cropEngine:Lcom/luck/picture/lib/engine/CropEngine;

    return-object p0
.end method

.method public setCropEngine(Lcom/luck/picture/lib/engine/CropFileEngine;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->cropFileEngine:Lcom/luck/picture/lib/engine/CropFileEngine;

    return-object p0
.end method

.method public setCustomLoadingListener(Lcom/luck/picture/lib/interfaces/OnCustomLoadingListener;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onCustomLoadingListener:Lcom/luck/picture/lib/interfaces/OnCustomLoadingListener;

    return-object p0
.end method

.method public setDefaultLanguage(I)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->defaultLanguage:I

    return-object p0
.end method

.method public setLanguage(I)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->language:I

    return-object p0
.end method

.method public setMaxVideoSelectNum(I)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofVideo()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    return-object p0
.end method

.method public setOfAllCameraType(I)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->ofAllCameraType:I

    return-object p0
.end method

.method public setOutputAudioDir(Ljava/lang/String;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioDir:Ljava/lang/String;

    return-object p0
.end method

.method public setOutputAudioFileName(Ljava/lang/String;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioFileName:Ljava/lang/String;

    return-object p0
.end method

.method public setOutputCameraDir(Ljava/lang/String;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutCameraDir:Ljava/lang/String;

    return-object p0
.end method

.method public setOutputCameraImageFileName(Ljava/lang/String;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutCameraImageFileName:Ljava/lang/String;

    return-object p0
.end method

.method public setOutputCameraVideoFileName(Ljava/lang/String;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutCameraVideoFileName:Ljava/lang/String;

    return-object p0
.end method

.method public setPermissionDeniedListener(Lcom/luck/picture/lib/interfaces/OnPermissionDeniedListener;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionDeniedListener:Lcom/luck/picture/lib/interfaces/OnPermissionDeniedListener;

    return-object p0
.end method

.method public setPermissionDescriptionListener(Lcom/luck/picture/lib/interfaces/OnPermissionDescriptionListener;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionDescriptionListener:Lcom/luck/picture/lib/interfaces/OnPermissionDescriptionListener;

    return-object p0
.end method

.method public setPermissionsInterceptListener(Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    return-object p0
.end method

.method public setRecordAudioInterceptListener(Lcom/luck/picture/lib/interfaces/OnRecordAudioInterceptListener;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onRecordAudioListener:Lcom/luck/picture/lib/interfaces/OnRecordAudioInterceptListener;

    return-object p0
.end method

.method public setRecordVideoMaxSecond(I)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->recordVideoMaxSecond:I

    return-object p0
.end method

.method public setRecordVideoMinSecond(I)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->recordVideoMinSecond:I

    return-object p0
.end method

.method public setRequestedOrientation(I)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->requestedOrientation:I

    return-object p0
.end method

.method public setSandboxFileEngine(Lcom/luck/picture/lib/engine/SandboxFileEngine;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->sandboxFileEngine:Lcom/luck/picture/lib/engine/SandboxFileEngine;

    .line 149
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isSandboxFileEngine:Z

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isSandboxFileEngine:Z

    :goto_0
    return-object p0
.end method

.method public setSandboxFileEngine(Lcom/luck/picture/lib/engine/UriToFileTransformEngine;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 163
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->uriToFileTransformEngine:Lcom/luck/picture/lib/engine/UriToFileTransformEngine;

    .line 165
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isSandboxFileEngine:Z

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isSandboxFileEngine:Z

    :goto_0
    return-object p0
.end method

.method public setSelectLimitTipsListener(Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    return-object p0
.end method

.method public setSelectMaxDurationSecond(I)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxDurationSecond:I

    return-object p0
.end method

.method public setSelectMaxFileSize(J)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 3

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-wide p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxFileSize:J

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const-wide/16 v1, 0x400

    mul-long/2addr p1, v1

    iput-wide p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxFileSize:J

    :goto_0
    return-object p0
.end method

.method public setSelectMinDurationSecond(I)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinDurationSecond:I

    return-object p0
.end method

.method public setSelectMinFileSize(J)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 3

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-wide p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinFileSize:J

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const-wide/16 v1, 0x400

    mul-long/2addr p1, v1

    iput-wide p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinFileSize:J

    :goto_0
    return-object p0
.end method

.method public setSelectedData(Ljava/util/List;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)",
            "Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 570
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->setMaxSelectNum(I)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;

    .line 571
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->setMaxVideoSelectNum(I)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;

    .line 572
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isDirectReturnSingle:Z

    if-eqz v0, :cond_1

    .line 573
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/config/SelectorConfig;->addAllSelectResult(Ljava/util/ArrayList;)V

    :goto_0
    return-object p0
.end method

.method public setVideoQuality(I)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoQuality:I

    return-object p0
.end method

.method public setVideoThumbnailListener(Lcom/luck/picture/lib/interfaces/OnVideoThumbnailEventListener;)Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionCameraModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onVideoThumbnailEventListener:Lcom/luck/picture/lib/interfaces/OnVideoThumbnailEventListener;

    :cond_0
    return-object p0
.end method
