.class public final Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
.super Ljava/lang/Object;
.source "PictureSelectionSystemModel.java"


# instance fields
.field private final selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

.field private final selector:Lcom/luck/picture/lib/basic/PictureSelector;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/basic/PictureSelector;I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    .line 53
    new-instance p1, Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {p1}, Lcom/luck/picture/lib/config/SelectorConfig;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 54
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/config/SelectorProviders;->addSelectorConfigQueue(Lcom/luck/picture/lib/config/SelectorConfig;)V

    .line 55
    iput p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    const/4 p2, 0x0

    .line 56
    iput-boolean p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    .line 57
    iput-boolean p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    return-void
.end method


# virtual methods
.method public forSystemResult()V
    .locals 4

    .line 398
    invoke-static {}, Lcom/luck/picture/lib/utils/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_5

    .line 399
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 403
    instance-of v1, v0, Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

    if-eqz v1, :cond_3

    .line 407
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    .line 408
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    .line 409
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    .line 412
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 413
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_2

    .line 418
    sget-object v0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 422
    :cond_1
    sget-object v0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->TAG:Ljava/lang/String;

    .line 423
    invoke-static {}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->newInstance()Lcom/luck/picture/lib/PictureSelectorSystemFragment;

    move-result-object v1

    .line 422
    invoke-static {v2, v0, v1}, Lcom/luck/picture/lib/basic/FragmentInjectManager;->injectSystemRoomFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 416
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "FragmentManager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Use only forSystemResult();,Activity or Fragment interface needs to be implemented "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    return-void
.end method

