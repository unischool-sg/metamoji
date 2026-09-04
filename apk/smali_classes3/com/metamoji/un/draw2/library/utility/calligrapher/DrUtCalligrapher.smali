.class public Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;
.super Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;
.source "DrUtCalligrapher.java"


# static fields
.field private static final CF_UNI_SURFACE:I = 0x1


# instance fields
.field private m_addedBezierPathCount:I

.field private m_bezierPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/df/sprite/Path;",
            ">;"
        }
    .end annotation
.end field

.field private m_calligrapherBegan:Z

.field private m_calligraphyFactory:Lcom/metamoji/ci/CalligraphyFactory;

.field private m_inferenceRatio:F

.field private m_penAngle:F

.field private m_penRate:F

.field private m_penWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penWidth:F

    .line 41
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penAngle:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    iput v1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penRate:F

    .line 43
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_inferenceRatio:F

    return-void
.end method

.method private static createCalligraphyFactoryWithPenWidth(FFFFFZ)Lcom/metamoji/ci/CalligraphyFactory;
    .locals 3

    .line 287
    new-instance v0, Lcom/metamoji/ci/CalligraphyFactory;

    invoke-direct {v0}, Lcom/metamoji/ci/CalligraphyFactory;-><init>()V

    mul-float/2addr p1, p2

    float-to-double v1, p1

    .line 288
    iput-wide v1, v0, Lcom/metamoji/ci/CalligraphyFactory;->deltaOfInputTime:D

    float-to-double p1, p2

    .line 289
    iput-wide p1, v0, Lcom/metamoji/ci/CalligraphyFactory;->scaleOfInputTime:D

    float-to-double p0, p0

    .line 290
    iput-wide p0, v0, Lcom/metamoji/ci/CalligraphyFactory;->penWidth:D

    float-to-double p0, p3

    .line 291
    iput-wide p0, v0, Lcom/metamoji/ci/CalligraphyFactory;->penAngle:D

    float-to-double p0, p4

    .line 292
    iput-wide p0, v0, Lcom/metamoji/ci/CalligraphyFactory;->penRate:D

    .line 293
    iput-boolean p5, v0, Lcom/metamoji/ci/CalligraphyFactory;->degenerateSurface:Z

    return-object v0
.end method

.method private static createPathFromCalligraphyFactory(Lcom/metamoji/ci/CalligraphyFactory;I)Lcom/metamoji/df/sprite/Path;
    .locals 3

    .line 298
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->roiReset()V

    const/4 v0, 0x1

    .line 299
    iput v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v1

    .line 300
    :cond_0
    iput p1, p0, Lcom/metamoji/ci/CalligraphyFactory;->roiStart:I

    .line 301
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->solve()V

    .line 303
    iget-object p0, p0, Lcom/metamoji/ci/CalligraphyFactory;->shapes:Ljava/util/List;

    .line 304
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 305
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 308
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Path;

    if-nez p1, :cond_2

    .line 310
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 313
    :cond_2
    new-instance p1, Lcom/metamoji/df/sprite/Path;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Path;

    invoke-direct {p1, p0}, Lcom/metamoji/df/sprite/Path;-><init>(Landroid/graphics/Path;)V

    return-object p1
.end method


# virtual methods
.method public addPoint(Landroid/graphics/PointF;Z)V
    .locals 2

    .line 52
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->addPoint(Landroid/graphics/PointF;Z)V

    .line 55
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_calligrapherBegan:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->addedBezierPointCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_4

    .line 60
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_calligrapherBegan:Z

    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->addedBezierPointCount()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x3

    if-gez p1, :cond_2

    move p1, v0

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_calligraphyFactory:Lcom/metamoji/ci/CalligraphyFactory;

    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->createPathFromCalligraphyFactory(Lcom/metamoji/ci/CalligraphyFactory;I)Lcom/metamoji/df/sprite/Path;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 72
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    if-eqz p2, :cond_4

    .line 74
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_calligrapherBegan:Z

    return-void

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_bezierPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 79
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_addedBezierPathCount:I

    if-eqz p2, :cond_4

    .line 83
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_calligrapherBegan:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public addedBezierPathCount()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_addedBezierPathCount:I

    return v0
.end method

.method public beginCalligrapherAtPoint(Landroid/graphics/PointF;)V
    .locals 8

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_calligrapherBegan:Z

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_bezierPaths:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 168
    iput v1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_addedBezierPathCount:I

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->beginReducerAtPoint(Landroid/graphics/PointF;Z)V

    .line 174
    iget v2, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penWidth:F

    .line 175
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->delta()F

    move-result v3

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->zoom()F

    move-result v4

    iget v5, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penAngle:F

    iget v6, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penRate:F

    const/4 v7, 0x1

    .line 174
    invoke-static/range {v2 .. v7}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->createCalligraphyFactoryWithPenWidth(FFFFFZ)Lcom/metamoji/ci/CalligraphyFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_calligraphyFactory:Lcom/metamoji/ci/CalligraphyFactory;

    .line 180
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ci/CalligraphyFactory;->init(Ljava/util/List;)V

    return-void
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

    .line 128
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_bezierPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_bezierPaths:Ljava/util/ArrayList;

    .line 90
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_calligraphyFactory:Lcom/metamoji/ci/CalligraphyFactory;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_addedBezierPathCount:I

    .line 92
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_calligrapherBegan:Z

    .line 93
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->clear()V

    return-void
