.class public Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;
.super Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;
.source "StrokeDrawCIStd.java"


# static fields
.field private static final CURVEINTERPOLATOR_DELTA_MIN:F = 0.75f


# instance fields
.field curveInterpolator_:Lcom/metamoji/ci/CurveInterpolator;

.field protected segmentAttr_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/strokedraw/StrokeCIParams;)V
    .locals 1
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

    .line 71
    invoke-direct {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;-><init>()V

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0, p3}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->init(Lcom/metamoji/ci/LineReducer;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V

    if-eqz p4, :cond_0

    .line 74
    invoke-virtual {p4}, Lcom/metamoji/mazecclient/strokedraw/StrokeCIParams;->getDelta()D

    move-result-wide p3

    invoke-virtual {p0, p3, p4}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->setCurveInterpolatorDelta(D)V

    .line 76
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->setPoints(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static drawer(Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/strokedraw/StrokeCIParams;)Lcom/metamoji/mazecclient/strokedraw/IStrokeDraw;
    .locals 2
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
            ")",
            "Lcom/metamoji/mazecclient/strokedraw/IStrokeDraw;"
        }
    .end annotation

    .line 207
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v0, v1, :cond_0

    .line 208
    new-instance v0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;-><init>(Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/strokedraw/StrokeCIParams;)V

    return-object v0

    .line 210
    :cond_0
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne v0, v1, :cond_1

    .line 212
    new-instance v0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCICalligraphy;-><init>(Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/strokedraw/StrokeCIParams;)V

    return-object v0

    .line 214
    :cond_1
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object p0

    sget-object p1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne p0, p1, :cond_2

    .line 215
    new-instance p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;

    invoke-direct {p0, p2}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawFountain;-><init>(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public draw(Lcom/metamoji/df/sprite/Context;)V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->pathesForPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 164
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 165
    invoke-virtual {p0, v1}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->applyDrawAttribute(Landroid/graphics/Paint;)V

    .line 167
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 184
    invoke-super {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->getPoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected init(Lcom/metamoji/ci/LineReducer;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p2}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->initialize(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V

    .line 63
    invoke-interface {p2}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object p1

    .line 64
    sget-object p2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq p1, p2, :cond_0

    .line 65
    const-string p1, "Warning! MMJStrokeDrawCIStd is a drawer for stroke the pen type of which is starndard or calligraphy."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected initialize(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V
    .locals 3

    .line 40
    new-instance v0, Lcom/metamoji/ci/CurveInterpolator;

    invoke-direct {v0}, Lcom/metamoji/ci/CurveInterpolator;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->curveInterpolator_:Lcom/metamoji/ci/CurveInterpolator;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    .line 44
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->curveInterpolator_:Lcom/metamoji/ci/CurveInterpolator;

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    iput-wide v1, v0, Lcom/metamoji/ci/CurveInterpolator;->deltaOfInputTime:D

    .line 51
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->cloneImmutable()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->strokeStyle_:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    return-void
.end method

.method protected pathesForPoints(Ljava/util/List;)Ljava/util/List;
    .locals 7
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

    .line 123
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->curveInterpolator_:Lcom/metamoji/ci/CurveInterpolator;

    iget-object v2, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->segmentAttr_:Ljava/util/List;

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/ci/CurveInterpolator;->init(Ljava/util/List;Ljava/util/List;)V

    .line 128
    iget-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->curveInterpolator_:Lcom/metamoji/ci/CurveInterpolator;

    invoke-virtual {p1}, Lcom/metamoji/ci/CurveInterpolator;->solve()V

    .line 132
    iget-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->curveInterpolator_:Lcom/metamoji/ci/CurveInterpolator;

    iget-object p1, p1, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 138
    :cond_1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    .line 139
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 140
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 141
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 146
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    add-int/lit8 v2, v2, 0x2

    .line 147
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 148
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5, v4, v6, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    .line 150
    :cond_2
    new-instance p1, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd$1;

    invoke-direct {p1, p0, v0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd$1;-><init>(Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;Landroid/graphics/Path;)V

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method protected setCurveInterpolatorDelta(D)V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->curveInterpolator_:Lcom/metamoji/ci/CurveInterpolator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    cmpg-double v3, p1, v1

    if-gez v3, :cond_1

    move-wide p1, v1

    .line 232
    :cond_1
    iput-wide p1, v0, Lcom/metamoji/ci/CurveInterpolator;->deltaOfInputTime:D

    return-void
.end method

.method protected setPoints(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->clearPoints()V

    .line 174
    invoke-virtual {p0, p1}, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->addPoints(Ljava/util/List;)V

    .line 175
    iput-object p2, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDrawCIStd;->segmentAttr_:Ljava/util/List;

    return-void
.end method
