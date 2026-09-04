.class public Lcom/metamoji/ci/LineReducer;
.super Ljava/lang/Object;
.source "LineReducer.java"


# static fields
.field static final first_t:D = 0.1

.field static final lambda:I = 0xf

.field static final last_t:D = 0.05


# instance fields
.field a:D

.field b:D

.field c:D

.field public continuousNoiseFactor:D

.field public curvePriority:D

.field public curvedLimitAngle:D

.field public deltaOfInputTime:D

.field public headingNoiseFactor:D

.field isPrevLinearlized:Z

.field isSequentialReduce:Z

.field lastAddedIndex:I

.field public linearCancelThreshold:D

.field public linearThreshold:D

.field public longestReduceDistance:D

.field maxDist:D

.field public minimumLineLength:D

.field orgPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field orgTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public penAttr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field reducedIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public reducedPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public scaleOfInputTime:D

.field public segmentAttr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field sequentialStart:I

.field public tailingNoiseFactor:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 118
    iput-wide v0, p0, Lcom/metamoji/ci/LineReducer;->scaleOfInputTime:D

    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 119
    iput-wide v0, p0, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    const-wide v0, 0x3f9eb851eb851eb8L    # 0.03

    .line 120
    iput-wide v0, p0, Lcom/metamoji/ci/LineReducer;->linearThreshold:D

    .line 121
    iput-wide v0, p0, Lcom/metamoji/ci/LineReducer;->linearCancelThreshold:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 122
    iput-wide v0, p0, Lcom/metamoji/ci/LineReducer;->headingNoiseFactor:D

    const-wide/16 v2, 0x0

    .line 123
    iput-wide v2, p0, Lcom/metamoji/ci/LineReducer;->continuousNoiseFactor:D

    .line 124
    iput-wide v0, p0, Lcom/metamoji/ci/LineReducer;->tailingNoiseFactor:D

    const-wide v0, 0x4050c6bd3c361134L    # 67.1053

    .line 125
    iput-wide v0, p0, Lcom/metamoji/ci/LineReducer;->curvedLimitAngle:D

    .line 126
    iput-wide v2, p0, Lcom/metamoji/ci/LineReducer;->minimumLineLength:D

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/metamoji/ci/LineReducer;->isSequentialReduce:Z

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 128
    iput-wide v0, p0, Lcom/metamoji/ci/LineReducer;->curvePriority:D

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 129
    iput-wide v0, p0, Lcom/metamoji/ci/LineReducer;->longestReduceDistance:D

    return-void
.end method


