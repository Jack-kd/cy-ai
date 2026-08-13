.class public Lcom/luck/picture/lib/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;,
        Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCALE:F = 3.0f

.field private static final DEFAULT_MID_SCALE:F = 1.75f

.field private static final DEFAULT_MIN_SCALE:F = 1.0f

.field private static final DEFAULT_ZOOM_DURATION:I = 0xc8

.field private static final HORIZONTAL_EDGE_BOTH:I = 0x2

.field private static final HORIZONTAL_EDGE_LEFT:I = 0x0

.field private static final HORIZONTAL_EDGE_NONE:I = -0x1

.field private static final HORIZONTAL_EDGE_RIGHT:I = 0x1

.field private static final SINGLE_TOUCH:I = 0x1

.field private static final VERTICAL_EDGE_BOTH:I = 0x2

.field private static final VERTICAL_EDGE_BOTTOM:I = 0x1

.field private static final VERTICAL_EDGE_NONE:I = -0x1

.field private static final VERTICAL_EDGE_TOP:I


# instance fields
.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseRotation:F

.field private mBlockParentIntercept:Z

.field private mCurrentFlingRunnable:Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHorizontalScrollEdge:I

.field private final mImageView:Landroid/widget/ImageView;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcom/luck/picture/lib/photoview/OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnViewDragListener:Lcom/luck/picture/lib/photoview/OnViewDragListener;

.field private mOutsidePhotoTapListener:Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;

.field private mPhotoTapListener:Lcom/luck/picture/lib/photoview/OnPhotoTapListener;

.field private mScaleChangeListener:Lcom/luck/picture/lib/photoview/OnScaleChangedListener;

.field private mScaleDragDetector:Lcom/luck/picture/lib/photoview/CustomGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mSingleFlingListener:Lcom/luck/picture/lib/photoview/OnSingleFlingListener;

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mVerticalScrollEdge:I

.field private mViewTapListener:Lcom/luck/picture/lib/photoview/OnViewTapListener;

.field private mZoomDuration:I

.field private mZoomEnabled:Z

