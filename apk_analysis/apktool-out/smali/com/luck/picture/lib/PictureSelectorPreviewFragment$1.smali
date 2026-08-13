.class Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;
.super Ljava/lang/Object;
.source "PictureSelectorPreviewFragment.java"

# interfaces
.implements Lcom/luck/picture/lib/magical/OnMagicalViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->setMagicalViewAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundAlpha(F)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onMojitoBackgroundAlpha(F)V

    return-void
.end method

.method public onBeginBackMinAnim()V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onMojitoBeginBackMinAnim()V

    return-void
.end method

.method public onBeginBackMinMagicalFinish(Z)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onMojitoBeginBackMinFinish(Z)V

    return-void
.end method

.method public onBeginMagicalAnimComplete(Lcom/luck/picture/lib/magical/MagicalView;Z)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {v0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onMojitoBeginAnimComplete(Lcom/luck/picture/lib/magical/MagicalView;Z)V

    return-void
.end method

.method public onMagicalViewFinish()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onMojitoMagicalViewFinish()V

    return-void
.end method
