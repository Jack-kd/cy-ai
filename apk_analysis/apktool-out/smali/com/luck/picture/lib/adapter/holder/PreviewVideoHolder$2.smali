.class Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$2;
.super Ljava/lang/Object;
.source "PreviewVideoHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->onLongPressDownload(Lcom/luck/picture/lib/entity/LocalMedia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

.field final synthetic val$media:Lcom/luck/picture/lib/entity/LocalMedia;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$2;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    iput-object p2, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$2;->val$media:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$2;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    iget-object p1, p1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->mPreviewEventListener:Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder$OnPreviewEventListener;

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$2;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    iget-object p1, p1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->mPreviewEventListener:Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder$OnPreviewEventListener;

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder$2;->val$media:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-interface {p1, v0}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder$OnPreviewEventListener;->onLongPressDownload(Lcom/luck/picture/lib/entity/LocalMedia;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
