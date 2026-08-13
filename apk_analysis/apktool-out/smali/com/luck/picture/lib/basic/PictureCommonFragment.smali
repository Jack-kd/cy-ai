.class public abstract Lcom/luck/picture/lib/basic/PictureCommonFragment;
.super Landroidx/fragment/app/Fragment;
.source "PictureCommonFragment.java"

# interfaces
.implements Lcom/luck/picture/lib/basic/IPictureSelectorCommonEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/basic/PictureCommonFragment$SelectorResult;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PictureCommonFragment"


# instance fields
.field private context:Landroid/content/Context;

.field private enterAnimDuration:J

.field protected iBridgePictureBehavior:Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

.field protected mLoader:Lcom/luck/picture/lib/loader/IBridgeMediaLoader;

.field private mLoadingDialog:Landroid/app/Dialog;

.field protected mPage:I

.field private mPermissionResultCallback:Lcom/luck/picture/lib/permissions/PermissionResultCallback;

.field protected selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

.field private soundID:I

.field private soundPool:Landroid/media/SoundPool;

.field protected tipsDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 112
    iput v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/basic/PictureCommonFragment;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->copyOutputAudioToDir()V

    return-void
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/basic/PictureCommonFragment;Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onScannerScanFile(Lcom/luck/picture/lib/entity/LocalMedia;)V

    return-void
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/basic/PictureCommonFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onCallBackResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/basic/PictureCommonFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->dispatchWatermarkResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/basic/PictureCommonFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->dispatchUriToFileTransformResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addBitmapWatermark(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1653
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    .line 1654
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1655
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1656
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1659
    :cond_0
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object v3

    .line 1660
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1662
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1663
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->dispatchWatermarkResult(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1665
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1666
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1667
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1668
    iget-object v4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->onBitmapWatermarkListener:Lcom/luck/picture/lib/interfaces/OnBitmapWatermarkEventListener;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v5

    .line 1669
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/luck/picture/lib/basic/PictureCommonFragment$13;

    invoke-direct {v6, p0, p1, v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment$13;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 1668
    invoke-interface {v4, v5, v3, v2, v6}, Lcom/luck/picture/lib/interfaces/OnBitmapWatermarkEventListener;->onAddBitmapWatermark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/luck/picture/lib/interfaces/OnKeyValueResultCallbackListener;)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private checkCompleteSelectLimit()Z
    .locals 10

    .line 1279
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isOnlyCamera:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isWithVideoImage:Z

    const/4 v1, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    .line 1284
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v0

    move v6, v2

    move v7, v6

    move v8, v7

    .line 1287
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 1288
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v9}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v9

    .line 1289
    invoke-static {v9}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1295
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->minSelectNum:I

    if-lez v0, :cond_4

    .line 1296
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->minSelectNum:I

    if-ge v7, v0, :cond_4

    .line 1297
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz v0, :cond_3

    .line 1298
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 1299
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {v0, v1, v4, v6, v3}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v5

    .line 1304
    :cond_3
    sget v0, Lcom/luck/picture/lib/R$string;->ps_min_img_num:I

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->minSelectNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v5

    .line 1308
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->minVideoSelectNum:I

    if-lez v0, :cond_c

    .line 1309
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->minVideoSelectNum:I

    if-ge v8, v0, :cond_c

    .line 1310
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz v0, :cond_5

    .line 1311
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 1312
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {v0, v3, v4, v6, v1}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v5

    .line 1317
    :cond_5
    sget v0, Lcom/luck/picture/lib/R$string;->ps_min_video_num:I

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->minVideoSelectNum:I

    .line 1318
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v5

    .line 1324
    :cond_6
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getResultFirstMimeType()Ljava/lang/String;

    move-result-object v0

    .line 1325
    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v6, v6, Lcom/luck/picture/lib/config/SelectorConfig;->minSelectNum:I

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 1326
    invoke-virtual {v6}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v6

    iget-object v7, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v7, v7, Lcom/luck/picture/lib/config/SelectorConfig;->minSelectNum:I

    if-ge v6, v7, :cond_8

    .line 1327
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz v0, :cond_7

    .line 1328
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 1329
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {v0, v1, v4, v6, v3}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result v0

    if-eqz v0, :cond_7

    return v5

    .line 1334
    :cond_7
    sget v0, Lcom/luck/picture/lib/R$string;->ps_min_img_num:I

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->minSelectNum:I

    .line 1335
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 1334
    invoke-virtual {p0, v0, v3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v5

    .line 1338
    :cond_8
    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->minVideoSelectNum:I

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 1339
    invoke-virtual {v3}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v3

    iget-object v6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v6, v6, Lcom/luck/picture/lib/config/SelectorConfig;->minVideoSelectNum:I

    if-ge v3, v6, :cond_a

    .line 1340
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz v0, :cond_9

    .line 1341
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 1342
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {v0, v3, v4, v6, v1}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result v0

    if-eqz v0, :cond_9

    return v5

    .line 1347
    :cond_9
    sget v0, Lcom/luck/picture/lib/R$string;->ps_min_video_num:I

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->minVideoSelectNum:I

    .line 1348
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 1347
    invoke-virtual {p0, v0, v3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v5

    .line 1352
    :cond_a
    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->minAudioSelectNum:I

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 1353
    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v0

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->minAudioSelectNum:I

    if-ge v0, v1, :cond_c

    .line 1354
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz v0, :cond_b

    .line 1355
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 1356
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/16 v6, 0xc

    invoke-interface {v0, v1, v4, v3, v6}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result v0

    if-eqz v0, :cond_b

    return v5

    .line 1361
    :cond_b
    sget v0, Lcom/luck/picture/lib/R$string;->ps_min_audio_num:I

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->minAudioSelectNum:I

    .line 1362
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 1361
    invoke-virtual {p0, v0, v3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v5

    :cond_c
    :goto_2
    return v2
.end method

.method private copyExternalPathToAppInDirFor29(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1782
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showLoading()V

    .line 1783
    new-instance v0, Lcom/luck/picture/lib/basic/PictureCommonFragment$15;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment$15;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    return-void
.end method

.method private copyOutputAudioToDir()V
    .locals 6

    .line 1183
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1184
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/basic/PictureContentResolver;->openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1187
    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 1190
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isOnlyCamera:Z

    if-eqz v1, :cond_2

    .line 1191
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioFileName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1193
    :goto_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    iget-object v5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v5, v5, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioDir:Ljava/lang/String;

    invoke-static {v3, v4, v1, v2, v5}, Lcom/luck/picture/lib/utils/PictureFileUtils;->createCameraFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1195
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1196
    invoke-static {v0, v2}, Lcom/luck/picture/lib/utils/PictureFileUtils;->writeFileFromIS(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1197
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/luck/picture/lib/utils/MediaUtils;->deleteUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1202
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private createCompressEngine()V
    .locals 2

    .line 2067
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isCompressEngine:Z

    if-eqz v0, :cond_1

    .line 2068
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->compressFileEngine:Lcom/luck/picture/lib/engine/CompressFileEngine;

    if-nez v0, :cond_0

    .line 2069
    invoke-static {}, Lcom/luck/picture/lib/app/PictureAppMaster;->getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/app/PictureAppMaster;->getPictureSelectorEngine()Lcom/luck/picture/lib/engine/PictureSelectorEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2071
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {v0}, Lcom/luck/picture/lib/engine/PictureSelectorEngine;->createCompressFileEngine()Lcom/luck/picture/lib/engine/CompressFileEngine;

    move-result-object v0

    iput-object v0, v1, Lcom/luck/picture/lib/config/SelectorConfig;->compressFileEngine:Lcom/luck/picture/lib/engine/CompressFileEngine;

    .line 2073
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->compressEngine:Lcom/luck/picture/lib/engine/CompressEngine;

    if-nez v0, :cond_1

    .line 2074
    invoke-static {}, Lcom/luck/picture/lib/app/PictureAppMaster;->getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/app/PictureAppMaster;->getPictureSelectorEngine()Lcom/luck/picture/lib/engine/PictureSelectorEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2076
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {v0}, Lcom/luck/picture/lib/engine/PictureSelectorEngine;->createCompressEngine()Lcom/luck/picture/lib/engine/CompressEngine;

    move-result-object v0

    iput-object v0, v1, Lcom/luck/picture/lib/config/SelectorConfig;->compressEngine:Lcom/luck/picture/lib/engine/CompressEngine;

    :cond_1
    return-void
.end method

.method private createImageLoaderEngine()V
    .locals 2

    .line 2022
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    if-nez v0, :cond_0

    .line 2023
    invoke-static {}, Lcom/luck/picture/lib/app/PictureAppMaster;->getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/app/PictureAppMaster;->getPictureSelectorEngine()Lcom/luck/picture/lib/engine/PictureSelectorEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2025
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {v0}, Lcom/luck/picture/lib/engine/PictureSelectorEngine;->createImageLoaderEngine()Lcom/luck/picture/lib/engine/ImageEngine;

    move-result-object v0

    iput-object v0, v1, Lcom/luck/picture/lib/config/SelectorConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    :cond_0
    return-void
.end method

.method private createLayoutResourceListener()V
    .locals 2

    .line 2119
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isInjectLayoutResource:Z

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onLayoutResourceListener:Lcom/luck/picture/lib/interfaces/OnInjectLayoutResourceListener;

    if-nez v0, :cond_0

    .line 2121
    invoke-static {}, Lcom/luck/picture/lib/app/PictureAppMaster;->getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/app/PictureAppMaster;->getPictureSelectorEngine()Lcom/luck/picture/lib/engine/PictureSelectorEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2123
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {v0}, Lcom/luck/picture/lib/engine/PictureSelectorEngine;->createLayoutResourceListener()Lcom/luck/picture/lib/interfaces/OnInjectLayoutResourceListener;

    move-result-object v0

    iput-object v0, v1, Lcom/luck/picture/lib/config/SelectorConfig;->onLayoutResourceListener:Lcom/luck/picture/lib/interfaces/OnInjectLayoutResourceListener;

    :cond_0
    return-void
.end method

.method private createLoaderDataEngine()V
    .locals 2

    .line 2046
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isLoaderDataEngine:Z

    if-eqz v0, :cond_0

    .line 2047
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->loaderDataEngine:Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

    if-nez v0, :cond_0

    .line 2048
    invoke-static {}, Lcom/luck/picture/lib/app/PictureAppMaster;->getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/app/PictureAppMaster;->getPictureSelectorEngine()Lcom/luck/picture/lib/engine/PictureSelectorEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2050
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {v0}, Lcom/luck/picture/lib/engine/PictureSelectorEngine;->createLoaderDataEngine()Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

    move-result-object v0

    iput-object v0, v1, Lcom/luck/picture/lib/config/SelectorConfig;->loaderDataEngine:Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

    .line 2054
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isLoaderFactoryEngine:Z

    if-eqz v0, :cond_1

    .line 2055
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->loaderFactory:Lcom/luck/picture/lib/basic/IBridgeLoaderFactory;

    if-nez v0, :cond_1

    .line 2056
    invoke-static {}, Lcom/luck/picture/lib/app/PictureAppMaster;->getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/app/PictureAppMaster;->getPictureSelectorEngine()Lcom/luck/picture/lib/engine/PictureSelectorEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2058
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {v0}, Lcom/luck/picture/lib/engine/PictureSelectorEngine;->onCreateLoader()Lcom/luck/picture/lib/basic/IBridgeLoaderFactory;

    move-result-object v0

    iput-object v0, v1, Lcom/luck/picture/lib/config/SelectorConfig;->loaderFactory:Lcom/luck/picture/lib/basic/IBridgeLoaderFactory;

    :cond_1
    return-void
.end method

.method private createResultCallbackListener()V
    .locals 2

    .line 2105
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    if-eqz v0, :cond_0

    .line 2106
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    if-nez v0, :cond_0

    .line 2107
    invoke-static {}, Lcom/luck/picture/lib/app/PictureAppMaster;->getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/app/PictureAppMaster;->getPictureSelectorEngine()Lcom/luck/picture/lib/engine/PictureSelectorEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2109
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {v0}, Lcom/luck/picture/lib/engine/PictureSelectorEngine;->getResultCallbackListener()Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    move-result-object v0

    iput-object v0, v1, Lcom/luck/picture/lib/config/SelectorConfig;->onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    :cond_0
    return-void
.end method

.method private createSandboxFileEngine()V
    .locals 2

    .line 2086
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isSandboxFileEngine:Z

    if-eqz v0, :cond_1

    .line 2087
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->uriToFileTransformEngine:Lcom/luck/picture/lib/engine/UriToFileTransformEngine;

    if-nez v0, :cond_0

    .line 2088
    invoke-static {}, Lcom/luck/picture/lib/app/PictureAppMaster;->getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/app/PictureAppMaster;->getPictureSelectorEngine()Lcom/luck/picture/lib/engine/PictureSelectorEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2090
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {v0}, Lcom/luck/picture/lib/engine/PictureSelectorEngine;->createUriToFileTransformEngine()Lcom/luck/picture/lib/engine/UriToFileTransformEngine;

    move-result-object v0

    iput-object v0, v1, Lcom/luck/picture/lib/config/SelectorConfig;->uriToFileTransformEngine:Lcom/luck/picture/lib/engine/UriToFileTransformEngine;

    .line 2092
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->sandboxFileEngine:Lcom/luck/picture/lib/engine/SandboxFileEngine;

    if-nez v0, :cond_1

    .line 2093
    invoke-static {}, Lcom/luck/picture/lib/app/PictureAppMaster;->getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/app/PictureAppMaster;->getPictureSelectorEngine()Lcom/luck/picture/lib/engine/PictureSelectorEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2095
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {v0}, Lcom/luck/picture/lib/engine/PictureSelectorEngine;->createSandboxFileEngine()Lcom/luck/picture/lib/engine/SandboxFileEngine;

    move-result-object v0

    iput-object v0, v1, Lcom/luck/picture/lib/config/SelectorConfig;->sandboxFileEngine:Lcom/luck/picture/lib/engine/SandboxFileEngine;

    :cond_1
    return-void
.end method

.method private createVideoPlayerEngine()V
    .locals 2

    .line 2034
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/VideoPlayerEngine;

    if-nez v0, :cond_0

    .line 2035
    invoke-static {}, Lcom/luck/picture/lib/app/PictureAppMaster;->getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/app/PictureAppMaster;->getPictureSelectorEngine()Lcom/luck/picture/lib/engine/PictureSelectorEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2037
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {v0}, Lcom/luck/picture/lib/engine/PictureSelectorEngine;->createVideoPlayerEngine()Lcom/luck/picture/lib/engine/VideoPlayerEngine;

    move-result-object v0

    iput-object v0, v1, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/VideoPlayerEngine;

    :cond_0
    return-void
.end method

.method private dispatchHandleCamera(Landroid/content/Intent;)V
    .locals 1

    .line 1147
    new-instance v0, Lcom/luck/picture/lib/basic/PictureCommonFragment$9;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment$9;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    return-void
.end method

.method private dispatchUriToFileTransformResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1696
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showLoading()V

    .line 1697
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->checkAddBitmapWatermark()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->addBitmapWatermark(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1699
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->checkVideoThumbnail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1700
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->videoThumbnail(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1702
    :cond_1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onCallBackResult(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method private dispatchWatermarkResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1713
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->checkVideoThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->videoThumbnail(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1716
    :cond_0
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onCallBackResult(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method private static getTipsMsg(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 766
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 767
    sget p1, Lcom/luck/picture/lib/R$string;->ps_message_video_max_num:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 768
    :cond_0
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 769
    sget p1, Lcom/luck/picture/lib/R$string;->ps_message_audio_max_num:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 771
    :cond_1
    sget p1, Lcom/luck/picture/lib/R$string;->ps_message_max_num:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private mergeOriginalImage(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1819
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isCheckOriginalImage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1820
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1821
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    const/4 v2, 0x1

    .line 1822
    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setOriginal(Z)V

    .line 1823
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setOriginalPath(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onCallBackResult(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1848
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1849
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->dismissLoading()V

    .line 1850
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    if-eqz v0, :cond_0

    .line 1851
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1}, Lcom/luck/picture/lib/basic/PictureSelector;->putIntentResult(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 1852
    invoke-virtual {p0, v2, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onSelectFinish(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 1854
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    if-eqz v0, :cond_1

    .line 1855
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    invoke-interface {v0, p1}, Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;->onResult(Ljava/util/ArrayList;)V

    .line 1858
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onExitPictureSelector()V

    :cond_2
    return-void
.end method

.method private onScannerScanFile(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 3

    .line 1234
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1237
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1238
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1239
    new-instance v0, Lcom/luck/picture/lib/basic/PictureMediaScannerConnection;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/luck/picture/lib/basic/PictureMediaScannerConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1242
    :cond_1
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1243
    :goto_0
    new-instance v1, Lcom/luck/picture/lib/basic/PictureMediaScannerConnection;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/luck/picture/lib/basic/PictureMediaScannerConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1244
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1245
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/luck/picture/lib/utils/MediaUtils;->getDCIMLastImageId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 1248
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/luck/picture/lib/utils/MediaUtils;->removeMedia(Landroid/content/Context;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private playClickEffect()V
    .locals 8

    .line 1046
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isOpenClickSound:Z

    if-eqz v0, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->soundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->soundID:I

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method private releaseSoundPool()V
    .locals 1

    .line 1056
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 1058
    iput-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->soundPool:Landroid/media/SoundPool;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1061
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private setTranslucentStatusBar()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getSelectMainStyle()Lcom/luck/picture/lib/style/SelectMainStyle;

    move-result-object v0

    .line 322
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;->isDarkStatusBarBlack()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/luck/picture/lib/immersive/ImmersiveManager;->translucentStatusBar(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method private showTipsDialog(Ljava/lang/String;)V
    .locals 1

    .line 742
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 746
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->tipsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 749
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/luck/picture/lib/dialog/RemindDialog;->buildDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/dialog/RemindDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->tipsDialog:Landroid/app/Dialog;

    .line 750
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 752
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private uriToFileTransform29(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1726
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showLoading()V

    .line 1727
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    .line 1728
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1729
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1730
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1732
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1733
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->dispatchUriToFileTransformResult(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1735
    :cond_1
    new-instance v1, Lcom/luck/picture/lib/basic/PictureCommonFragment$14;

    invoke-direct {v1, p0, v0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment$14;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    :goto_1
    return-void
.end method

.method private videoThumbnail(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1620
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    .line 1621
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1622
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1623
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object v3

    .line 1624
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isUrlHasVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1625
    :cond_0
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1628
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1629
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onCallBackResult(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 1631
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1632
    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->onVideoThumbnailEventListener:Lcom/luck/picture/lib/interfaces/OnVideoThumbnailEventListener;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Lcom/luck/picture/lib/basic/PictureCommonFragment$12;

    invoke-direct {v5, p0, v0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment$12;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;)V

    invoke-interface {v3, v4, v2, v5}, Lcom/luck/picture/lib/interfaces/OnVideoThumbnailEventListener;->onVideoThumbnail(Landroid/content/Context;Ljava/lang/String;Lcom/luck/picture/lib/interfaces/OnKeyValueResultCallbackListener;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected buildLocalMedia(Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;
    .locals 2

    .line 1260
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->generateLocalMedia(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v0

    .line 1261
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setChooseModel(I)V

    .line 1262
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1263
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setSandboxPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1265
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setSandboxPath(Ljava/lang/String;)V

    .line 1267
    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isCameraRotateImage:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1268
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/luck/picture/lib/utils/BitmapUtils;->rotateImage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public checkAddBitmapWatermark()Z
    .locals 1

    .line 1606
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onBitmapWatermarkListener:Lcom/luck/picture/lib/interfaces/OnBitmapWatermarkEventListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkCompressValidity()Z
    .locals 3

    .line 1570
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->compressFileEngine:Lcom/luck/picture/lib/engine/CompressFileEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1571
    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1572
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1573
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public checkCropValidity()Z
    .locals 7

    .line 1503
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->cropFileEngine:Lcom/luck/picture/lib/engine/CropFileEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1504
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1505
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->skipCropList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1506
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1507
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1509
    :cond_0
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1510
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Lcom/luck/picture/lib/config/SelectorConfig;->getResultFirstMimeType()Ljava/lang/String;

    move-result-object v2

    .line 1511
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1513
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    move v2, v1

    move v4, v2

    .line 1520
    :goto_0
    iget-object v5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v5}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1521
    iget-object v5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v5}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1522
    invoke-virtual {v5}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1523
    invoke-virtual {v5}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1528
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v0

    if-eq v4, v0, :cond_5

    move v1, v3

    :cond_5
    return v1
.end method

.method public checkOldCompressValidity()Z
    .locals 3

    .line 1583
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->compressEngine:Lcom/luck/picture/lib/engine/CompressEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1584
    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1585
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1586
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public checkOldCropValidity()Z
    .locals 7

    .line 1536
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->cropEngine:Lcom/luck/picture/lib/engine/CropEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1537
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1538
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->skipCropList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1539
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1540
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1542
    :cond_0
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1543
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Lcom/luck/picture/lib/config/SelectorConfig;->getResultFirstMimeType()Ljava/lang/String;

    move-result-object v2

    .line 1544
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1546
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    move v2, v1

    move v4, v2

    .line 1553
    :goto_0
    iget-object v5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v5}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1554
    iget-object v5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v5}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1555
    invoke-virtual {v5}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1556
    invoke-virtual {v5}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1561
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result v0

    if-eq v4, v0, :cond_5

    move v1, v3

    :cond_5
    return v1
.end method

.method public checkOldTransformSandboxFile()Z
    .locals 1

    .line 1601
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->sandboxFileEngine:Lcom/luck/picture/lib/engine/SandboxFileEngine;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkOnlyMimeTypeValidity(Lcom/luck/picture/lib/entity/LocalMedia;ZLjava/lang/String;Ljava/lang/String;JJ)Z
    .locals 7

    .line 595
    invoke-static {p4, p3}, Lcom/luck/picture/lib/config/PictureMimeType;->isMimeTypeSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_13

    .line 608
    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-wide v1, p4, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxFileSize:J

    const-wide/16 v3, 0x0

    cmp-long p4, v1, v3

    const/4 v1, 0x0

    if-lez p4, :cond_1

    .line 609
    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-wide v5, p4, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxFileSize:J

    cmp-long p4, p5, v5

    if-lez p4, :cond_1

    .line 610
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_0

    .line 611
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 612
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {p2, p3, p1, p4, v0}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 618
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-wide p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxFileSize:J

    invoke-static {p1, p2}, Lcom/luck/picture/lib/utils/PictureFileUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    .line 619
    sget p2, Lcom/luck/picture/lib/R$string;->ps_select_max_size:I

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-virtual {p0, p2, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v0

    .line 623
    :cond_1
    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-wide v5, p4, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinFileSize:J

    cmp-long p4, v5, v3

    const/4 v2, 0x2

    if-lez p4, :cond_3

    .line 624
    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-wide v3, p4, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinFileSize:J

    cmp-long p4, p5, v3

    if-gez p4, :cond_3

    .line 625
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_2

    .line 626
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 627
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {p2, p3, p1, p4, v2}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 633
    :cond_2
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-wide p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinFileSize:J

    invoke-static {p1, p2}, Lcom/luck/picture/lib/utils/PictureFileUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    .line 634
    sget p2, Lcom/luck/picture/lib/R$string;->ps_select_min_size:I

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-virtual {p0, p2, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v0

    .line 638
    :cond_3
    invoke-static {p3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 639
    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p4, p4, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-ne p4, v2, :cond_6

    .line 640
    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p5, p4, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    if-lez p5, :cond_4

    iget-object p5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p5, p5, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    goto :goto_0

    :cond_4
    iget-object p5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p5, p5, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    :goto_0
    iput p5, p4, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    if-nez p2, :cond_6

    .line 641
    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p4}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectCount()I

    move-result p4

    iget-object p5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p5, p5, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    if-lt p4, p5, :cond_6

    .line 643
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_5

    .line 644
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 645
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p4

    iget-object p5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 p6, 0x6

    invoke-interface {p2, p4, p1, p5, p6}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    .line 650
    :cond_5
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    invoke-static {p1, p3, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getTipsMsg(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v0

    :cond_6
    if-nez p2, :cond_8

    .line 654
    iget-object p3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p3, p3, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinDurationSecond:I

    if-lez p3, :cond_8

    invoke-static {p7, p8}, Lcom/luck/picture/lib/utils/DateUtils;->millisecondToSecond(J)J

    move-result-wide p3

    iget-object p5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p5, p5, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinDurationSecond:I

    int-to-long p5, p5

    cmp-long p3, p3, p5

    if-gez p3, :cond_8

    .line 656
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_7

    .line 657
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 658
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/16 p5, 0x9

    invoke-interface {p2, p3, p1, p4, p5}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_7

    return v0

    .line 663
    :cond_7
    sget p1, Lcom/luck/picture/lib/R$string;->ps_select_video_min_second:I

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinDurationSecond:I

    div-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-virtual {p0, p1, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v0

    :cond_8
    if-nez p2, :cond_12

    .line 667
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxDurationSecond:I

    if-lez p2, :cond_12

    invoke-static {p7, p8}, Lcom/luck/picture/lib/utils/DateUtils;->millisecondToSecond(J)J

    move-result-wide p2

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p4, p4, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxDurationSecond:I

    int-to-long p4, p4

    cmp-long p2, p2, p4

    if-lez p2, :cond_12

    .line 669
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_9

    .line 670
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 671
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/16 p5, 0x8

    invoke-interface {p2, p3, p1, p4, p5}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_9

    return v0

    .line 676
    :cond_9
    sget p1, Lcom/luck/picture/lib/R$string;->ps_select_video_max_second:I

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxDurationSecond:I

    div-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-virtual {p0, p1, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v0

    .line 679
    :cond_a
    invoke-static {p3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result p4

    const/4 p5, 0x4

    if-eqz p4, :cond_10

    .line 680
    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p4, p4, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-ne p4, v2, :cond_c

    if-nez p2, :cond_c

    .line 681
    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p4}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    iget-object p6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p6, p6, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    if-lt p4, p6, :cond_c

    .line 682
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_b

    .line 683
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 684
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p4

    iget-object p6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {p2, p4, p1, p6, p5}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_b

    return v0

    .line 689
    :cond_b
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    invoke-static {p1, p3, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getTipsMsg(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v0

    :cond_c
    if-nez p2, :cond_e

    .line 694
    iget-object p3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p3, p3, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinDurationSecond:I

    if-lez p3, :cond_e

    invoke-static {p7, p8}, Lcom/luck/picture/lib/utils/DateUtils;->millisecondToSecond(J)J

    move-result-wide p3

    iget-object p5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p5, p5, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinDurationSecond:I

    int-to-long p5, p5

    cmp-long p3, p3, p5

    if-gez p3, :cond_e

    .line 696
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_d

    .line 697
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 698
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/16 p5, 0xb

    invoke-interface {p2, p3, p1, p4, p5}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_d

    return v0

    .line 703
    :cond_d
    sget p1, Lcom/luck/picture/lib/R$string;->ps_select_audio_min_second:I

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinDurationSecond:I

    div-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-virtual {p0, p1, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v0

    :cond_e
    if-nez p2, :cond_12

    .line 706
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxDurationSecond:I

    if-lez p2, :cond_12

    invoke-static {p7, p8}, Lcom/luck/picture/lib/utils/DateUtils;->millisecondToSecond(J)J

    move-result-wide p2

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p4, p4, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxDurationSecond:I

    int-to-long p4, p4

    cmp-long p2, p2, p4

    if-lez p2, :cond_12

    .line 708
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_f

    .line 709
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 710
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/16 p5, 0xa

    invoke-interface {p2, p3, p1, p4, p5}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_f

    return v0

    .line 715
    :cond_f
    sget p1, Lcom/luck/picture/lib/R$string;->ps_select_audio_max_second:I

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxDurationSecond:I

    div-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-virtual {p0, p1, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v0

    .line 719
    :cond_10
    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p4, p4, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-ne p4, v2, :cond_12

    if-nez p2, :cond_12

    .line 720
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p2}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p4, p4, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    if-lt p2, p4, :cond_12

    .line 721
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_11

    .line 722
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 723
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p4

    iget-object p6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {p2, p4, p1, p6, p5}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_11

    return v0

    .line 728
    :cond_11
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    invoke-static {p1, p3, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getTipsMsg(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v0

    :cond_12
    return v1

    .line 598
    :cond_13
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_14

    .line 599
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 600
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 p5, 0x3

    invoke-interface {p2, p3, p1, p4, p5}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_14

    return v0

    .line 605
    :cond_14
    sget p1, Lcom/luck/picture/lib/R$string;->ps_rule:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v0
.end method

.method public checkTransformSandboxFile()Z
    .locals 1

    .line 1596
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->uriToFileTransformEngine:Lcom/luck/picture/lib/engine/UriToFileTransformEngine;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkVideoThumbnail()Z
    .locals 1

    .line 1611
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onVideoThumbnailEventListener:Lcom/luck/picture/lib/interfaces/OnVideoThumbnailEventListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkWithMimeTypeValidity(Lcom/luck/picture/lib/entity/LocalMedia;ZLjava/lang/String;IJJ)Z
    .locals 7

    .line 474
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-wide v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxFileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-wide v5, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxFileSize:J

    cmp-long v0, p5, v5

    if-lez v0, :cond_1

    .line 476
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_0

    .line 477
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 478
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {p2, p3, p1, p4, v4}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v4

    .line 484
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-wide p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxFileSize:J

    invoke-static {p1, p2}, Lcom/luck/picture/lib/utils/PictureFileUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    .line 485
    sget p2, Lcom/luck/picture/lib/R$string;->ps_select_max_size:I

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-virtual {p0, p2, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v4

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-wide v5, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinFileSize:J

    cmp-long v0, v5, v2

    const/4 v2, 0x2

    if-lez v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-wide v5, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinFileSize:J

    cmp-long p5, p5, v5

    if-gez p5, :cond_3

    .line 491
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_2

    .line 492
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 493
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {p2, p3, p1, p4, v2}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v4

    .line 499
    :cond_2
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-wide p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinFileSize:J

    invoke-static {p1, p2}, Lcom/luck/picture/lib/utils/PictureFileUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    .line 500
    sget p2, Lcom/luck/picture/lib/R$string;->ps_select_min_size:I

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-virtual {p0, p2, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v4

    .line 505
    :cond_3
    invoke-static {p3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result p5

    const/4 p6, 0x4

    if-eqz p5, :cond_d

    .line 506
    iget-object p5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p5, p5, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-ne p5, v2, :cond_9

    .line 507
    iget-object p5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p5, p5, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    if-gtz p5, :cond_5

    .line 508
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_4

    .line 509
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 510
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 p5, 0x3

    invoke-interface {p2, p3, p1, p4, p5}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_4

    return v4

    .line 516
    :cond_4
    sget p1, Lcom/luck/picture/lib/R$string;->ps_rule:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v4

    :cond_5
    if-nez p2, :cond_7

    .line 520
    iget-object p5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p5}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    if-lt p5, v0, :cond_7

    .line 521
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_6

    .line 522
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 523
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {p2, p3, p1, p4, p6}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_6

    return v4

    .line 528
    :cond_6
    sget p1, Lcom/luck/picture/lib/R$string;->ps_message_max_num:I

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-virtual {p0, p1, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v4

    :cond_7
    if-nez p2, :cond_9

    .line 532
    iget-object p5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p5, p5, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    if-lt p4, p5, :cond_9

    .line 534
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_8

    .line 535
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 536
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p4

    iget-object p5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 p6, 0x6

    invoke-interface {p2, p4, p1, p5, p6}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_8

    return v4

    .line 541
    :cond_8
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    invoke-static {p1, p3, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getTipsMsg(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v4

    :cond_9
    if-nez p2, :cond_b

    .line 546
    iget-object p3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p3, p3, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinDurationSecond:I

    if-lez p3, :cond_b

    invoke-static {p7, p8}, Lcom/luck/picture/lib/utils/DateUtils;->millisecondToSecond(J)J

    move-result-wide p3

    iget-object p5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p5, p5, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinDurationSecond:I

    int-to-long p5, p5

    cmp-long p3, p3, p5

    if-gez p3, :cond_b

    .line 548
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_a

    .line 549
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 550
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/16 p5, 0x9

    invoke-interface {p2, p3, p1, p4, p5}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_a

    return v4

    .line 556
    :cond_a
    sget p1, Lcom/luck/picture/lib/R$string;->ps_select_video_min_second:I

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinDurationSecond:I

    div-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-virtual {p0, p1, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v4

    :cond_b
    if-nez p2, :cond_f

    .line 560
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxDurationSecond:I

    if-lez p2, :cond_f

    invoke-static {p7, p8}, Lcom/luck/picture/lib/utils/DateUtils;->millisecondToSecond(J)J

    move-result-wide p2

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p4, p4, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxDurationSecond:I

    int-to-long p4, p4

    cmp-long p2, p2, p4

    if-lez p2, :cond_f

    .line 562
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_c

    .line 563
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 564
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/16 p5, 0x8

    invoke-interface {p2, p3, p1, p4, p5}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_c

    return v4

    .line 570
    :cond_c
    sget p1, Lcom/luck/picture/lib/R$string;->ps_select_video_max_second:I

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxDurationSecond:I

    div-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-virtual {p0, p1, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v4

    .line 574
    :cond_d
    iget-object p3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p3, p3, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-ne p3, v2, :cond_f

    if-nez p2, :cond_f

    .line 575
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p2}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p3, p3, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    if-lt p2, p3, :cond_f

    .line 576
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_e

    .line 577
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 578
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-interface {p2, p3, p1, p4, p6}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result p1

    if-eqz p1, :cond_e

    return v4

    .line 584
    :cond_e
    sget p1, Lcom/luck/picture/lib/R$string;->ps_message_max_num:I

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-virtual {p0, p1, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showTipsDialog(Ljava/lang/String;)V

    return v4

    :cond_f
    return v1
.end method

.method public confirmSelect(Lcom/luck/picture/lib/entity/LocalMedia;Z)I
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectFilterListener:Lcom/luck/picture/lib/interfaces/OnSelectFilterListener;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectFilterListener:Lcom/luck/picture/lib/interfaces/OnSelectFilterListener;

    invoke-interface {v0, p1}, Lcom/luck/picture/lib/interfaces/OnSelectFilterListener;->onSelectFilter(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    if-eqz p2, :cond_0

    .line 403
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 404
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/16 v3, 0xd

    invoke-interface {p2, v0, p1, v2, v3}, Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;->onSelectLimitTips(Landroid/content/Context;Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/config/SelectorConfig;I)Z

    move-result v2

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$string;->ps_select_no_support:I

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/luck/picture/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return v1

    .line 413
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->isCheckSelectValidity(Lcom/luck/picture/lib/entity/LocalMedia;Z)I

    move-result v0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_3

    return v1

    .line 417
    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 420
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v2, v1

    goto :goto_1

    .line 423
    :cond_4
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    if-ne p2, v1, :cond_5

    .line 424
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 425
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->sendFixedSelectedChangeEvent(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 426
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 429
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/entity/LocalMedia;->setNum(I)V

    .line 432
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->playClickEffect()V

    :goto_1
    xor-int/lit8 p2, v2, 0x1

    .line 434
    invoke-virtual {p0, p2, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->sendSelectedChangeEvent(ZLcom/luck/picture/lib/entity/LocalMedia;)V

    return v2
.end method

.method public dismissLoading()V
    .locals 1

    .line 1925
    :try_start_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1929
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1932
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchCameraMediaResult(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 0

    return-void
.end method

.method protected dispatchTransformResult()V
    .locals 2

    .line 1373
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->checkCompleteSelectLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1376
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1379
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 1380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1381
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->checkCropValidity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1382
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onCrop(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1383
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->checkOldCropValidity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1384
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onOldCrop(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1385
    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->checkCompressValidity()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1386
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onCompress(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1387
    :cond_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->checkOldCompressValidity()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1388
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onOldCompress(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1390
    :cond_5
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onResultEvent(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method protected getAppContext()Landroid/content/Context;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 229
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/app/PictureAppMaster;->getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/app/PictureAppMaster;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getEnterAnimationDuration()J
    .locals 5

    .line 392
    iget-wide v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->enterAnimDuration:J

    const-wide/16 v2, 0x32

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long/2addr v0, v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    return-wide v0
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .line 155
    sget-object v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected getOutputPath(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1216
    :cond_0
    const-string v1, "output"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1217
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    .line 1218
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 1219
    :goto_1
    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v4

    if-eq v3, v4, :cond_3

    if-nez v2, :cond_4

    :cond_3
    if-nez v1, :cond_4

    .line 1220
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    return-object v0

    .line 1225
    :cond_5
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public getResourceId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getResult(ILjava/util/ArrayList;)Lcom/luck/picture/lib/basic/PictureCommonFragment$SelectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)",
            "Lcom/luck/picture/lib/basic/PictureCommonFragment$SelectorResult;"
        }
    .end annotation

    .line 2137
    new-instance v0, Lcom/luck/picture/lib/basic/PictureCommonFragment$SelectorResult;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/luck/picture/lib/basic/PictureSelector;->putIntentResult(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {v0, p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment$SelectorResult;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method

.method public handlePermissionDenied([Ljava/lang/String;)V
    .locals 3

    .line 257
    sput-object p1, Lcom/luck/picture/lib/permissions/PermissionConfig;->CURRENT_REQUEST_PERMISSION:[Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionDeniedListener:Lcom/luck/picture/lib/interfaces/OnPermissionDeniedListener;

    const/16 v1, 0x44e

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onPermissionExplainEvent(Z[Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionDeniedListener:Lcom/luck/picture/lib/interfaces/OnPermissionDeniedListener;

    new-instance v2, Lcom/luck/picture/lib/basic/PictureCommonFragment$1;

    invoke-direct {v2, p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment$1;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;)V

    .line 261
    invoke-interface {v0, p0, p1, v1, v2}, Lcom/luck/picture/lib/interfaces/OnPermissionDeniedListener;->onDenied(Landroidx/fragment/app/Fragment;[Ljava/lang/String;ILcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {p0, v1}, Lcom/luck/picture/lib/permissions/PermissionUtil;->goIntentSetting(Landroidx/fragment/app/Fragment;I)V

    :goto_0
    return-void
.end method

.method public handlePermissionSettingResult([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public initAppLanguage()V
    .locals 3

    .line 1867
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    if-nez v0, :cond_0

    .line 1868
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 1870
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->language:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 1871
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->language:I

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->defaultLanguage:I

    invoke-static {v0, v1, v2}, Lcom/luck/picture/lib/language/PictureLanguageUtils;->setAppLanguage(Landroid/content/Context;II)V

    :cond_1
    return-void
.end method

.method protected isCheckSelectValidity(Lcom/luck/picture/lib/entity/LocalMedia;Z)I
    .locals 10

    .line 446
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 447
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getDuration()J

    move-result-wide v7

    .line 448
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getSize()J

    move-result-wide v5

    .line 449
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isWithVideoImage:Z

    const/4 v9, -0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v4, v1

    .line 453
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 454
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 455
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 459
    invoke-virtual/range {v0 .. v8}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->checkWithMimeTypeValidity(Lcom/luck/picture/lib/entity/LocalMedia;ZLjava/lang/String;IJJ)Z

    move-result p1

    if-eqz p1, :cond_3

    return v9

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getResultFirstMimeType()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->checkOnlyMimeTypeValidity(Lcom/luck/picture/lib/entity/LocalMedia;ZLjava/lang/String;Ljava/lang/String;JJ)Z

    move-result p1

    if-eqz p1, :cond_3

    return v9

    :cond_3
    const/16 p1, 0xc8

    return p1
.end method

.method protected isNormalDefaultEnter()Z
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/luck/picture/lib/basic/PictureSelectorSupporterActivity;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/luck/picture/lib/basic/PictureSelectorTransparentActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1067
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    .line 1068
    const-string v1, ""

    const/16 v2, 0x38d

    if-ne p2, v0, :cond_8

    if-ne p1, v2, :cond_0

    .line 1070
    invoke-direct {p0, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->dispatchHandleCamera(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_0
    const/16 p2, 0x2b8

    if-ne p1, p2, :cond_1

    .line 1072
    invoke-virtual {p0, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onEditMedia(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_1
    const/16 p2, 0x45

    if-ne p1, p2, :cond_c

    .line 1074
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p1}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object p1

    .line 1076
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 1077
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1078
    invoke-static {p3}, Lcom/luck/picture/lib/config/Crop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1079
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {p2, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCutPath(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 1081
    invoke-static {p3}, Lcom/luck/picture/lib/config/Crop;->getOutputImageWidth(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageWidth(I)V

    .line 1082
    invoke-static {p3}, Lcom/luck/picture/lib/config/Crop;->getOutputImageHeight(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageHeight(I)V

    .line 1083
    invoke-static {p3}, Lcom/luck/picture/lib/config/Crop;->getOutputImageOffsetX(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetX(I)V

    .line 1084
    invoke-static {p3}, Lcom/luck/picture/lib/config/Crop;->getOutputImageOffsetY(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetY(I)V

    .line 1085
    invoke-static {p3}, Lcom/luck/picture/lib/config/Crop;->getOutputCropAspectRatio(Landroid/content/Intent;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropResultAspectRatio(F)V

    .line 1086
    invoke-static {p3}, Lcom/luck/picture/lib/config/Crop;->getOutputCustomExtraData(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/luck/picture/lib/entity/LocalMedia;->setCustomData(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/luck/picture/lib/entity/LocalMedia;->setSandboxPath(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1089
    :cond_3
    const-string p2, "output"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1090
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1091
    const-string p2, "com.yalantis.ucrop.OutputUri"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1093
    :cond_4
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 1095
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_5

    .line 1096
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1097
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1098
    const-string v3, "outPutPath"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setCutPath(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {p2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 1100
    const-string v3, "imageWidth"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageWidth(I)V

    .line 1101
    const-string v3, "imageHeight"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageHeight(I)V

    .line 1102
    const-string v3, "offsetX"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetX(I)V

    .line 1103
    const-string v3, "offsetY"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetY(I)V

    .line 1104
    const-string v3, "aspectRatio"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropResultAspectRatio(F)V

    .line 1105
    const-string v3, "customExtraData"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCustomData(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setSandboxPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1112
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1113
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/luck/picture/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1116
    :cond_5
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1117
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->checkCompressValidity()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1118
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onCompress(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1119
    :cond_6
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->checkOldCompressValidity()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1120
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onOldCompress(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1122
    :cond_7
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onResultEvent(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_8
    const/16 v0, 0x60

    if-ne p2, v0, :cond_a

    if-eqz p3, :cond_9

    .line 1126
    invoke-static {p3}, Lcom/luck/picture/lib/config/Crop;->getError(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "image crop error"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    :goto_2
    if-eqz p1, :cond_c

    .line 1128
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/luck/picture/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    if-nez p2, :cond_c

    if-ne p1, v2, :cond_b

    .line 1132
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 1133
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/luck/picture/lib/utils/MediaUtils;->deleteUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 1134
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object v1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    goto :goto_3

    :cond_b
    const/16 p2, 0x44e

    if-ne p1, p2, :cond_c

    .line 1137
    sget-object p1, Lcom/luck/picture/lib/permissions/PermissionConfig;->CURRENT_REQUEST_PERMISSION:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->handlePermissionSettingResult([Ljava/lang/String;)V

    .line 1140
    :cond_c
    :goto_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/service/ForegroundService;->stopService(Landroid/content/Context;)V

    return-void
.end method

.method public onApplyPermissionsEvent(I[Ljava/lang/String;)V
    .locals 2

    .line 1002
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    new-instance v1, Lcom/luck/picture/lib/basic/PictureCommonFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment$8;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;I)V

    invoke-interface {v0, p0, p2, v1}, Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;->requestPermission(Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/luck/picture/lib/interfaces/OnRequestPermissionListener;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1939
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->initAppLanguage()V

    .line 1940
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onRecreateEngine()V

    .line 1941
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1942
    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->context:Landroid/content/Context;

    .line 1943
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

    if-eqz v0, :cond_0

    .line 1944
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->iBridgePictureBehavior:Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

    goto :goto_0

    .line 1945
    :cond_0
    instance-of v0, p1, Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

    if-eqz v0, :cond_1

    .line 1946
    check-cast p1, Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->iBridgePictureBehavior:Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onBackCurrentFragment()V
    .locals 4

    .line 1964
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1965
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1966
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->viewLifecycle:Lcom/luck/picture/lib/basic/IBridgeViewLifecycle;

    if-eqz v0, :cond_0

    .line 1967
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->viewLifecycle:Lcom/luck/picture/lib/basic/IBridgeViewLifecycle;

    invoke-interface {v0, p0}, Lcom/luck/picture/lib/basic/IBridgeViewLifecycle;->onDestroy(Landroidx/fragment/app/Fragment;)V

    .line 1969
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 1972
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1973
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1974
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 1975
    instance-of v3, v2, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    if-eqz v3, :cond_2

    .line 1976
    check-cast v2, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    invoke-virtual {v2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onFragmentResume()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onCheckOriginalChange()V
    .locals 0

    return-void
.end method

.method public onCompress(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1434
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showLoading()V

    .line 1435
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1437
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1438
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1439
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object v4

    .line 1440
    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHttp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 1443
    :cond_0
    iget-object v5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v5, v5, Lcom/luck/picture/lib/config/SelectorConfig;->isCheckOriginalImage:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v5, v5, Lcom/luck/picture/lib/config/SelectorConfig;->isOriginalSkipCompress:Z

    if-eqz v5, :cond_1

    goto :goto_2

    .line 1446
    :cond_1
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1447
    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 1448
    :goto_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1452
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 1453
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onResultEvent(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1455
    :cond_5
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->compressFileEngine:Lcom/luck/picture/lib/engine/CompressFileEngine;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/luck/picture/lib/basic/PictureCommonFragment$10;

    invoke-direct {v4, p0, p1, v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment$10;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {v2, v3, v1, v4}, Lcom/luck/picture/lib/engine/CompressFileEngine;->onStartCompress(Landroid/content/Context;Ljava/util/ArrayList;Lcom/luck/picture/lib/interfaces/OnKeyValueResultCallbackListener;)V

    :goto_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 357
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 358
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->initAppLanguage()V

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    .line 365
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p1}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getWindowAnimationStyle()Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 368
    iget p2, p1, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityEnterAnimation:I

    if-eqz p2, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p2

    iget p1, p1, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityEnterAnimation:I

    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$anim;->ps_anim_alpha_enter:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 373
    :goto_0
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->setEnterAnimationDuration(J)V

    .line 374
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onEnterFragment()V

    goto :goto_2

    .line 376
    :cond_1
    iget p2, p1, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityExitAnimation:I

    if-eqz p2, :cond_2

    .line 377
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p2

    iget p1, p1, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityExitAnimation:I

    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_1

    .line 379
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$anim;->ps_anim_alpha_exit:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 381
    :goto_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onExitFragment()V

    :goto_2
    return-object p1
.end method

.method public onCreateLoader()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getResourceId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getResourceId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 290
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCrop(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1398
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    .line 1399
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1400
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1401
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_2

    .line 1402
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1403
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object v0

    .line 1404
    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHttp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1407
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 1405
    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    move-object v2, v0

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CROP_"

    invoke-static {v3}, Lcom/luck/picture/lib/utils/DateUtils;->getCreateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1410
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 1411
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/luck/picture/lib/utils/FileDirMap;->getFileDirPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1412
    new-instance v3, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1416
    :cond_3
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, p1, Lcom/luck/picture/lib/config/SelectorConfig;->cropFileEngine:Lcom/luck/picture/lib/engine/CropFileEngine;

    const/16 v5, 0x45

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/luck/picture/lib/engine/CropFileEngine;->onStartCrop(Landroidx/fragment/app/Fragment;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1903
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->releaseSoundPool()V

    .line 1904
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onEditMedia(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onEnterFragment()V
    .locals 0

    return-void
.end method

.method public onExitFragment()V
    .locals 0

    return-void
.end method

.method protected onExitPictureSelector()V
    .locals 3

    .line 1999
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2000
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->isNormalDefaultEnter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2001
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->viewLifecycle:Lcom/luck/picture/lib/basic/IBridgeViewLifecycle;

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->viewLifecycle:Lcom/luck/picture/lib/basic/IBridgeViewLifecycle;

    invoke-interface {v0, p0}, Lcom/luck/picture/lib/basic/IBridgeViewLifecycle;->onDestroy(Landroidx/fragment/app/Fragment;)V

    .line 2004
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_1

    .line 2006
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2007
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2008
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2009
    instance-of v2, v2, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    if-eqz v2, :cond_2

    .line 2010
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onBackCurrentFragment()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2015
    :cond_3
    :goto_1
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->destroy()V

    return-void
.end method

.method public onFixedSelectedChange(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 0

    return-void
.end method

.method public onFragmentResume()V
    .locals 0

    return-void
.end method

.method public onInterceptCameraEvent(I)V
    .locals 2

    .line 991
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isCameraForegroundService:Z

    invoke-static {v0, v1}, Lcom/luck/picture/lib/service/ForegroundService;->startForegroundService(Landroid/content/Context;Z)V

    .line 992
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onCameraInterceptListener:Lcom/luck/picture/lib/interfaces/OnCameraInterceptListener;

    const/16 v1, 0x38d

    invoke-interface {v0, p0, p1, v1}, Lcom/luck/picture/lib/interfaces/OnCameraInterceptListener;->openCamera(Landroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method public onKeyBackFragmentFinish()V
    .locals 2

    .line 1888
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1889
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    if-eqz v0, :cond_0

    .line 1890
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    const/4 v0, 0x0

    .line 1891
    invoke-virtual {p0, v1, v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onSelectFinish(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 1893
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    if-eqz v0, :cond_1

    .line 1894
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    invoke-interface {v0}, Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;->onCancel()V

    .line 1897
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onExitPictureSelector()V

    :cond_2
    return-void
.end method

.method public onOldCompress(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1487
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->showLoading()V

    .line 1488
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isCheckOriginalImage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isOriginalSkipCompress:Z

    if-eqz v0, :cond_0

    .line 1489
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onResultEvent(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->compressEngine:Lcom/luck/picture/lib/engine/CompressEngine;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/luck/picture/lib/basic/PictureCommonFragment$11;

    invoke-direct {v2, p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment$11;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/luck/picture/lib/engine/CompressEngine;->onStartCompress(Landroid/content/Context;Ljava/util/ArrayList;Lcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    :goto_0
    return-void
.end method

.method public onOldCrop(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1422
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1423
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1424
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1429
    :goto_1
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->cropEngine:Lcom/luck/picture/lib/engine/CropEngine;

    const/16 v2, 0x45

    invoke-interface {v0, p0, v1, p1, v2}, Lcom/luck/picture/lib/engine/CropEngine;->onStartCrop(Landroidx/fragment/app/Fragment;Lcom/luck/picture/lib/entity/LocalMedia;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public onPermissionExplainEvent(Z[Ljava/lang/String;)V
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionDescriptionListener:Lcom/luck/picture/lib/interfaces/OnPermissionDescriptionListener;

    if-eqz v0, :cond_2

    .line 1027
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/luck/picture/lib/permissions/PermissionChecker;->isCheckSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionDescriptionListener:Lcom/luck/picture/lib/interfaces/OnPermissionDescriptionListener;

    invoke-interface {p1, p0}, Lcom/luck/picture/lib/interfaces/OnPermissionDescriptionListener;->onDismiss(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1031
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/permissions/PermissionUtil;->getPermissionStatus(Landroid/app/Activity;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    .line 1033
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionDescriptionListener:Lcom/luck/picture/lib/interfaces/OnPermissionDescriptionListener;

    invoke-interface {p1, p0, p2}, Lcom/luck/picture/lib/interfaces/OnPermissionDescriptionListener;->onPermissionDescription(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)V

    goto :goto_0

    .line 1036
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionDescriptionListener:Lcom/luck/picture/lib/interfaces/OnPermissionDescriptionListener;

    invoke-interface {p1, p0}, Lcom/luck/picture/lib/interfaces/OnPermissionDescriptionListener;->onDismiss(Landroidx/fragment/app/Fragment;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRecreateEngine()V
    .locals 0

    .line 1877
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->createImageLoaderEngine()V

    .line 1878
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->createVideoPlayerEngine()V

    .line 1879
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->createCompressEngine()V

    .line 1880
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->createSandboxFileEngine()V

    .line 1881
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->createLoaderDataEngine()V

    .line 1882
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->createResultCallbackListener()V

    .line 1883
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->createLayoutResourceListener()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 239
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 240
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPermissionResultCallback:Lcom/luck/picture/lib/permissions/PermissionResultCallback;

    if-eqz p1, :cond_0

    .line 241
    invoke-static {}, Lcom/luck/picture/lib/permissions/PermissionChecker;->getInstance()Lcom/luck/picture/lib/permissions/PermissionChecker;

    move-result-object p1

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPermissionResultCallback:Lcom/luck/picture/lib/permissions/PermissionResultCallback;

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->onRequestPermissionsResult(Landroid/content/Context;[Ljava/lang/String;[ILcom/luck/picture/lib/permissions/PermissionResultCallback;)V

    const/4 p1, 0x0

    .line 242
    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPermissionResultCallback:Lcom/luck/picture/lib/permissions/PermissionResultCallback;

    :cond_0
    return-void
.end method

.method public onResultEvent(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1833
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->checkTransformSandboxFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1834
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->uriToFileTransform29(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1835
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->checkOldTransformSandboxFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1836
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->copyExternalPathToAppInDirFor29(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1838
    :cond_1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mergeOriginalImage(Ljava/util/ArrayList;)V

    .line 1839
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->dispatchUriToFileTransformResult(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method protected onSelectFinish(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1989
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->iBridgePictureBehavior:Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

    if-eqz v0, :cond_0

    .line 1990
    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getResult(ILjava/util/ArrayList;)Lcom/luck/picture/lib/basic/PictureCommonFragment$SelectorResult;

    move-result-object p1

    .line 1991
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->iBridgePictureBehavior:Lcom/luck/picture/lib/basic/IBridgePictureBehavior;

    invoke-interface {p2, p1}, Lcom/luck/picture/lib/basic/IBridgePictureBehavior;->onSelectFinish(Lcom/luck/picture/lib/basic/PictureCommonFragment$SelectorResult;)V

    :cond_0
    return-void
.end method

.method public onSelectedChange(ZLcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 0

    return-void
.end method

.method public onSelectedOnlyCamera()V
    .locals 3

    .line 843
    invoke-static {}, Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog;->newInstance()Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog;

    move-result-object v0

    .line 844
    new-instance v1, Lcom/luck/picture/lib/basic/PictureCommonFragment$4;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment$4;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog;->setOnItemClickListener(Lcom/luck/picture/lib/interfaces/OnItemClickListener;)V

    .line 867
    new-instance v1, Lcom/luck/picture/lib/basic/PictureCommonFragment$5;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment$5;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog;->setOnDismissListener(Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog$OnDismissListener;)V

    .line 875
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "PhotoItemSelectedDialog"

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 295
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 296
    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/FileDirMap;->init(Landroid/content/Context;)V

    .line 298
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->viewLifecycle:Lcom/luck/picture/lib/basic/IBridgeViewLifecycle;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->viewLifecycle:Lcom/luck/picture/lib/basic/IBridgeViewLifecycle;

    invoke-interface {v0, p0, p1, p2}, Lcom/luck/picture/lib/basic/IBridgeViewLifecycle;->onViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->onCustomLoadingListener:Lcom/luck/picture/lib/interfaces/OnCustomLoadingListener;

    if-eqz p1, :cond_1

    .line 302
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->onCustomLoadingListener:Lcom/luck/picture/lib/interfaces/OnCustomLoadingListener;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/luck/picture/lib/interfaces/OnCustomLoadingListener;->create(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mLoadingDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 304
    :cond_1
    new-instance p1, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mLoadingDialog:Landroid/app/Dialog;

    .line 306
    :goto_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->setRequestedOrientation()V

    .line 307
    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->setTranslucentStatusBar()V

    .line 308
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->requireView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->setRootViewKeyListener(Landroid/view/View;)V

    .line 309
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isOpenClickSound:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isOnlyCamera:Z

    if-nez p1, :cond_2

    .line 310
    new-instance p1, Landroid/media/SoundPool;

    const/4 p2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v1, p2, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->soundPool:Landroid/media/SoundPool;

    .line 311
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/luck/picture/lib/R$raw;->ps_click_music:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->soundID:I

    :cond_2
    return-void
.end method

.method public openImageCamera()V
    .locals 3

    const/4 v0, 0x1

    .line 880
    sget-object v1, Lcom/luck/picture/lib/permissions/PermissionConfig;->CAMERA:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onPermissionExplainEvent(Z[Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    if-eqz v0, :cond_0

    .line 882
    sget v0, Lcom/luck/picture/lib/config/PermissionEvent;->EVENT_IMAGE_CAMERA:I

    sget-object v1, Lcom/luck/picture/lib/permissions/PermissionConfig;->CAMERA:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onApplyPermissionsEvent(I[Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/permissions/PermissionChecker;->getInstance()Lcom/luck/picture/lib/permissions/PermissionChecker;

    move-result-object v0

    sget-object v1, Lcom/luck/picture/lib/permissions/PermissionConfig;->CAMERA:[Ljava/lang/String;

    new-instance v2, Lcom/luck/picture/lib/basic/PictureCommonFragment$6;

    invoke-direct {v2, p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment$6;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/luck/picture/lib/permissions/PermissionResultCallback;)V

    :goto_0
    return-void
.end method

.method public openSelectedCamera()V
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->openSoundRecording()V

    goto :goto_0

    .line 830
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->openVideoCamera()V

    goto :goto_0

    .line 827
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->openImageCamera()V

    goto :goto_0

    .line 818
    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->ofAllCameraType:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofImage()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 819
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->openImageCamera()V

    goto :goto_0

    .line 820
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->ofAllCameraType:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofVideo()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 821
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->openVideoCamera()V

    goto :goto_0

    .line 823
    :cond_5
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onSelectedOnlyCamera()V

    :goto_0
    return-void
.end method

.method public openSoundRecording()V
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onRecordAudioListener:Lcom/luck/picture/lib/interfaces/OnRecordAudioInterceptListener;

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isCameraForegroundService:Z

    invoke-static {v0, v1}, Lcom/luck/picture/lib/service/ForegroundService;->startForegroundService(Landroid/content/Context;Z)V

    .line 979
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onRecordAudioListener:Lcom/luck/picture/lib/interfaces/OnRecordAudioInterceptListener;

    const/16 v1, 0x38d

    invoke-interface {v0, p0, v1}, Lcom/luck/picture/lib/interfaces/OnRecordAudioInterceptListener;->onRecordAudio(Landroidx/fragment/app/Fragment;I)V

    return-void

    .line 981
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-class v1, Lcom/luck/picture/lib/interfaces/OnRecordAudioInterceptListener;

    const-string v1, "OnRecordAudioInterceptListener interface needs to be implemented for recording"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openVideoCamera()V
    .locals 3

    const/4 v0, 0x1

    .line 927
    sget-object v1, Lcom/luck/picture/lib/permissions/PermissionConfig;->CAMERA:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onPermissionExplainEvent(Z[Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    if-eqz v0, :cond_0

    .line 929
    sget v0, Lcom/luck/picture/lib/config/PermissionEvent;->EVENT_VIDEO_CAMERA:I

    sget-object v1, Lcom/luck/picture/lib/permissions/PermissionConfig;->CAMERA:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onApplyPermissionsEvent(I[Ljava/lang/String;)V

    goto :goto_0

    .line 931
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/permissions/PermissionChecker;->getInstance()Lcom/luck/picture/lib/permissions/PermissionChecker;

    move-result-object v0

    sget-object v1, Lcom/luck/picture/lib/permissions/PermissionConfig;->CAMERA:[Ljava/lang/String;

    new-instance v2, Lcom/luck/picture/lib/basic/PictureCommonFragment$7;

    invoke-direct {v2, p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment$7;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/luck/picture/lib/permissions/PermissionResultCallback;)V

    :goto_0
    return-void
.end method

.method public reStartSavedInstance(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public sendChangeSubSelectPositionEvent(Z)V
    .locals 0

    return-void
.end method

.method public sendFixedSelectedChangeEvent(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 4

    .line 790
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 791
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 792
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 793
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 794
    instance-of v3, v2, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    if-eqz v3, :cond_0

    .line 795
    check-cast v2, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    invoke-virtual {v2, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onFixedSelectedChange(Lcom/luck/picture/lib/entity/LocalMedia;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendSelectedChangeEvent(ZLcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 4

    .line 777
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 778
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 779
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 780
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 781
    instance-of v3, v2, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    if-eqz v3, :cond_0

    .line 782
    check-cast v2, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    invoke-virtual {v2, p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onSelectedChange(ZLcom/luck/picture/lib/entity/LocalMedia;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendSelectedOriginalChangeEvent()V
    .locals 4

    .line 803
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 804
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 805
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 806
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 807
    instance-of v3, v2, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    if-eqz v3, :cond_0

    .line 808
    check-cast v2, Lcom/luck/picture/lib/basic/PictureCommonFragment;

    invoke-virtual {v2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onCheckOriginalChange()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEnterAnimationDuration(J)V
    .locals 0

    .line 387
    iput-wide p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->enterAnimDuration:J

    return-void
.end method

.method public setPermissionsResultAction(Lcom/luck/picture/lib/permissions/PermissionResultCallback;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPermissionResultCallback:Lcom/luck/picture/lib/permissions/PermissionResultCallback;

    return-void
.end method

.method protected setRequestedOrientation()V
    .locals 2

    .line 1954
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1957
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->requestedOrientation:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public setRootViewKeyListener(Landroid/view/View;)V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isNewKeyBackMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v2, Lcom/luck/picture/lib/basic/PictureCommonFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment$2;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;Z)V

    invoke-virtual {p1, v0, v2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 342
    new-instance v0, Lcom/luck/picture/lib/basic/PictureCommonFragment$3;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment$3;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_0
    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 1910
    :try_start_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1913
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1914
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mLoadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1917
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected startCameraImageCapture()V
    .locals 4

    .line 903
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 904
    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onPermissionExplainEvent(Z[Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onCameraInterceptListener:Lcom/luck/picture/lib/interfaces/OnCameraInterceptListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onInterceptCameraEvent(I)V

    goto :goto_0

    .line 908
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 909
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 910
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->isCameraForegroundService:Z

    invoke-static {v2, v3}, Lcom/luck/picture/lib/service/ForegroundService;->startForegroundService(Landroid/content/Context;Z)V

    .line 911
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-static {v2, v3}, Lcom/luck/picture/lib/utils/MediaStoreUtils;->createCameraOutImageUri(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 913
    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->isCameraAroundState:Z

    if-eqz v3, :cond_1

    .line 914
    const-string v3, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 916
    :cond_1
    const-string v1, "output"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x38d

    .line 917
    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected startCameraVideoCapture()V
    .locals 3

    .line 950
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 951
    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onPermissionExplainEvent(Z[Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->onCameraInterceptListener:Lcom/luck/picture/lib/interfaces/OnCameraInterceptListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 953
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onInterceptCameraEvent(I)V

    goto :goto_0

    .line 955
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 957
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->isCameraForegroundService:Z

    invoke-static {v1, v2}, Lcom/luck/picture/lib/service/ForegroundService;->startForegroundService(Landroid/content/Context;Z)V

    .line 958
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-static {v1, v2}, Lcom/luck/picture/lib/utils/MediaStoreUtils;->createCameraOutVideoUri(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 960
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 961
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isCameraAroundState:Z

    if-eqz v1, :cond_1

    .line 962
    const-string v1, "android.intent.extras.CAMERA_FACING"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isQuickCapture:Z

    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 965
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->recordVideoMaxSecond:I

    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 966
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->videoQuality:I

    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x38d

    .line 967
    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return-void
.end method
