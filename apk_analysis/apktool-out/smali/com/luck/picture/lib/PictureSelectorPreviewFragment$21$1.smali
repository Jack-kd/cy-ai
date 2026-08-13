.class Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;
.super Ljava/lang/Object;
.source "PictureSelectorPreviewFragment.java"

# interfaces
.implements Lcom/luck/picture/lib/interfaces/OnCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->onConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/luck/picture/lib/interfaces/OnCallbackListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;)V
    .locals 0

    .line 1399
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;->this$1:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCall(Ljava/lang/Object;)V
    .locals 0

    .line 1399
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;->onCall(Ljava/lang/String;)V

    return-void
.end method

.method public onCall(Ljava/lang/String;)V
    .locals 4

    .line 1402
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;->this$1:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->dismissLoading()V

    .line 1403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1405
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;->this$1:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->val$media:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1406
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;->this$1:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    sget v0, Lcom/luck/picture/lib/R$string;->ps_save_audio_error:I

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1407
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;->this$1:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->val$media:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1408
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;->this$1:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    sget v0, Lcom/luck/picture/lib/R$string;->ps_save_video_error:I

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1410
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;->this$1:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    sget v0, Lcom/luck/picture/lib/R$string;->ps_save_image_error:I

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1412
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;->this$1:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/luck/picture/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1414
    :cond_2
    new-instance v0, Lcom/luck/picture/lib/basic/PictureMediaScannerConnection;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;->this$1:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/luck/picture/lib/basic/PictureMediaScannerConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;->this$1:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21$1;->this$1:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;

    iget-object v2, v2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$21;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    sget v3, Lcom/luck/picture/lib/R$string;->ps_save_success:I

    invoke-virtual {v2, v3}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/luck/picture/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
