.class public Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;
.super Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;
.source "DrUtFountainer.java"


# instance fields
.field private m_addedBezierPathCount:I

.field private m_beginRun:D

.field private m_beginRunDelta:D

.field private m_beginRunRate:D

.field private m_beginStay:D

.field private m_beginStayDelta:D

.field private m_beginStayRate:D

.field private m_bezierCount:I

.field private m_bezierPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/df/sprite/Path;",
            ">;"
        }
    .end annotation
.end field

.field private m_endRun:D

.field private m_endRunDelta:D

.field private m_endRunRate:D

.field private m_endStay:D

.field private m_endStayDelta:D

.field private m_endStayRate:D

.field private m_fountainFactory:Lcom/metamoji/ci/FountainFactory;

.field private m_fountainerBegan:Z

.field private m_penWidth:D

.field private m_scDist:D

.field private m_startTime:J

.field private m_tailRun:D

.field private m_tailRunDelta:D

.field private m_tailRunRate:D

.field private m_tailStay:D

.field private m_tailStayDelta:D

.field private m_tailStayRate:D

.field private m_trans:D

.field private m_wcDist:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;-><init>()V

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_penWidth:D

    return-void
.end method

.method private static createFountainFactory(DDDDDDDDDDDDDDDDDDDDDDDD)Lcom/metamoji/ci/FountainFactory;
    .locals 1

    .line 451
    new-instance v0, Lcom/metamoji/ci/FountainFactory;

    invoke-direct {v0}, Lcom/metamoji/ci/FountainFactory;-><init>()V

    .line 453
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->penWidth:D

    .line 454
    iput-wide p6, v0, Lcom/metamoji/ci/FountainFactory;->strongCouplingDistance:D

    .line 455
    iput-wide p8, v0, Lcom/metamoji/ci/FountainFactory;->weakCouplingDistance:D

    mul-double/2addr p2, p4

    .line 456
    iput-wide p2, v0, Lcom/metamoji/ci/FountainFactory;->deltaOfInputTime:D

    .line 458
    iput-wide p4, v0, Lcom/metamoji/ci/FountainFactory;->scaleOfInputTime:D

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    div-double/2addr p0, p10

    .line 460
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->highDensityFatness:D

    .line 461
    iput-wide p12, v0, Lcom/metamoji/ci/FountainFactory;->mu:D

    move-wide p0, p14

    .line 462
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->muRate:D

    move-wide/from16 p0, p16

    .line 463
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->muDelta:D

    move-wide/from16 p0, p18

    .line 464
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->mu0:D

    move-wide/from16 p0, p20

    .line 465
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->mu0Rate:D

    move-wide/from16 p0, p22

    .line 466
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->mu0Delta:D

    move-wide/from16 p0, p24

    .line 468
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->omega:D

    move-wide/from16 p0, p26

    .line 469
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->omegaRate:D

    move-wide/from16 p0, p28

    .line 470
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->omegaDelta:D

    move-wide/from16 p0, p30

    .line 471
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->omega0:D

    move-wide/from16 p0, p32

    .line 472
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->omega0Rate:D

    move-wide/from16 p0, p34

    .line 473
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->omega0Delta:D

    move-wide/from16 p0, p36

    .line 475
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->nu:D

    move-wide/from16 p0, p38

    .line 476
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->nuRate:D

    move-wide/from16 p0, p40

    .line 477
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->nuDelta:D

    move-wide/from16 p0, p42

    .line 478
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->nu0:D

    move-wide/from16 p0, p44

    .line 479
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->nu0Rate:D

    move-wide/from16 p0, p46

    .line 480
    iput-wide p0, v0, Lcom/metamoji/ci/FountainFactory;->nu0Delta:D

    return-object v0
.end method

