.class public Lcom/luck/picture/lib/animators/AlphaInAnimationAdapter;
.super Lcom/luck/picture/lib/animators/BaseAnimationAdapter;
.source "AlphaInAnimationAdapter.java"


# static fields
.field private static final DEFAULT_ALPHA_FROM:F


# instance fields
.field private final mFrom:F


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/animators/AlphaInAnimationAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;F)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;F)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/animators/BaseAnimationAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    iput p2, p0, Lcom/luck/picture/lib/animators/AlphaInAnimationAdapter;->mFrom:F

    return-void
.end method


# virtual methods
.method protected getAnimators(Landroid/view/View;)[Landroid/animation/Animator;
    .locals 5

    const/4 v0, 0x1

    .line 29
    new-array v1, v0, [Landroid/animation/Animator;

    iget v2, p0, Lcom/luck/picture/lib/animators/AlphaInAnimationAdapter;->mFrom:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v3, v0

    const-string v0, "alpha"

    invoke-static {p1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v1, v4

    return-object v1
.end method
