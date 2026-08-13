.class public final Lcom/luck/picture/lib/config/SelectorConfig;
.super Ljava/lang/Object;
.source "SelectorConfig.java"


# instance fields
.field public final albumDataSource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;"
        }
    .end annotation
.end field

.field public animationMode:I

.field public cameraImageFormat:Ljava/lang/String;

.field public cameraImageFormatForQ:Ljava/lang/String;

.field public cameraPath:Ljava/lang/String;

.field public cameraVideoFormat:Ljava/lang/String;

.field public cameraVideoFormatForQ:Ljava/lang/String;

.field public chooseMode:I

.field public compressEngine:Lcom/luck/picture/lib/engine/CompressEngine;

.field public compressFileEngine:Lcom/luck/picture/lib/engine/CompressFileEngine;

.field public cropEngine:Lcom/luck/picture/lib/engine/CropEngine;

.field public cropFileEngine:Lcom/luck/picture/lib/engine/CropFileEngine;

.field public currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

.field public final dataSource:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field public defaultAlbumName:Ljava/lang/String;

.field public defaultLanguage:I

.field public filterMaxFileSize:J

.field public filterMinFileSize:J

.field public filterVideoMaxSecond:I

.field public filterVideoMinSecond:I

.field public imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

.field public imageSpanCount:I

.field public interpolatorFactory:Lcom/luck/picture/lib/basic/InterpolatorFactory;

.field public isActivityResultBack:Z

.field public isAutoRotating:Z

.field public isAutoVideoPlay:Z

.field public isAutomaticTitleRecyclerTop:Z

.field public isBmp:Z

.field public isCameraAroundState:Z

.field public isCameraForegroundService:Z

.field public isCameraRotateImage:Z

.field public isCheckOriginalImage:Z

.field public isCompressEngine:Z

.field public isDirectReturnSingle:Z

.field public isDisplayCamera:Z

.field public isDisplayTimeAxis:Z

.field public isEmptyResultReturn:Z

.field public isEnablePreviewAudio:Z

.field public isEnablePreviewImage:Z

.field public isEnablePreviewVideo:Z

.field public isFastSlidingSelect:Z

.field public isFilterInvalidFile:Z

.field public isFilterSizeDuration:Z

.field public isGif:Z

.field public isHeic:Z

.field public isHidePreviewDownload:Z

.field public isInjectLayoutResource:Z

.field public isLoaderDataEngine:Z

.field public isLoaderFactoryEngine:Z

.field public isLoopAutoPlay:Z

.field public isMaxSelectEnabledMask:Z

.field public isNewKeyBackMode:Z

.field public isOnlyCamera:Z

.field public isOnlySandboxDir:Z

.field public isOpenClickSound:Z

.field public isOriginalControl:Z

.field public isOriginalSkipCompress:Z

.field public isPageStrategy:Z

.field public isPageSyncAsCount:Z

.field public isPauseResumePlay:Z

.field public isPreloadFirst:Z

.field public isPreviewFullScreenMode:Z

.field public isPreviewZoomEffect:Z

.field public isQuickCapture:Z

.field public isResultListenerBack:Z

.field public isSandboxFileEngine:Z

.field public isSelectZoomAnim:Z

.field public isSyncCover:Z

.field public isSyncWidthAndHeight:Z

.field public isUseSystemVideoPlayer:Z

.field public isWebp:Z

.field public isWithVideoImage:Z

.field public language:I

.field public loaderDataEngine:Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

.field public loaderFactory:Lcom/luck/picture/lib/basic/IBridgeLoaderFactory;

.field public maxSelectNum:I

.field public maxVideoSelectNum:I

.field public minAudioSelectNum:I

.field public minSelectNum:I

.field public minVideoSelectNum:I

.field public ofAllCameraType:I

.field public onBitmapWatermarkListener:Lcom/luck/picture/lib/interfaces/OnBitmapWatermarkEventListener;

.field public onCameraInterceptListener:Lcom/luck/picture/lib/interfaces/OnCameraInterceptListener;

.field public onCustomLoadingListener:Lcom/luck/picture/lib/interfaces/OnCustomLoadingListener;

.field public onEditMediaEventListener:Lcom/luck/picture/lib/interfaces/OnMediaEditInterceptListener;

.field public onExternalPreviewEventListener:Lcom/luck/picture/lib/interfaces/OnExternalPreviewEventListener;

.field public onInjectActivityPreviewListener:Lcom/luck/picture/lib/interfaces/OnInjectActivityPreviewListener;

.field public onItemSelectAnimListener:Lcom/luck/picture/lib/interfaces/OnGridItemSelectAnimListener;

