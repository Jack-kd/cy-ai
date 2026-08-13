.class Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$10;
.super Ljava/lang/Object;
.source "PreviewAudioHolder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;
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

    .line 306
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$10;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 309
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$10;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    invoke-static {p1}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->access$900(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;)V

    .line 310
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$10;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    invoke-static {p1}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->access$1000(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;)V

    .line 311
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$10;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->access$1100(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;Z)V

    return-void
.end method