.method public forSystemResult(Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/interfaces/OnResultCallbackListener<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 359
    invoke-static {}, Lcom/luck/picture/lib/utils/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_5

    .line 360
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 367
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    .line 368
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    .line 369
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    .line 371
    instance-of p1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_0

    .line 372
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 377
    sget-object v0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 381
    :cond_1
    sget-object v0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->TAG:Ljava/lang/String;

    .line 382
    invoke-static {}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->newInstance()Lcom/luck/picture/lib/PictureSelectorSystemFragment;

    move-result-object v1

    .line 381
    invoke-static {p1, v0, v1}, Lcom/luck/picture/lib/basic/FragmentInjectManager;->injectSystemRoomFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 375
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "FragmentManager cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "OnResultCallbackListener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Activity cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public forSystemResultActivity(I)V
    .locals 5

    .line 434
    invoke-static {}, Lcom/luck/picture/lib/utils/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    .line 440
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    .line 441
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;

    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    const-string v4, "com.luck.picture.lib.mode_type_source"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v3}, Lcom/luck/picture/lib/basic/PictureSelector;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 445
    invoke-virtual {v3, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 449
    :goto_0
    sget p1, Lcom/luck/picture/lib/R$anim;->ps_anim_fade_in:I

    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 437
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Activity cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public forSystemResultActivity(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 459
    invoke-static {}, Lcom/luck/picture/lib/utils/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    .line 468
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    .line 469
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;

    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    const-string v4, "com.luck.picture.lib.mode_type_source"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    invoke-virtual {p1, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 472
    sget p1, Lcom/luck/picture/lib/R$anim;->ps_anim_fade_in:I

    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 465
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ActivityResultLauncher cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 462
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Activity cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public forSystemResultActivity(Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/interfaces/OnResultCallbackListener<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 482
    invoke-static {}, Lcom/luck/picture/lib/utils/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selector:Lcom/luck/picture/lib/basic/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/basic/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    .line 492
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    .line 493
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    .line 494
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    const-string v1, "com.luck.picture.lib.mode_type_source"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 497
    sget p1, Lcom/luck/picture/lib/R$anim;->ps_anim_fade_in:I

    invoke-virtual {v0, p1, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 488
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "OnResultCallbackListener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Activity cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public isNewKeyBackMode(Z)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isNewKeyBackMode:Z

    return-object p0
.end method

.method public isOriginalControl(Z)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isCheckOriginalImage:Z

    return-object p0
.end method

.method public isOriginalSkipCompress(Z)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isOriginalSkipCompress:Z

    return-object p0
.end method

.method public setAddBitmapWatermarkListener(Lcom/luck/picture/lib/interfaces/OnBitmapWatermarkEventListener;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onBitmapWatermarkListener:Lcom/luck/picture/lib/interfaces/OnBitmapWatermarkEventListener;

    :cond_0
    return-object p0
.end method

.method public setCompressEngine(Lcom/luck/picture/lib/engine/CompressEngine;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->compressEngine:Lcom/luck/picture/lib/engine/CompressEngine;

    .line 122
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isCompressEngine:Z

    return-object p0
.end method

.method public setCompressEngine(Lcom/luck/picture/lib/engine/CompressFileEngine;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->compressFileEngine:Lcom/luck/picture/lib/engine/CompressFileEngine;

    .line 135
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isCompressEngine:Z

    return-object p0
.end method

.method public setCropEngine(Lcom/luck/picture/lib/engine/CropEngine;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->cropEngine:Lcom/luck/picture/lib/engine/CropEngine;

    return-object p0
.end method

.method public setCropEngine(Lcom/luck/picture/lib/engine/CropFileEngine;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->cropFileEngine:Lcom/luck/picture/lib/engine/CropFileEngine;

    return-object p0
.end method

.method public setCustomLoadingListener(Lcom/luck/picture/lib/interfaces/OnCustomLoadingListener;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onCustomLoadingListener:Lcom/luck/picture/lib/interfaces/OnCustomLoadingListener;

    return-object p0
.end method

.method public setPermissionDeniedListener(Lcom/luck/picture/lib/interfaces/OnPermissionDeniedListener;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionDeniedListener:Lcom/luck/picture/lib/interfaces/OnPermissionDeniedListener;

    return-object p0
.end method

.method public setPermissionDescriptionListener(Lcom/luck/picture/lib/interfaces/OnPermissionDescriptionListener;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionDescriptionListener:Lcom/luck/picture/lib/interfaces/OnPermissionDescriptionListener;

    return-object p0
.end method

.method public setPermissionsInterceptListener(Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    return-object p0
.end method

.method public setSandboxFileEngine(Lcom/luck/picture/lib/engine/SandboxFileEngine;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->sandboxFileEngine:Lcom/luck/picture/lib/engine/SandboxFileEngine;

    .line 174
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isSandboxFileEngine:Z

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isSandboxFileEngine:Z

    :goto_0
    return-object p0
.end method

.method public setSandboxFileEngine(Lcom/luck/picture/lib/engine/UriToFileTransformEngine;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 188
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->uriToFileTransformEngine:Lcom/luck/picture/lib/engine/UriToFileTransformEngine;

    .line 190
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isSandboxFileEngine:Z

    goto :goto_0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isSandboxFileEngine:Z

    :goto_0
    return-object p0
.end method

.method public setSelectFilterListener(Lcom/luck/picture/lib/interfaces/OnSelectFilterListener;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectFilterListener:Lcom/luck/picture/lib/interfaces/OnSelectFilterListener;

    return-object p0
.end method

.method public setSelectLimitTipsListener(Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    return-object p0
.end method

.method public setSelectMaxDurationSecond(I)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxDurationSecond:I

    return-object p0
.end method

.method public setSelectMaxFileSize(J)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 3

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-wide p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxFileSize:J

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const-wide/16 v1, 0x400

    mul-long/2addr p1, v1

    iput-wide p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxFileSize:J

    :goto_0
    return-object p0
.end method

.method public setSelectMinDurationSecond(I)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinDurationSecond:I

    return-object p0
.end method

.method public setSelectMinFileSize(J)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 3

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-wide p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinFileSize:J

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const-wide/16 v1, 0x400

    mul-long/2addr p1, v1

    iput-wide p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinFileSize:J

    :goto_0
    return-object p0
.end method

.method public setSelectionMode(I)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    return-object p0
.end method

.method public varargs setSkipCropMimeType([Ljava/lang/String;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 1

    if-eqz p1, :cond_0

    .line 95
    array-length v0, p1

    if-lez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->skipCropList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public setVideoThumbnailListener(Lcom/luck/picture/lib/interfaces/OnVideoThumbnailEventListener;)Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureSelectionSystemModel;->selectionConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onVideoThumbnailEventListener:Lcom/luck/picture/lib/interfaces/OnVideoThumbnailEventListener;

    :cond_0
    return-object p0
.end method
