.class Lcom/luck/picture/lib/PictureSelectorPreviewFragment$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PictureSelectorPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->previewFullScreenMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

.field final synthetic val$isAnimInit:Z


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Z)V
    .locals 0

    .line 1323
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$20;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iput-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$20;->val$isAnimInit:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1327
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$20;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isAnimationStart:Z

    .line 1328
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isP()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$20;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1329
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$20;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1330
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1331
    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$20;->val$isAnimInit:Z

    const/16 v2, 0x200

    if-eqz v1, :cond_0

    .line 1332
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x1

    .line 1333
    invoke-static {v0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 1335
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1336
    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 1338
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1339
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1340
    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method
