.class public Lcom/metamoji/mazec/stroke/StrokeUtil;
.super Ljava/lang/Object;
.source "StrokeUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static convertCalligraphicPaintTypeFromNA(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected static convertCalligraphicPaintTypeToNA(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected static convertFountainPropertiesFromNA(Lcom/metamoji/mazecapi/StrokeFountainProperties;)Lcom/metamoji/mazec/stroke/StrokeFountainProperties;
    .locals 39

    .line 475
    new-instance v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTrans()D

    move-result-wide v1

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginStay()D

    move-result-wide v3

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginStayRate()D

    move-result-wide v5

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginStayDelta()D

    move-result-wide v7

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginRun()D

    move-result-wide v9

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginRunRate()D

    move-result-wide v11

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginRunDelta()D

    move-result-wide v13

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndStay()D

    move-result-wide v15

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndStayRate()D

    move-result-wide v17

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndStayDelta()D

    move-result-wide v19

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndRun()D

    move-result-wide v21

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndRunRate()D

    move-result-wide v23

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndRunDelta()D

    move-result-wide v25

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailStay()D

    move-result-wide v27

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailStayRate()D

    move-result-wide v29

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailStayDelta()D

    move-result-wide v31

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailRun()D

    move-result-wide v33

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailRunRate()D

    move-result-wide v35

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailRunDelta()D

    move-result-wide v37

    invoke-direct/range {v0 .. v38}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;-><init>(DDDDDDDDDDDDDDDDDDD)V

    return-object v0
.end method

.method protected static convertFountainPropertiesToNA(Lcom/metamoji/mazec/stroke/StrokeFountainProperties;)Lcom/metamoji/mazecapi/StrokeFountainProperties;
    .locals 39

    .line 448
    new-instance v0, Lcom/metamoji/mazecapi/StrokeFountainProperties;

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTrans()D

    move-result-wide v1

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getBeginStay()D

    move-result-wide v3

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getBeginStayRate()D

    move-result-wide v5

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getBeginStayDelta()D

    move-result-wide v7

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getBeginRun()D

    move-result-wide v9

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getBeginRunRate()D

    move-result-wide v11

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getBeginRunDelta()D

    move-result-wide v13

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getEndStay()D

    move-result-wide v15

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getEndStayRate()D

    move-result-wide v17

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getEndStayDelta()D

    move-result-wide v19

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getEndRun()D

    move-result-wide v21

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getEndRunRate()D

    move-result-wide v23

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getEndRunDelta()D

    move-result-wide v25

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTailStay()D

    move-result-wide v27

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTailStayRate()D

    move-result-wide v29

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTailStayDelta()D

    move-result-wide v31

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTailRun()D

    move-result-wide v33

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTailRunRate()D

    move-result-wide v35

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->getTailRunDelta()D

    move-result-wide v37

    invoke-direct/range {v0 .. v38}, Lcom/metamoji/mazecapi/StrokeFountainProperties;-><init>(DDDDDDDDDDDDDDDDDDD)V

    return-object v0
.end method