.field public onLayoutResourceListener:Lcom/luck/picture/lib/interfaces/OnInjectLayoutResourceListener;

.field public onPermissionDeniedListener:Lcom/luck/picture/lib/interfaces/OnPermissionDeniedListener;

.field public onPermissionDescriptionListener:Lcom/luck/picture/lib/interfaces/OnPermissionDescriptionListener;

.field public onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

.field public onPreviewInterceptListener:Lcom/luck/picture/lib/interfaces/OnPreviewInterceptListener;

.field public onQueryFilterListener:Lcom/luck/picture/lib/interfaces/OnQueryFilterListener;

.field public onRecordAudioListener:Lcom/luck/picture/lib/interfaces/OnRecordAudioInterceptListener;

.field public onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/luck/picture/lib/interfaces/OnResultCallbackListener<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field public onSelectAnimListener:Lcom/luck/picture/lib/interfaces/OnSelectAnimListener;

.field public onSelectFilterListener:Lcom/luck/picture/lib/interfaces/OnSelectFilterListener;

.field public onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

.field public onVideoThumbnailEventListener:Lcom/luck/picture/lib/interfaces/OnVideoThumbnailEventListener;

.field public originalPath:Ljava/lang/String;

.field public outPutAudioDir:Ljava/lang/String;

.field public outPutAudioFileName:Ljava/lang/String;

.field public outPutCameraDir:Ljava/lang/String;

.field public outPutCameraImageFileName:Ljava/lang/String;

.field public outPutCameraVideoFileName:Ljava/lang/String;

.field public pageSize:I

.field public queryOnlyAudioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public queryOnlyImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public queryOnlyVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public recordVideoMaxSecond:I

.field public recordVideoMinSecond:I

.field public requestedOrientation:I

.field public sandboxDir:Ljava/lang/String;

.field public sandboxFileEngine:Lcom/luck/picture/lib/engine/SandboxFileEngine;

.field public selectMaxDurationSecond:I

.field public selectMaxFileSize:J

.field public selectMinDurationSecond:I

.field public selectMinFileSize:J

.field public final selectedPreviewResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field public final selectedResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field public selectionMode:I

.field public selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

.field public skipCropList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sortOrder:Ljava/lang/String;

.field public uriToFileTransformEngine:Lcom/luck/picture/lib/engine/UriToFileTransformEngine;

.field public videoPlayerEngine:Lcom/luck/picture/lib/engine/VideoPlayerEngine;

.field public videoQuality:I

.field public viewLifecycle:Lcom/luck/picture/lib/basic/IBridgeViewLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedPreviewResult:Ljava/util/ArrayList;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->albumDataSource:Ljava/util/ArrayList;

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->dataSource:Ljava/util/ArrayList;

    .line 150
    invoke-direct {p0}, Lcom/luck/picture/lib/config/SelectorConfig;->initDefaultValue()V

    return-void
.end method

