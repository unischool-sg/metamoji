.class public Lcom/metamoji/ci/CurveInterpolator;
.super Ljava/lang/Object;
.source "CurveInterpolator.java"


# static fields
.field static final DRAW_TO_P2:I = 0x0

.field static final DRAW_TO_P3:I = 0x1

.field static final RESTART_FROM_P2:I = 0x2


# instance fields
.field public bezierPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field cursor:I

.field public curvePriority:D

.field public deltaOfInputTime:D

.field public eccentricity:D

.field isRestart:Z

.field public leaveFactor:D

.field public noiseAcceptor:D

.field reducedPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public scaleOfInputTime:D

.field segmentAttr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public theta:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 78
    iput-wide v0, p0, Lcom/metamoji/ci/CurveInterpolator;->scaleOfInputTime:D

    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 79
    iput-wide v0, p0, Lcom/metamoji/ci/CurveInterpolator;->deltaOfInputTime:D

    const-wide v0, 0x4052c00000000000L    # 75.0

    .line 80
    iput-wide v0, p0, Lcom/metamoji/ci/CurveInterpolator;->theta:D

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 81
    iput-wide v0, p0, Lcom/metamoji/ci/CurveInterpolator;->leaveFactor:D

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    .line 82
    iput-wide v2, p0, Lcom/metamoji/ci/CurveInterpolator;->noiseAcceptor:D

    .line 83
    iput-wide v0, p0, Lcom/metamoji/ci/CurveInterpolator;->curvePriority:D

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 84
    iput-wide v0, p0, Lcom/metamoji/ci/CurveInterpolator;->eccentricity:D

    return-void
.end method


# virtual methods
.method addPoint(FF)V
    .locals 1

    .line 105
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    return-void
.end method