.end method

.method public createInferentialPathToPoint(Landroid/graphics/PointF;)Lcom/metamoji/df/sprite/Path;
    .locals 11

    .line 195
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_calligrapherBegan:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 196
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 199
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_inferenceRatio:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    return-object v2

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v0, v4, :cond_4

    if-nez v0, :cond_2

    return-object v2

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_inferenceRatio:F

    invoke-static {v0, p1, v4, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDivisionOfSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 215
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 216
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 219
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_calligraphyFactory:Lcom/metamoji/ci/CalligraphyFactory;

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->createPathFromCalligraphyFactory(Lcom/metamoji/ci/CalligraphyFactory;I)Lcom/metamoji/df/sprite/Path;

    move-result-object p1

    if-nez p1, :cond_3

    .line 221
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 225
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeLastPoint(Lcom/metamoji/cm/PointArray;)V

    .line 226
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeLastPoint(Lcom/metamoji/cm/PointArray;)V

    return-object p1

    :cond_4
    add-int/lit8 v4, v0, -0x4

    const/4 v6, 0x2

    if-gez v4, :cond_5

    .line 236
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v0, -0x3

    .line 239
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    sub-int/2addr v0, v6

    .line 240
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    move-object v10, v5

    move v5, v0

    move-object v0, v10

    :goto_0
    add-int/lit8 v7, v5, 0x1

    .line 242
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    .line 243
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v7

    .line 244
    invoke-static {v0, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 245
    invoke-static {v5, v7}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getCenterOfSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    goto :goto_1

    .line 246
    :cond_6
    invoke-static {v5, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 247
    invoke-static {v0, v7}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getCenterOfSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    :cond_7
    :goto_1
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, -0x40800000    # -1.0f

    .line 249
    invoke-static {v5, v7, v8, v9}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDivisionOfSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 250
    iget v7, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_inferenceRatio:F

    invoke-static {v5, p1, v7, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDivisionOfSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 253
    invoke-static {v4, v0, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkAcutenessOfAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 254
    invoke-static {v0, v5, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkAcutenessOfAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    .line 259
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 260
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 263
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->addedBezierPointCount()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x5

    if-gez p1, :cond_9

    goto :goto_2

    :cond_9
    move v1, p1

    .line 267
    :goto_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_calligraphyFactory:Lcom/metamoji/ci/CalligraphyFactory;

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->createPathFromCalligraphyFactory(Lcom/metamoji/ci/CalligraphyFactory;I)Lcom/metamoji/df/sprite/Path;

    move-result-object p1

    if-nez p1, :cond_a

    .line 269
    invoke-static {v6, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 273
    :cond_a
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeLastPoint(Lcom/metamoji/cm/PointArray;)V

    .line 274
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeLastPoint(Lcom/metamoji/cm/PointArray;)V

    return-object p1

    :cond_b
    :goto_3
    return-object v2
.end method

.method public inferenceRatio()F
    .locals 1

    .line 184
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_inferenceRatio:F

    return v0
.end method

.method public penAngle()F
    .locals 1

    .line 109
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penAngle:F

    return v0
.end method

.method public penRate()F
    .locals 1

    .line 116
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penRate:F

    return v0
.end method

.method public penWidth()F
    .locals 1

    .line 99
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penWidth:F

    return v0
.end method

.method public setInferenceRatio(F)V
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_calligrapherBegan:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 188
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 191
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_inferenceRatio:F

    return-void
.end method

.method public setPenAngle(F)V
    .locals 0

    .line 112
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penAngle:F

    return-void
.end method

.method public setPenRate(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const p1, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    .line 124
    :cond_1
    :goto_0
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penRate:F

    return-void
.end method

.method public setPenWidth(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 105
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penWidth:F

    return-void
.end method

.method public updateBezierPaths()Z
    .locals 9

    .line 133
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->updateBezierPoints()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 134
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 139
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_bezierPaths:Ljava/util/ArrayList;

    .line 142
    iget v3, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penWidth:F

    .line 143
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->delta()F

    move-result v4

    .line 144
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->zoom()F

    move-result v5

    iget v6, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penAngle:F

    iget v7, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_penRate:F

    const/4 v8, 0x1

    .line 142
    invoke-static/range {v3 .. v8}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->createCalligraphyFactoryWithPenWidth(FFFFFZ)Lcom/metamoji/ci/CalligraphyFactory;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/ci/CalligraphyFactory;->init(Ljava/util/List;)V

    .line 149
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->createPathFromCalligraphyFactory(Lcom/metamoji/ci/CalligraphyFactory;I)Lcom/metamoji/df/sprite/Path;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 151
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->m_bezierPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3
.end method
