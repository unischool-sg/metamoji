.class public Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;
.super Ljava/lang/Object;
.source "DrUtReducer.java"


# instance fields
.field private m_addedBezierPointCount:I

.field private m_addedReducedPointCount:I

.field private m_bezierPoints:Lcom/metamoji/cm/PointArray;

.field private m_curveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

.field private m_delta:F

.field private m_lineReducer:Lcom/metamoji/ci/LineReducer;

.field private m_points:Lcom/metamoji/cm/PointArray;

.field private m_reducedPoints:Lcom/metamoji/cm/PointArray;

.field private m_reducerBegan:Z

.field private m_segmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private m_updateBezierPoints:Z

.field private m_zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_delta:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_zoom:F

    return-void
.end method


# virtual methods
.method public addPoint(Landroid/graphics/PointF;Z)V
    .locals 3

    .line 240
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducerBegan:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 241
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducedPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    .line 249
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_lineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {v2, p1, p2}, Lcom/metamoji/ci/LineReducer;->addPoint(Landroid/graphics/PointF;Z)V

    .line 252
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducedPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_addedReducedPointCount:I

    .line 255
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_points:Lcom/metamoji/cm/PointArray;

    if-eqz v0, :cond_1

    .line 256
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 260
    :cond_1
    iget p1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_addedReducedPointCount:I

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_updateBezierPoints:Z

    if-nez p1, :cond_2

    goto :goto_0

    .line 268
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    .line 271
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_curveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    invoke-virtual {v0, p2}, Lcom/metamoji/ci/CurveInterpolator;->update(Z)V

    .line 274
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_addedBezierPointCount:I

    if-eqz p2, :cond_4

    .line 278
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducerBegan:Z

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 262
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducerBegan:Z

    :cond_4
    return-void
.end method

.method public addedBezierPointCount()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_addedBezierPointCount:I

    return v0
.end method

.method public addedReducedPointCount()I
    .locals 1

    .line 283
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_addedReducedPointCount:I

    return v0
.end method

