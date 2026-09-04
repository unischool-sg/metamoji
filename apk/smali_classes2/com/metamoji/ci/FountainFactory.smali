.class public Lcom/metamoji/ci/FountainFactory;
.super Ljava/lang/Object;
.source "FountainFactory.java"


# static fields
.field static final innerCurveNoiseFilter:D = 0.2

.field static final insideWidthAdjustAngle:D = 80.0

.field static final insideWidthAdjustRate:D = 0.5


# instance fields
.field angles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public bezierPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public deltaOfInputTime:D

.field distances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public drawingMaxDelta:D

.field public headAdjustment:Z

.field public headNoiseFilterRate:D

.field public highDensityFatness:D

.field isDrawing:Z

.field public mu:D

.field public mu0:D

.field public mu0Delta:D

.field public mu0Rate:D

.field public muDelta:D

.field public muRate:D

.field newBezierPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field newPenAttrArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public nu:D

.field public nu0:D

.field public nu0Delta:D

.field public nu0Rate:D

.field public nuDelta:D

.field public nuRate:D

.field public omega:D

.field public omega0:D

.field public omega0Delta:D

.field public omega0Rate:D

.field public omegaDelta:D

.field public omegaRate:D

.field public penAttrArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public penWidth:D

.field public scaleOfInputTime:D

.field public shortStrokeAdjustment:Z

.field solvedAngle:I

.field public strongCouplingDistance:D

.field public tailNoiseFilterRate:D

.field public weakCouplingDistance:D

.field public widthDisplacementLimit:D

.field public widthLimit:D

.field widths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    .line 242
    iput-wide v0, p0, Lcom/metamoji/ci/FountainFactory;->penWidth:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 243
    iput-wide v0, p0, Lcom/metamoji/ci/FountainFactory;->scaleOfInputTime:D

    const-wide v2, 0x3fee666666666666L    # 0.95

    .line 244
    iput-wide v2, p0, Lcom/metamoji/ci/FountainFactory;->deltaOfInputTime:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 245
    iput-wide v2, p0, Lcom/metamoji/ci/FountainFactory;->highDensityFatness:D

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    .line 246
    iput-wide v2, p0, Lcom/metamoji/ci/FountainFactory;->strongCouplingDistance:D

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 247
    iput-wide v2, p0, Lcom/metamoji/ci/FountainFactory;->weakCouplingDistance:D

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 249
    iput-wide v2, p0, Lcom/metamoji/ci/FountainFactory;->mu:D

    .line 250
    iput-wide v0, p0, Lcom/metamoji/ci/FountainFactory;->mu0:D

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    .line 251
    iput-wide v4, p0, Lcom/metamoji/ci/FountainFactory;->nu:D

    .line 252
    iput-wide v4, p0, Lcom/metamoji/ci/FountainFactory;->nu0:D

    .line 253
    iput-wide v2, p0, Lcom/metamoji/ci/FountainFactory;->omega:D

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    .line 254
    iput-wide v4, p0, Lcom/metamoji/ci/FountainFactory;->omega0:D

    const-wide v4, 0x4041800000000000L    # 35.0

    .line 256
    iput-wide v4, p0, Lcom/metamoji/ci/FountainFactory;->omega0Delta:D

    iput-wide v4, p0, Lcom/metamoji/ci/FountainFactory;->omegaDelta:D

    iput-wide v4, p0, Lcom/metamoji/ci/FountainFactory;->nu0Delta:D

    iput-wide v4, p0, Lcom/metamoji/ci/FountainFactory;->nuDelta:D

    iput-wide v4, p0, Lcom/metamoji/ci/FountainFactory;->mu0Delta:D

    iput-wide v4, p0, Lcom/metamoji/ci/FountainFactory;->muDelta:D

    const-wide v6, 0x3fc999999999999aL    # 0.2

    .line 257
    iput-wide v6, p0, Lcom/metamoji/ci/FountainFactory;->omega0Rate:D

    iput-wide v6, p0, Lcom/metamoji/ci/FountainFactory;->omegaRate:D

    iput-wide v6, p0, Lcom/metamoji/ci/FountainFactory;->nu0Rate:D

    iput-wide v6, p0, Lcom/metamoji/ci/FountainFactory;->nuRate:D

    iput-wide v6, p0, Lcom/metamoji/ci/FountainFactory;->mu0Rate:D

    iput-wide v6, p0, Lcom/metamoji/ci/FountainFactory;->muRate:D

    .line 258
    iput-wide v2, p0, Lcom/metamoji/ci/FountainFactory;->headNoiseFilterRate:D

    .line 259
    iput-wide v0, p0, Lcom/metamoji/ci/FountainFactory;->tailNoiseFilterRate:D

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/metamoji/ci/FountainFactory;->headAdjustment:Z

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 262
    iput-wide v0, p0, Lcom/metamoji/ci/FountainFactory;->drawingMaxDelta:D

    .line 263
    iput-wide v4, p0, Lcom/metamoji/ci/FountainFactory;->widthLimit:D

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 264
    iput-wide v0, p0, Lcom/metamoji/ci/FountainFactory;->widthDisplacementLimit:D

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/metamoji/ci/FountainFactory;->shortStrokeAdjustment:Z

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/FountainFactory;->angles:Ljava/util/List;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/FountainFactory;->widths:Ljava/util/List;

    return-void
