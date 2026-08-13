.class public Lcom/luck/picture/lib/widget/MediumBoldTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MediumBoldTextView.java"


# instance fields
.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/widget/MediumBoldTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/luck/picture/lib/widget/MediumBoldTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x3f19999a    # 0.6f

    .line 20
    iput v0, p0, Lcom/luck/picture/lib/widget/MediumBoldTextView;->mStrokeWidth:F

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/luck/picture/lib/R$styleable;->PictureMediumBoldTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 33
    sget p2, Lcom/luck/picture/lib/R$styleable;->PictureMediumBoldTextView_stroke_Width:I

    iget p3, p0, Lcom/luck/picture/lib/widget/MediumBoldTextView;->mStrokeWidth:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/luck/picture/lib/widget/MediumBoldTextView;->mStrokeWidth:F

    .line 34
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/MediumBoldTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v1

    iget v2, p0, Lcom/luck/picture/lib/widget/MediumBoldTextView;->mStrokeWidth:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 42
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/luck/picture/lib/widget/MediumBoldTextView;->mStrokeWidth:F

    .line 49
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/MediumBoldTextView;->invalidate()V

    return-void
.end method
