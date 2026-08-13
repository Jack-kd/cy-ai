.class Lcom/luck/picture/lib/dialog/AlbumListPopWindow$2;
.super Ljava/lang/Object;
.source "AlbumListPopWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/dialog/AlbumListPopWindow;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow$2;->this$0:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-static {}, Lcom/luck/picture/lib/utils/SdkVersionUtils;->isMinM()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow$2;->this$0:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->dismiss()V

    :cond_0
    return-void
.end method