# virtual methods
.method addIndex(I)V
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 147
    iget v0, p0, Lcom/metamoji/ci/LineReducer;->lastAddedIndex:I

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/LineReducer;->distIndex(II)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    iget-wide v4, p0, Lcom/metamoji/ci/LineReducer;->headingNoiseFactor:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/metamoji/ci/LineReducer;->scaleOfInputTime:D

    div-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 149
    iget v0, p0, Lcom/metamoji/ci/LineReducer;->lastAddedIndex:I

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/LineReducer;->distIndex(II)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    iget-wide v4, p0, Lcom/metamoji/ci/LineReducer;->continuousNoiseFactor:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/metamoji/ci/LineReducer;->scaleOfInputTime:D

    div-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    :goto_0
    return-void

    .line 151
    :cond_1
    iput p1, p0, Lcom/metamoji/ci/LineReducer;->lastAddedIndex:I

    .line 152
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPoint(Landroid/graphics/PointF;JZ)V
    .locals 4

    .line 519
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 520
    iget-object p1, p0, Lcom/metamoji/ci/LineReducer;->orgTimes:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 522
    invoke-virtual {p0, p1}, Lcom/metamoji/ci/LineReducer;->addIndex(I)V

    goto :goto_1

    :cond_1
    if-nez p4, :cond_2

    if-eq p1, p2, :cond_5

    .line 525
    iget p2, p0, Lcom/metamoji/ci/LineReducer;->sequentialStart:I

    invoke-virtual {p0, p2}, Lcom/metamoji/ci/LineReducer;->findNext(I)I

    move-result p2

    if-eq p2, p1, :cond_5

    .line 527
    invoke-virtual {p0, p2}, Lcom/metamoji/ci/LineReducer;->addIndex(I)V

    .line 528
    iput p2, p0, Lcom/metamoji/ci/LineReducer;->sequentialStart:I

    goto :goto_1

    :cond_2
    if-gt p1, p2, :cond_3

    .line 533
    iget-object p1, p0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 534
    iget-object p1, p0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    iget-object p2, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 537
    :cond_3
    :goto_0
    iget-object p3, p0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, p2, :cond_4

    .line 538
    iget-object p3, p0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3, p1}, Lcom/metamoji/ci/LineReducer;->distIndex(II)D

    move-result-wide p3

    iget-wide v0, p0, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    iget-wide v2, p0, Lcom/metamoji/ci/LineReducer;->tailingNoiseFactor:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/metamoji/ci/LineReducer;->scaleOfInputTime:D

    div-double/2addr v0, v2

    cmpg-double p3, p3, v0

    if-gez p3, :cond_4

    .line 540
    iget-object p3, p0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, p2

    invoke-interface {p3, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 543
    :cond_4
    iget-object p2, p0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_6

    invoke-virtual {p0}, Lcom/metamoji/ci/LineReducer;->insertLinearMarker()V

    :cond_6
    return-void
.end method

.method public addPoint(Landroid/graphics/PointF;Z)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 554
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/metamoji/ci/LineReducer;->addPoint(Landroid/graphics/PointF;JZ)V

    return-void
.end method

.method addReduced(IZ)V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 301
    :cond_0
    iget p2, p0, Lcom/metamoji/ci/LineReducer;->lastAddedIndex:I

    add-int/2addr p2, v2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 304
    :goto_0
    iget p2, p0, Lcom/metamoji/ci/LineReducer;->lastAddedIndex:I

    sub-int p2, p1, p2

    sub-int/2addr p2, v2

    invoke-virtual {p0, v0, v1, p2}, Lcom/metamoji/ci/LineReducer;->putSegmentAttr(III)V

    .line 306
    :cond_2
    iput p1, p0, Lcom/metamoji/ci/LineReducer;->lastAddedIndex:I

    return-void
.end method

.method angle(III)D
    .locals 18

    move-object/from16 v0, p0

    .line 310
    iget-object v1, v0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    move/from16 v2, p1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 311
    iget-object v2, v0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    move/from16 v3, p2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 312
    iget-object v3, v0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    move/from16 v4, p3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 313
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    .line 314
    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    float-to-double v6, v6

    .line 315
    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v8, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v8

    float-to-double v8, v1

    .line 316
    iget v1, v3, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    mul-double v10, v4, v4

    mul-double v12, v6, v6

    add-double/2addr v10, v12

    .line 317
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v12, v8, v8

    mul-double v14, v1, v1

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    mul-double v12, v4, v1

    mul-double v14, v8, v6

    sub-double/2addr v12, v14

    div-double/2addr v12, v10

    .line 319
    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double/2addr v12, v14

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    div-double v12, v12, v16

    mul-double/2addr v4, v8

    mul-double/2addr v6, v1

    add-double/2addr v4, v6

    div-double/2addr v4, v10

    .line 321
    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    mul-double/2addr v1, v14

    div-double v1, v1, v16

    const-wide/16 v3, 0x0

    cmpg-double v3, v12, v3

    if-gez v3, :cond_0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    mul-double/2addr v1, v3

    :cond_0
    return-wide v1
.end method

.method dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 2

    .line 133
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 134
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    mul-double/2addr v0, v0

    mul-double/2addr p1, p1

    add-double/2addr v0, p1

    .line 135
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method distIndex(II)D
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ci/LineReducer;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide p1

    return-wide p1
.end method

.method distToLine(I)D
    .locals 6

    .line 168
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 169
    iget-wide v0, p0, Lcom/metamoji/ci/LineReducer;->a:D

    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/metamoji/ci/LineReducer;->b:D

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/metamoji/ci/LineReducer;->c:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/metamoji/ci/LineReducer;->a:D

    mul-double/2addr v2, v2

    iget-wide v4, p0, Lcom/metamoji/ci/LineReducer;->b:D

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method distToLineAbs(I)D
    .locals 4

    .line 173
    invoke-virtual {p0, p1}, Lcom/metamoji/ci/LineReducer;->distToLine(I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    neg-double v0, v0

    :cond_0
    return-wide v0
.end method

.method findEuclidFarest(Landroid/graphics/PointF;II)I
    .locals 7

    const-wide/16 v0, 0x0

    .line 223
    iput-wide v0, p0, Lcom/metamoji/ci/LineReducer;->maxDist:D

    sub-int v0, p3, p2

    const/4 v1, 0x6

    const/4 v2, -0x1

    if-lt v0, v1, :cond_3

    add-int/lit8 p2, p2, 0x3

    move v0, v2

    :goto_0
    if-ge p2, p3, :cond_2

    .line 230
    iget-object v1, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ci/LineReducer;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v3

    if-eq v0, v2, :cond_0

    .line 231
    iget-wide v5, p0, Lcom/metamoji/ci/LineReducer;->maxDist:D

    cmpg-double v1, v5, v3

    if-gez v1, :cond_1

    .line 233
    :cond_0
    iput-wide v3, p0, Lcom/metamoji/ci/LineReducer;->maxDist:D

    move v0, p2

    :cond_1
    add-int/lit8 p2, p2, 0x3

    goto :goto_0

    :cond_2
    add-int/lit8 p2, v0, -0x3

    add-int/lit8 v1, v0, 0x3

    if-ge v1, p3, :cond_4

    move p3, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_6

    .line 240
    iget-object v1, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ci/LineReducer;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v3

    if-eq v0, v2, :cond_5

    .line 241
    iget-wide v5, p0, Lcom/metamoji/ci/LineReducer;->maxDist:D

    cmpg-double v1, v5, v3

    if-gez v1, :cond_4

    .line 243
    :cond_5
    iput-wide v3, p0, Lcom/metamoji/ci/LineReducer;->maxDist:D

    move v0, p2

    goto :goto_1

    :cond_6
    return v0
.end method

.method findFarest(II)I
    .locals 7

    const-wide/16 v0, 0x0

    .line 181
    iput-wide v0, p0, Lcom/metamoji/ci/LineReducer;->maxDist:D

    sub-int v0, p2, p1

    const/4 v1, 0x6

    const/4 v2, -0x1

    if-lt v0, v1, :cond_3

    add-int/lit8 p1, p1, 0x3

    move v0, v2

    :goto_0
    if-ge p1, p2, :cond_2

    .line 188
    invoke-virtual {p0, p1}, Lcom/metamoji/ci/LineReducer;->distToLineAbs(I)D

    move-result-wide v3

    if-eq v0, v2, :cond_0

    .line 189
    iget-wide v5, p0, Lcom/metamoji/ci/LineReducer;->maxDist:D

    cmpg-double v1, v5, v3

    if-gez v1, :cond_1

    .line 191
    :cond_0
    iput-wide v3, p0, Lcom/metamoji/ci/LineReducer;->maxDist:D

    move v0, p1

    :cond_1
    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    :cond_2
    add-int/lit8 p1, v0, -0x3

    add-int/lit8 v1, v0, 0x3

    if-ge v1, p2, :cond_4

    move p2, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_6

    .line 198
    invoke-virtual {p0, p1}, Lcom/metamoji/ci/LineReducer;->distToLineAbs(I)D

    move-result-wide v3

    if-eq v0, v2, :cond_5

    .line 199
    iget-wide v5, p0, Lcom/metamoji/ci/LineReducer;->maxDist:D

    cmpg-double v1, v5, v3

    if-gez v1, :cond_4

    .line 201
    :cond_5
    iput-wide v3, p0, Lcom/metamoji/ci/LineReducer;->maxDist:D

    move v0, p1

    goto :goto_1

    :cond_6
    return v0
.end method

.method findNext(I)I
    .locals 8

    add-int/lit8 v0, p1, 0x1

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object p1, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    add-int/lit8 v1, p1, 0x2

    if-lt v0, v1, :cond_1

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ci/LineReducer;->makeEquation(II)V

    .line 214
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ci/LineReducer;->findFarest(II)I

    move-result v1

    .line 215
    iget-wide v2, p0, Lcom/metamoji/ci/LineReducer;->maxDist:D

    iget-wide v4, p0, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    iget-wide v6, p0, Lcom/metamoji/ci/LineReducer;->scaleOfInputTime:D

    div-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, p1, 0x5

    if-eq v0, v1, :cond_3

    .line 217
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ci/LineReducer;->distIndex(II)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/metamoji/ci/LineReducer;->longestReduceDistance:D

    iget-wide v5, p0, Lcom/metamoji/ci/LineReducer;->scaleOfInputTime:D

    div-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public initSequential()V
    .locals 1

    .line 507
    invoke-virtual {p0}, Lcom/metamoji/ci/LineReducer;->reset()V

    const/4 v0, 0x1

    .line 508
    iput-boolean v0, p0, Lcom/metamoji/ci/LineReducer;->isSequentialReduce:Z

    const/4 v0, 0x0

    .line 509
    iput v0, p0, Lcom/metamoji/ci/LineReducer;->sequentialStart:I

    return-void
.end method

.method insertLinearMarker()V
    .locals 22

    move-object/from16 v0, p0

    .line 383
    iget-object v1, v0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 384
    invoke-virtual {v0}, Lcom/metamoji/ci/LineReducer;->updateGoStop()V

    const/4 v1, 0x0

    .line 386
    invoke-virtual {v0, v1, v1}, Lcom/metamoji/ci/LineReducer;->addReduced(IZ)V

    .line 387
    iget-object v2, v0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 392
    iget-object v3, v0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 388
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/ci/LineReducer;->addReduced(IZ)V

    return-void

    .line 392
    :cond_0
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 393
    iget-object v3, v0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 394
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ci/LineReducer;->distIndex(II)D

    move-result-wide v5

    .line 395
    invoke-virtual {v0, v2, v3}, Lcom/metamoji/ci/LineReducer;->distIndex(II)D

    move-result-wide v7

    .line 396
    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/ci/LineReducer;->angle(III)D

    move-result-wide v9

    .line 398
    iput-boolean v4, v0, Lcom/metamoji/ci/LineReducer;->isPrevLinearlized:Z

    .line 401
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/metamoji/ci/LineReducer;->isLinear(IID)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-wide v11, v0, Lcom/metamoji/ci/LineReducer;->minimumLineLength:D

    iget-wide v13, v0, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    mul-double/2addr v11, v13

    iget-wide v13, v0, Lcom/metamoji/ci/LineReducer;->scaleOfInputTime:D

    div-double/2addr v11, v13

    cmpl-double v11, v5, v11

    if-lez v11, :cond_2

    .line 402
    invoke-virtual {v0, v9, v10}, Lcom/metamoji/ci/LineReducer;->isCancelAngle(D)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-wide v11, v0, Lcom/metamoji/ci/LineReducer;->linearCancelThreshold:D

    mul-double/2addr v11, v5

    cmpl-double v11, v7, v11

    if-gtz v11, :cond_2

    :cond_1
    move v11, v4

    goto :goto_0

    :cond_2
    move v11, v1

    .line 407
    :goto_0
    invoke-virtual {v0, v2, v11}, Lcom/metamoji/ci/LineReducer;->addReduced(IZ)V

    const/4 v12, 0x3

    move-wide/from16 v20, v7

    move-wide v7, v5

    move-wide/from16 v5, v20

    .line 408
    :goto_1
    iget-object v13, v0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 413
    iget-object v13, v0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 414
    invoke-virtual {v0, v3, v13}, Lcom/metamoji/ci/LineReducer;->distIndex(II)D

    move-result-wide v14

    move-wide/from16 v16, v7

    .line 416
    invoke-virtual {v0, v2, v3, v13}, Lcom/metamoji/ci/LineReducer;->angle(III)D

    move-result-wide v7

    .line 417
    iput-boolean v11, v0, Lcom/metamoji/ci/LineReducer;->isPrevLinearlized:Z

    .line 419
    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/metamoji/ci/LineReducer;->isLinear(IID)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v1, v0, Lcom/metamoji/ci/LineReducer;->minimumLineLength:D

    move-wide/from16 v18, v5

    iget-wide v4, v0, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    mul-double/2addr v1, v4

    iget-wide v4, v0, Lcom/metamoji/ci/LineReducer;->scaleOfInputTime:D

    div-double/2addr v1, v4

    cmpl-double v1, v18, v1

    if-lez v1, :cond_5

    .line 420
    invoke-virtual {v0, v9, v10}, Lcom/metamoji/ci/LineReducer;->isCancelAngle(D)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, v0, Lcom/metamoji/ci/LineReducer;->linearCancelThreshold:D

    mul-double v5, v18, v1

    cmpl-double v1, v16, v5

    if-lez v1, :cond_3

    .line 421
    invoke-virtual {v0, v7, v8}, Lcom/metamoji/ci/LineReducer;->isCancelAngle(D)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, v0, Lcom/metamoji/ci/LineReducer;->linearCancelThreshold:D

    mul-double v5, v18, v1

    cmpl-double v1, v14, v5

    if-gtz v1, :cond_5

    :cond_3
    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    move-wide/from16 v18, v5

    :cond_5
    const/4 v11, 0x0

    .line 425
    :goto_2
    invoke-virtual {v0, v3, v11}, Lcom/metamoji/ci/LineReducer;->addReduced(IZ)V

    add-int/lit8 v12, v12, 0x1

    move v2, v3

    move-wide v9, v7

    move v3, v13

    move-wide v5, v14

    move-wide/from16 v7, v18

    const/4 v1, 0x0

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    move-wide/from16 v18, v5

    move-wide/from16 v16, v7

    .line 427
    iput-boolean v11, v0, Lcom/metamoji/ci/LineReducer;->isPrevLinearlized:Z

    move-wide/from16 v7, v18

    .line 429
    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/metamoji/ci/LineReducer;->isLinear(IID)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v1, v0, Lcom/metamoji/ci/LineReducer;->minimumLineLength:D

    iget-wide v4, v0, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    mul-double/2addr v1, v4

    iget-wide v4, v0, Lcom/metamoji/ci/LineReducer;->scaleOfInputTime:D

    div-double/2addr v1, v4

    cmpl-double v1, v7, v1

    if-lez v1, :cond_8

    .line 430
    invoke-virtual {v0, v9, v10}, Lcom/metamoji/ci/LineReducer;->isCancelAngle(D)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-wide v1, v0, Lcom/metamoji/ci/LineReducer;->linearCancelThreshold:D

    mul-double v5, v7, v1

    cmpl-double v1, v16, v5

    if-gtz v1, :cond_8

    :cond_7
    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 434
    :goto_3
    invoke-virtual {v0, v3, v1}, Lcom/metamoji/ci/LineReducer;->addReduced(IZ)V

    return-void
.end method

.method isCancelAngle(D)Z
    .locals 6

    .line 335
    iget-wide v0, p0, Lcom/metamoji/ci/LineReducer;->curvedLimitAngle:D

    .line 336
    iget-boolean v2, p0, Lcom/metamoji/ci/LineReducer;->isPrevLinearlized:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/metamoji/ci/LineReducer;->curvePriority:D

    mul-double/2addr v0, v2

    :cond_0
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, v0, v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    return v3

    :cond_1
    neg-double v4, v0

    cmpg-double v2, v4, p1

    if-gez v2, :cond_2

    cmpg-double p1, p1, v0

    if-gez p1, :cond_2

    return v3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method isLinear(IID)Z
    .locals 0

    .line 329
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ci/LineReducer;->makeEquation(II)V

    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ci/LineReducer;->findFarest(II)I

    .line 331
    iget-wide p1, p0, Lcom/metamoji/ci/LineReducer;->maxDist:D

    div-double/2addr p1, p3

    iget-wide p3, p0, Lcom/metamoji/ci/LineReducer;->linearThreshold:D

    cmpg-double p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method makeEquation(II)V
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 159
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    .line 160
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 161
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v2

    float-to-double v2, p2

    neg-double v4, v2

    .line 162
    iput-wide v4, p0, Lcom/metamoji/ci/LineReducer;->a:D

    .line 163
    iput-wide v0, p0, Lcom/metamoji/ci/LineReducer;->b:D

    .line 164
    iget p2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v4, p2

    mul-double/2addr v2, v4

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double p1, p1

    mul-double/2addr v0, p1

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lcom/metamoji/ci/LineReducer;->c:D

    return-void
.end method

.method putSegmentAttr(III)V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 276
    div-int/lit8 v1, p1, 0x4

    .line 277
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    rem-int/lit8 v0, p1, 0x4

    .line 279
    iget-object v2, p0, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    mul-int/lit8 v0, v0, 0x2

    const/4 v3, 0x3

    shl-int/2addr v3, v0

    not-int v3, v3

    int-to-byte v3, v3

    and-int/2addr v2, v3

    int-to-byte v2, v2

    shl-int v0, p2, v0

    int-to-byte v0, v0

    or-int/2addr v0, v2

    int-to-byte v0, v0

    .line 282
    iget-object v2, p0, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    if-eqz v0, :cond_4

    add-int/lit8 p1, p1, 0x4

    const/16 v1, 0xf

    if-le p3, v1, :cond_2

    move p3, v1

    :cond_2
    shl-int/lit8 p3, p3, 0x2

    or-int/2addr p2, p3

    int-to-byte p2, p2

    .line 289
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    .line 290
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    if-ne p1, p3, :cond_3

    .line 289
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 290
    :cond_3
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method reduce(II)V
    .locals 9

    if-eq p1, p2, :cond_3

    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 252
    iget-object v1, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 254
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 255
    invoke-virtual {p0, v0, p1, p2}, Lcom/metamoji/ci/LineReducer;->findEuclidFarest(Landroid/graphics/PointF;II)I

    move-result v0

    .line 256
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ci/LineReducer;->reduce(II)V

    .line 257
    invoke-virtual {p0, v0}, Lcom/metamoji/ci/LineReducer;->addIndex(I)V

    .line 258
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/ci/LineReducer;->reduce(II)V

    return-void

    .line 261
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ci/LineReducer;->makeEquation(II)V

    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ci/LineReducer;->findFarest(II)I

    move-result v2

    .line 263
    iget-wide v3, p0, Lcom/metamoji/ci/LineReducer;->maxDist:D

    iget-wide v5, p0, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    iget-wide v7, p0, Lcom/metamoji/ci/LineReducer;->scaleOfInputTime:D

    div-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_2

    .line 264
    invoke-virtual {p0, p1, v2}, Lcom/metamoji/ci/LineReducer;->reduce(II)V

    .line 265
    invoke-virtual {p0, v2}, Lcom/metamoji/ci/LineReducer;->addIndex(I)V

    .line 266
    invoke-virtual {p0, v2, p2}, Lcom/metamoji/ci/LineReducer;->reduce(II)V

    return-void

    .line 269
    :cond_2
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    div-float/2addr v0, v4

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 270
    invoke-virtual {p0, v2, p1, p2}, Lcom/metamoji/ci/LineReducer;->findEuclidFarest(Landroid/graphics/PointF;II)I

    move-result v0

    .line 271
    iget-wide v1, p0, Lcom/metamoji/ci/LineReducer;->maxDist:D

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ci/LineReducer;->distIndex(II)D

    move-result-wide p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v3

    cmpl-double p1, v1, p1

    if-lez p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/metamoji/ci/LineReducer;->addIndex(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public reducePoints(Ljava/util/List;)Ljava/util/List;
    .locals 1
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

    const/4 v0, 0x0

    .line 497
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ci/LineReducer;->reducePoints(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public reducePoints(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lcom/metamoji/ci/LineReducer;->reset()V

    .line 460
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_0

    .line 461
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->orgTimes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 463
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_1

    .line 464
    iget-object p2, p0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 465
    iget-object p1, p0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    return-object p1

    .line 468
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    const/4 v0, 0x0

    .line 469
    invoke-virtual {p0, v0}, Lcom/metamoji/ci/LineReducer;->addIndex(I)V

    .line 471
    iget-boolean v1, p0, Lcom/metamoji/ci/LineReducer;->isSequentialReduce:Z

    if-eqz v1, :cond_3

    .line 474
    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/ci/LineReducer;->findNext(I)I

    move-result v0

    if-ne v0, p1, :cond_2

    goto :goto_1

    .line 476
    :cond_2
    invoke-virtual {p0, v0}, Lcom/metamoji/ci/LineReducer;->addIndex(I)V

    goto :goto_0

    .line 478
    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/LineReducer;->reduce(II)V

    .line 480
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_4

    .line 481
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/LineReducer;->distIndex(II)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    iget-wide v4, p0, Lcom/metamoji/ci/LineReducer;->tailingNoiseFactor:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/metamoji/ci/LineReducer;->scaleOfInputTime:D

    div-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 483
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 486
    :cond_4
    iget-object p2, p0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {p0}, Lcom/metamoji/ci/LineReducer;->insertLinearMarker()V

    .line 488
    iget-object p1, p0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    return-object p1
.end method

.method reset()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 439
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 441
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 442
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    const/16 v1, -0x10

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/LineReducer;->reducedIndexes:Ljava/util/List;

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/LineReducer;->orgTimes:Ljava/util/List;

    return-void
.end method

.method stayTimeFor(I)D
    .locals 19

    move-object/from16 v0, p0

    .line 347
    iget-object v1, v0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    move/from16 v2, p1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    move v5, v2

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    :goto_0
    add-double v10, v6, v8

    const-wide/high16 v12, 0x402e000000000000L    # 15.0

    .line 352
    iget-wide v14, v0, Lcom/metamoji/ci/LineReducer;->scaleOfInputTime:D

    div-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gez v10, :cond_4

    add-int/lit8 v10, v5, -0x1

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-ltz v10, :cond_0

    .line 354
    iget-object v13, v0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    invoke-static {v1, v13}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v13

    goto :goto_1

    :cond_0
    move-wide v13, v11

    :goto_1
    add-int/lit8 v15, v2, 0x1

    const-wide/16 v16, 0x0

    .line 356
    iget-object v3, v0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_1

    iget-object v3, v0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    invoke-static {v1, v3}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v3

    goto :goto_2

    :cond_1
    move-wide v3, v11

    :goto_2
    cmpl-double v18, v13, v11

    if-nez v18, :cond_2

    cmpl-double v11, v3, v11

    if-nez v11, :cond_2

    return-wide v16

    :cond_2
    cmpg-double v11, v13, v3

    if-gez v11, :cond_3

    move v5, v10

    move-wide v6, v13

    goto :goto_0

    :cond_3
    move-wide v8, v3

    move v2, v15

    goto :goto_0

    .line 366
    :cond_4
    iget-object v1, v0, Lcom/metamoji/ci/LineReducer;->orgTimes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, v0, Lcom/metamoji/ci/LineReducer;->orgTimes:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method updateGoStop()V
    .locals 7

    .line 370
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ci/LineReducer;->orgTimes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0, v0}, Lcom/metamoji/ci/LineReducer;->stayTimeFor(I)D

    move-result-wide v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v1, v3

    const/4 v2, 0x1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 375
    :goto_0
    iget-object v3, p0, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v1, p0, Lcom/metamoji/ci/LineReducer;->orgPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/metamoji/ci/LineReducer;->stayTimeFor(I)D

    move-result-wide v3

    const-wide v5, 0x3fa999999999999aL    # 0.05

    cmpl-double v1, v3, v5

    if-lez v1, :cond_2

    move v0, v2

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method
