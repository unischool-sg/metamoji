.class public Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;
.super Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;
.source "StrokeDrawerFountain.java"


# instance fields
.field private mCurShapes:Lcom/metamoji/mazec/stroke/drawable/PathShapes;

.field private mFountainFactory:Lcom/metamoji/ci/FountainFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;-><init>(Z)V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    .line 29
    new-instance v0, Lcom/metamoji/ci/FountainFactory;

    invoke-direct {v0}, Lcom/metamoji/ci/FountainFactory;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    .line 30
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    iget-object v1, v1, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    .line 31
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    iget-object v1, v1, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    .line 32
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-static {}, Lcom/metamoji/mazec/MazecConfig;->getFountainPenStrongCouplingDistance()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->strongCouplingDistance:D

    .line 33
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-static {}, Lcom/metamoji/mazec/MazecConfig;->getFountainPenWeakCouplingDistance()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->weakCouplingDistance:D

    return-void
.end method

.method private updateFountain(Lcom/metamoji/mazec/stroke/drawable/PathShapes;ILcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;Z)V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mStyleResolver:Lcom/metamoji/mazec/stroke/StrokeStyleResolver;

    invoke-interface {v1, p3}, Lcom/metamoji/mazec/stroke/StrokeStyleResolver;->getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->penWidth:D

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-eqz p5, :cond_0

    .line 90
    iget-object p2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p2}, Lcom/metamoji/ci/FountainFactory;->reset()V

    .line 91
    iget-object p2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p2}, Lcom/metamoji/ci/FountainFactory;->createPath()Landroid/graphics/Path;

    move-result-object p2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p2, -0x6

    if-lez v1, :cond_1

    add-int/lit8 v1, p2, -0x8

    .line 97
    :cond_1
    rem-int/lit8 p2, v1, 0x2

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    if-gez v1, :cond_3

    move v1, v0

    .line 101
    :cond_3
    iget-object p2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    iget-object p2, p2, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v1, 0x6

    if-ge p2, v2, :cond_5

    if-eqz p5, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    goto :goto_1

    .line 103
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    xor-int/lit8 v3, p5, 0x1

    invoke-virtual {v2, v1, p2, v3}, Lcom/metamoji/ci/FountainFactory;->createPath(IIZ)Landroid/graphics/Path;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_8

    .line 107
    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->addShape(Landroid/graphics/Path;)V

    if-eqz p4, :cond_8

    if-eqz p5, :cond_7

    .line 110
    invoke-virtual {p3}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineColor()I

    move-result p1

    const/high16 p3, -0x1000000

    and-int/2addr p1, p3

    if-eqz p1, :cond_6

    .line 112
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mCurShapes:Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    invoke-virtual {p1, p4}, Lcom/metamoji/mazec/stroke/drawable/PathShapes;->getBounds(Landroid/graphics/RectF;)V

    return-void

    .line 114
    :cond_6
    invoke-virtual {p2, p4, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void

    .line 117
    :cond_7
    invoke-virtual {p2, p4, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    :cond_8
    return-void
.end method


# virtual methods
.method public attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 5

    .line 38
    invoke-super {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    if-eqz p1, :cond_2

    .line 40
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getFountainProperties()Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTrans()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTrans()D

    move-result-wide v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->highDensityFatness:D

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getBeginStay()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->mu:D

    .line 47
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getBeginRun()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->mu0:D

    .line 48
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTailStay()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->nu:D

    .line 49
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTailRun()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->nu0:D

    .line 50
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getEndStay()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->omega:D

    .line 51
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getEndRun()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->omega0:D

    .line 53
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getBeginStayRate()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->muRate:D

    .line 54
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getBeginStayDelta()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->muDelta:D

    .line 55
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getBeginRunRate()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->mu0Rate:D

    .line 56
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getBeginRunDelta()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->mu0Delta:D

    .line 58
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTailStayRate()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->nuRate:D

    .line 59
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTailStayDelta()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->nuDelta:D

    .line 60
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTailRunRate()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->nu0Rate:D

    .line 61
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTailRunDelta()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->nu0Delta:D

    .line 63
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getEndStayRate()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->omegaRate:D

    .line 64
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getEndStayDelta()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->omegaDelta:D

    .line 65
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getEndRunRate()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->omega0Rate:D

    .line 66
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getEndRunDelta()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->omega0Delta:D

    .line 67
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mFountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {p1}, Lcom/metamoji/ci/FountainFactory;->reset()V

    .line 71
    :cond_1
    new-instance p1, Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    invoke-direct {p1}, Lcom/metamoji/mazec/stroke/drawable/PathShapes;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mCurShapes:Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mCurShapes:Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    return-void
.end method

.method public canDraw(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z
    .locals 1

    .line 78
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public drawableForStroke(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 6

    .line 130
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->solveCurve(Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 132
    new-instance v1, Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    invoke-direct {v1}, Lcom/metamoji/mazec/stroke/drawable/PathShapes;-><init>()V

    .line 134
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->updateFountain(Lcom/metamoji/mazec/stroke/drawable/PathShapes;ILcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;Z)V

    return-object v1
.end method

.method public getCurrentDrawable()Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mCurShapes:Lcom/metamoji/mazec/stroke/drawable/PathShapes;

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

    .line 83
    invoke-super {p0, p1, p2, v0, p4}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->updateCurrrentDrawable(Ljava/util/List;ILandroid/graphics/RectF;Z)V

    .line 84
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mCurShapes:Lcom/metamoji/mazec/stroke/drawable/PathShapes;

    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v4

    move-object v1, p0

    move v3, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;->updateFountain(Lcom/metamoji/mazec/stroke/drawable/PathShapes;ILcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;Z)V

    return-void
.end method
