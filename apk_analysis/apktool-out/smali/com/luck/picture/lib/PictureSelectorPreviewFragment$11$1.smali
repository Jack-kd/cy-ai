.class Lcom/luck/picture/lib/PictureSelectorPreviewFragment$11$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "PictureSelectorPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorPreviewFragment$11;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$11;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment$11;Landroid/content/Context;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$11$1;->this$1:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$11;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 811
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43960000    # 300.0f

    div-float/2addr v0, p1

    return v0
.end method