.method public beginReducerAtPoint(Landroid/graphics/PointF;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducerBegan:Z

    .line 202
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_updateBezierPoints:Z

    .line 205
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducedPoints:Lcom/metamoji/cm/PointArray;

    .line 206
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_segmentData:Ljava/util/List;

    const/4 p2, 0x0

    .line 207
    iput p2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_addedReducedPointCount:I

    .line 210
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->createLineReducer()Lcom/metamoji/ci/LineReducer;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_lineReducer:Lcom/metamoji/ci/LineReducer;

    .line 211
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducedPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    .line 212
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_lineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_segmentData:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    .line 215
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_lineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {v0}, Lcom/metamoji/ci/LineReducer;->initSequential()V

    .line 218
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_updateBezierPoints:Z

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    if-eqz v0, :cond_0

    .line 220
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 224
    :goto_0
    iput p2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_addedBezierPointCount:I

    .line 225
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->createCurveInterpolator()Lcom/metamoji/ci/CurveInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_curveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    .line 226
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    .line 227
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_curveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducedPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_segmentData:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ci/CurveInterpolator;->init(Ljava/util/List;Ljava/util/List;)V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_lineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ci/LineReducer;->addPoint(Landroid/graphics/PointF;Z)V

    .line 234
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_points:Lcom/metamoji/cm/PointArray;

    if-eqz p2, :cond_2

    .line 235
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    :cond_2
    return-void
.end method

.method public bezierPoints()Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    return-object v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_points:Lcom/metamoji/cm/PointArray;

    .line 295
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducedPoints:Lcom/metamoji/cm/PointArray;

    .line 296
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_segmentData:Ljava/util/List;

    .line 297
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 298
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_lineReducer:Lcom/metamoji/ci/LineReducer;

    .line 299
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_curveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    const/4 v0, 0x0

    .line 300
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_addedReducedPointCount:I

    .line 301
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_addedBezierPointCount:I

    .line 302
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducerBegan:Z

    return-void
.end method

.method createCurveInterpolator()Lcom/metamoji/ci/CurveInterpolator;
    .locals 5

    .line 330
    new-instance v0, Lcom/metamoji/ci/CurveInterpolator;

    invoke-direct {v0}, Lcom/metamoji/ci/CurveInterpolator;-><init>()V

    .line 331
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_delta:F

    iget v2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_zoom:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/metamoji/ci/CurveInterpolator;->deltaOfInputTime:D

    .line 332
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_zoom:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/metamoji/ci/CurveInterpolator;->scaleOfInputTime:D

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    .line 334
    iput-wide v1, v0, Lcom/metamoji/ci/CurveInterpolator;->curvePriority:D

    const-wide v3, 0x4052c00000000000L    # 75.0

    .line 335
    iput-wide v3, v0, Lcom/metamoji/ci/CurveInterpolator;->theta:D

    .line 336
    iput-wide v1, v0, Lcom/metamoji/ci/CurveInterpolator;->leaveFactor:D

    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    .line 337
    iput-wide v1, v0, Lcom/metamoji/ci/CurveInterpolator;->eccentricity:D

    return-object v0
.end method

.method createLineReducer()Lcom/metamoji/ci/LineReducer;
    .locals 5

    .line 312
    new-instance v0, Lcom/metamoji/ci/LineReducer;

    invoke-direct {v0}, Lcom/metamoji/ci/LineReducer;-><init>()V

    .line 313
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_delta:F

    iget v2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_zoom:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    .line 314
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_zoom:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/metamoji/ci/LineReducer;->scaleOfInputTime:D

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 315
    iput-wide v1, v0, Lcom/metamoji/ci/LineReducer;->headingNoiseFactor:D

    const-wide/16 v3, 0x0

    .line 316
    iput-wide v3, v0, Lcom/metamoji/ci/LineReducer;->continuousNoiseFactor:D

    .line 317
    iput-wide v1, v0, Lcom/metamoji/ci/LineReducer;->tailingNoiseFactor:D

    const-wide v1, 0x3f9eb851e0000000L    # 0.029999999329447746

    .line 318
    iput-wide v1, v0, Lcom/metamoji/ci/LineReducer;->linearThreshold:D

    .line 319
    iput-wide v1, v0, Lcom/metamoji/ci/LineReducer;->linearCancelThreshold:D

    const-wide v1, 0x4050f8f5c0000000L    # 67.88999938964844

    .line 320
    iput-wide v1, v0, Lcom/metamoji/ci/LineReducer;->curvedLimitAngle:D

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    .line 321
    iput-wide v1, v0, Lcom/metamoji/ci/LineReducer;->curvePriority:D

    .line 322
    iput-wide v3, v0, Lcom/metamoji/ci/LineReducer;->minimumLineLength:D

    return-object v0
.end method

.method public delta()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_delta:F

    return v0
.end method

.method public points()Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_points:Lcom/metamoji/cm/PointArray;

    return-object v0
.end method

.method public reducePoints()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_points:Lcom/metamoji/cm/PointArray;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducedPoints:Lcom/metamoji/cm/PointArray;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_segmentData:Ljava/util/List;

    .line 155
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->createLineReducer()Lcom/metamoji/ci/LineReducer;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducedPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    .line 157
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_segmentData:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    .line 158
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ci/LineReducer;->reducePoints(Ljava/util/List;)Ljava/util/List;

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1
.end method

.method public reducedPoints()Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducedPoints:Lcom/metamoji/cm/PointArray;

    return-object v0
.end method

.method public segmentData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_segmentData:Ljava/util/List;

    return-object v0
.end method

.method public setBezierPoints(Lcom/metamoji/cm/PointArray;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 127
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    return-void

    .line 130
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 131
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 134
    :cond_1
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    return-void
.end method

.method public setDelta(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 59
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_delta:F

    return-void
.end method

.method public setPoints(Lcom/metamoji/cm/PointArray;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 81
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_points:Lcom/metamoji/cm/PointArray;

    return-void

    .line 84
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 85
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 88
    :cond_1
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_points:Lcom/metamoji/cm/PointArray;

    return-void
.end method

.method public setReducedPoints(Lcom/metamoji/cm/PointArray;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 99
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducedPoints:Lcom/metamoji/cm/PointArray;

    return-void

    .line 102
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 103
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 106
    :cond_1
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducedPoints:Lcom/metamoji/cm/PointArray;

    return-void
.end method

.method public setSegmentData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_segmentData:Ljava/util/List;

    return-void
.end method

.method public setZoom(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 70
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_zoom:F

    return-void
.end method

.method public updateBezierPoints()Z
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducedPoints:Lcom/metamoji/cm/PointArray;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_segmentData:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    if-eqz v0, :cond_1

    .line 177
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 183
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->createCurveInterpolator()Lcom/metamoji/ci/CurveInterpolator;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    .line 185
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_reducedPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_segmentData:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ci/CurveInterpolator;->init(Ljava/util/List;Ljava/util/List;)V

    const/4 v1, 0x1

    .line 186
    invoke-virtual {v0, v1}, Lcom/metamoji/ci/CurveInterpolator;->update(Z)V

    return v1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1
.end method

.method public zoom()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->m_zoom:F

    return v0
.end method
