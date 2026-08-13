.class public Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;
.super Ljava/lang/Object;
.source "PictureWindowAnimationStyle.java"


# instance fields
.field public activityEnterAnimation:I

.field public activityExitAnimation:I

.field public activityPreviewEnterAnimation:I

.field public activityPreviewExitAnimation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityEnterAnimation:I

    .line 53
    iput p2, p0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityExitAnimation:I

    .line 54
    iput p1, p0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewEnterAnimation:I

    .line 55
    iput p2, p0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewExitAnimation:I

    return-void
.end method

.method public static ofDefaultWindowAnimationStyle()Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;
    .locals 3

    .line 43
    new-instance v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    sget v1, Lcom/luck/picture/lib/R$anim;->ps_anim_enter:I

    sget v2, Lcom/luck/picture/lib/R$anim;->ps_anim_exit:I

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getActivityEnterAnimation()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityEnterAnimation:I

    return v0
.end method

.method public getActivityExitAnimation()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityExitAnimation:I

    return v0
.end method

.method public getActivityPreviewEnterAnimation()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewEnterAnimation:I

    return v0
.end method

.method public getActivityPreviewExitAnimation()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewExitAnimation:I

    return v0
.end method

.method public setActivityEnterAnimation(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityEnterAnimation:I

    return-void
.end method

.method public setActivityExitAnimation(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityExitAnimation:I

    return-void
.end method

.method public setActivityPreviewEnterAnimation(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewEnterAnimation:I

    return-void
.end method

.method public setActivityPreviewExitAnimation(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewExitAnimation:I

    return-void
.end method
