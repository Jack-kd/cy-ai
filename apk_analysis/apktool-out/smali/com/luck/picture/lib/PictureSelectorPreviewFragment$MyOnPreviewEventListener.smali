.class Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;
.super Ljava/lang/Object;
.source "PictureSelectorPreviewFragment.java"

# interfaces
.implements Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder$OnPreviewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/PictureSelectorPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnPreviewEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;


# direct methods
.method private constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;)V
    .locals 0

    .line 1236
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$2600(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$2700(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    goto :goto_0

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-boolean v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz v0, :cond_2

    .line 1244
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$2800(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v0, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/magical/MagicalView;->backToMin()V

    goto :goto_0

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$800(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    goto :goto_0

    .line 1250
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-boolean v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$2900(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v0, :cond_3

    .line 1251
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/magical/MagicalView;->backToMin()V

    goto :goto_0

    .line 1253
    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$3000(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    :goto_0
    return-void
.end method

.method public onLongPressDownload(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$3100(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isHidePreviewDownload:Z

    if-eqz v0, :cond_0

    return-void

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-boolean v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz v0, :cond_1

    .line 1274
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {v0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$3200(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Lcom/luck/picture/lib/entity/LocalMedia;)V

    :cond_1
    return-void
.end method

.method public onPreviewVideoTitle(Ljava/lang/String;)V
    .locals 2

    .line 1261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget v1, v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget v1, v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/PreviewTitleBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$MyOnPreviewEventListener;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/widget/PreviewTitleBar;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
