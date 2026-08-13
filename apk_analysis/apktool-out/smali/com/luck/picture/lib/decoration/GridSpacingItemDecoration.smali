.class public Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridSpacingItemDecoration.java"


# instance fields
.field private final includeEdge:Z

.field private final spacing:I

.field private final spanCount:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 22
    iput p1, p0, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;->spanCount:I

    .line 23
    iput p2, p0, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;->spacing:I

    .line 24
    iput-boolean p3, p0, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;->includeEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 29
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 30
    iget p3, p0, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;->spanCount:I

    rem-int p4, p2, p3

    .line 31
    iget-boolean v0, p0, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;->includeEdge:Z

    if-eqz v0, :cond_0

    .line 32
    iget v0, p0, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;->spacing:I

    mul-int v1, p4, v0

    div-int/2addr v1, p3

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    .line 33
    iget p3, p0, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;->spacing:I

    mul-int/2addr p4, p3

    iget p3, p0, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 35
    :cond_0
    iget v0, p0, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;->spacing:I

    mul-int/2addr v0, p4

    div-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 36
    iget p3, p0, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;->spacing:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, p3

    iget v0, p0, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr p4, v0

    sub-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 38
    :goto_0
    iget p3, p0, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;->spanCount:I

    if-ge p2, p3, :cond_1

    .line 39
    iget p2, p0, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 41
    :cond_1
    iget p2, p0, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