.method private initDefaultValue()V
    .locals 6

    .line 154
    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofImage()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isOnlyCamera:Z

    const/4 v1, 0x2

    .line 156
    iput v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    .line 157
    new-instance v1, Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-direct {v1}, Lcom/luck/picture/lib/style/PictureSelectorStyle;-><init>()V

    iput-object v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    const/16 v1, 0x9

    .line 158
    iput v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    .line 159
    iput v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->minSelectNum:I

    const/4 v1, 0x1

    .line 160
    iput v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    .line 161
    iput v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->minVideoSelectNum:I

    .line 162
    iput v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->minAudioSelectNum:I

    .line 163
    iput v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->videoQuality:I

    const/4 v2, -0x2

    .line 164
    iput v2, p0, Lcom/luck/picture/lib/config/SelectorConfig;->language:I

    const/4 v2, -0x1

    .line 165
    iput v2, p0, Lcom/luck/picture/lib/config/SelectorConfig;->defaultLanguage:I

    .line 166
    iput v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMaxSecond:I

    .line 167
    iput v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->filterVideoMinSecond:I

    .line 168
    iput v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxDurationSecond:I

    .line 169
    iput v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinDurationSecond:I

    const-wide/16 v3, 0x0

    .line 170
    iput-wide v3, p0, Lcom/luck/picture/lib/config/SelectorConfig;->filterMaxFileSize:J

    .line 171
    iput-wide v3, p0, Lcom/luck/picture/lib/config/SelectorConfig;->filterMinFileSize:J

    .line 172
    iput-wide v3, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMaxFileSize:J

    .line 173
    iput-wide v3, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectMinFileSize:J

    const/16 v3, 0x3c

    .line 174
    iput v3, p0, Lcom/luck/picture/lib/config/SelectorConfig;->recordVideoMaxSecond:I

    .line 175
    iput v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->recordVideoMinSecond:I

    const/4 v4, 0x4

    .line 176
    iput v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->imageSpanCount:I

    .line 177
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isCameraAroundState:Z

    .line 178
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isWithVideoImage:Z

    .line 179
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayCamera:Z

    .line 180
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isGif:Z

    .line 181
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isWebp:Z

    .line 182
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isBmp:Z

    .line 183
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isHeic:Z

    .line 184
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isCheckOriginalImage:Z

    .line 185
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isDirectReturnSingle:Z

    .line 186
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isEnablePreviewImage:Z

    .line 187
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isEnablePreviewVideo:Z

    .line 188
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isEnablePreviewAudio:Z

    .line 189
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isHidePreviewDownload:Z

    .line 190
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isOpenClickSound:Z

    .line 191
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isEmptyResultReturn:Z

    .line 192
    const-string v4, ".jpeg"

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraImageFormat:Ljava/lang/String;

    .line 193
    const-string v4, ".mp4"

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraVideoFormat:Ljava/lang/String;

    .line 194
    const-string v4, "image/jpeg"

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraImageFormatForQ:Ljava/lang/String;

    .line 195
    const-string v4, "video/mp4"

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraVideoFormatForQ:Ljava/lang/String;

    .line 196
    const-string v4, ""

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutCameraImageFileName:Ljava/lang/String;

    .line 197
    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutCameraVideoFileName:Ljava/lang/String;

    .line 198
    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioFileName:Ljava/lang/String;

    .line 199
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/List;

    .line 200
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyVideoList:Ljava/util/List;

    .line 201
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyAudioList:Ljava/util/List;

    .line 202
    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutCameraDir:Ljava/lang/String;

    .line 203
    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioDir:Ljava/lang/String;

    .line 204
    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->sandboxDir:Ljava/lang/String;

    .line 205
    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->originalPath:Ljava/lang/String;

    .line 206
    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    .line 207
    iput v3, p0, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    .line 208
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    .line 209
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isFilterInvalidFile:Z

    .line 210
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isMaxSelectEnabledMask:Z

    .line 211
    iput v2, p0, Lcom/luck/picture/lib/config/SelectorConfig;->animationMode:I

    .line 212
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isAutomaticTitleRecyclerTop:Z

    .line 213
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isQuickCapture:Z

    .line 214
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isCameraRotateImage:Z

    .line 215
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isAutoRotating:Z

    .line 216
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isQ()Z

    move-result v3

    xor-int/2addr v3, v1

    iput-boolean v3, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isSyncCover:Z

    .line 217
    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAll()I

    move-result v3

    iput v3, p0, Lcom/luck/picture/lib/config/SelectorConfig;->ofAllCameraType:I

    .line 218
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isOnlySandboxDir:Z

    .line 219
    iput v2, p0, Lcom/luck/picture/lib/config/SelectorConfig;->requestedOrientation:I

    .line 220
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isCameraForegroundService:Z

    .line 221
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    .line 222
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isActivityResultBack:Z

    .line 223
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isCompressEngine:Z

    .line 224
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isLoaderDataEngine:Z

    .line 225
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isLoaderFactoryEngine:Z

    .line 226
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isSandboxFileEngine:Z

    .line 227
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    .line 228
    iget v2, p0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/SelectMimeType;->ofAudio()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    .line 229
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isOriginalControl:Z

    .line 230
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isInjectLayoutResource:Z

    .line 231
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayTimeAxis:Z

    .line 232
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isFastSlidingSelect:Z

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/luck/picture/lib/config/SelectorConfig;->skipCropList:Ljava/util/List;

    .line 234
    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->sortOrder:Ljava/lang/String;

    .line 235
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isSelectZoomAnim:Z

    .line 236
    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    .line 237
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isAutoVideoPlay:Z

    .line 238
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isLoopAutoPlay:Z

    .line 239
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isFilterSizeDuration:Z

    .line 240
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isPageSyncAsCount:Z

    .line 241
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isPauseResumePlay:Z

    .line 242
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isSyncWidthAndHeight:Z

    .line 243
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isOriginalSkipCompress:Z

    .line 244
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreloadFirst:Z

    .line 245
    iput-boolean v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isNewKeyBackMode:Z

    .line 246
    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isUseSystemVideoPlayer:Z

    return-void
.end method