.method addPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method angle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 132
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    .line 133
    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v0

    float-to-double v5, v5

    .line 134
    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v7

    float-to-double v7, v0

    .line 135
    iget v0, v2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    mul-double v9, v3, v3

    mul-double v11, v5, v5

    add-double/2addr v9, v11

    .line 136
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    mul-double v11, v7, v7

    mul-double v13, v0, v0

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    mul-double v11, v3, v0

    mul-double v13, v7, v5

    sub-double/2addr v11, v13

    div-double/2addr v11, v9

    .line 138
    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v11

    const-wide v13, 0x4066800000000000L    # 180.0

    mul-double/2addr v11, v13

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v11, v15

    mul-double/2addr v3, v7

    mul-double/2addr v5, v0

    add-double/2addr v3, v5

    div-double/2addr v3, v9

    .line 140
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    mul-double/2addr v0, v13

    div-double/2addr v0, v15

    const-wide/16 v2, 0x0

    cmpg-double v2, v11, v2

    if-gez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 4

    .line 414
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    .line 415
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p1

    mul-float/2addr v2, p4

    add-float/2addr v1, v2

    .line 416
    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p4

    add-float/2addr p1, v2

    .line 417
    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p2

    mul-float/2addr p3, p4

    add-float/2addr v2, p3

    .line 418
    new-instance p2, Landroid/graphics/PointF;

    sub-float/2addr p1, v0

    mul-float/2addr p1, p4

    add-float/2addr v0, p1

    sub-float/2addr v2, v1

    mul-float/2addr v2, p4

    add-float/2addr v1, v2

    invoke-direct {p2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method cp2(I)V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 110
    iget-object v1, p0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 111
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v3

    div-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(FF)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    return-void
.end method

.method cp3(I)V
    .locals 9

    .line 214
    iget-object v0, p0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 215
    iget-object v1, p0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 216
    iget-object v2, p0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    add-int/lit8 v3, p1, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 218
    invoke-virtual {p0, p1}, Lcom/metamoji/ci/CurveInterpolator;->isLinear(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    iget p1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v3

    div-float/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(FF)V

    .line 220
    invoke-virtual {p0, v1}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    return-void

    .line 224
    :cond_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/ci/CurveInterpolator;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v3

    .line 226
    invoke-virtual {p0, v3, v4, p1}, Lcom/metamoji/ci/CurveInterpolator;->isSharpTurn(DI)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/metamoji/ci/CurveInterpolator;->cp2(I)V

    return-void

    .line 228
    :cond_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/ci/CurveInterpolator;->cpReflect3(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 229
    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/ci/CurveInterpolator;->distToLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/metamoji/ci/CurveInterpolator;->deltaOfInputTime:D

    iget-wide v7, p0, Lcom/metamoji/ci/CurveInterpolator;->scaleOfInputTime:D

    div-double/2addr v5, v7

    invoke-virtual {p0, p1}, Lcom/metamoji/ci/CurveInterpolator;->leaveFactorOf(I)D

    move-result-wide v7

    mul-double/2addr v5, v7

    cmpl-double v0, v3, v5

    if-lez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/metamoji/ci/CurveInterpolator;->cp2(I)V

    return-void

    .line 231
    :cond_2
    invoke-virtual {p0, v2}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    .line 232
    invoke-virtual {p0, v1}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    return-void
.end method

.method cp3e(I)V
    .locals 8

    .line 238
    iget-object v0, p0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 239
    iget-object v1, p0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 240
    iget-object v3, p0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    add-int/lit8 v4, p1, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 241
    invoke-virtual {p0, v0, v1, v3}, Lcom/metamoji/ci/CurveInterpolator;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    .line 242
    invoke-virtual {p0, v4, v5, p1}, Lcom/metamoji/ci/CurveInterpolator;->isSharpTurn(DI)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p0, v2}, Lcom/metamoji/ci/CurveInterpolator;->cp2(I)V

    return-void

    .line 247
    :cond_0
    invoke-virtual {p0, v3, v1, v0}, Lcom/metamoji/ci/CurveInterpolator;->cpReflect3(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 248
    invoke-virtual {p0, v1, v3, p1}, Lcom/metamoji/ci/CurveInterpolator;->distToLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/metamoji/ci/CurveInterpolator;->deltaOfInputTime:D

    iget-wide v6, p0, Lcom/metamoji/ci/CurveInterpolator;->scaleOfInputTime:D

    div-double/2addr v4, v6

    invoke-virtual {p0, v2}, Lcom/metamoji/ci/CurveInterpolator;->leaveFactorOf(I)D

    move-result-wide v6

    mul-double/2addr v4, v6

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/metamoji/ci/CurveInterpolator;->cp2(I)V

    return-void

    .line 250
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    .line 251
    invoke-virtual {p0, v3}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    return-void
.end method

.method cp4(I)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 283
    iget-object v2, v0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 284
    iget-object v3, v0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 285
    iget-object v5, v0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    add-int/lit8 v6, v1, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 286
    iget-object v6, v0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    add-int/lit8 v7, v1, 0x3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 288
    invoke-virtual {v0, v4}, Lcom/metamoji/ci/CurveInterpolator;->isLinear(I)Z

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v7, :cond_0

    .line 289
    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v2, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    div-float/2addr v1, v9

    iget v2, v3, Landroid/graphics/PointF;->y:F

    iget v3, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    div-float/2addr v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(FF)V

    .line 290
    invoke-virtual {v0, v5}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    return v8

    .line 294
    :cond_0
    invoke-virtual {v0, v2, v3, v5}, Lcom/metamoji/ci/CurveInterpolator;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v10

    .line 295
    invoke-virtual {v0, v3, v5, v6}, Lcom/metamoji/ci/CurveInterpolator;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v12

    mul-double v14, v10, v12

    const-wide/16 v16, 0x0

    cmpl-double v7, v14, v16

    const/16 v18, 0x1

    if-lez v7, :cond_1

    move/from16 v7, v18

    goto :goto_0

    :cond_1
    move v7, v8

    .line 299
    :goto_0
    invoke-virtual {v0, v10, v11, v1, v7}, Lcom/metamoji/ci/CurveInterpolator;->isSharpTurn(DIZ)Z

    move-result v19

    if-eqz v19, :cond_5

    cmpg-double v2, v14, v16

    if-gez v2, :cond_2

    .line 300
    invoke-virtual {v0, v12, v13, v4, v7}, Lcom/metamoji/ci/CurveInterpolator;->isSharpTurn(DIZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v2, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    div-float/2addr v1, v9

    iget v2, v3, Landroid/graphics/PointF;->y:F

    iget v3, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    div-float/2addr v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(FF)V

    .line 302
    invoke-virtual {v0, v5}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    return v8

    :cond_2
    const-wide/high16 v12, -0x3fac000000000000L    # -80.0

    cmpg-double v2, v12, v10

    if-gtz v2, :cond_3

    const-wide/high16 v12, 0x4054000000000000L    # 80.0

    cmpg-double v2, v10, v12

    if-lez v2, :cond_4

    .line 306
    :cond_3
    iget-object v2, v0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    if-ne v1, v2, :cond_4

    .line 307
    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v2, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v7, v3, Landroid/graphics/PointF;->y:F

    iget v10, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v10

    float-to-double v10, v7

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v1

    .line 308
    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v10

    float-to-double v10, v7

    iget v7, v5, Landroid/graphics/PointF;->y:F

    iget v12, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v12

    float-to-double v12, v7

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v10

    .line 309
    iget-wide v12, v0, Lcom/metamoji/ci/CurveInterpolator;->noiseAcceptor:D

    div-double/2addr v1, v12

    cmpg-double v1, v10, v1

    if-gez v1, :cond_4

    .line 310
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v3, Landroid/graphics/PointF;->x:F

    float-to-double v7, v2

    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    float-to-double v10, v2

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v10, v12

    add-double/2addr v7, v10

    double-to-float v2, v7

    iget v4, v3, Landroid/graphics/PointF;->y:F

    float-to-double v7, v4

    iget v4, v5, Landroid/graphics/PointF;->y:F

    iget v10, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v10

    float-to-double v10, v4

    mul-double/2addr v10, v12

    add-double/2addr v7, v10

    double-to-float v4, v7

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 311
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    div-float/2addr v2, v9

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    div-float/2addr v3, v9

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(FF)V

    .line 312
    invoke-virtual {v0, v1}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    .line 313
    invoke-virtual {v0, v5}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    .line 314
    invoke-virtual {v0, v6}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    return v18

    .line 318
    :cond_4
    invoke-virtual {v0, v4}, Lcom/metamoji/ci/CurveInterpolator;->cp3(I)V

    return v8

    .line 322
    :cond_5
    invoke-virtual {v0, v12, v13, v4, v7}, Lcom/metamoji/ci/CurveInterpolator;->isSharpTurn(DIZ)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 323
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/ci/CurveInterpolator;->cp3e(I)V

    return v8

    .line 327
    :cond_6
    new-instance v7, Landroid/graphics/PointF;

    iget v10, v3, Landroid/graphics/PointF;->x:F

    iget v11, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v11

    div-float/2addr v10, v9

    iget v11, v3, Landroid/graphics/PointF;->y:F

    move/from16 v19, v8

    iget v8, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v8

    div-float/2addr v11, v9

    invoke-direct {v7, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    cmpg-double v8, v14, v16

    if-gez v8, :cond_9

    const-wide v8, 0x4056800000000000L    # 90.0

    cmpl-double v2, v12, v8

    if-gtz v2, :cond_8

    const-wide v8, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v12, v8

    if-gez v2, :cond_7

    goto :goto_1

    .line 336
    :cond_7
    iget-object v1, v0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 337
    iget-object v1, v0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 339
    invoke-virtual {v0, v3}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    .line 340
    invoke-virtual {v0, v7}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    .line 341
    invoke-virtual {v0, v5}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    .line 342
    invoke-virtual {v0, v6}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    return v18

    .line 331
    :cond_8
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/ci/CurveInterpolator;->cp3e(I)V

    const/4 v1, 0x2

    return v1

    .line 346
    :cond_9
    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/metamoji/ci/CurveInterpolator;->cpReflect4(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 347
    invoke-virtual {v0, v4}, Lcom/metamoji/ci/CurveInterpolator;->leaveFactorOf(I)D

    move-result-wide v8

    .line 349
    invoke-virtual {v0, v3, v5, v1}, Lcom/metamoji/ci/CurveInterpolator;->distToLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v10

    iget-wide v12, v0, Lcom/metamoji/ci/CurveInterpolator;->deltaOfInputTime:D

    iget-wide v14, v0, Lcom/metamoji/ci/CurveInterpolator;->scaleOfInputTime:D

    div-double/2addr v12, v14

    mul-double/2addr v12, v8

    cmpl-double v4, v10, v12

    if-lez v4, :cond_e

    .line 350
    invoke-virtual {v0, v5, v3, v2}, Lcom/metamoji/ci/CurveInterpolator;->cpReflect3(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 351
    invoke-virtual {v0, v3, v5, v1}, Lcom/metamoji/ci/CurveInterpolator;->distToLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v10

    .line 352
    invoke-virtual {v0, v3, v5, v6}, Lcom/metamoji/ci/CurveInterpolator;->cpReflect3(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 353
    invoke-virtual {v0, v3, v5, v4}, Lcom/metamoji/ci/CurveInterpolator;->distToLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v12

    .line 354
    iget-wide v14, v0, Lcom/metamoji/ci/CurveInterpolator;->deltaOfInputTime:D

    move-wide/from16 v16, v8

    iget-wide v8, v0, Lcom/metamoji/ci/CurveInterpolator;->scaleOfInputTime:D

    div-double v20, v14, v8

    mul-double v20, v20, v16

    cmpl-double v18, v10, v20

    if-lez v18, :cond_a

    div-double v20, v14, v8

    mul-double v20, v20, v16

    cmpl-double v18, v12, v20

    if-lez v18, :cond_a

    invoke-virtual {v0, v7}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    goto :goto_2

    :cond_a
    div-double v20, v14, v8

    mul-double v20, v20, v16

    cmpg-double v7, v10, v20

    if-gez v7, :cond_c

    div-double v20, v14, v8

    mul-double v20, v20, v16

    cmpg-double v7, v12, v20

    if-gez v7, :cond_c

    .line 356
    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v7, v8, v2, v3}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v2

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    iget v9, v5, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v6

    float-to-double v9, v9

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v6

    cmpg-double v2, v2, v6

    if-gez v2, :cond_b

    invoke-virtual {v0, v4}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    goto :goto_2

    .line 357
    :cond_b
    invoke-virtual {v0, v1}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    goto :goto_2

    :cond_c
    div-double/2addr v14, v8

    mul-double v14, v14, v16

    cmpg-double v2, v10, v14

    if-gez v2, :cond_d

    .line 358
    invoke-virtual {v0, v1}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    goto :goto_2

    .line 359
    :cond_d
    invoke-virtual {v0, v4}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    goto :goto_2

    .line 360
    :cond_e
    invoke-virtual {v0, v1}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    .line 361
    :goto_2
    invoke-virtual {v0, v5}, Lcom/metamoji/ci/CurveInterpolator;->addPoint(Landroid/graphics/PointF;)V

    return v19
.end method

.method cpReflect3(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 172
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v4

    .line 173
    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    iget v8, v3, Landroid/graphics/PointF;->y:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v6

    .line 174
    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    mul-double/2addr v8, v4

    iget v10, v1, Landroid/graphics/PointF;->x:F

    iget v11, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v11

    float-to-double v10, v10

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    .line 175
    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v10

    float-to-double v10, v3

    mul-double/2addr v4, v10

    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v10

    float-to-double v10, v3

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    .line 176
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    float-to-double v10, v3

    .line 177
    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v7

    div-float/2addr v3, v6

    float-to-double v6, v3

    .line 181
    invoke-virtual {v0, v4, v5}, Lcom/metamoji/ci/CurveInterpolator;->isNearlyZero(D)Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v12, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v12

    float-to-double v12, v3

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v14, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v14

    float-to-double v14, v3

    mul-double/2addr v14, v8

    div-double/2addr v14, v4

    sub-double/2addr v12, v14

    .line 183
    invoke-virtual {v0, v12, v13}, Lcom/metamoji/ci/CurveInterpolator;->isNearlyZero(D)Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v14, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v14

    float-to-double v14, v3

    iget v3, v2, Landroid/graphics/PointF;->y:F

    move-wide/from16 v16, v4

    float-to-double v3, v3

    iget v5, v2, Landroid/graphics/PointF;->x:F

    move-wide/from16 v18, v3

    float-to-double v3, v5

    mul-double/2addr v3, v8

    div-double v3, v3, v16

    add-double v3, v18, v3

    sub-double/2addr v3, v6

    mul-double/2addr v14, v3

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v1

    float-to-double v3, v3

    mul-double/2addr v3, v10

    add-double/2addr v14, v3

    div-double v10, v14, v12

    .line 185
    iget v1, v2, Landroid/graphics/PointF;->y:F

    float-to-double v3, v1

    iget v1, v2, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    sub-double v1, v10, v1

    mul-double/2addr v8, v1

    div-double v8, v8, v16

    sub-double v6, v3, v8

    goto :goto_0

    :cond_0
    move-wide/from16 v16, v4

    .line 187
    invoke-virtual {v0, v8, v9}, Lcom/metamoji/ci/CurveInterpolator;->isNearlyZero(D)Z

    move-result v3

    if-nez v3, :cond_1

    .line 188
    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v12, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v12

    float-to-double v12, v5

    mul-double v12, v12, v16

    div-double/2addr v12, v8

    sub-double/2addr v3, v12

    .line 189
    invoke-virtual {v0, v3, v4}, Lcom/metamoji/ci/CurveInterpolator;->isNearlyZero(D)Z

    move-result v5

    if-nez v5, :cond_1

    .line 190
    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v12

    float-to-double v12, v5

    iget v5, v2, Landroid/graphics/PointF;->x:F

    float-to-double v14, v5

    iget v5, v2, Landroid/graphics/PointF;->y:F

    move-wide/from16 v18, v3

    float-to-double v3, v5

    mul-double v4, v16, v3

    div-double/2addr v4, v8

    add-double/2addr v14, v4

    sub-double/2addr v14, v10

    mul-double/2addr v12, v14

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v1

    float-to-double v3, v3

    mul-double/2addr v3, v6

    add-double/2addr v12, v3

    div-double v6, v12, v18

    .line 191
    iget v1, v2, Landroid/graphics/PointF;->x:F

    float-to-double v3, v1

    iget v1, v2, Landroid/graphics/PointF;->y:F

    float-to-double v1, v1

    sub-double v1, v6, v1

    mul-double v1, v1, v16

    div-double/2addr v1, v8

    sub-double v10, v3, v1

    .line 194
    :cond_1
    :goto_0
    new-instance v1, Landroid/graphics/PointF;

    double-to-float v2, v10

    double-to-float v3, v6

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method cpReflect4(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 256
    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    iget v7, v2, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v5

    .line 257
    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    iget v9, v3, Landroid/graphics/PointF;->y:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v7

    .line 258
    iget v9, v4, Landroid/graphics/PointF;->x:F

    iget v10, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    iget v11, v4, Landroid/graphics/PointF;->y:F

    iget v12, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v9

    .line 259
    iget v11, v3, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    mul-double/2addr v11, v5

    iget v13, v1, Landroid/graphics/PointF;->x:F

    iget v14, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    .line 260
    iget v13, v3, Landroid/graphics/PointF;->y:F

    iget v14, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    mul-double/2addr v5, v13

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v13, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v13

    float-to-double v13, v1

    mul-double/2addr v13, v7

    add-double/2addr v5, v13

    .line 261
    iget v1, v4, Landroid/graphics/PointF;->x:F

    iget v13, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v13

    float-to-double v13, v1

    mul-double/2addr v13, v7

    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v15, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v15

    move-wide v15, v7

    float-to-double v7, v1

    mul-double/2addr v7, v9

    add-double/2addr v13, v7

    .line 262
    iget v1, v4, Landroid/graphics/PointF;->y:F

    iget v4, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v4

    float-to-double v7, v1

    mul-double/2addr v7, v15

    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget v4, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v4

    move-wide v15, v7

    float-to-double v7, v1

    mul-double/2addr v9, v7

    add-double v7, v15, v9

    mul-double v9, v13, v5

    mul-double v15, v7, v11

    move-wide/from16 v17, v7

    sub-double v7, v9, v15

    .line 264
    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v4, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    move/from16 p1, v4

    move-wide/from16 v19, v5

    float-to-double v4, v1

    .line 265
    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v6

    div-float v1, v1, p1

    move-wide/from16 v21, v4

    float-to-double v4, v1

    .line 266
    invoke-virtual {v0, v7, v8}, Lcom/metamoji/ci/CurveInterpolator;->isNearlyZero(D)Z

    move-result v1

    move-wide/from16 v23, v4

    if-nez v1, :cond_1

    move-wide/from16 v4, v19

    .line 267
    invoke-virtual {v0, v4, v5}, Lcom/metamoji/ci/CurveInterpolator;->isNearlyZero(D)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    iget v1, v3, Landroid/graphics/PointF;->x:F

    float-to-double v13, v1

    mul-double/2addr v9, v13

    mul-double v13, v4, v17

    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    move-wide/from16 v19, v4

    float-to-double v3, v1

    mul-double/2addr v13, v3

    sub-double/2addr v9, v13

    iget v1, v2, Landroid/graphics/PointF;->x:F

    float-to-double v3, v1

    mul-double/2addr v15, v3

    sub-double/2addr v9, v15

    div-double v4, v9, v7

    .line 269
    iget v1, v2, Landroid/graphics/PointF;->y:F

    float-to-double v6, v1

    iget v1, v2, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    sub-double v1, v4, v1

    mul-double/2addr v11, v1

    div-double v11, v11, v19

    sub-double v1, v6, v11

    goto :goto_0

    :cond_0
    move-wide/from16 v19, v4

    .line 270
    invoke-virtual {v0, v11, v12}, Lcom/metamoji/ci/CurveInterpolator;->isNearlyZero(D)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    iget v1, v3, Landroid/graphics/PointF;->y:F

    float-to-double v4, v1

    mul-double/2addr v15, v4

    mul-double/2addr v13, v11

    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    float-to-double v3, v1

    mul-double/2addr v13, v3

    sub-double/2addr v15, v13

    iget v1, v2, Landroid/graphics/PointF;->y:F

    float-to-double v3, v1

    mul-double/2addr v9, v3

    sub-double v3, v15, v9

    neg-double v3, v3

    div-double v4, v3, v7

    .line 272
    iget v1, v2, Landroid/graphics/PointF;->x:F

    float-to-double v6, v1

    iget v1, v2, Landroid/graphics/PointF;->y:F

    float-to-double v1, v1

    sub-double v1, v4, v1

    mul-double v1, v1, v19

    div-double/2addr v1, v11

    sub-double v1, v6, v1

    move-wide/from16 v25, v4

    move-wide v4, v1

    move-wide/from16 v1, v25

    goto :goto_0

    :cond_1
    move-wide/from16 v4, v21

    move-wide/from16 v1, v23

    .line 275
    :goto_0
    new-instance v3, Landroid/graphics/PointF;

    double-to-float v4, v4

    double-to-float v1, v1

    invoke-direct {v3, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method

.method dist(DD)D
    .locals 0

    mul-double/2addr p1, p1

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    .line 163
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method distToLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 8

    .line 198
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 199
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v2

    float-to-double v2, p2

    neg-double v4, v2

    .line 202
    iget p2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v6, p2

    mul-double/2addr v2, v6

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double p1, p1

    mul-double/2addr p1, v0

    sub-double/2addr v2, p1

    .line 203
    iget p1, p3, Landroid/graphics/PointF;->x:F

    float-to-double p1, p1

    mul-double/2addr p1, v4

    iget p3, p3, Landroid/graphics/PointF;->y:F

    float-to-double v6, p3

    mul-double/2addr v6, v0

    add-double/2addr p1, v6

    add-double/2addr p1, v2

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v0

    div-double/2addr p1, v0

    const-wide/16 v0, 0x0

    cmpg-double p3, p1, v0

    if-gez p3, :cond_0

    neg-double p1, p1

    :cond_0
    return-wide p1
.end method

.method public getRestoredPoints(D)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    iget-object v1, p0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 429
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    move v3, v2

    .line 430
    :goto_0
    iget-object v4, p0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 431
    iget-object v4, p0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 432
    iget-object v5, p0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    const/high16 v6, 0x3f000000    # 0.5f

    .line 433
    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/metamoji/ci/CurveInterpolator;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v6

    .line 434
    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v8, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    iget v9, v1, Landroid/graphics/PointF;->y:F

    iget v10, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v7

    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v10, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v11, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v11

    float-to-double v11, v6

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    div-double/2addr v7, p1

    double-to-int v6, v7

    add-int/2addr v6, v2

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_0

    int-to-float v8, v7

    int-to-float v9, v6

    div-float/2addr v8, v9

    .line 437
    invoke-virtual {p0, v1, v4, v5, v8}, Lcom/metamoji/ci/CurveInterpolator;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 439
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x2

    move-object v1, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getSegmentAttr(I)I
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/metamoji/ci/CurveInterpolator;->segmentAttr:Ljava/util/List;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 118
    :cond_0
    div-int/lit8 v2, p1, 0x4

    .line 119
    rem-int/lit8 p1, p1, 0x4

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    return v1

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ci/CurveInterpolator;->segmentAttr:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    mul-int/2addr p1, v1

    shr-int p1, v0, p1

    and-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public init(Ljava/util/List;Ljava/util/List;)V
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

    .line 93
    iput-object p1, p0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    .line 94
    iput-object p2, p0, Lcom/metamoji/ci/CurveInterpolator;->segmentAttr:Ljava/util/List;

    .line 95
    iget-object p1, p0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Lcom/metamoji/ci/CurveInterpolator;->cursor:I

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/metamoji/ci/CurveInterpolator;->isRestart:Z

    return-void
.end method

.method isLinear(I)Z
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lcom/metamoji/ci/CurveInterpolator;->getSegmentAttr(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method isNearlyZero(D)Z
    .locals 2

    const-wide v0, -0x4185280d654350b8L    # -1.0E-7

    cmpg-double v0, v0, p1

    if-gez v0, :cond_0

    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method isSharpTurn(DI)Z
    .locals 1

    const/4 v0, 0x1

    .line 159
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/ci/CurveInterpolator;->isSharpTurn(DIZ)Z

    move-result p1

    return p1
.end method

.method isSharpTurn(DIZ)Z
    .locals 4

    .line 146
    iget-wide v0, p0, Lcom/metamoji/ci/CurveInterpolator;->theta:D

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt p3, v2, :cond_0

    sub-int/2addr p3, v3

    .line 148
    invoke-virtual {p0, p3}, Lcom/metamoji/ci/CurveInterpolator;->isLinear(I)Z

    move-result p3

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    .line 149
    iget-wide p3, p0, Lcom/metamoji/ci/CurveInterpolator;->curvePriority:D

    mul-double/2addr v0, p3

    const-wide p3, 0x4066800000000000L    # 180.0

    cmpl-double v2, v0, p3

    if-lez v2, :cond_0

    move-wide v0, p3

    :cond_0
    neg-double p3, v0

    cmpg-double p3, p3, p1

    if-gtz p3, :cond_2

    cmpg-double p1, p1, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v3
.end method

.method leaveFactorOf(I)D
    .locals 4

    .line 209
    invoke-virtual {p0, p1}, Lcom/metamoji/ci/CurveInterpolator;->getSegmentAttr(I)I

    move-result p1

    .line 210
    iget-wide v0, p0, Lcom/metamoji/ci/CurveInterpolator;->leaveFactor:D

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 209
    iget-wide v2, p0, Lcom/metamoji/ci/CurveInterpolator;->eccentricity:D

    mul-double/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public searchNearest(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 13

    .line 473
    iget-object v0, p0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 475
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v4, 0x1

    move-wide v5, v2

    .line 476
    :goto_0
    iget-object v7, p0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 477
    iget-object v7, p0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 478
    iget-object v8, p0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    add-int/lit8 v9, v4, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 479
    invoke-virtual {p0, p1, v0, v7, v8}, Lcom/metamoji/ci/CurveInterpolator;->searchNearestOnBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 480
    iget v7, p1, Landroid/graphics/PointF;->x:F

    iget v9, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v9

    float-to-double v9, v7

    iget v7, p1, Landroid/graphics/PointF;->y:F

    iget v11, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v11

    float-to-double v11, v7

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v9

    cmpl-double v7, v5, v2

    if-eqz v7, :cond_0

    cmpl-double v7, v5, v9

    if-lez v7, :cond_1

    :cond_0
    move-object v1, v0

    move-wide v5, v9

    :cond_1
    add-int/lit8 v4, v4, 0x2

    move-object v0, v8

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method searchNearestOnBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    .line 448
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/metamoji/ci/CurveInterpolator;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v6

    .line 449
    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v8, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    iget v9, v1, Landroid/graphics/PointF;->y:F

    iget v10, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v7

    const/high16 v9, 0x3f800000    # 1.0f

    .line 450
    invoke-virtual {v0, v2, v3, v4, v9}, Lcom/metamoji/ci/CurveInterpolator;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v10

    .line 451
    iget v11, v1, Landroid/graphics/PointF;->x:F

    iget v12, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    iget v13, v1, Landroid/graphics/PointF;->y:F

    iget v14, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v11

    .line 452
    :goto_0
    iget v13, v6, Landroid/graphics/PointF;->x:F

    iget v14, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    iget v15, v6, Landroid/graphics/PointF;->y:F

    move/from16 v16, v5

    iget v5, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v15, v5

    move-object/from16 v17, v6

    float-to-double v5, v15

    invoke-virtual {v0, v13, v14, v5, v6}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v5

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v5, v13

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v5, :cond_1

    add-float v5, v16, v9

    div-float/2addr v5, v6

    float-to-double v5, v5

    cmpl-double v13, v7, v11

    if-lez v13, :cond_0

    double-to-float v5, v5

    .line 456
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/metamoji/ci/CurveInterpolator;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v6

    .line 457
    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v8, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    iget v13, v1, Landroid/graphics/PointF;->y:F

    iget v14, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    invoke-virtual {v0, v7, v8, v13, v14}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v7

    goto :goto_0

    :cond_0
    double-to-float v5, v5

    .line 460
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/metamoji/ci/CurveInterpolator;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v6

    .line 461
    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    iget v11, v1, Landroid/graphics/PointF;->y:F

    iget v12, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/metamoji/ci/CurveInterpolator;->dist(DD)D

    move-result-wide v9

    move-wide v11, v9

    move v9, v5

    move-object v10, v6

    move/from16 v5, v16

    move-object/from16 v6, v17

    goto :goto_0

    :cond_1
    add-float v5, v16, v9

    div-float/2addr v5, v6

    .line 464
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/metamoji/ci/CurveInterpolator;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    return-object v1
.end method

.method public solve()V
    .locals 1

    const/4 v0, 0x1

    .line 410
    invoke-virtual {p0, v0}, Lcom/metamoji/ci/CurveInterpolator;->update(Z)V

    return-void
.end method

.method step()Z
    .locals 5

    .line 366
    iget-object v0, p0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 367
    iget-boolean v1, p0, Lcom/metamoji/ci/CurveInterpolator;->isRestart:Z

    .line 374
    iget v2, p0, Lcom/metamoji/ci/CurveInterpolator;->cursor:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v2, 0x3

    if-gt v1, v0, :cond_3

    .line 369
    invoke-virtual {p0, v2}, Lcom/metamoji/ci/CurveInterpolator;->cp3(I)V

    .line 370
    iput-boolean v3, p0, Lcom/metamoji/ci/CurveInterpolator;->isRestart:Z

    return v4

    :cond_0
    add-int/lit8 v1, v2, 0x4

    if-gt v1, v0, :cond_3

    .line 375
    invoke-virtual {p0, v2}, Lcom/metamoji/ci/CurveInterpolator;->cp4(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget v0, p0, Lcom/metamoji/ci/CurveInterpolator;->cursor:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/metamoji/ci/CurveInterpolator;->cursor:I

    goto :goto_0

    .line 379
    :cond_1
    iget v1, p0, Lcom/metamoji/ci/CurveInterpolator;->cursor:I

    if-ne v0, v4, :cond_2

    add-int/lit8 v1, v1, 0x2

    .line 377
    iput v1, p0, Lcom/metamoji/ci/CurveInterpolator;->cursor:I

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 379
    iput v1, p0, Lcom/metamoji/ci/CurveInterpolator;->cursor:I

    .line 380
    iput-boolean v4, p0, Lcom/metamoji/ci/CurveInterpolator;->isRestart:Z

    :goto_0
    return v4

    :cond_3
    return v3
.end method

.method public update(Z)V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ci/CurveInterpolator;->step()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    .line 400
    iget-object p1, p0, Lcom/metamoji/ci/CurveInterpolator;->reducedPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 401
    iget v0, p0, Lcom/metamoji/ci/CurveInterpolator;->cursor:I

    add-int/lit8 v1, v0, 0x2

    if-ne v1, p1, :cond_3

    iget-boolean v1, p0, Lcom/metamoji/ci/CurveInterpolator;->isRestart:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/metamoji/ci/CurveInterpolator;->cp2(I)V

    return-void

    :cond_3
    add-int/lit8 v1, v0, 0x3

    if-ne v1, p1, :cond_4

    .line 402
    invoke-virtual {p0, v0}, Lcom/metamoji/ci/CurveInterpolator;->cp3e(I)V

    :cond_4
    :goto_1
    return-void
.end method
