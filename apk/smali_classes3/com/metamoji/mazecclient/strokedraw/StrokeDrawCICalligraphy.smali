.class public Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;
.super Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;
.source "StrokeDrawCICalligraphy.java"


# instance fields
.field calligraphyFactory_:Lcom/metamoji/ci/CalligraphyFactory;


# direct methods
.method static bridge synthetic -$$Nest$mgetDefaultCalligraphyPath(Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;)Landroid/graphics/Path;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->getDefaultCalligraphyPath()Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/strokedraw/StrokeCIParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Lcom/metamoji/mazecclient/strokedraw/StrokeCIParams;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;-><init>(Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/strokedraw/StrokeCIParams;)V

    return-void
.end method

.method private getDefaultCalligraphyPath()Landroid/graphics/Path;
    .locals 2

    .line 207
    invoke-direct {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->updateCalligraphyProps()V

    .line 208
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->calligraphyFactory_:Lcom/metamoji/ci/CalligraphyFactory;

    invoke-virtual {v0}, Lcom/metamoji/ci/CalligraphyFactory;->roiReset()V

    .line 209
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->calligraphyFactory_:Lcom/metamoji/ci/CalligraphyFactory;

    invoke-virtual {v0}, Lcom/metamoji/ci/CalligraphyFactory;->solve()V

    .line 212
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->calligraphyFactory_:Lcom/metamoji/ci/CalligraphyFactory;

    iget-object v0, v0, Lcom/metamoji/ci/CalligraphyFactory;->shapes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    return-object v0
.end method

.method private updateCalligraphyProps()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->calligraphyFactory_:Lcom/metamoji/ci/CalligraphyFactory;

    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->strokeStyle_:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliAngle()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/metamoji/ci/CalligraphyFactory;->penAngle:D

    .line 62
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->calligraphyFactory_:Lcom/metamoji/ci/CalligraphyFactory;

    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->strokeStyle_:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliRate()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/metamoji/ci/CalligraphyFactory;->penRate:D

    .line 63
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->calligraphyFactory_:Lcom/metamoji/ci/CalligraphyFactory;

    iget v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->lineWidth_:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/metamoji/ci/CalligraphyFactory;->penWidth:D

    return-void
.end method


# virtual methods
.method protected applyDrawAttribute(Landroid/graphics/Paint;)V
    .locals 2

    .line 238
    invoke-super {p0, p1}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->applyDrawAttribute(Landroid/graphics/Paint;)V

    .line 239
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->strokeStyle_:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result v0

    .line 246
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public draw(Lcom/metamoji/df/sprite/Context;)V
    .locals 4

    .line 133
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->pathesForPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 138
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->strokeStyle_:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliPaintType()Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    move-result-object v1

    .line 139
    sget-object v3, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->DEFAULT:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 142
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 143
    iget-object v2, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->gradationParams_:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;

    if-eqz v2, :cond_1

    .line 144
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    iget-object v2, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->gradationParams_:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;

    invoke-virtual {v2, v1}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->applyDrawAttribute(Landroid/graphics/Paint;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0, v1}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->applyDrawAttribute(Landroid/graphics/Paint;)V

    .line 150
    :goto_0
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected init(Lcom/metamoji/ci/LineReducer;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->init(Lcom/metamoji/ci/LineReducer;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V

    .line 36
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object p1

    .line 37
    sget-object p2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq p1, p2, :cond_0

    .line 38
    const-string p1, "Warning! MMJStrokeDrawCI is a drawer for stroke the pen type of which is calligraphy."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 40
    :cond_0
    new-instance p1, Lcom/metamoji/ci/CalligraphyFactory;

    invoke-direct {p1}, Lcom/metamoji/ci/CalligraphyFactory;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->calligraphyFactory_:Lcom/metamoji/ci/CalligraphyFactory;

    .line 41
    iget-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->curveInterpolator_:Lcom/metamoji/ci/CurveInterpolator;

    iget-object p1, p1, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    .line 42
    iget-object p2, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->calligraphyFactory_:Lcom/metamoji/ci/CalligraphyFactory;

    invoke-virtual {p2, p1}, Lcom/metamoji/ci/CalligraphyFactory;->init(Ljava/util/List;)V

    .line 43
    iget-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->calligraphyFactory_:Lcom/metamoji/ci/CalligraphyFactory;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/metamoji/ci/CalligraphyFactory;->degenerateSurface:Z

    return-void
.end method

.method protected pathesForPoints(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->curveInterpolator_:Lcom/metamoji/ci/CurveInterpolator;

    iget-object v2, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->segmentAttr_:Ljava/util/List;

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/ci/CurveInterpolator;->init(Ljava/util/List;Ljava/util/List;)V

    .line 106
    iget-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->curveInterpolator_:Lcom/metamoji/ci/CurveInterpolator;

    invoke-virtual {p1}, Lcom/metamoji/ci/CurveInterpolator;->solve()V

    .line 110
    iget-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->curveInterpolator_:Lcom/metamoji/ci/CurveInterpolator;

    iget-object p1, p1, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;->strokeStyle_:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliPaintType()Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    move-result-object p1

    .line 115
    sget-object v1, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->CUBIC:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    if-ne p1, v1, :cond_2

    return-object v0

    .line 120
    :cond_2
    new-instance p1, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy$1;

    invoke-direct {p1, p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy$1;-><init>(Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;)V

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method
