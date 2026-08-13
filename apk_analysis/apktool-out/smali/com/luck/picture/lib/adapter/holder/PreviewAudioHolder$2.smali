.class Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$2;
.super Ljava/lang/Object;
.source "PreviewAudioHolder.java"

# interfaces
.implements Lcom/luck/picture/lib/photoview/OnViewTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->onClickBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$2;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewTap(Landroid/view/View;FF)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$2;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    iget-object p1, p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPreviewEventListener:Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder$OnPreviewEventListener;

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$2;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    iget-object p1, p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->mPreviewEventListener:Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder$OnPreviewEventListener;

    invoke-interface {p1}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder$OnPreviewEventListener;->onBackPressed()V

    :cond_0
    return-void
.end method
