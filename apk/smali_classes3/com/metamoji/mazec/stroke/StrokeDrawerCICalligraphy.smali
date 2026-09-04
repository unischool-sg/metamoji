.class public Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;
.super Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;
.source "StrokeDrawerCICalligraphy.java"


# instance fields
.field private mCalliFactory:Lcom/metamoji/ci/CalligraphyFactory;

.field private mCurShapes:Lcom/metamoji/mazec/stroke/drawable/PathShapes;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;-><init>(Z)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCalliFactory:Lcom/metamoji/ci/CalligraphyFactory;

    .line 25
    new-instance v0, Lcom/metamoji/ci/CalligraphyFactory;

    invoke-direct {v0}, Lcom/metamoji/ci/CalligraphyFactory;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCalliFactory:Lcom/metamoji/ci/CalligraphyFactory;

    .line 26
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCurveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    iget-object v1, v1, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/metamoji/ci/CalligraphyFactory;->init(Ljava/util/List;)V

    return-void
.end method

.method private updateCalligraphy(Lcom/metamoji/mazec/stroke/drawable/PathShapes;ILcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;Z)V
    .locals 4

    add-int/lit8 p2, p2, -0x3

    const/4 v0, 0x0

    if-gez p2, :cond_0

    move p2, v0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCalliFactory:Lcom/metamoji/ci/CalligraphyFactory;

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mStyleResolver:Lcom/metamoji/mazec/stroke/StrokeStyleResolver;

    invoke-interface {v2, p3}, Lcom/metamoji/mazec/stroke/StrokeStyleResolver;->getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v1, Lcom/metamoji/ci/CalligraphyFactory;->penWidth:D

    .line 55
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCalliFactory:Lcom/metamoji/ci/CalligraphyFactory;

    invoke-virtual {v1}, Lcom/metamoji/ci/CalligraphyFactory;->roiReset()V

    .line 56
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCalliFactory:Lcom/metamoji/ci/CalligraphyFactory;

    iput p2, v1, Lcom/metamoji/ci/CalligraphyFactory;->roiStart:I

    .line 57
    iget-object p2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCalliFactory:Lcom/metamoji/ci/CalligraphyFactory;

    invoke-virtual {p2}, Lcom/metamoji/ci/CalligraphyFactory;->solve()V

    .line 58
    iget-object p2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCalliFactory:Lcom/metamoji/ci/CalligraphyFactory;

    iget-object p2, p2, Lcom/metamoji/ci/CalligraphyFactory;->shapes:Ljava/util/List;

    .line 59
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 60
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Path;

    .line 61
    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->addShape(Landroid/graphics/Path;)V

    if-eqz p4, :cond_3

    if-eqz p5, :cond_2

    .line 64
    invoke-virtual {p3}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineColor()I

    move-result p1

    const/high16 p3, -0x1000000

    and-int/2addr p1, p3

    if-eqz p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCurShapes:Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    invoke-virtual {p1, p4}, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->getBounds(Landroid/graphics/RectF;)V

    return-void

    .line 68
    :cond_1
    invoke-virtual {p2, p4, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void

    .line 71
    :cond_2
    invoke-virtual {p2, p4, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 3

    .line 31
    invoke-super {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCalliFactory:Lcom/metamoji/ci/CalligraphyFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getCalliAngle()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/CalligraphyFactory;->penAngle:D

    .line 35
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCalliFactory:Lcom/metamoji/ci/CalligraphyFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getCalliRate()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/CalligraphyFactory;->penRate:D

    .line 36
    new-instance p1, Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    invoke-direct {p1}, Lcom/metamoji/mazec/stroke/drawable/PathShapes;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCurShapes:Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCurShapes:Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    return-void
.end method

.method public canDraw(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z
    .locals 1

    .line 43
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public drawableForStroke(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 6

    .line 84
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->solveCurve(Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 86
    new-instance v1, Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    invoke-direct {v1}, Lcom/metamoji/mazec/stroke/drawable/PathShapes;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->updateCalligraphy(Lcom/metamoji/mazec/stroke/drawable/PathShapes;ILcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;Z)V

    return-object v1
.end method

.method public getCurrentDrawable()Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCurShapes:Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    return-object v0
.end method

.method protected updateCurrrentDrawable(Ljava/util/List;ILandroid/graphics/RectF;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;I",
            "Landroid/graphics/RectF;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-super {p0, p1, p2, v0, p4}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->updateCurrrentDrawable(Ljava/util/List;ILandroid/graphics/RectF;Z)V

    .line 49
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mCurShapes:Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v4

    move-object v1, p0

    move v3, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;->updateCalligraphy(Lcom/metamoji/mazec/stroke/drawable/PathShapes;ILcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;Z)V

    return-void
.end method
