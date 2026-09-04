.class public Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;
.super Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;
.source "StrokeDrawFountain.java"


# static fields
.field private static final FOUNTAIN_STRONG_COUPLING_DISTANCE_DEFAULT:D = 5.0

.field private static final FOUNTAIN_WEEK_COUPLING_DISTANCE_DEFAULT:D = 20.0


# instance fields
.field private _fountainFactory:Lcom/metamoji/ci/FountainFactory;

.field private _q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;


# direct methods
.method public constructor <init>(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->strokeStyle_:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    .line 29
    new-instance p1, Lcom/metamoji/ci/Q2bInterpolator;

    invoke-direct {p1}, Lcom/metamoji/ci/Q2bInterpolator;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    .line 31
    iget-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    .line 33
    new-instance p1, Lcom/metamoji/ci/FountainFactory;

    invoke-direct {p1}, Lcom/metamoji/ci/FountainFactory;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    .line 34
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    iget-object v0, v0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    iput-object v0, p1, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    .line 35
    iget-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    iget-object v0, v0, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    iput-object v0, p1, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    .line 36
    iget-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p1, Lcom/metamoji/ci/FountainFactory;->strongCouplingDistance:D

    .line 37
    iget-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p1, Lcom/metamoji/ci/FountainFactory;->weakCouplingDistance:D

    return-void
.end method

.method private attachHwStroke()V
    .locals 6

    .line 71
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->strokeStyle_:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getFountainProperties()Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTrans()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTrans()D

    move-result-wide v4

    div-double/2addr v2, v4

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->highDensityFatness:D

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginStay()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->mu:D

    .line 77
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginRun()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->mu0:D

    .line 78
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailStay()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->nu:D

    .line 79
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailRun()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->nu0:D

    .line 80
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndStay()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->omega:D

    .line 81
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndRun()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->omega0:D

    .line 83
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginStayRate()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->muRate:D

    .line 84
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginStayDelta()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->muDelta:D

    .line 85
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginRunRate()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->mu0Rate:D

    .line 86
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginRunDelta()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->mu0Delta:D

    .line 88
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailStayRate()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->nuRate:D

    .line 89
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailStayDelta()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->nuDelta:D

    .line 90
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailRunRate()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->nu0Rate:D

    .line 91
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailRunDelta()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->nu0Delta:D

    .line 93
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndStayRate()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->omegaRate:D

    .line 94
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndStayDelta()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->omegaDelta:D

    .line 95
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndRunRate()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->omega0Rate:D

    .line 96
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndRunDelta()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ci/FountainFactory;->omega0Delta:D

    :cond_1
    return-void
.end method

.method private solveCurve(Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getSegmentAttr()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator;->segmentAttr:Ljava/util/List;

    .line 109
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getPoints()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    .line 110
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getPenAttr()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ci/Q2bInterpolator;->penAttr:Ljava/util/List;

    .line 111
    iget-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    invoke-virtual {p1}, Lcom/metamoji/ci/Q2bInterpolator;->solve()V

    return-void
.end method

.method private updateFountain()Landroid/graphics/Path;
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    iget v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->lineWidth_:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->penWidth:D

    .line 120
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {v0}, Lcom/metamoji/ci/FountainFactory;->reset()V

    .line 121
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {v0}, Lcom/metamoji/ci/FountainFactory;->createPath()Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected applyDrawAttribute(Landroid/graphics/Paint;)V
    .locals 2

    .line 157
    invoke-super {p0, p1}, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->applyDrawAttribute(Landroid/graphics/Paint;)V

    .line 158
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->strokeStyle_:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result v0

    .line 159
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public draw(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;)V
    .locals 2

    .line 44
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getCountOfPoints()I

    move-result v0

    if-lez v0, :cond_1

    .line 45
    invoke-direct {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->attachHwStroke()V

    .line 46
    invoke-direct {p0, p2}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->solveCurve(Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;)V

    .line 49
    invoke-direct {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->updateFountain()Landroid/graphics/Path;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 54
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->gradationParams_:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->gradationParams_:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;

    invoke-virtual {v1, v0}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->applyDrawAttribute(Landroid/graphics/Paint;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;->applyDrawAttribute(Landroid/graphics/Paint;)V

    .line 61
    :goto_0
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
