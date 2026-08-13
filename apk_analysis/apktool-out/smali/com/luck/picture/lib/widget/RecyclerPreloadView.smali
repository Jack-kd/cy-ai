.class public Lcom/luck/picture/lib/widget/RecyclerPreloadView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RecyclerPreloadView.java"


# static fields
.field private static final BOTTOM_DEFAULT:I = 0x1

.field public static final BOTTOM_PRELOAD:I = 0x2

.field private static final LIMIT:I = 0x96

.field private static final TAG:Ljava/lang/String; = "RecyclerPreloadView"


# instance fields
.field private isEnabledLoadMore:Z

.field private isInTheBottom:Z

.field private mFirstVisiblePosition:I

.field private mLastVisiblePosition:I

.field private onRecyclerViewPreloadListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;

.field private onRecyclerViewScrollListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollListener;

.field private onRecyclerViewScrollStateListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;

.field private reachBottomRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isInTheBottom:Z

    .line 27
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore:Z

    const/4 p1, 0x1

    .line 36
    iput p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->reachBottomRow:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isInTheBottom:Z

    .line 27
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore:Z

    const/4 p1, 0x1

    .line 36
    iput p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->reachBottomRow:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isInTheBottom:Z

    .line 27
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore:Z

    const/4 p1, 0x1

    .line 36
    iput p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->reachBottomRow:I

    return-void
.end method

.method private setLayoutManagerPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 148
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 149
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 150
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->mFirstVisiblePosition:I

    .line 151
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->mLastVisiblePosition:I

    goto :goto_0

    .line 152
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 153
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 154
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->mFirstVisiblePosition:I

    .line 155
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->mLastVisiblePosition:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getFirstVisiblePosition()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->mFirstVisiblePosition:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->mLastVisiblePosition:I

    return v0
.end method

.method public isEnabledLoadMore()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore:Z

    return v0
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    .line 162
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setLayoutManagerPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollListener;

    if-eqz v0, :cond_2

    .line 168
    invoke-interface {v0, p1}, Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollListener;->onScrollStateChanged(I)V

    :cond_2
    if-nez p1, :cond_3

    .line 172
    iget-object p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollStateListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;

    if-eqz p1, :cond_3

    .line 173
    invoke-interface {p1}, Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;->onScrollSlow()V

    :cond_3
    return-void
.end method

.method public onScrolled(II)V
    .locals 4

    .line 97
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 98
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 102
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setLayoutManagerPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 103
    iget-object v1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewPreloadListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;

    if-eqz v1, :cond_3

    .line 104
    iget-boolean v1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore:Z

    if-eqz v1, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 110
    instance-of v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 111
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 112
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    div-int/2addr v1, v2

    .line 113
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    div-int/2addr v2, v0

    .line 114
    iget v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->reachBottomRow:I

    sub-int/2addr v1, v0

    if-lt v2, v1, :cond_1

    .line 119
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isInTheBottom:Z

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewPreloadListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;

    invoke-interface {v0}, Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;->onRecyclerViewPreloadMore()V

    if-lez p2, :cond_3

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isInTheBottom:Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    .line 127
    iput-boolean v3, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isInTheBottom:Z

    goto :goto_0

    .line 118
    :cond_1
    iput-boolean v3, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isInTheBottom:Z

    goto :goto_0

    .line 107
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Adapter is null,Please check it!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollListener;

    if-eqz v0, :cond_4

    .line 134
    invoke-interface {v0, p1, p2}, Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollListener;->onScrolled(II)V

    .line 137
    :cond_4
    iget-object p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollStateListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;

    if-eqz p1, :cond_6

    .line 138
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p2, 0x96

    if-ge p1, p2, :cond_5

    .line 139
    iget-object p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollStateListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;

    invoke-interface {p1}, Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;->onScrollSlow()V

    goto :goto_1

    .line 141
    :cond_5
    iget-object p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollStateListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;

    invoke-interface {p1}, Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;->onScrollFast()V

    :cond_6
    :goto_1
    return-void

    .line 100
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "LayoutManager is null,Please check it!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnabledLoadMore(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore:Z

    return-void
.end method

.method public setLastVisiblePosition(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->mLastVisiblePosition:I

    return-void
.end method

.method public setOnRecyclerViewPreloadListener(Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewPreloadListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;

    return-void
.end method

.method public setOnRecyclerViewScrollListener(Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollListener;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollListener;

    return-void
.end method

.method public setOnRecyclerViewScrollStateListener(Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onRecyclerViewScrollStateListener:Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;

    return-void
.end method

.method public setReachBottomRow(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 54
    :cond_0
    iput p1, p0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->reachBottomRow:I

    return-void
.end method
