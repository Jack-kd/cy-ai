.class Lcom/luck/picture/lib/PictureSelectorPreviewFragment$3;
.super Ljava/lang/Object;
.source "PictureSelectorPreviewFragment.java"

# interfaces
.implements Lcom/luck/picture/lib/interfaces/OnCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/luck/picture/lib/interfaces/OnCallbackListener<",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$3;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCall(Ljava/lang/Object;)V
    .locals 0

    .line 544
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$3;->onCall([I)V

    return-void
.end method

.method public onCall([I)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$3;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-static {v0, p1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->access$000(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;[I)V

    return-void
.end method
