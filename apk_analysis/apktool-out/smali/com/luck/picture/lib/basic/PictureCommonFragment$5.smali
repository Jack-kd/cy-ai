.class Lcom/luck/picture/lib/basic/PictureCommonFragment$5;
.super Ljava/lang/Object;
.source "PictureCommonFragment.java"

# interfaces
.implements Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/basic/PictureCommonFragment;->onSelectedOnlyCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$5;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 870
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$5;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    iget-object p2, p2, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isOnlyCamera:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 871
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$5;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    invoke-virtual {p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onKeyBackFragmentFinish()V

    :cond_0
    return-void
.end method
