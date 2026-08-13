.class Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;
.super Ljava/lang/Object;
.source "PictureSelectorPreviewFragment.java"

# interfaces
.implements Lcom/luck/picture/lib/dialog/PictureCommonDialog$OnDialogEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onExternalLongPressDownload(Lcom/luck/picture/lib/entity/LocalMedia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

.field final synthetic val$media:Lcom/luck/picture/lib/entity/LocalMedia;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1392
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->val$media:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 4

    .line 1395
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->val$media:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object v0

    .line 1396
    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHttp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1397
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->showLoading()V

    .line 1399
    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->val$media:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;

    invoke-direct {v3, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;)V

    invoke-static {v1, v0, v2, v3}, Lcom/luck/picture/lib/utils/DownloadFileUtils;->saveLocalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    return-void
.end method
