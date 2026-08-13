.class Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$6;
.super Ljava/lang/Object;
.source "PreviewAudioHolder.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V
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

    .line 148
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$6;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 152
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 153
    iget-object p3, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$6;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    invoke-static {p3, p2}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->access$400(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;I)V

    .line 154
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$6;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 155
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder$6;->this$0:Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    invoke-static {p2}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;->access$000(Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;)Landroid/media/MediaPlayer;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