# virtual methods
.method public addAlbumDataSource(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->albumDataSource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 334
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->albumDataSource:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public addAllSelectResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addDataSource(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->dataSource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 346
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->dataSource:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public addSelectResult(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSelectedPreviewResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedPreviewResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 322
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedPreviewResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 354
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    .line 355
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->compressEngine:Lcom/luck/picture/lib/engine/CompressEngine;

    .line 356
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->compressFileEngine:Lcom/luck/picture/lib/engine/CompressFileEngine;

    .line 357
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cropEngine:Lcom/luck/picture/lib/engine/CropEngine;

    .line 358
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cropFileEngine:Lcom/luck/picture/lib/engine/CropFileEngine;

    .line 359
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->sandboxFileEngine:Lcom/luck/picture/lib/engine/SandboxFileEngine;

    .line 360
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->uriToFileTransformEngine:Lcom/luck/picture/lib/engine/UriToFileTransformEngine;

    .line 361
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->loaderDataEngine:Lcom/luck/picture/lib/engine/ExtendLoaderEngine;

    .line 362
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onResultCallListener:Lcom/luck/picture/lib/interfaces/OnResultCallbackListener;

    .line 363
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onCameraInterceptListener:Lcom/luck/picture/lib/interfaces/OnCameraInterceptListener;

    .line 364
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onExternalPreviewEventListener:Lcom/luck/picture/lib/interfaces/OnExternalPreviewEventListener;

    .line 365
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onInjectActivityPreviewListener:Lcom/luck/picture/lib/interfaces/OnInjectActivityPreviewListener;

    .line 366
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onEditMediaEventListener:Lcom/luck/picture/lib/interfaces/OnMediaEditInterceptListener;

    .line 367
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionsEventListener:Lcom/luck/picture/lib/interfaces/OnPermissionsInterceptListener;

    .line 368
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onLayoutResourceListener:Lcom/luck/picture/lib/interfaces/OnInjectLayoutResourceListener;

    .line 369
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onPreviewInterceptListener:Lcom/luck/picture/lib/interfaces/OnPreviewInterceptListener;

    .line 370
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectLimitTipsListener:Lcom/luck/picture/lib/interfaces/OnSelectLimitTipsListener;

    .line 371
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectFilterListener:Lcom/luck/picture/lib/interfaces/OnSelectFilterListener;

    .line 372
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionDescriptionListener:Lcom/luck/picture/lib/interfaces/OnPermissionDescriptionListener;

    .line 373
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onPermissionDeniedListener:Lcom/luck/picture/lib/interfaces/OnPermissionDeniedListener;

    .line 374
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onRecordAudioListener:Lcom/luck/picture/lib/interfaces/OnRecordAudioInterceptListener;

    .line 375
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onQueryFilterListener:Lcom/luck/picture/lib/interfaces/OnQueryFilterListener;

    .line 376
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onBitmapWatermarkListener:Lcom/luck/picture/lib/interfaces/OnBitmapWatermarkEventListener;

    .line 377
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onVideoThumbnailEventListener:Lcom/luck/picture/lib/interfaces/OnVideoThumbnailEventListener;

    .line 378
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->viewLifecycle:Lcom/luck/picture/lib/basic/IBridgeViewLifecycle;

    .line 379
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->loaderFactory:Lcom/luck/picture/lib/basic/IBridgeLoaderFactory;

    .line 380
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->interpolatorFactory:Lcom/luck/picture/lib/basic/InterpolatorFactory;

    .line 381
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onItemSelectAnimListener:Lcom/luck/picture/lib/interfaces/OnGridItemSelectAnimListener;

    .line 382
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onSelectAnimListener:Lcom/luck/picture/lib/interfaces/OnSelectAnimListener;

    .line 383
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->videoPlayerEngine:Lcom/luck/picture/lib/engine/VideoPlayerEngine;

    .line 384
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->onCustomLoadingListener:Lcom/luck/picture/lib/interfaces/OnCustomLoadingListener;

    .line 385
    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 386
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->dataSource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 387
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 388
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->albumDataSource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 389
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedPreviewResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 390
    invoke-static {}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->getIoPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->cancel(Ljava/util/concurrent/ExecutorService;)V

    .line 391
    invoke-static {}, Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;->clear()V

    .line 392
    invoke-static {}, Lcom/luck/picture/lib/utils/FileDirMap;->clear()V

    .line 393
    invoke-static {}, Lcom/luck/picture/lib/entity/LocalMedia;->destroyPool()V

    return-void
.end method

.method public getResultFirstMimeType()Ljava/lang/String;
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getSelectCount()I
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getSelectedResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
