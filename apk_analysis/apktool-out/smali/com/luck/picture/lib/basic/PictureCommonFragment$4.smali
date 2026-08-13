.class Lcom/luck/picture/lib/basic/PictureCommonFragment$4;
.super Ljava/lang/Object;
.source "PictureCommonFragment.java"

# interfaces
.implements Lcom/luck/picture/lib/interfaces/OnItemClickListener;


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

    .line 844
    iput-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$4;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 856
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$4;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    iget-object p1, p1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->onCameraInterceptListener:Lcom/luck/picture/lib/interfaces/OnCameraInterceptListener;

    if-eqz p1, :cond_1

    .line 857
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$4;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onInterceptCameraEvent(I)V

    goto :goto_0

    .line 859
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$4;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    invoke-virtual {p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->openVideoCamera()V

    goto :goto_0

    .line 849
    :cond_2
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$4;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    iget-object p2, p2, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->onCameraInterceptListener:Lcom/luck/picture/lib/interfaces/OnCameraInterceptListener;

    if-eqz p2, :cond_3

    .line 850
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$4;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    invoke-virtual {p2, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onInterceptCameraEvent(I)V

    goto :goto_0

    .line 852
    :cond_3
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment$4;->this$0:Lcom/luck/picture/lib/basic/PictureCommonFragment;

    invoke-virtual {p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->openImageCamera()V

    :goto_0
    return-void
.end method