.field private final onGestureListener:Lcom/luck/picture/lib/photoview/OnGestureListener;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    const/16 v0, 0xc8

    .line 44
    iput v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mZoomDuration:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    iput v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMinScale:F

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 46
    iput v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMidScale:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 47
    iput v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMaxScale:F

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    .line 59
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 61
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 62
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    const/16 v1, 0x9

    .line 63
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMatrixValues:[F

    const/4 v1, 0x2

    .line 77
    iput v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 78
    iput v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 81
    iput-boolean v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 82
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 84
    new-instance v0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$1;-><init>(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)V

    iput-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->onGestureListener:Lcom/luck/picture/lib/photoview/OnGestureListener;

    .line 150
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 151
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 153
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 156
    iput v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 158
    new-instance v1, Lcom/luck/picture/lib/photoview/CustomGestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/luck/picture/lib/photoview/CustomGestureDetector;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/photoview/OnGestureListener;)V

    iput-object v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/luck/picture/lib/photoview/CustomGestureDetector;

    .line 159
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$2;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$2;-><init>(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 185
    new-instance p1, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$3;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$3;-><init>(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Lcom/luck/picture/lib/photoview/CustomGestureDetector;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/luck/picture/lib/photoview/CustomGestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Lcom/luck/picture/lib/photoview/OnViewDragListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mOnViewDragListener:Lcom/luck/picture/lib/photoview/OnViewDragListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)F
    .locals 0

    .line 25
    iget p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMaxScale:F

    return p0
.end method

.method static synthetic access$1300(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Lcom/luck/picture/lib/photoview/OnScaleChangedListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcom/luck/picture/lib/photoview/OnScaleChangedListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Lcom/luck/picture/lib/photoview/OnSingleFlingListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSingleFlingListener:Lcom/luck/picture/lib/photoview/OnSingleFlingListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Lcom/luck/picture/lib/photoview/OnViewTapListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/luck/picture/lib/photoview/OnViewTapListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Lcom/luck/picture/lib/photoview/OnPhotoTapListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/luck/picture/lib/photoview/OnPhotoTapListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Lcom/luck/picture/lib/photoview/OnGestureListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->onGestureListener:Lcom/luck/picture/lib/photoview/OnGestureListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mZoomDuration:I

    return p0
.end method

.method static synthetic access$2200(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return p0
.end method

.method static synthetic access$600(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    return p0
.end method

.method static synthetic access$700(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    return p0
.end method

.method static synthetic access$800(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    return p0
.end method

.method static synthetic access$900(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;)Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;

    return-object p0
.end method

.method static synthetic access$902(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;)Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;

    return-object p1
.end method

.method private cancelFling()V
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    const/4 v0, 0x0

    .line 710
    iput-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/luck/picture/lib/photoview/PhotoViewAttacher$FlingRunnable;

    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .line 561
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private checkMatrixBounds()Z
    .locals 13

    .line 642
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 646
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 648
    iget-object v4, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v5, v2, v4

    const/4 v6, -0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-gtz v5, :cond_3

    .line 650
    sget-object v5, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v12, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v12

    aget v5, v5, v12

    if-eq v5, v10, :cond_2

    if-eq v5, v8, :cond_1

    sub-float/2addr v4, v2

    div-float/2addr v4, v7

    .line 658
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_1
    sub-float/2addr v4, v2

    .line 655
    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v4, v2

    goto :goto_1

    .line 652
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v2

    .line 661
    :goto_1
    iput v10, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    goto :goto_2

    .line 662
    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v11

    if-lez v2, :cond_4

    .line 663
    iput v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 664
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v2

    goto :goto_2

    .line 665
    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    .line 666
    iput v9, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 667
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v2

    goto :goto_2

    .line 669
    :cond_5
    iput v6, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    move v4, v11

    .line 671
    :goto_2
    iget-object v2, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v5, v3, v2

    if-gtz v5, :cond_8

    .line 673
    sget-object v1, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v5, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v10, :cond_7

    if-eq v1, v8, :cond_6

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    .line 681
    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_6
    sub-float/2addr v2, v3

    .line 678
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v2, v0

    move v11, v2

    goto :goto_4

    .line 675
    :cond_7
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v11, v0

    .line 684
    :goto_4
    iput v10, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    goto :goto_5

    .line 685
    :cond_8
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v11

    if-lez v3, :cond_9

    .line 686
    iput v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 687
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v11, v0

    goto :goto_5

    .line 688
    :cond_9
    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_a

    .line 689
    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v11, v2, v0

    .line 690
    iput v9, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    goto :goto_5

    .line 692
    :cond_a
    iput v6, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 695
    :goto_5
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v11, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v9
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 573
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 576
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 575
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 577
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 578
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 512
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 513
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 2

    .line 704
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 2

    .line 700
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 533
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMatrixValues:[F

    aget p1, p1, p2

    return p1
.end method

.method private resetMatrix()V
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 541
    iget v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 542
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 543
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 549
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/luck/picture/lib/photoview/OnMatrixChangedListener;

    if-eqz v0, :cond_0

    .line 550
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/luck/picture/lib/photoview/OnMatrixChangedListener;

    invoke-interface {v0, p1}, Lcom/luck/picture/lib/photoview/OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 593
    iget-object v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 594
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 595
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 596
    iget-object v3, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    .line 599
    iget-object v5, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    .line 600
    iget-object v3, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 603
    :cond_1
    iget-object v5, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    .line 604
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 605
    iget-object v4, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 606
    iget-object v4, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 609
    :cond_2
    iget-object v5, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 610
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 611
    iget-object v4, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 612
    iget-object v4, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 616
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 617
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 618
    iget v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseRotation:F

    float-to-int v0, v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4

    .line 619
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 621
    :cond_4
    sget-object p1, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    goto :goto_0

    .line 632
    :cond_5
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 629
    :cond_6
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 626
    :cond_7
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 623
    :cond_8
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 638
    :goto_0
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->resetMatrix()V

    return-void
.end method


# virtual methods
.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 500
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 261
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 262
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .line 303
    iget v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMaxScale:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 299
    iget v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMidScale:F

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 295
    iget v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMinScale:F

    return v0
.end method

.method public getScale()F
    .locals 6

    .line 307
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    .line 308
    invoke-direct {p0, v1, v4}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 307
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public isZoomEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    iget-boolean v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method public isZoomable()Z
    .locals 1

    .line 476
    iget-boolean v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 327
    iget-boolean v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/luck/picture/lib/photoview/Util;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 328
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v3, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 347
    new-instance v9, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getScale()F

    move-result v5

    iget v6, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMinScale:F

    .line 348
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;FFFF)V

    .line 347
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v3, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 352
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 354
    new-instance v9, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getScale()F

    move-result v5

    iget v6, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 355
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;FFFF)V

    .line 354
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    move p1, v2

    goto :goto_2

    .line 330
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 334
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 338
    :cond_3
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->cancelFling()V

    :cond_4
    :goto_1
    move p1, v1

    .line 362
    :goto_2
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/luck/picture/lib/photoview/CustomGestureDetector;

    if-eqz v0, :cond_8

    .line 363
    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/CustomGestureDetector;->isScaling()Z

    move-result p1

    .line 364
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/luck/picture/lib/photoview/CustomGestureDetector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/CustomGestureDetector;->isDragging()Z

    move-result v0

    .line 365
    iget-object v3, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/luck/picture/lib/photoview/CustomGestureDetector;

    invoke-virtual {v3, p2}, Lcom/luck/picture/lib/photoview/CustomGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_5

    .line 366
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/luck/picture/lib/photoview/CustomGestureDetector;

    invoke-virtual {p1}, Lcom/luck/picture/lib/photoview/CustomGestureDetector;->isScaling()Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    if-nez v0, :cond_6

    .line 367
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/luck/picture/lib/photoview/CustomGestureDetector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/photoview/CustomGestureDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    move v1, v2

    .line 368
    :cond_7
    iput-boolean v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    move v1, v3

    goto :goto_5

    :cond_8
    move v1, p1

    .line 371
    :goto_5
    iget-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    .line 380
    iput-boolean p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return-void
.end method

.method public setBaseRotation(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 278
    iput p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 279
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->update()V

    .line 280
    iget p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 281
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 273
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    const/4 p1, 0x1

    return p1

    .line 267
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaximumScale(F)V
    .locals 2

    .line 394
    iget v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcom/luck/picture/lib/photoview/Util;->checkZoomLevels(FFF)V

    .line 395
    iput p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMaxScale:F

    return-void
.end method

.method public setMediumScale(F)V
    .locals 2

    .line 389
    iget v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcom/luck/picture/lib/photoview/Util;->checkZoomLevels(FFF)V

    .line 390
    iput p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMidScale:F

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2

    .line 384
    iget v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lcom/luck/picture/lib/photoview/Util;->checkZoomLevels(FFF)V

    .line 385
    iput p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMinScale:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/luck/picture/lib/photoview/OnMatrixChangedListener;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/luck/picture/lib/photoview/OnMatrixChangedListener;

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcom/luck/picture/lib/photoview/OnOutsidePhotoTapListener;

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/luck/picture/lib/photoview/OnPhotoTapListener;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/luck/picture/lib/photoview/OnPhotoTapListener;

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/luck/picture/lib/photoview/OnScaleChangedListener;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcom/luck/picture/lib/photoview/OnScaleChangedListener;

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/luck/picture/lib/photoview/OnSingleFlingListener;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSingleFlingListener:Lcom/luck/picture/lib/photoview/OnSingleFlingListener;

    return-void
.end method

.method public setOnViewDragListener(Lcom/luck/picture/lib/photoview/OnViewDragListener;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mOnViewDragListener:Lcom/luck/picture/lib/photoview/OnViewDragListener;

    return-void
.end method

.method public setOnViewTapListener(Lcom/luck/picture/lib/photoview/OnViewTapListener;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/luck/picture/lib/photoview/OnViewTapListener;

    return-void
.end method

.method public setRotationBy(F)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 291
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 286
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p0, p1, v0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7

    .line 447
    iget v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    if-eqz p4, :cond_0

    .line 451
    iget-object p4, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    new-instance v6, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/luck/picture/lib/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 454
    :cond_0
    iget-object p4, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 455
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    :goto_0
    return-void

    .line 448
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScale(FZ)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 439
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 440
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 438
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 0

    .line 399
    invoke-static {p1, p2, p3}, Lcom/luck/picture/lib/photoview/Util;->checkZoomLevels(FFF)V

    .line 400
    iput p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMinScale:F

    .line 401
    iput p2, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMidScale:F

    .line 402
    iput p3, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mMaxScale:F

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 469
    invoke-static {p1}, Lcom/luck/picture/lib/photoview/Util;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 470
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 471
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setZoomInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0

    .line 521
    iput p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mZoomDuration:I

    return-void
.end method

.method public setZoomable(Z)V
    .locals 0

    .line 480
    iput-boolean p1, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 481
    invoke-virtual {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    .line 485
    iget-boolean v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/luck/picture/lib/photoview/PhotoViewAttacher;->resetMatrix()V

    :goto_0
    return-void
.end method