.method protected static convertInkFromNA(Lcom/metamoji/mazecapi/StrokeInk;Ljava/util/Map;)Lcom/metamoji/mazec/stroke/StrokeInk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            "Lcom/metamoji/mazec/stroke/StrokeInk;",
            ">;)",
            "Lcom/metamoji/mazec/stroke/StrokeInk;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 352
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/stroke/StrokeInk;

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeInk;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertInkTypeFromNA(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeInk;->getColors()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 357
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v1, v0}, Lcom/metamoji/mazec/stroke/StrokeInk;->strokeInkGradation(II)Lcom/metamoji/mazec/stroke/StrokeInk;

    move-result-object v0

    .line 358
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static convertInkToNA(Lcom/metamoji/mazec/stroke/StrokeInk;Ljava/util/Map;)Lcom/metamoji/mazecapi/StrokeInk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/stroke/StrokeInk;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/stroke/StrokeInk;",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            ">;)",
            "Lcom/metamoji/mazecapi/StrokeInk;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 336
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecapi/StrokeInk;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lcom/metamoji/mazecapi/StrokeInk;

    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokeInk;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertInkTypeToNA(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokeInk;->getColors()[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecapi/StrokeInk;-><init>(I[I)V

    .line 339
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static convertInkTypeFromNA(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method protected static convertInkTypeToNA(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method protected static convertLineDashFromNA([F)[D
    .locals 4

    if-eqz p0, :cond_1

    .line 378
    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 379
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 380
    aget v2, p0, v2

    float-to-double v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static convertLineDashToNA([D)[F
    .locals 4

    if-eqz p0, :cond_1

    .line 367
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 368
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 369
    aget-wide v2, p0, v1

    double-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static convertPenTypeFromNA(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method protected static convertPenTypeToNA(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method public static convertStrokeFrom7notes(Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;)Lcom/metamoji/mazec/stroke/HwStroke;
    .locals 7

    .line 53
    invoke-virtual {p0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->color()I

    move-result v0

    invoke-virtual {p0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->lineWidthType()Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->sevenNotes1ageStrokeStyle(II)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {p0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->granularityType()Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->getValue()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/metamoji/mazec/stroke/HwStroke;-><init>(Lcom/metamoji/mazec/stroke/StrokeStyle;I)V

    .line 56
    invoke-virtual {p0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->points()Ljava/util/List;

    move-result-object p0

    .line 57
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 60
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 61
    new-instance v5, Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/stroke/HwStroke;->setPoints(Ljava/util/List;)V

    return-object v1
.end method

.method protected static convertStrokeFromNA(Lcom/metamoji/mazecapi/Stroke;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazec/stroke/HwStroke;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecapi/Stroke;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            "Lcom/metamoji/mazec/stroke/StrokeStyle;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            "Lcom/metamoji/mazec/stroke/StrokeInk;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            "Lcom/metamoji/mazec/stroke/StrokePenInfo;",
            ">;)",
            "Lcom/metamoji/mazec/stroke/HwStroke;"
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Stroke;->getStyle()Lcom/metamoji/mazecapi/StrokeStyle;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokeStyleFromNA(Lcom/metamoji/mazecapi/StrokeStyle;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/mazec/stroke/HwStroke;-><init>(Lcom/metamoji/mazec/stroke/StrokeStyle;)V

    .line 210
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Stroke;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/stroke/HwStroke;->setPoints(Ljava/util/List;)V

    .line 211
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Stroke;->getSegmentAttr()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/stroke/HwStroke;->setLineReduceSegmentAttr(Ljava/util/List;)V

    .line 212
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Stroke;->getPenInfo()Lcom/metamoji/mazecapi/StrokePenInfo;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokePenInfoFromNA(Lcom/metamoji/mazecapi/StrokePenInfo;Ljava/util/Map;)Lcom/metamoji/mazec/stroke/StrokePenInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/metamoji/mazec/stroke/HwStroke;->setPenInfo(Lcom/metamoji/mazec/stroke/StrokePenInfo;)V

    return-object v0
.end method

.method protected static convertStrokePenInfoFromNA(Lcom/metamoji/mazecapi/StrokePenInfo;Ljava/util/Map;)Lcom/metamoji/mazec/stroke/StrokePenInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            "Lcom/metamoji/mazec/stroke/StrokePenInfo;",
            ">;)",
            "Lcom/metamoji/mazec/stroke/StrokePenInfo;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 521
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/stroke/StrokePenInfo;

    if-nez v0, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokePenInfo;->getPenID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokePenInfo;->getInkID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/mazec/stroke/StrokePenInfo;->createStrokePenInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/mazec/stroke/StrokePenInfo;

    move-result-object v0

    .line 524
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static convertStrokePenInfoToNA(Lcom/metamoji/mazec/stroke/StrokePenInfo;Ljava/util/Map;)Lcom/metamoji/mazecapi/StrokePenInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/stroke/StrokePenInfo;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/stroke/StrokePenInfo;",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            ">;)",
            "Lcom/metamoji/mazecapi/StrokePenInfo;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 505
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecapi/StrokePenInfo;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Lcom/metamoji/mazecapi/StrokePenInfo;

    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokePenInfo;->getPenID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokePenInfo;->getInkID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecapi/StrokePenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static convertStrokeStyleFromNA(Lcom/metamoji/mazecapi/StrokeStyle;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            "Lcom/metamoji/mazec/stroke/StrokeStyle;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            "Lcom/metamoji/mazec/stroke/StrokeInk;",
            ">;)",
            "Lcom/metamoji/mazec/stroke/StrokeStyle;"
        }
    .end annotation

    .line 260
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/stroke/StrokeStyle;

    if-nez v0, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getPenType()I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertPenTypeFromNA(I)I

    move-result v0

    .line 263
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getInk()Lcom/metamoji/mazecapi/StrokeInk;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertInkFromNA(Lcom/metamoji/mazecapi/StrokeInk;Ljava/util/Map;)Lcom/metamoji/mazec/stroke/StrokeInk;

    move-result-object v10

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineColor()I

    move-result p2

    .line 269
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineWidthRatio()F

    move-result v0

    float-to-double v0, v0

    .line 267
    invoke-static {p2, v0, v1, v10}, Lcom/metamoji/mazec/stroke/StrokeStyle;->standartStyle(IDLcom/metamoji/mazec/stroke/StrokeInk;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p2

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineColor()I

    move-result p2

    .line 288
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineWidthRatio()F

    move-result v0

    float-to-double v0, v0

    .line 290
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getFountainProperties()Lcom/metamoji/mazecapi/StrokeFountainProperties;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertFountainPropertiesFromNA(Lcom/metamoji/mazecapi/StrokeFountainProperties;)Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    move-result-object v2

    .line 286
    invoke-static {p2, v0, v1, v10, v2}, Lcom/metamoji/mazec/stroke/StrokeStyle;->fountainStyle(IDLcom/metamoji/mazec/stroke/StrokeInk;Lcom/metamoji/mazec/stroke/StrokeFountainProperties;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p2

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getCalliPaintType()I

    move-result p2

    invoke-static {p2}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertCalligraphicPaintTypeFromNA(I)I

    move-result v2

    .line 277
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getCalliAngle()F

    move-result p2

    float-to-double v3, p2

    .line 278
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getCalliRate()F

    move-result p2

    float-to-double v5, p2

    .line 279
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineColor()I

    move-result v7

    .line 280
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineWidthRatio()F

    move-result p2

    float-to-double v8, p2

    .line 275
    invoke-static/range {v2 .. v10}, Lcom/metamoji/mazec/stroke/StrokeStyle;->calligraphyStyle(IDDIDLcom/metamoji/mazec/stroke/StrokeInk;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p2

    .line 296
    :goto_0
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_2
    return-object v0
.end method

.method protected static convertStrokeStyleToNA(Lcom/metamoji/mazec/stroke/StrokeStyle;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecapi/StrokeStyle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/stroke/StrokeStyle;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/stroke/StrokeStyle;",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/stroke/StrokeInk;",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            ">;)",
            "Lcom/metamoji/mazecapi/StrokeStyle;"
        }
    .end annotation

    .line 222
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecapi/StrokeStyle;

    if-nez v0, :cond_2

    .line 224
    new-instance v0, Lcom/metamoji/mazecapi/StrokeStyle;

    invoke-direct {v0}, Lcom/metamoji/mazecapi/StrokeStyle;-><init>()V

    .line 226
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result v1

    .line 227
    invoke-static {v1}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertPenTypeToNA(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazecapi/StrokeStyle;->setPenType(I)V

    .line 228
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getInk()Lcom/metamoji/mazec/stroke/StrokeInk;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertInkToNA(Lcom/metamoji/mazec/stroke/StrokeInk;Ljava/util/Map;)Lcom/metamoji/mazecapi/StrokeInk;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setInk(Lcom/metamoji/mazecapi/StrokeInk;)V

    .line 229
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineColor()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setLineColor(I)V

    .line 230
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineWidthRatio()D

    move-result-wide v1

    double-to-float p2, v1

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setLineWidthRatio(F)V

    .line 231
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineDash()[D

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertLineDashToNA([D)[F

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setLineDash([F)V

    .line 233
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result p2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getFountainProperties()Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertFountainPropertiesToNA(Lcom/metamoji/mazec/stroke/StrokeFountainProperties;)Lcom/metamoji/mazecapi/StrokeFountainProperties;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setFountainProperties(Lcom/metamoji/mazecapi/StrokeFountainProperties;)V

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getCalliAngle()D

    move-result-wide v1

    double-to-float p2, v1

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setCalliAngle(F)V

    .line 237
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getCalliRate()D

    move-result-wide v1

    double-to-float p2, v1

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setCalliRate(F)V

    .line 238
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getCalliPaintType()I

    move-result p2

    invoke-static {p2}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertCalligraphicPaintTypeToNA(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setCalliPaintType(I)V

    .line 249
    :goto_0
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static convertStrokeTo7Notes(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;
    .locals 4

    .line 98
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineColor()I

    move-result v2

    .line 101
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineWidthType()I

    move-result v0

    invoke-static {v0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;->createByValue(I)Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;

    move-result-object v0

    sget-object v3, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->FDI_HIGH:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    invoke-direct {v1, v2, v0, v3}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;-><init>(ILcom/sevenknowledge/common/stroke/MMJHandwriteStroke$LineWidthType;Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;)V

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-virtual {v1}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->points()Ljava/util/List;

    move-result-object v2

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->reduced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {v0}, Lcom/metamoji/mazec/stroke/StrokeFDI;->fdiReduce(Ljava/util/List;)[Landroid/graphics/PointF;

    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    :goto_0
    invoke-virtual {v1}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;->bounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-object v1
.end method

.method protected static convertStrokeToNA(Lcom/metamoji/mazec/stroke/HwStroke;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecapi/Stroke;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/stroke/StrokeStyle;",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/stroke/StrokeInk;",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/stroke/StrokePenInfo;",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            ">;)",
            "Lcom/metamoji/mazecapi/Stroke;"
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/metamoji/mazecapi/Stroke;

    invoke-direct {v0}, Lcom/metamoji/mazecapi/Stroke;-><init>()V

    .line 192
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->getLineReduceDelta()D

    move-result-wide v1

    .line 193
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v3

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->getLineReduceSegmentAttr()Ljava/util/List;

    move-result-object v4

    .line 195
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->getLineReducePenAttr()Ljava/util/List;

    move-result-object v5

    .line 191
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/mazecapi/Stroke;->setPoints(DLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 197
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokeStyleToNA(Lcom/metamoji/mazec/stroke/StrokeStyle;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecapi/StrokeStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/mazecapi/Stroke;->setStyle(Lcom/metamoji/mazecapi/StrokeStyle;)V

    .line 198
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->getPenInfo()Lcom/metamoji/mazec/stroke/StrokePenInfo;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokePenInfoToNA(Lcom/metamoji/mazec/stroke/StrokePenInfo;Ljava/util/Map;)Lcom/metamoji/mazecapi/StrokePenInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/metamoji/mazecapi/Stroke;->setPenInfo(Lcom/metamoji/mazecapi/StrokePenInfo;)V

    return-object v0
.end method

.method public static convertStrokesFrom7notes(Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;)Lcom/metamoji/mazec/stroke/HwStrokes;
    .locals 4

    .line 32
    new-instance v0, Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-direct {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->yTopLine()F

    move-result v1

    invoke-virtual {p0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->yBaseLine()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->setGuidelinesWithTop(FF)V

    .line 35
    invoke-virtual {p0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->strokeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 37
    invoke-virtual {p0, v2}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->strokeAtIndex(I)Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokeFrom7notes(Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v3

    .line 38
    invoke-virtual {v0, v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->bounds()Landroid/graphics/RectF;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method protected static convertStrokesFromNA(Lcom/metamoji/mazecapi/Strokes;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazec/stroke/HwStrokes;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecapi/Strokes;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            "Lcom/metamoji/mazec/stroke/StrokeStyle;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            "Lcom/metamoji/mazec/stroke/StrokeInk;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            "Lcom/metamoji/mazec/stroke/StrokePenInfo;",
            ">;)",
            "Lcom/metamoji/mazec/stroke/HwStrokes;"
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-direct {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;-><init>()V

    .line 175
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Strokes;->getTopLine()F

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Strokes;->getBaseLine()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->setGuidelinesWithTop(FF)V

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Strokes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazecapi/Stroke;

    .line 177
    invoke-static {v2, p1, p2, p3}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokeFromNA(Lcom/metamoji/mazecapi/Stroke;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    goto :goto_0

    .line 179
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Strokes;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public static convertStrokesListFromNA(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecapi/Strokes;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 143
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 144
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 145
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazecapi/Strokes;

    .line 146
    invoke-static {v4, v1, v2, v3}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokesFromNA(Lcom/metamoji/mazecapi/Strokes;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertStrokesListToNA(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecapi/Strokes;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 128
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 129
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 130
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 131
    invoke-static {v4, v1, v2, v3}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokesToNA(Lcom/metamoji/mazec/stroke/HwStrokes;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecapi/Strokes;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertStrokesTo7note(Lcom/metamoji/mazec/stroke/HwStrokes;)Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;
    .locals 6

    .line 75
    new-instance v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;

    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->topLine()F

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->baseLine()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;-><init>(FF)V

    .line 76
    sget-object v1, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;->FDI_HIGH:Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;

    invoke-virtual {v0, v1}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->setGranularityType(Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$StrokePointsGranularityType;)V

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokes()Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-virtual {v0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->getStrokes()Ljava/util/List;

    move-result-object v2

    .line 80
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 82
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 83
    invoke-static {v5}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokeTo7Notes(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStrokes;->bounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 87
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->outerBounds()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method protected static convertStrokesToNA(Lcom/metamoji/mazec/stroke/HwStrokes;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecapi/Strokes;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/stroke/StrokeStyle;",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/stroke/StrokeInk;",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/stroke/StrokePenInfo;",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            ">;)",
            "Lcom/metamoji/mazecapi/Strokes;"
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/metamoji/mazecapi/Strokes;

    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->topLine()F

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->baseLine()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecapi/Strokes;-><init>(FF)V

    .line 160
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 161
    invoke-static {v2, p1, p2, p3}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokeToNA(Lcom/metamoji/mazec/stroke/HwStroke;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecapi/Stroke;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/mazecapi/Strokes;->addStroke(Lcom/metamoji/mazecapi/Stroke;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->outerBounds()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/metamoji/mazecapi/Strokes;->setOuterBounds(Landroid/graphics/RectF;)V

    return-object v0
.end method