.method private static createPathFromFountainFactory(Lcom/metamoji/ci/FountainFactory;)Lcom/metamoji/df/sprite/Path;
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/metamoji/ci/FountainFactory;->reset()V

    .line 487
    invoke-virtual {p0}, Lcom/metamoji/ci/FountainFactory;->createPath()Landroid/graphics/Path;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 489
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 493
    :cond_0
    new-instance v0, Lcom/metamoji/df/sprite/Path;

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method private static createPathFromFountainFactory(Lcom/metamoji/ci/FountainFactory;IIZ)Lcom/metamoji/df/sprite/Path;
    .locals 0

    .line 497
    invoke-virtual {p0}, Lcom/metamoji/ci/FountainFactory;->reset()V

    .line 498
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ci/FountainFactory;->createPath(IIZ)Landroid/graphics/Path;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 500
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    .line 504
    :cond_0
    new-instance p1, Lcom/metamoji/df/sprite/Path;

    invoke-direct {p1, p0}, Lcom/metamoji/df/sprite/Path;-><init>(Landroid/graphics/Path;)V

    return-object p1
.end method


# virtual methods
.method public addPoint(Landroid/graphics/PointF;JZ)V
    .locals 4

    .line 344
    invoke-super {p0, p1, p4, p2, p3}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->addPoint(Landroid/graphics/PointF;ZJ)V

    .line 347
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_fountainerBegan:Z

    if-nez p1, :cond_0

    goto :goto_1

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->addedBezierPointCount()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    if-eqz p4, :cond_8

    .line 352
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_fountainerBegan:Z

    return-void

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    const/4 p3, 0x3

    if-lt p1, p3, :cond_7

    .line 358
    iget p3, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_bezierCount:I

    if-eq p1, p3, :cond_7

    add-int/lit8 p3, p3, -0x9

    if-gez p3, :cond_2

    move p3, p2

    :cond_2
    add-int/lit8 v0, p1, -0x1

    if-gez v0, :cond_3

    move v0, p2

    :cond_3
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_5

    if-lez v0, :cond_7

    .line 367
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-static {v1, p3, v0, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->createPathFromFountainFactory(Lcom/metamoji/ci/FountainFactory;IIZ)Lcom/metamoji/df/sprite/Path;

    move-result-object p3

    if-nez p3, :cond_4

    .line 369
    invoke-static {p2, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    if-eqz p4, :cond_8

    .line 371
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_fountainerBegan:Z

    return-void

    .line 375
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_bezierPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iput v3, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_addedBezierPathCount:I

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_7

    .line 380
    iget-object p3, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->createPathFromFountainFactory(Lcom/metamoji/ci/FountainFactory;)Lcom/metamoji/df/sprite/Path;

    move-result-object p3

    if-nez p3, :cond_6

    .line 382
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 384
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_fountainerBegan:Z

    return-void

    .line 387
    :cond_6
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_bezierPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iput v3, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_addedBezierPathCount:I

    .line 391
    :cond_7
    :goto_0
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_bezierCount:I

    if-eqz p4, :cond_8

    .line 394
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_fountainerBegan:Z

    :cond_8
    :goto_1
    return-void
.end method

.method public addPoint(Landroid/graphics/PointF;Z)V
    .locals 4

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_startTime:J

    sub-long/2addr v0, v2

    .line 63
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->addPoint(Landroid/graphics/PointF;JZ)V

    return-void
.end method

.method public addedBezierPathCount()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_addedBezierPathCount:I

    return v0
.end method

.method public beginFountainerAtPoint(Landroid/graphics/PointF;Ljava/util/Calendar;)V
    .locals 52

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 300
    iput-boolean v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_fountainerBegan:Z

    const/4 v2, 0x0

    .line 301
    iput v2, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_bezierCount:I

    if-eqz p2, :cond_0

    move-object/from16 v3, p2

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_startTime:J

    .line 305
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_bezierPaths:Ljava/util/ArrayList;

    .line 306
    iput v2, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_addedBezierPathCount:I

    const-wide/16 v2, 0x0

    move-object/from16 v4, p1

    .line 309
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->beginReducerAtPoint(Landroid/graphics/PointF;ZJ)V

    .line 312
    iget-wide v4, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_penWidth:D

    .line 314
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->delta()F

    move-result v1

    float-to-double v6, v1

    .line 315
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->zoom()F

    move-result v1

    float-to-double v8, v1

    iget-wide v10, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_scDist:D

    iget-wide v12, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_wcDist:D

    iget-wide v14, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_trans:D

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginStay:D

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginStayRate:D

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginStayDelta:D

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginRun:D

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginRunRate:D

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginRunDelta:D

    move-wide/from16 v26, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endStay:D

    move-wide/from16 v28, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endStayRate:D

    move-wide/from16 v30, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endStayDelta:D

    move-wide/from16 v32, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endRun:D

    move-wide/from16 v34, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endRunRate:D

    move-wide/from16 v36, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endRunDelta:D

    move-wide/from16 v38, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailStay:D

    move-wide/from16 v40, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailStayRate:D

    move-wide/from16 v42, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailStayDelta:D

    move-wide/from16 v44, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailRun:D

    move-wide/from16 v46, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailRunRate:D

    move-wide/from16 v48, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailRunDelta:D

    move-wide/from16 v50, v1

    .line 312
    invoke-static/range {v4 .. v51}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->createFountainFactory(DDDDDDDDDDDDDDDDDDDDDDDD)Lcom/metamoji/ci/FountainFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    .line 337
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    .line 338
    iget-object v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->penAttrArray()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    return-void
.end method

.method public beginRun()D
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginRun:D

    return-wide v0
.end method

.method public beginRunDelta()D
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginRunDelta:D

    return-wide v0
.end method

.method public beginRunRate()D
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginRunRate:D

    return-wide v0
.end method

.method public beginStay()D
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginStay:D

    return-wide v0
.end method

.method public beginStayDelta()D
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginStayDelta:D

    return-wide v0
.end method

.method public beginStayRate()D
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginStayRate:D

    return-wide v0
.end method

.method public bezierPaths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/df/sprite/Path;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_bezierPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_bezierPaths:Ljava/util/ArrayList;

    .line 69
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_addedBezierPathCount:I

    .line 71
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_fountainerBegan:Z

    .line 72
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->clear()V

    return-void
.end method

.method public createInferentialPath()Lcom/metamoji/df/sprite/Path;
    .locals 4

    .line 399
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_fountainerBegan:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 400
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    move v0, v2

    :cond_1
    const/4 v3, 0x4

    if-lt v0, v3, :cond_2

    if-lez v0, :cond_2

    .line 413
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_fountainFactory:Lcom/metamoji/ci/FountainFactory;

    add-int/lit8 v3, v0, -0x4

    invoke-static {v1, v3, v0, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->createPathFromFountainFactory(Lcom/metamoji/ci/FountainFactory;IIZ)Lcom/metamoji/df/sprite/Path;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public endRun()D
    .locals 2

    .line 176
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endRun:D

    return-wide v0
.end method

.method public endRunDelta()D
    .locals 2

    .line 192
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endRunDelta:D

    return-wide v0
.end method

.method public endRunRate()D
    .locals 2

    .line 184
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endRunRate:D

    return-wide v0
.end method

.method public endStay()D
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endStay:D

    return-wide v0
.end method

.method public endStayDelta()D
    .locals 2

    .line 168
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endStayDelta:D

    return-wide v0
.end method

.method public endStayRate()D
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endStayRate:D

    return-wide v0
.end method

.method public penWidth()D
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_penWidth:D

    return-wide v0
.end method

.method public scDist()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_scDist:D

    return-wide v0
.end method

.method public setBeginRun(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 133
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginRun:D

    return-void
.end method

.method public setBeginRunDelta(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 149
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginRunDelta:D

    return-void
.end method

.method public setBeginRunRate(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 141
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginRunRate:D

    return-void
.end method

.method public setBeginStay(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 109
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginStay:D

    return-void
.end method

.method public setBeginStayDelta(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 125
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginStayDelta:D

    return-void
.end method

.method public setBeginStayRate(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 117
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginStayRate:D

    return-void
.end method

.method public setEndRun(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 181
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endRun:D

    return-void
.end method

.method public setEndRunDelta(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 197
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endRunDelta:D

    return-void
.end method

.method public setEndRunRate(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 189
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endRunRate:D

    return-void
.end method

.method public setEndStay(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 157
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endStay:D

    return-void
.end method

.method public setEndStayDelta(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 173
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endStayDelta:D

    return-void
.end method

.method public setEndStayRate(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 165
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endStayRate:D

    return-void
.end method

.method public setPenWidth(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 83
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_penWidth:D

    return-void
.end method

.method public setScDist(D)V
    .locals 0

    .line 88
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_scDist:D

    return-void
.end method

.method public setTailRun(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 229
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailRun:D

    return-void
.end method

.method public setTailRunDelta(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 245
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailRunDelta:D

    return-void
.end method

.method public setTailRunRate(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 237
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailRunRate:D

    return-void
.end method

.method public setTailStay(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 205
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailStay:D

    return-void
.end method

.method public setTailStayDelta(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 221
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailStayDelta:D

    return-void
.end method

.method public setTailStayRate(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 213
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailStayRate:D

    return-void
.end method

.method public setTrans(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 101
    :cond_0
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_trans:D

    return-void
.end method

.method public setWcDist(D)V
    .locals 0

    .line 93
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_wcDist:D

    return-void
.end method

.method public tailRun()D
    .locals 2

    .line 224
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailRun:D

    return-wide v0
.end method

.method public tailRunDelta()D
    .locals 2

    .line 240
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailRunDelta:D

    return-wide v0
.end method

.method public tailRunRate()D
    .locals 2

    .line 232
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailRunRate:D

    return-wide v0
.end method

.method public tailStay()D
    .locals 2

    .line 200
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailStay:D

    return-wide v0
.end method

.method public tailStayDelta()D
    .locals 2

    .line 216
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailStayDelta:D

    return-wide v0
.end method

.method public tailStayRate()D
    .locals 2

    .line 208
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailStayRate:D

    return-wide v0
.end method

.method public trans()D
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_trans:D

    return-wide v0
.end method

.method public updateBezierPaths()Z
    .locals 53

    move-object/from16 v0, p0

    .line 253
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->updateBezierPoints()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 254
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 259
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_bezierPaths:Ljava/util/ArrayList;

    .line 261
    iget-wide v4, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_penWidth:D

    .line 263
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->delta()F

    move-result v1

    float-to-double v6, v1

    .line 264
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->zoom()F

    move-result v1

    float-to-double v8, v1

    iget-wide v10, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_scDist:D

    iget-wide v12, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_wcDist:D

    iget-wide v14, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_trans:D

    move v1, v3

    move-wide/from16 v16, v4

    iget-wide v3, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginStay:D

    move/from16 v52, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginStayRate:D

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginStayDelta:D

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginRun:D

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginRunRate:D

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_beginRunDelta:D

    move-wide/from16 v26, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endStay:D

    move-wide/from16 v28, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endStayRate:D

    move-wide/from16 v30, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endStayDelta:D

    move-wide/from16 v32, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endRun:D

    move-wide/from16 v34, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endRunRate:D

    move-wide/from16 v36, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_endRunDelta:D

    move-wide/from16 v38, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailStay:D

    move-wide/from16 v40, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailStayRate:D

    move-wide/from16 v42, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailStayDelta:D

    move-wide/from16 v44, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailRun:D

    move-wide/from16 v46, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailRunRate:D

    move-wide/from16 v48, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_tailRunDelta:D

    move-wide/from16 v50, v16

    move-wide/from16 v16, v3

    move-wide/from16 v4, v50

    move-wide/from16 v50, v1

    .line 261
    invoke-static/range {v4 .. v51}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->createFountainFactory(DDDDDDDDDDDDDDDDDDDDDDDD)Lcom/metamoji/ci/FountainFactory;

    move-result-object v1

    .line 286
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    .line 287
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->penAttrArray()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    .line 288
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->createPathFromFountainFactory(Lcom/metamoji/ci/FountainFactory;)Lcom/metamoji/df/sprite/Path;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v3, 0x0

    .line 290
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v52

    .line 293
    :cond_1
    iget-object v3, v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_bezierPaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public wcDist()D
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->m_wcDist:D

    return-wide v0
.end method