.end method


# virtual methods
.method angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 2

    .line 288
    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method angleFromBezier(I)D
    .locals 9

    .line 294
    iget-object v0, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    if-nez p1, :cond_0

    .line 293
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    add-int/lit8 p1, p1, 0x2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/FountainFactory;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v0

    return-wide v0

    .line 294
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 297
    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    if-ne p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x2

    .line 295
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/FountainFactory;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v0

    return-wide v0

    :cond_1
    add-int/lit8 v0, p1, -0x2

    .line 297
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/ci/FountainFactory;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v1

    .line 298
    iget-object v3, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    add-int/lit8 p1, p1, 0x2

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-static {v0, v3, p1}, Lcom/metamoji/ci/CI;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v3

    .line 299
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_2

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v7

    const-wide v7, 0x4076800000000000L    # 360.0

    div-double/2addr v3, v7

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    :cond_2
    return-wide v1
.end method

.method public createPath()Landroid/graphics/Path;
    .locals 4

    const/4 v0, 0x0

    .line 707
    iput-boolean v0, p0, Lcom/metamoji/ci/FountainFactory;->isDrawing:Z

    .line 708
    invoke-virtual {p0}, Lcom/metamoji/ci/FountainFactory;->fullStrokeAdjustment()V

    .line 709
    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    .line 710
    iget-object v2, p0, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    .line 711
    iget-object v3, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    iput-object v3, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    .line 712
    iget-object v3, p0, Lcom/metamoji/ci/FountainFactory;->newPenAttrArray:Ljava/util/List;

    iput-object v3, p0, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    .line 713
    invoke-virtual {p0}, Lcom/metamoji/ci/FountainFactory;->reset()V

    .line 714
    iget-object v3, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v0, v3, v0}, Lcom/metamoji/ci/FountainFactory;->createPathMain(IIZ)Landroid/graphics/Path;

    move-result-object v0

    .line 715
    iput-object v1, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    .line 716
    iput-object v2, p0, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    return-object v0
.end method

