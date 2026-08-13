.class public Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PictureAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field ivFirstImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

.field tvFolderName:Landroid/widget/TextView;

.field tvSelectTag:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;Landroid/view/View;)V
    .locals 1

    .line 97
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->this$0:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    .line 98
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 99
    sget v0, Lcom/luck/picture/lib/R$id;->first_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->ivFirstImage:Landroid/widget/ImageView;

    .line 100
    sget v0, Lcom/luck/picture/lib/R$id;->tv_folder_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->tvFolderName:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/luck/picture/lib/R$id;->tv_select_tag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->tvSelectTag:Landroid/widget/TextView;

    .line 102
    invoke-static {p1}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->access$100(Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;)Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    .line 103
    invoke-virtual {p1}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getAlbumWindowStyle()Lcom/luck/picture/lib/style/AlbumWindowStyle;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/luck/picture/lib/style/AlbumWindowStyle;->getAlbumAdapterItemBackground()I

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/luck/picture/lib/style/AlbumWindowStyle;->getAlbumAdapterItemSelectStyle()I

    move-result p2

    if-eqz p2, :cond_1

    .line 110
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->tvSelectTag:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/luck/picture/lib/style/AlbumWindowStyle;->getAlbumAdapterItemTitleColor()I

    move-result p2

    if-eqz p2, :cond_2

    .line 114
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->tvFolderName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    :cond_2
    invoke-virtual {p1}, Lcom/luck/picture/lib/style/AlbumWindowStyle;->getAlbumAdapterItemTitleSize()I

    move-result p1

    if-lez p1, :cond_3

    .line 118
    iget-object p2, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->tvFolderName:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_3
    return-void
.end method
