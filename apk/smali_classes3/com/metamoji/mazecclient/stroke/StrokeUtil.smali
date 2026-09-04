.class public Lcom/metamoji/mazecclient/stroke/StrokeUtil;
.super Ljava/lang/Object;
.source "StrokeUtil.java"


# static fields
.field private static final MAX_STROKE_ENCODE_BUF:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static convertCalligraphicPaintTypeFromNA(I)Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 420
    sget-object p0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->DEFAULT:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    return-object p0

    .line 424
    :cond_0
    sget-object p0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->CUBIC:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    return-object p0

    .line 422
    :cond_1
    sget-object p0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->GRADATION:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    return-object p0
.end method

.method protected static convertCalligraphicPaintTypeToNA(Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;)I
    .locals 2

    .line 429
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$CalligraphyPaintType:[I

    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected static convertFountainPropFromNA(Lcom/metamoji/mazecapi/StrokeFountainProperties;)Lcom/metamoji/mazecclient/stroke/IFountainProperties;
    .locals 39

    .line 473
    new-instance v0, Lcom/metamoji/mazecclient/stroke/FountainProperties;

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTrans()D

    move-result-wide v1

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginStay()D

    move-result-wide v3

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginStayRate()D

    move-result-wide v5

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginStayDelta()D

    move-result-wide v7

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginRun()D

    move-result-wide v9

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginRunRate()D

    move-result-wide v11

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getBeginRunDelta()D

    move-result-wide v13

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndStay()D

    move-result-wide v15

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndStayRate()D

    move-result-wide v17

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndStayDelta()D

    move-result-wide v19

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndRun()D

    move-result-wide v21

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndRunRate()D

    move-result-wide v23

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getEndRunDelta()D

    move-result-wide v25

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailStay()D

    move-result-wide v27

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailStayRate()D

    move-result-wide v29

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailStayDelta()D

    move-result-wide v31

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailRun()D

    move-result-wide v33

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailRunRate()D

    move-result-wide v35

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->getTailRunDelta()D

    move-result-wide v37

    invoke-direct/range {v0 .. v38}, Lcom/metamoji/mazecclient/stroke/FountainProperties;-><init>(DDDDDDDDDDDDDDDDDDD)V

    return-object v0
.end method

.method protected static convertFountainPropToNA(Lcom/metamoji/mazecclient/stroke/IFountainProperties;)Lcom/metamoji/mazecapi/StrokeFountainProperties;
    .locals 39

    .line 496
    new-instance v0, Lcom/metamoji/mazecapi/StrokeFountainProperties;

    .line 497
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTrans()D

    move-result-wide v1

    .line 498
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginStay()D

    move-result-wide v3

    .line 499
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginStayRate()D

    move-result-wide v5

    .line 500
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginStayDelta()D

    move-result-wide v7

    .line 501
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginRun()D

    move-result-wide v9

    .line 502
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginRunRate()D

    move-result-wide v11

    .line 503
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getBeginRunDelta()D

    move-result-wide v13

    .line 504
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndStay()D

    move-result-wide v15

    .line 505
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndStayRate()D

    move-result-wide v17

    .line 506
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndStayDelta()D

    move-result-wide v19

    .line 507
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndRun()D

    move-result-wide v21

    .line 508
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndRunRate()D

    move-result-wide v23

    .line 509
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getEndRunDelta()D

    move-result-wide v25

    .line 510
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailStay()D

    move-result-wide v27

    .line 511
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailStayRate()D

    move-result-wide v29

    .line 512
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailStayDelta()D

    move-result-wide v31

    .line 513
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailRun()D

    move-result-wide v33

    .line 514
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailRunRate()D

    move-result-wide v35

    .line 515
    invoke-interface/range {p0 .. p0}, Lcom/metamoji/mazecclient/stroke/IFountainProperties;->getTailRunDelta()D

    move-result-wide v37

    invoke-direct/range {v0 .. v38}, Lcom/metamoji/mazecapi/StrokeFountainProperties;-><init>(DDDDDDDDDDDDDDDDDDD)V

    return-object v0
.end method

.method protected static convertInkFromNA(Lcom/metamoji/mazecapi/StrokeInk;Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/IStrokeInk;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeInk;",
            ">;)",
            "Lcom/metamoji/mazecclient/stroke/IStrokeInk;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 354
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    if-nez v0, :cond_3

    .line 356
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeInk;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertInkTypeFromNA(I)Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    move-result-object v1

    .line 357
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeInk;->getColors()[I

    move-result-object v2

    .line 358
    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokeInkType:[I

    invoke-virtual {v1}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    aget v0, v2, v3

    aget v1, v2, v4

    invoke-static {v0, v1}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->strokeInkCubic2Surface(II)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v0

    goto :goto_0

    .line 363
    :cond_1
    aget v0, v2, v3

    aget v1, v2, v4

    invoke-static {v0, v1}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->strokeInkGradation(II)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_2
    aget v0, v2, v3

    invoke-static {v0}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->strokeInkPlain(I)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v0

    .line 371
    :goto_0
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static convertInkToNA(Lcom/metamoji/mazecclient/stroke/IStrokeInk;Ljava/util/Map;)Lcom/metamoji/mazecapi/StrokeInk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IStrokeInk;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecclient/stroke/IStrokeInk;",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            ">;)",
            "Lcom/metamoji/mazecapi/StrokeInk;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 383
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecapi/StrokeInk;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/metamoji/mazecapi/StrokeInk;

    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getType()Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertInkTypeToNA(Lcom/metamoji/mazecclient/stroke/StrokeInkType;)I

    move-result v1

    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getColors()[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecapi/StrokeInk;-><init>(I[I)V

    .line 386
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static convertInkTypeFromNA(I)Lcom/metamoji/mazecclient/stroke/StrokeInkType;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 396
    sget-object p0, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->PLAIN:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    return-object p0

    .line 400
    :cond_0
    sget-object p0, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->CUBIC2SURFACE:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    return-object p0

    .line 398
    :cond_1
    sget-object p0, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->GRADIATION:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    return-object p0
.end method

.method protected static convertInkTypeToNA(Lcom/metamoji/mazecclient/stroke/StrokeInkType;)I
    .locals 1

    .line 405
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokeInkType:[I

    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method protected static convertPenTypeFromNA(I)Lcom/metamoji/mazecclient/stroke/StrokePenType;
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 330
    sget-object p0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    return-object p0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 333
    sget-object p0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    return-object p0

    .line 335
    :cond_1
    sget-object p0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    return-object p0
.end method

.method protected static convertPenTypeToNA(Lcom/metamoji/mazecclient/stroke/StrokePenType;)I
    .locals 1

    .line 339
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 342
    :cond_0
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method protected static convertStrokeFromNA(Lcom/metamoji/mazecapi/Stroke;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/HandwriteStroke;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecapi/Stroke;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeInk;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            ">;)",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStroke;"
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    .line 235
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Stroke;->getPoints()Ljava/util/List;

    move-result-object v1

    .line 236
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Stroke;->getSegmentAttr()Ljava/util/List;

    move-result-object v2

    .line 237
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Stroke;->getPenAttr()Ljava/util/List;

    move-result-object v3

    .line 238
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Stroke;->getStyle()Lcom/metamoji/mazecapi/StrokeStyle;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertStrokeStyleFromNA(Lcom/metamoji/mazecapi/StrokeStyle;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v4

    .line 239
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Stroke;->getPenInfo()Lcom/metamoji/mazecapi/StrokePenInfo;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertStrokePenInfoFromNA(Lcom/metamoji/mazecapi/StrokePenInfo;Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;

    move-result-object v5

    .line 240
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Stroke;->getDelta()D

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;D)V

    return-object v0
.end method

.method protected static convertStrokePenInfoFromNA(Lcom/metamoji/mazecapi/StrokePenInfo;Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            ">;)",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 448
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokePenInfo;

    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokePenInfo;->getPenID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokePenInfo;->getInkID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokePenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static convertStrokePenInfoToNA(Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/Map;)Lcom/metamoji/mazecapi/StrokePenInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            ">;)",
            "Lcom/metamoji/mazecapi/StrokePenInfo;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 463
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecapi/StrokePenInfo;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/metamoji/mazecapi/StrokePenInfo;

    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;->getPenID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;->getInkID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecapi/StrokePenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static convertStrokeStyleFromNA(Lcom/metamoji/mazecapi/StrokeStyle;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeInk;",
            ">;)",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;"
        }
    .end annotation

    .line 261
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    if-nez v0, :cond_3

    .line 263
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getPenType()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertPenTypeFromNA(I)Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v1

    .line 264
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getInk()Lcom/metamoji/mazecapi/StrokeInk;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertInkFromNA(Lcom/metamoji/mazecapi/StrokeInk;Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v8

    .line 265
    sget-object p2, Lcom/metamoji/mazecclient/stroke/StrokeUtil$1;->$SwitchMap$com$metamoji$mazecclient$stroke$StrokePenType:[I

    invoke-virtual {v1}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineColor()I

    move-result p2

    .line 285
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineWidthRatio()F

    move-result v0

    .line 287
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getFountainProperties()Lcom/metamoji/mazecapi/StrokeFountainProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertFountainPropFromNA(Lcom/metamoji/mazecapi/StrokeFountainProperties;)Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    move-result-object v1

    .line 283
    invoke-static {p2, v0, v8, v1}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->fountainStyle(IFLcom/metamoji/mazecclient/stroke/IStrokeInk;Lcom/metamoji/mazecclient/stroke/IFountainProperties;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getCalliPaintType()I

    move-result p2

    invoke-static {p2}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertCalligraphicPaintTypeFromNA(I)Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    move-result-object v3

    .line 276
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getCalliAngle()F

    move-result v4

    .line 277
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getCalliRate()F

    move-result v5

    .line 278
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineColor()I

    move-result v6

    .line 279
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineWidthRatio()F

    move-result v7

    .line 274
    invoke-static/range {v3 .. v8}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->calligraphyStyle(Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;FFIFLcom/metamoji/mazecclient/stroke/IStrokeInk;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineColor()I

    move-result p2

    .line 270
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/StrokeStyle;->getLineWidthRatio()F

    move-result v0

    .line 268
    invoke-static {p2, v0, v8}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->standartStyle(IFLcom/metamoji/mazecclient/stroke/IStrokeInk;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v0

    .line 290
    :goto_0
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method protected static convertStrokeStyleToNA(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecapi/StrokeStyle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecclient/stroke/IStrokeInk;",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            ">;)",
            "Lcom/metamoji/mazecapi/StrokeStyle;"
        }
    .end annotation

    .line 300
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecapi/StrokeStyle;

    if-nez v0, :cond_2

    .line 302
    new-instance v0, Lcom/metamoji/mazecapi/StrokeStyle;

    invoke-direct {v0}, Lcom/metamoji/mazecapi/StrokeStyle;-><init>()V

    .line 304
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v1

    .line 305
    invoke-static {v1}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertPenTypeToNA(Lcom/metamoji/mazecclient/stroke/StrokePenType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazecapi/StrokeStyle;->setPenType(I)V

    .line 306
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertInkToNA(Lcom/metamoji/mazecclient/stroke/IStrokeInk;Ljava/util/Map;)Lcom/metamoji/mazecapi/StrokeInk;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setInk(Lcom/metamoji/mazecapi/StrokeInk;)V

    .line 307
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setLineColor(I)V

    .line 308
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineWidthRatio()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setLineWidthRatio(F)V

    .line 311
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object p2

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne p2, v1, :cond_0

    .line 313
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliAngle()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setCalliAngle(F)V

    .line 314
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliRate()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setCalliRate(F)V

    .line 315
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliPaintType()Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertCalligraphicPaintTypeToNA(Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setCalliPaintType(I)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object p2

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne p2, v1, :cond_1

    .line 318
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getFountainProperties()Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 320
    invoke-static {p2}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertFountainPropToNA(Lcom/metamoji/mazecclient/stroke/IFountainProperties;)Lcom/metamoji/mazecapi/StrokeFountainProperties;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/metamoji/mazecapi/StrokeStyle;->setFountainProperties(Lcom/metamoji/mazecapi/StrokeFountainProperties;)V

    .line 323
    :cond_1
    :goto_0
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected static convertStrokeToNA(Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecapi/Stroke;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecclient/stroke/IStrokeInk;",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            ">;)",
            "Lcom/metamoji/mazecapi/Stroke;"
        }
    .end annotation

    .line 249
    new-instance v0, Lcom/metamoji/mazecapi/Stroke;

    invoke-direct {v0}, Lcom/metamoji/mazecapi/Stroke;-><init>()V

    .line 250
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getDelta()D

    move-result-wide v1

    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getSegmentAttr()Ljava/util/List;

    move-result-object v4

    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getPenAttr()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/mazecapi/Stroke;->setPoints(DLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 251
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertStrokeStyleToNA(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecapi/StrokeStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/mazecapi/Stroke;->setStyle(Lcom/metamoji/mazecapi/StrokeStyle;)V

    .line 252
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getPenInfo()Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertStrokePenInfoToNA(Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/Map;)Lcom/metamoji/mazecapi/StrokePenInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/metamoji/mazecapi/Stroke;->setPenInfo(Lcom/metamoji/mazecapi/StrokePenInfo;)V

    return-object v0
.end method

.method protected static convertStrokesFromNA(Lcom/metamoji/mazecapi/Strokes;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecapi/Strokes;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeInk;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            ">;)",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;"
        }
    .end annotation

    .line 198
    new-instance v0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Strokes;->getTopLine()F

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Strokes;->getBaseLine()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;-><init>(FF)V

    .line 199
    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Strokes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazecapi/Stroke;

    .line 200
    invoke-static {v2, p1, p2, p3}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertStrokeFromNA(Lcom/metamoji/mazecapi/Stroke;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->addStroke(Lcom/metamoji/mazecclient/stroke/HandwriteStroke;)V

    goto :goto_0

    .line 202
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/metamoji/mazecapi/Strokes;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

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
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 168
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 169
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 170
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazecapi/Strokes;

    .line 171
    invoke-static {v4, v1, v2, v3}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertStrokesFromNA(Lcom/metamoji/mazecapi/Strokes;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

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
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecapi/Strokes;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 183
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 184
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 185
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    .line 186
    invoke-static {v4, v1, v2, v3}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertStrokesToNA(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecapi/Strokes;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertStrokesToNA(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;)Lcom/metamoji/mazecapi/Strokes;
    .locals 3

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 209
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 211
    invoke-static {p0, v0, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertStrokesToNA(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecapi/Strokes;

    move-result-object p0

    return-object p0
.end method

.method protected static convertStrokesToNA(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecapi/Strokes;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Lcom/metamoji/mazecapi/StrokeStyle;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecclient/stroke/IStrokeInk;",
            "Lcom/metamoji/mazecapi/StrokeInk;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            "Lcom/metamoji/mazecapi/StrokePenInfo;",
            ">;)",
            "Lcom/metamoji/mazecapi/Strokes;"
        }
    .end annotation

    .line 220
    new-instance v0, Lcom/metamoji/mazecapi/Strokes;

    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getTopLine()F

    move-result v1

    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getBaseLine()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazecapi/Strokes;-><init>(FF)V

    .line 221
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    .line 222
    invoke-static {v2, p1, p2, p3}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->convertStrokeToNA(Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/metamoji/mazecapi/Stroke;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/mazecapi/Strokes;->addStroke(Lcom/metamoji/mazecapi/Stroke;)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getBounds()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/metamoji/mazecapi/Strokes;->setOuterBounds(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public static decodeToPointsFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 156
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 157
    new-instance v5, Landroid/graphics/PointF;

    add-int/lit16 v4, v4, -0x8000

    int-to-float v4, v4

    add-int/lit16 v1, v1, -0x8000

    int-to-float v1, v1

    invoke-direct {v5, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static encodeToStringFromPoints(Ljava/util/List;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x801

    .line 107
    new-array v1, v1, [C

    .line 109
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_7

    .line 111
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 113
    iget v7, v6, Landroid/graphics/PointF;->x:F

    float-to-double v7, v7

    const-wide/high16 v9, -0x3f2c000000000000L    # -20480.0

    cmpg-double v7, v7, v9

    const v8, 0x8000

    const v11, 0x469ffe00    # 20479.0f

    const v12, 0xffff

    if-ltz v7, :cond_1

    iget v7, v6, Landroid/graphics/PointF;->x:F

    cmpg-float v7, v11, v7

    if-gez v7, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    iget v7, v6, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    add-int/2addr v7, v8

    int-to-char v7, v7

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v12

    .line 122
    :goto_2
    iget v13, v6, Landroid/graphics/PointF;->y:F

    float-to-double v13, v13

    cmpg-double v9, v13, v9

    if-ltz v9, :cond_3

    iget v9, v6, Landroid/graphics/PointF;->y:F

    cmpg-float v9, v11, v9

    if-gez v9, :cond_2

    goto :goto_3

    .line 128
    :cond_2
    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    add-int/2addr v6, v8

    int-to-char v6, v6

    goto :goto_4

    :cond_3
    :goto_3
    move v6, v12

    :goto_4
    if-eq v7, v12, :cond_4

    if-eq v6, v12, :cond_4

    .line 132
    aput-char v7, v1, v5

    add-int/lit8 v7, v5, 0x1

    .line 133
    aput-char v6, v1, v7

    add-int/lit8 v5, v5, 0x2

    :cond_4
    const/16 v6, 0x800

    if-eq v5, v6, :cond_5

    add-int/lit8 v6, v2, -0x1

    if-ne v4, v6, :cond_6

    .line 138
    :cond_5
    invoke-virtual {v0, v1, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move v5, v3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