.method public createPath(IIZ)Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x1

    .line 601
    iput-boolean v0, p0, Lcom/metamoji/ci/FountainFactory;->isDrawing:Z

    .line 602
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ci/FountainFactory;->createPathMain(IIZ)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method createPathMain(IIZ)Landroid/graphics/Path;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 499
    invoke-virtual {v0}, Lcom/metamoji/ci/FountainFactory;->updateAnglesFromBezier()V

    .line 500
    invoke-virtual {v0}, Lcom/metamoji/ci/FountainFactory;->updateDistancesFromBezier()V

    .line 501
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 503
    iget-object v5, v0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_0

    if-nez p3, :cond_0

    .line 504
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/ci/FountainFactory;->widthOnBezier(I)F

    move-result v5

    float-to-double v6, v5

    const-wide v8, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v6, v8

    .line 505
    iget-object v8, v0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 506
    iget-object v1, v0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 507
    new-instance v2, Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iget v6, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v5

    iget v7, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v5

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v5

    invoke-direct {v2, v4, v6, v7, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    invoke-virtual {v3, v2, v1, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    return-object v3

    :cond_0
    if-eqz p3, :cond_2

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    :cond_1
    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    move v6, v4

    .line 519
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move v11, v1

    :goto_1
    if-gt v11, v2, :cond_5

    const/16 v16, 0x2

    .line 523
    iget-object v5, v0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    const-wide v17, 0x3fc999999999999aL    # 0.2

    .line 524
    div-int/lit8 v12, v11, 0x2

    invoke-virtual {v0, v12}, Lcom/metamoji/ci/FountainFactory;->vector(I)Landroid/graphics/PointF;

    move-result-object v13

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    .line 525
    invoke-virtual {v0, v11}, Lcom/metamoji/ci/FountainFactory;->widthOnBezier(I)F

    move-result v14

    if-eq v11, v1, :cond_3

    if-eq v11, v2, :cond_3

    add-int/lit8 v8, v12, 0x1

    .line 527
    invoke-virtual {v0, v12, v8}, Lcom/metamoji/ci/FountainFactory;->dAngle(II)D

    move-result-wide v8

    const-wide/high16 v21, 0x4054000000000000L    # 80.0

    cmpl-double v12, v8, v21

    if-lez v12, :cond_3

    float-to-double v14, v14

    mul-double v14, v14, v19

    double-to-float v14, v14

    .line 530
    :cond_3
    new-instance v12, Landroid/graphics/PointF;

    iget v15, v5, Landroid/graphics/PointF;->x:F

    move-wide/from16 v19, v8

    iget v8, v13, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v14

    sub-float/2addr v15, v8

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v8, v13, Landroid/graphics/PointF;->x:F

    mul-float/2addr v8, v14

    add-float/2addr v5, v8

    invoke-direct {v12, v15, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 531
    iget-boolean v5, v0, Lcom/metamoji/ci/FountainFactory;->isDrawing:Z

    if-nez v5, :cond_4

    if-eq v11, v1, :cond_4

    if-eq v11, v2, :cond_4

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v5, v19, v8

    if-lez v5, :cond_4

    invoke-static {v12, v10}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v8

    float-to-double v13, v14

    mul-double v13, v13, v17

    cmpg-double v5, v8, v13

    if-gez v5, :cond_4

    goto :goto_2

    .line 532
    :cond_4
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v10, v12

    :goto_2
    add-int/lit8 v11, v11, 0x2

    move-wide/from16 v8, v19

    goto :goto_1

    :cond_5
    const/16 v16, 0x2

    const-wide v17, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    .line 535
    invoke-virtual {v0, v7}, Lcom/metamoji/ci/FountainFactory;->quickInterpolate(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 536
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    .line 537
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    sub-int/2addr v12, v6

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    .line 538
    iget v13, v11, Landroid/graphics/PointF;->x:F

    iget v14, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/lit8 v13, v4, 0x2

    .line 539
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    sub-int/2addr v14, v6

    if-gt v13, v14, :cond_6

    add-int/lit8 v14, v13, -0x1

    .line 540
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/PointF;

    .line 541
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    move/from16 v21, v4

    .line 542
    iget v4, v14, Landroid/graphics/PointF;->x:F

    iget v14, v14, Landroid/graphics/PointF;->y:F

    move-object/from16 v22, v5

    iget v5, v15, Landroid/graphics/PointF;->x:F

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v14, v5, v15}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v13, v13, 0x2

    move/from16 v4, v21

    move-object/from16 v5, v22

    goto :goto_3

    :cond_6
    move/from16 v21, v4

    .line 544
    invoke-interface {v7}, Ljava/util/List;->clear()V

    move v4, v2

    :goto_4
    if-lt v4, v1, :cond_9

    .line 546
    iget-object v5, v0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 547
    div-int/lit8 v13, v4, 0x2

    invoke-virtual {v0, v13}, Lcom/metamoji/ci/FountainFactory;->vector(I)Landroid/graphics/PointF;

    move-result-object v14

    .line 548
    invoke-virtual {v0, v4}, Lcom/metamoji/ci/FountainFactory;->widthOnBezier(I)F

    move-result v15

    if-eq v4, v1, :cond_7

    if-eq v4, v2, :cond_7

    add-int/lit8 v8, v13, 0x1

    .line 550
    invoke-virtual {v0, v13, v8}, Lcom/metamoji/ci/FountainFactory;->dAngle(II)D

    move-result-wide v8

    const-wide/high16 v22, -0x3fac000000000000L    # -80.0

    cmpg-double v13, v8, v22

    move-wide/from16 v22, v8

    if-gez v13, :cond_7

    float-to-double v8, v15

    mul-double v8, v8, v19

    double-to-float v15, v8

    move-wide/from16 v8, v22

    .line 553
    :cond_7
    new-instance v13, Landroid/graphics/PointF;

    move-wide/from16 v22, v8

    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v9, v14, Landroid/graphics/PointF;->y:F

    mul-float/2addr v9, v15

    add-float/2addr v8, v9

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v9, v14, Landroid/graphics/PointF;->x:F

    mul-float/2addr v9, v15

    sub-float/2addr v5, v9

    invoke-direct {v13, v8, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 554
    iget-boolean v5, v0, Lcom/metamoji/ci/FountainFactory;->isDrawing:Z

    if-nez v5, :cond_8

    if-eq v4, v1, :cond_8

    if-eq v4, v2, :cond_8

    const-wide/high16 v8, -0x3fdc000000000000L    # -10.0

    cmpg-double v5, v22, v8

    if-gez v5, :cond_8

    invoke-static {v13, v10}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v8

    float-to-double v14, v15

    mul-double v14, v14, v17

    cmpg-double v5, v8, v14

    if-gez v5, :cond_8

    goto :goto_5

    .line 555
    :cond_8
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v10, v13

    :goto_5
    add-int/lit8 v4, v4, -0x2

    move-wide/from16 v8, v22

    goto :goto_4

    .line 558
    :cond_9
    invoke-virtual {v0, v7}, Lcom/metamoji/ci/FountainFactory;->quickInterpolate(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 559
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 560
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int v4, v4, v21

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    if-eqz p3, :cond_a

    .line 562
    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_6

    .line 564
    :cond_a
    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_6
    add-int/lit8 v6, v6, 0x2

    .line 566
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int v5, v5, v21

    if-gt v6, v5, :cond_b

    add-int/lit8 v5, v6, -0x1

    .line 567
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 568
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 569
    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v9, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v8, v5, v9, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_7

    :cond_b
    if-nez v21, :cond_c

    .line 572
    iget v1, v11, Landroid/graphics/PointF;->x:F

    iget v5, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 574
    :cond_c
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const-wide v9, 0x4066800000000000L    # 180.0

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    if-nez p3, :cond_d

    .line 576
    invoke-virtual {v0, v12, v2}, Lcom/metamoji/ci/FountainFactory;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v15

    div-double/2addr v15, v13

    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    mul-double v7, v15, v9

    double-to-float v7, v7

    .line 577
    invoke-static {v12, v2}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v15

    move-wide/from16 v17, v9

    div-double v9, v15, p1

    double-to-float v8, v9

    .line 578
    invoke-static {v12, v2, v6}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 579
    new-instance v9, Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v8

    iget v12, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v8

    iget v15, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v15, v8

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v8

    invoke-direct {v9, v10, v12, v15, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    add-float/2addr v7, v5

    invoke-virtual {v3, v9, v7, v1}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    goto :goto_8

    :cond_d
    move-wide/from16 v17, v9

    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    :goto_8
    if-nez v21, :cond_e

    .line 582
    invoke-virtual {v0, v4, v11}, Lcom/metamoji/ci/FountainFactory;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v7

    div-double/2addr v7, v13

    mul-double v7, v7, v17

    double-to-float v2, v7

    .line 583
    invoke-static {v4, v11}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v7

    div-double v7, v7, p1

    double-to-float v7, v7

    .line 584
    invoke-static {v4, v11, v6}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v4

    .line 585
    new-instance v6, Landroid/graphics/RectF;

    iget v8, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v7

    iget v9, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v7

    iget v10, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v7

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v7

    invoke-direct {v6, v8, v9, v10, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    add-float/2addr v2, v5

    invoke-virtual {v3, v6, v2, v1}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    :cond_e
    return-object v3
.end method

.method dAngle(II)D
    .locals 8

    .line 484
    iget-object v0, p0, Lcom/metamoji/ci/FountainFactory;->angles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v6

    .line 485
    iget-object p2, p0, Lcom/metamoji/ci/FountainFactory;->angles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    mul-double/2addr p1, v2

    div-double/2addr p1, v4

    div-double/2addr p1, v6

    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    add-double/2addr v0, v2

    :cond_0
    cmpg-double v4, p1, v4

    if-gez v4, :cond_1

    add-double/2addr p1, v2

    :cond_1
    sub-double/2addr v0, p1

    const-wide p1, 0x4066800000000000L    # 180.0

    cmpl-double p1, v0, p1

    if-lez p1, :cond_2

    sub-double/2addr v0, v2

    return-wide v0

    :cond_2
    const-wide p1, -0x3f99800000000000L    # -180.0

    cmpg-double p1, v0, p1

    if-gez p1, :cond_3

    add-double/2addr v0, v2

    :cond_3
    return-wide v0
.end method

.method dBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 5

    .line 283
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    mul-float/2addr v1, p4

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr p3, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p3, v2

    mul-float/2addr p3, v3

    mul-float/2addr p3, p4

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    mul-float/2addr p2, v3

    add-float/2addr p3, p2

    invoke-direct {v0, v1, p3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method distance(I)D
    .locals 2

    .line 337
    div-int/lit8 p1, p1, 0x2

    .line 338
    iget-object v0, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method fullStrokeAdjustment()V
    .locals 15

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/metamoji/ci/FountainFactory;->newPenAttrArray:Ljava/util/List;

    .line 633
    invoke-virtual {p0}, Lcom/metamoji/ci/FountainFactory;->updateAnglesFromBezier()V

    .line 634
    invoke-virtual {p0}, Lcom/metamoji/ci/FountainFactory;->updateDistancesFromBezier()V

    .line 636
    iget-object v0, p0, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 637
    :goto_0
    iget-object v3, p0, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 638
    :goto_1
    iget-object v4, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 640
    iget-boolean v6, p0, Lcom/metamoji/ci/FountainFactory;->shortStrokeAdjustment:Z

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v7, :cond_a

    .line 641
    invoke-virtual {p0, v1}, Lcom/metamoji/ci/FountainFactory;->widthOnBezier0(I)F

    move-result v6

    .line 642
    invoke-virtual {p0, v8}, Lcom/metamoji/ci/FountainFactory;->widthOnBezier0(I)F

    move-result v9

    cmpg-float v10, v9, v6

    if-gez v10, :cond_2

    move v6, v9

    :cond_2
    float-to-double v9, v6

    .line 644
    iget-wide v11, p0, Lcom/metamoji/ci/FountainFactory;->penWidth:D

    const-wide v13, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v11, v13

    cmpg-double v6, v9, v11

    if-gez v6, :cond_a

    if-eqz v0, :cond_4

    if-eqz v3, :cond_3

    .line 651
    iget-wide v9, p0, Lcom/metamoji/ci/FountainFactory;->omegaRate:D

    mul-double/2addr v9, v4

    .line 652
    iget-wide v11, p0, Lcom/metamoji/ci/FountainFactory;->omegaDelta:D

    cmpg-double v3, v11, v9

    if-gez v3, :cond_6

    goto :goto_2

    .line 654
    :cond_3
    iget-wide v9, p0, Lcom/metamoji/ci/FountainFactory;->nuRate:D

    mul-double/2addr v9, v4

    .line 655
    iget-wide v11, p0, Lcom/metamoji/ci/FountainFactory;->nuDelta:D

    cmpg-double v3, v11, v9

    if-gez v3, :cond_6

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    .line 659
    iget-wide v9, p0, Lcom/metamoji/ci/FountainFactory;->omega0Rate:D

    mul-double/2addr v9, v4

    .line 660
    iget-wide v11, p0, Lcom/metamoji/ci/FountainFactory;->omega0Delta:D

    cmpg-double v3, v11, v9

    if-gez v3, :cond_6

    goto :goto_2

    .line 662
    :cond_5
    iget-wide v9, p0, Lcom/metamoji/ci/FountainFactory;->nu0Rate:D

    mul-double/2addr v9, v4

    .line 663
    iget-wide v11, p0, Lcom/metamoji/ci/FountainFactory;->nu0Delta:D

    cmpg-double v3, v11, v9

    if-gez v3, :cond_6

    :goto_2
    move-wide v9, v11

    :cond_6
    const-wide/16 v11, 0x0

    cmpl-double v3, v9, v11

    if-eqz v3, :cond_7

    sub-double v9, v4, v9

    .line 666
    invoke-virtual {p0, v9, v10}, Lcom/metamoji/ci/FountainFactory;->splitNewBezier(D)V

    :cond_7
    if-eqz v0, :cond_8

    .line 669
    iget-wide v9, p0, Lcom/metamoji/ci/FountainFactory;->muRate:D

    mul-double/2addr v4, v9

    .line 670
    iget-wide v9, p0, Lcom/metamoji/ci/FountainFactory;->muDelta:D

    cmpg-double v0, v9, v4

    if-gez v0, :cond_9

    goto :goto_3

    .line 672
    :cond_8
    iget-wide v9, p0, Lcom/metamoji/ci/FountainFactory;->mu0Rate:D

    mul-double/2addr v4, v9

    .line 673
    iget-wide v9, p0, Lcom/metamoji/ci/FountainFactory;->mu0Delta:D

    cmpg-double v0, v9, v4

    if-gez v0, :cond_9

    :goto_3
    move-wide v4, v9

    :cond_9
    cmpl-double v0, v4, v11

    if-eqz v0, :cond_a

    .line 675
    invoke-virtual {p0, v4, v5}, Lcom/metamoji/ci/FountainFactory;->splitNewBezier(D)V

    .line 680
    :cond_a
    iget-boolean v0, p0, Lcom/metamoji/ci/FountainFactory;->headAdjustment:Z

    if-eqz v0, :cond_b

    .line 681
    invoke-virtual {p0, v1}, Lcom/metamoji/ci/FountainFactory;->widthOnBezier(I)F

    move-result v0

    float-to-double v3, v0

    iget-wide v5, p0, Lcom/metamoji/ci/FountainFactory;->headNoiseFilterRate:D

    mul-double/2addr v3, v5

    .line 682
    iget-object v0, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 683
    :goto_4
    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v7, :cond_b

    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v5

    cmpg-double v1, v5, v3

    if-gez v1, :cond_b

    .line 684
    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 685
    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 686
    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->newPenAttrArray:Ljava/util/List;

    const/4 v5, 0x4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    iget-object v6, p0, Lcom/metamoji/ci/FountainFactory;->newPenAttrArray:Ljava/util/List;

    const/4 v11, 0x5

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    add-double/2addr v9, v12

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->newPenAttrArray:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 691
    :cond_b
    iget-object v0, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/metamoji/ci/FountainFactory;->widthOnBezier(I)F

    move-result v0

    float-to-double v0, v0

    iget-wide v3, p0, Lcom/metamoji/ci/FountainFactory;->tailNoiseFilterRate:D

    mul-double/2addr v0, v3

    .line 692
    iget-object v3, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 693
    :goto_5
    iget-object v4, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_c

    iget-object v4, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-static {v3, v4}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    cmpg-double v4, v4, v0

    if-gez v4, :cond_c

    .line 694
    iget-object v4, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 695
    iget-object v4, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 696
    iget-object v4, p0, Lcom/metamoji/ci/FountainFactory;->newPenAttrArray:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 697
    iget-object v5, p0, Lcom/metamoji/ci/FountainFactory;->newPenAttrArray:Ljava/util/List;

    add-int/lit8 v6, v4, -0x2

    sub-int/2addr v4, v2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    iget-object v11, p0, Lcom/metamoji/ci/FountainFactory;->newPenAttrArray:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v5, v6, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v5, p0, Lcom/metamoji/ci/FountainFactory;->newPenAttrArray:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_c
    return-void
.end method

.method quickInterpolate(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 453
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 458
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 459
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 460
    invoke-static {v1, v2, v3}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v6, 0x3

    if-ne v2, v6, :cond_1

    .line 462
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 463
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 464
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    const v5, 0x3ecccccd    # 0.4f

    .line 465
    invoke-static {v1, v2, v5}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v5, 0x3f4ccccd    # 0.8f

    .line 466
    invoke-static {v1, v2, v5}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x3e4ccccd    # 0.2f

    .line 468
    invoke-static {v2, v3, v1}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x3f19999a    # 0.6f

    .line 469
    invoke-static {v2, v3, v1}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_0
    add-int/lit8 v7, v2, -0x3

    if-gt v1, v7, :cond_2

    .line 472
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 473
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    .line 474
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 475
    invoke-static {v7, v8, v3}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method reduceFactor(I)D
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    add-int/lit8 p1, p1, 0x4

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 277
    iput v0, p0, Lcom/metamoji/ci/FountainFactory;->solvedAngle:I

    .line 278
    iget-object v0, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 279
    iget-object v0, p0, Lcom/metamoji/ci/FountainFactory;->widths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method splitNewBezier(D)V
    .locals 8

    const/4 v0, 0x0

    .line 610
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpl-double v1, v1, p1

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v0, -0x1

    .line 615
    iget-object v2, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr p1, v2

    iget-object v2, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    div-double/2addr p1, v2

    double-to-float p1, p1

    mul-int/lit8 v1, v1, 0x2

    .line 618
    iget-object p2, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    .line 619
    iget-object v2, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 620
    iget-object v4, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    add-int/lit8 v5, v1, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 621
    iget-object v6, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    invoke-static {p2, v2, p1}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 622
    iget-object v3, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    invoke-static {p2, v2, v4, p1}, Lcom/metamoji/ci/CI;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p2

    invoke-interface {v3, v5, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object p2, p0, Lcom/metamoji/ci/FountainFactory;->newBezierPoints:Ljava/util/List;

    add-int/lit8 v1, v1, 0x3

    invoke-static {v2, v4, p1}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 624
    iget-object p2, p0, Lcom/metamoji/ci/FountainFactory;->newPenAttrArray:Ljava/util/List;

    add-int/lit8 v1, v0, 0x3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 625
    iget-object p2, p0, Lcom/metamoji/ci/FountainFactory;->newPenAttrArray:Ljava/util/List;

    float-to-double v4, p1

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object p2, p0, Lcom/metamoji/ci/FountainFactory;->newPenAttrArray:Ljava/util/List;

    add-int/lit8 v0, v0, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method updateAnglesFromBezier()V
    .locals 6

    .line 307
    iget-object v0, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 308
    div-int/lit8 v1, v1, 0x2

    .line 309
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ci/FountainFactory;->angles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_0

    iget-object v2, p0, Lcom/metamoji/ci/FountainFactory;->angles:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_0
    iget v1, p0, Lcom/metamoji/ci/FountainFactory;->solvedAngle:I

    add-int/lit8 v1, v1, -0x2

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_1
    if-gt v1, v0, :cond_2

    .line 314
    iget-object v2, p0, Lcom/metamoji/ci/FountainFactory;->angles:Ljava/util/List;

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/metamoji/ci/FountainFactory;->angleFromBezier(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 316
    iput v0, p0, Lcom/metamoji/ci/FountainFactory;->solvedAngle:I

    return-void
.end method

.method updateDistancesFromBezier()V
    .locals 6

    .line 320
    iget-object v0, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 321
    div-int/lit8 v0, v0, 0x2

    .line 323
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_1

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v5, v1, -0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    .line 327
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 326
    invoke-static {v4, v1}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    add-double v1, v2, v4

    .line 328
    :goto_1
    iget-object v3, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method vector(I)Landroid/graphics/PointF;
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/metamoji/ci/FountainFactory;->angles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 448
    new-instance p1, Landroid/graphics/PointF;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method widthOnBezier(I)F
    .locals 13

    .line 424
    div-int/lit8 v0, p1, 0x2

    .line 425
    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 426
    iget-boolean v2, p0, Lcom/metamoji/ci/FountainFactory;->isDrawing:Z

    if-eqz v2, :cond_1

    if-lt v0, v1, :cond_1

    .line 427
    iget-object v0, p0, Lcom/metamoji/ci/FountainFactory;->widths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/metamoji/ci/FountainFactory;->widths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 428
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ci/FountainFactory;->widthOnBezier0(I)F

    move-result p1

    return p1

    .line 431
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ci/FountainFactory;->widths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 443
    iget-object v1, p0, Lcom/metamoji/ci/FountainFactory;->widths:Ljava/util/List;

    if-lt v0, p1, :cond_4

    .line 432
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 v1, p1, 0x2

    .line 433
    invoke-virtual {p0, v1}, Lcom/metamoji/ci/FountainFactory;->widthOnBezier0(I)F

    move-result v1

    float-to-double v1, v1

    if-eqz p1, :cond_3

    .line 435
    iget-object v3, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v5, p0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double/2addr v3, v5

    .line 436
    iget-object v5, p0, Lcom/metamoji/ci/FountainFactory;->widths:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v5, p1

    sub-double v7, v1, v5

    div-double/2addr v7, v3

    .line 438
    iget-wide v9, p0, Lcom/metamoji/ci/FountainFactory;->widthDisplacementLimit:D

    cmpl-double p1, v7, v9

    if-lez p1, :cond_2

    mul-double/2addr v3, v9

    add-double v1, v5, v3

    goto :goto_1

    :cond_2
    neg-double v11, v9

    cmpg-double p1, v7, v11

    if-gez p1, :cond_3

    mul-double/2addr v3, v9

    sub-double v1, v5, v3

    .line 441
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/metamoji/ci/FountainFactory;->widths:Ljava/util/List;

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method widthOnBezier0(I)F
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 343
    iget-object v2, v0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    const/4 v3, 0x2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v6, 0x1

    if-lt v1, v6, :cond_0

    .line 346
    iget-object v7, v0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    add-int/lit8 v8, v1, -0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    invoke-static {v2, v7}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v9

    div-int/2addr v8, v3

    invoke-virtual {v0, v8}, Lcom/metamoji/ci/FountainFactory;->reduceFactor(I)D

    move-result-wide v7

    div-double/2addr v9, v7

    goto :goto_0

    :cond_0
    move-wide v9, v4

    .line 348
    :goto_0
    iget-object v7, v0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    if-ge v1, v7, :cond_1

    iget-object v4, v0, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    add-int/lit8 v5, v1, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-static {v2, v4}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    div-int/lit8 v2, v1, 0x2

    .line 349
    invoke-virtual {v0, v2}, Lcom/metamoji/ci/FountainFactory;->reduceFactor(I)D

    move-result-wide v7

    div-double/2addr v4, v7

    :cond_1
    const-wide/16 v7, 0x0

    cmpl-double v2, v9, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    if-lez v2, :cond_2

    cmpl-double v7, v4, v7

    if-ltz v7, :cond_2

    add-double/2addr v9, v4

    div-double/2addr v9, v11

    goto :goto_1

    :cond_2
    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    move-wide v9, v4

    .line 355
    :goto_1
    iget-wide v4, v0, Lcom/metamoji/ci/FountainFactory;->strongCouplingDistance:D

    mul-double/2addr v4, v11

    iget-wide v7, v0, Lcom/metamoji/ci/FountainFactory;->scaleOfInputTime:D

    div-double/2addr v4, v7

    .line 356
    iget-wide v13, v0, Lcom/metamoji/ci/FountainFactory;->weakCouplingDistance:D

    mul-double/2addr v13, v11

    div-double/2addr v13, v7

    cmpg-double v2, v9, v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_4

    .line 358
    iget-wide v4, v0, Lcom/metamoji/ci/FountainFactory;->highDensityFatness:D

    goto :goto_2

    :cond_4
    cmpl-double v2, v9, v13

    if-ltz v2, :cond_5

    move-wide v4, v7

    goto :goto_2

    .line 360
    :cond_5
    iget-wide v11, v0, Lcom/metamoji/ci/FountainFactory;->highDensityFatness:D

    sub-double/2addr v9, v4

    sub-double/2addr v13, v4

    div-double/2addr v9, v13

    sub-double v4, v11, v7

    mul-double/2addr v9, v4

    sub-double v4, v11, v9

    .line 363
    :goto_2
    iget-object v2, v0, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    if-ne v2, v6, :cond_6

    move v2, v6

    goto :goto_3

    :cond_6
    move v2, v9

    .line 364
    :goto_3
    iget-object v10, v0, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->byteValue()B

    move-result v10

    if-ne v10, v6, :cond_7

    move v9, v6

    .line 365
    :cond_7
    iget-object v10, v0, Lcom/metamoji/ci/FountainFactory;->distances:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    if-eqz v2, :cond_9

    .line 371
    iget-wide v12, v0, Lcom/metamoji/ci/FountainFactory;->mu:D

    .line 372
    iget-boolean v6, v0, Lcom/metamoji/ci/FountainFactory;->isDrawing:Z

    if-eqz v6, :cond_8

    iget-wide v14, v0, Lcom/metamoji/ci/FountainFactory;->muDelta:D

    move-wide/from16 v16, v7

    iget-wide v7, v0, Lcom/metamoji/ci/FountainFactory;->scaleOfInputTime:D

    div-double/2addr v14, v7

    move-wide/from16 v18, v4

    goto :goto_5

    :cond_8
    move-wide/from16 v16, v7

    .line 374
    iget-wide v6, v0, Lcom/metamoji/ci/FountainFactory;->muRate:D

    mul-double v14, v10, v6

    .line 375
    iget-wide v6, v0, Lcom/metamoji/ci/FountainFactory;->muDelta:D

    move-wide/from16 v18, v4

    iget-wide v3, v0, Lcom/metamoji/ci/FountainFactory;->scaleOfInputTime:D

    div-double v20, v6, v3

    cmpl-double v5, v14, v20

    if-lez v5, :cond_b

    div-double v14, v6, v3

    goto :goto_5

    :cond_9
    move-wide/from16 v18, v4

    move-wide/from16 v16, v7

    .line 378
    iget-wide v12, v0, Lcom/metamoji/ci/FountainFactory;->mu0:D

    .line 379
    iget-boolean v3, v0, Lcom/metamoji/ci/FountainFactory;->isDrawing:Z

    if-eqz v3, :cond_a

    iget-wide v3, v0, Lcom/metamoji/ci/FountainFactory;->mu0Delta:D

    iget-wide v5, v0, Lcom/metamoji/ci/FountainFactory;->scaleOfInputTime:D

    :goto_4
    div-double v14, v3, v5

    goto :goto_5

    .line 381
    :cond_a
    iget-wide v3, v0, Lcom/metamoji/ci/FountainFactory;->mu0Rate:D

    mul-double v14, v10, v3

    .line 382
    iget-wide v3, v0, Lcom/metamoji/ci/FountainFactory;->mu0Delta:D

    iget-wide v5, v0, Lcom/metamoji/ci/FountainFactory;->scaleOfInputTime:D

    div-double v20, v3, v5

    cmpl-double v7, v14, v20

    if-lez v7, :cond_b

    goto :goto_4

    .line 385
    :cond_b
    :goto_5
    iget-boolean v3, v0, Lcom/metamoji/ci/FountainFactory;->isDrawing:Z

    if-eqz v3, :cond_c

    iget-wide v3, v0, Lcom/metamoji/ci/FountainFactory;->drawingMaxDelta:D

    iget-wide v5, v0, Lcom/metamoji/ci/FountainFactory;->scaleOfInputTime:D

    div-double v20, v3, v5

    cmpl-double v7, v14, v20

    if-lez v7, :cond_c

    div-double v14, v3, v5

    .line 386
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/ci/FountainFactory;->distance(I)D

    move-result-wide v3

    iget-object v5, v0, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    const/4 v8, 0x2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v3, v5

    cmpg-double v5, v3, v14

    if-gez v5, :cond_d

    sub-double v5, v12, v16

    div-double/2addr v5, v14

    mul-double/2addr v5, v3

    sub-double/2addr v12, v5

    mul-double v4, v18, v12

    goto :goto_6

    :cond_d
    move-wide/from16 v4, v18

    .line 390
    :goto_6
    iget-boolean v3, v0, Lcom/metamoji/ci/FountainFactory;->isDrawing:Z

    if-nez v3, :cond_12

    if-eqz v2, :cond_f

    if-eqz v9, :cond_e

    .line 393
    iget-wide v2, v0, Lcom/metamoji/ci/FountainFactory;->omega:D

    .line 394
    iget-wide v6, v0, Lcom/metamoji/ci/FountainFactory;->omegaRate:D

    mul-double/2addr v6, v10

    .line 395
    iget-wide v8, v0, Lcom/metamoji/ci/FountainFactory;->omegaDelta:D

    iget-wide v12, v0, Lcom/metamoji/ci/FountainFactory;->scaleOfInputTime:D

    div-double v14, v8, v12

    cmpl-double v14, v6, v14

    if-lez v14, :cond_11

    goto :goto_7

    .line 397
    :cond_e
    iget-wide v2, v0, Lcom/metamoji/ci/FountainFactory;->nu:D

    .line 398
    iget-wide v6, v0, Lcom/metamoji/ci/FountainFactory;->nuRate:D

    mul-double/2addr v6, v10

    .line 399
    iget-wide v8, v0, Lcom/metamoji/ci/FountainFactory;->nuDelta:D

    iget-wide v12, v0, Lcom/metamoji/ci/FountainFactory;->scaleOfInputTime:D

    div-double v14, v8, v12

    cmpl-double v14, v6, v14

    if-lez v14, :cond_11

    goto :goto_7

    :cond_f
    if-eqz v9, :cond_10

    .line 403
    iget-wide v2, v0, Lcom/metamoji/ci/FountainFactory;->omega0:D

    .line 404
    iget-wide v6, v0, Lcom/metamoji/ci/FountainFactory;->omega0Rate:D

    mul-double/2addr v6, v10

    .line 405
    iget-wide v8, v0, Lcom/metamoji/ci/FountainFactory;->omega0Delta:D

    iget-wide v12, v0, Lcom/metamoji/ci/FountainFactory;->scaleOfInputTime:D

    div-double v14, v8, v12

    cmpl-double v14, v6, v14

    if-lez v14, :cond_11

    goto :goto_7

    .line 407
    :cond_10
    iget-wide v2, v0, Lcom/metamoji/ci/FountainFactory;->nu0:D

    .line 408
    iget-wide v6, v0, Lcom/metamoji/ci/FountainFactory;->nu0Rate:D

    mul-double/2addr v6, v10

    .line 409
    iget-wide v8, v0, Lcom/metamoji/ci/FountainFactory;->nu0Delta:D

    iget-wide v12, v0, Lcom/metamoji/ci/FountainFactory;->scaleOfInputTime:D

    div-double v14, v8, v12

    cmpl-double v14, v6, v14

    if-lez v14, :cond_11

    :goto_7
    div-double v6, v8, v12

    .line 412
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/ci/FountainFactory;->distance(I)D

    move-result-wide v8

    sub-double/2addr v10, v8

    iget-object v1, v0, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    const/4 v8, 0x3

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    float-to-double v8, v1

    add-double/2addr v10, v8

    cmpg-double v1, v10, v6

    if-gez v1, :cond_12

    sub-double v8, v2, v16

    div-double/2addr v8, v6

    mul-double/2addr v8, v10

    sub-double/2addr v2, v8

    mul-double/2addr v4, v2

    .line 416
    :cond_12
    iget-wide v1, v0, Lcom/metamoji/ci/FountainFactory;->penWidth:D

    .line 418
    iget-wide v6, v0, Lcom/metamoji/ci/FountainFactory;->widthLimit:D

    cmpg-double v3, v1, v6

    .line 419
    iget-wide v8, v0, Lcom/metamoji/ci/FountainFactory;->highDensityFatness:D

    if-gez v3, :cond_13

    mul-double/2addr v4, v1

    div-double/2addr v4, v8

    goto :goto_8

    :cond_13
    sub-double/2addr v1, v6

    div-double/2addr v1, v8

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    add-double/2addr v4, v1

    :goto_8
    double-to-float v1, v4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    return v1
.end method
