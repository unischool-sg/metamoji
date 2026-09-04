.class public Lcom/metamoji/nt/share/NtPenPreview;
.super Ljava/lang/Object;
.source "NtPenPreview.java"


# static fields
.field private static instance_:Lcom/metamoji/nt/share/NtPenPreview;


# instance fields
.field private final FOUNTAIN_PREVIEW_POINTS_AREA_HMARGNIN:I

.field private final FOUNTAIN_PREVIEW_POINTS_AREA_POINT_WIDTH:I

.field private final FOUNTAIN_PREVIEW_POINTS_AREA_WIDTH:I

.field private final PREVIEW_POINTS_AREA_HMARGNIN:I

.field private final PREVIEW_POINTS_AREA_POINT_WIDTH:I

.field private final PREVIEW_POINTS_AREA_WIDTH:I

.field private mCalliPreviewPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mFountainPreviewPointsA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mFountainPreviewPointsB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mFountainPreviewPointsC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mFountainPreviewTimesA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFountainPreviewTimesB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFountainPreviewTimesC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMazecUse:Z

.field private mPaintForCurve:Landroid/graphics/Paint;

.field private mPaintForShapes:Landroid/graphics/Paint;

.field private mStandardPreviewPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z)V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 34
    iput v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->PREVIEW_POINTS_AREA_POINT_WIDTH:I

    const/16 v0, 0x1e

    .line 36
    iput v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->PREVIEW_POINTS_AREA_HMARGNIN:I

    const/16 v0, 0xa0

    .line 38
    iput v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->PREVIEW_POINTS_AREA_WIDTH:I

    const/16 v0, 0xfa

    .line 40
    iput v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->FOUNTAIN_PREVIEW_POINTS_AREA_POINT_WIDTH:I

    const/16 v0, 0x4b

    .line 42
    iput v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->FOUNTAIN_PREVIEW_POINTS_AREA_HMARGNIN:I

    const/16 v0, 0x190

    .line 44
    iput v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->FOUNTAIN_PREVIEW_POINTS_AREA_WIDTH:I

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mStandardPreviewPoints:Ljava/util/List;

    .line 49
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mCalliPreviewPoints:Ljava/util/List;

    .line 51
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewPointsA:Ljava/util/List;

    .line 53
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewTimesA:Ljava/util/List;

    .line 55
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewPointsB:Ljava/util/List;

    .line 57
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewTimesB:Ljava/util/List;

    .line 59
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewPointsC:Ljava/util/List;

    .line 61
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewTimesC:Ljava/util/List;

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/metamoji/nt/share/NtPenPreview;->mMazecUse:Z

    .line 73
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForCurve:Landroid/graphics/Paint;

    .line 74
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForShapes:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForCurve:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForCurve:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForCurve:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 94
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForCurve:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForShapes:Landroid/graphics/Paint;

    .line 97
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForShapes:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForShapes:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 100
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForShapes:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 102
    iput-boolean p1, p0, Lcom/metamoji/nt/share/NtPenPreview;->mMazecUse:Z

    return-void
.end method

.method private drawPenPreviewStrokeImage(Landroid/graphics/Canvas;Lcom/metamoji/nt/share/NtPenStyle;Ljava/util/List;Ljava/util/List;IIF)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/metamoji/nt/share/NtPenStyle;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;IIF)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 209
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v3

    .line 210
    const-string v4, "calligraphy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 211
    const-string v5, "fountainpen"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 214
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    .line 215
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    move/from16 v7, p5

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v5, v5

    move/from16 v7, p6

    int-to-float v7, v7

    div-float/2addr v5, v7

    .line 219
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 220
    invoke-virtual {v7, v6, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    div-float v8, p7, v6

    if-eqz v4, :cond_1

    .line 225
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    iget v11, v2, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    float-to-double v11, v11

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v11, v13

    const-wide v13, 0x4066800000000000L    # 180.0

    div-double/2addr v11, v13

    .line 227
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    move-object/from16 p6, v10

    float-to-double v9, v8

    mul-double/2addr v13, v9

    .line 228
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    .line 229
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_0

    move-object/from16 v15, p3

    .line 230
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Landroid/graphics/PointF;

    move/from16 v16, v4

    .line 231
    new-instance v4, Landroid/graphics/PointF;

    move/from16 v18, v5

    iget v5, v3, Landroid/graphics/PointF;->x:F

    move/from16 v19, v6

    float-to-double v5, v5

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v22, v11, v20

    sub-double v5, v5, v22

    double-to-float v5, v5

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move/from16 p7, v9

    move v6, v10

    float-to-double v9, v3

    div-double v20, v13, v20

    add-double v9, v9, v20

    double-to-float v3, v9

    invoke-direct {v4, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v3, p6

    .line 232
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v6, 0x1

    move/from16 v9, p7

    move/from16 v4, v16

    move/from16 v3, v17

    move/from16 v5, v18

    move/from16 v6, v19

    goto :goto_0

    :cond_0
    move/from16 v17, v3

    move-object/from16 v3, p6

    move-object v15, v3

    goto :goto_1

    :cond_1
    move-object/from16 v15, p3

    move/from16 v17, v3

    :goto_1
    move/from16 v16, v4

    move/from16 v18, v5

    move/from16 v19, v6

    .line 237
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getLineAlpha()F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 238
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v4

    .line 239
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v3, v5, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 242
    new-instance v4, Lcom/metamoji/ci/LineReducer;

    invoke-direct {v4}, Lcom/metamoji/ci/LineReducer;-><init>()V

    const-wide v5, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    .line 245
    iput-wide v5, v4, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    .line 246
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    .line 247
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v17, :cond_4

    .line 251
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    const-wide/16 v9, 0x0

    .line 254
    iput-wide v9, v4, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    .line 256
    new-instance v6, Lcom/metamoji/ci/Q2bInterpolator;

    invoke-direct {v6}, Lcom/metamoji/ci/Q2bInterpolator;-><init>()V

    .line 257
    iget-object v9, v4, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    iput-object v9, v6, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    .line 258
    iget-object v9, v4, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    iput-object v9, v6, Lcom/metamoji/ci/Q2bInterpolator;->segmentAttr:Ljava/util/List;

    .line 259
    iget-object v9, v4, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    iput-object v9, v6, Lcom/metamoji/ci/Q2bInterpolator;->penAttr:Ljava/util/List;

    .line 260
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v6, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    .line 261
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v6, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    move-object/from16 v9, p4

    .line 262
    invoke-virtual {v4, v15, v9}, Lcom/metamoji/ci/LineReducer;->reducePoints(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 263
    invoke-virtual {v6}, Lcom/metamoji/ci/Q2bInterpolator;->solve()V

    .line 265
    new-instance v4, Lcom/metamoji/ci/FountainFactory;

    invoke-direct {v4}, Lcom/metamoji/ci/FountainFactory;-><init>()V

    .line 266
    iget-object v9, v6, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    iput-object v9, v4, Lcom/metamoji/ci/FountainFactory;->bezierPoints:Ljava/util/List;

    .line 267
    iget-object v6, v6, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    iput-object v6, v4, Lcom/metamoji/ci/FountainFactory;->penAttrArray:Ljava/util/List;

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    .line 268
    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->strongCouplingDistance:D

    const-wide/high16 v9, 0x4034000000000000L    # 20.0

    .line 269
    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->weakCouplingDistance:D

    const-wide v9, 0x3fe99999a0000000L    # 0.800000011920929

    .line 272
    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->scaleOfInputTime:D

    .line 273
    iget v6, v2, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    .line 274
    iget v9, v2, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    div-float/2addr v6, v9

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->highDensityFatness:D

    .line 276
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginStay()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->mu:D

    .line 277
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginRun()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->mu0:D

    .line 278
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getTailStay()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->nu:D

    .line 279
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getTailRun()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->nu0:D

    .line 280
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getEndStay()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->omega:D

    .line 281
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getEndRun()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->omega0:D

    .line 283
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginStayRate()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->muRate:D

    .line 284
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginStayDelta()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->muDelta:D

    .line 285
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginRunRate()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->mu0Rate:D

    .line 286
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getBeginRunDelta()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->mu0Delta:D

    .line 288
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getTailStayRate()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->nuRate:D

    .line 289
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getTailStayDelta()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->nuDelta:D

    .line 290
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getTailRunRate()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->nu0Rate:D

    .line 291
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getTailRunDelta()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->nu0Delta:D

    .line 293
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getEndStayRate()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->omegaRate:D

    .line 294
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getEndStayDelta()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->omegaDelta:D

    .line 295
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getEndRunRate()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->omega0Rate:D

    .line 296
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getEndRunDelta()F

    move-result v6

    float-to-double v9, v6

    iput-wide v9, v4, Lcom/metamoji/ci/FountainFactory;->omega0Delta:D

    float-to-double v8, v8

    .line 298
    iput-wide v8, v4, Lcom/metamoji/ci/FountainFactory;->penWidth:D

    .line 299
    invoke-virtual {v4}, Lcom/metamoji/ci/FountainFactory;->createPath()Landroid/graphics/Path;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 302
    invoke-virtual {v4, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 304
    iget-object v6, v0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForShapes:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    iget-object v3, v0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForShapes:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 306
    invoke-direct {v0, v2, v4}, Lcom/metamoji/nt/share/NtPenPreview;->getGradient(Lcom/metamoji/nt/share/NtPenStyle;Landroid/graphics/Path;)Landroid/graphics/Shader;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 308
    iget-object v3, v0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForShapes:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 310
    :cond_3
    iget-object v2, v0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForShapes:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 314
    :cond_4
    new-instance v6, Lcom/metamoji/ci/CurveInterpolator;

    invoke-direct {v6}, Lcom/metamoji/ci/CurveInterpolator;-><init>()V

    .line 315
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v6, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    .line 318
    iput-wide v9, v6, Lcom/metamoji/ci/CurveInterpolator;->deltaOfInputTime:D

    .line 319
    iget-object v9, v4, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    iget-object v10, v4, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    invoke-virtual {v6, v9, v10}, Lcom/metamoji/ci/CurveInterpolator;->init(Ljava/util/List;Ljava/util/List;)V

    .line 320
    invoke-virtual {v4, v15}, Lcom/metamoji/ci/LineReducer;->reducePoints(Ljava/util/List;)Ljava/util/List;

    .line 321
    invoke-virtual {v6}, Lcom/metamoji/ci/CurveInterpolator;->solve()V

    if-eqz v16, :cond_6

    .line 324
    new-instance v4, Lcom/metamoji/ci/CalligraphyFactory;

    invoke-direct {v4}, Lcom/metamoji/ci/CalligraphyFactory;-><init>()V

    .line 325
    iget v9, v2, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    float-to-double v9, v9

    iput-wide v9, v4, Lcom/metamoji/ci/CalligraphyFactory;->penAngle:D

    .line 326
    iget v9, v2, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    float-to-double v9, v9

    iput-wide v9, v4, Lcom/metamoji/ci/CalligraphyFactory;->penRate:D

    .line 327
    iget-object v6, v6, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    invoke-virtual {v4, v6}, Lcom/metamoji/ci/CalligraphyFactory;->init(Ljava/util/List;)V

    float-to-double v8, v8

    .line 328
    iput-wide v8, v4, Lcom/metamoji/ci/CalligraphyFactory;->penWidth:D

    .line 329
    invoke-virtual {v4}, Lcom/metamoji/ci/CalligraphyFactory;->roiReset()V

    const/4 v9, 0x0

    .line 330
    iput v9, v4, Lcom/metamoji/ci/CalligraphyFactory;->roiStart:I

    .line 331
    invoke-virtual {v4}, Lcom/metamoji/ci/CalligraphyFactory;->solve()V

    .line 332
    iget-object v4, v4, Lcom/metamoji/ci/CalligraphyFactory;->shapes:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 333
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 334
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    .line 335
    invoke-virtual {v4, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 338
    iget-object v6, v0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForShapes:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
    iget-object v3, v0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForShapes:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 340
    invoke-direct {v0, v2, v4}, Lcom/metamoji/nt/share/NtPenPreview;->getGradient(Lcom/metamoji/nt/share/NtPenStyle;Landroid/graphics/Path;)Landroid/graphics/Shader;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 342
    iget-object v3, v0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForShapes:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 344
    :cond_5
    iget-object v2, v0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForShapes:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_6
    const/4 v9, 0x0

    .line 348
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 349
    iget-object v5, v6, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    .line 350
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    :goto_2
    if-ge v9, v6, :cond_9

    if-nez v9, :cond_7

    add-int/lit8 v7, v9, 0x1

    .line 353
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 354
    iget v10, v9, Landroid/graphics/PointF;->x:F

    mul-float v10, v10, v19

    iget v9, v9, Landroid/graphics/PointF;->y:F

    mul-float v9, v9, v18

    invoke-virtual {v4, v10, v9}, Landroid/graphics/Path;->moveTo(FF)V

    move v9, v7

    goto :goto_3

    :cond_7
    add-int/lit8 v7, v9, 0x1

    .line 356
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    .line 357
    new-instance v11, Landroid/graphics/PointF;

    iget v12, v10, Landroid/graphics/PointF;->x:F

    mul-float v12, v12, v19

    iget v10, v10, Landroid/graphics/PointF;->y:F

    mul-float v10, v10, v18

    invoke-direct {v11, v12, v10}, Landroid/graphics/PointF;-><init>(FF)V

    add-int/lit8 v9, v9, 0x2

    .line 358
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 359
    new-instance v10, Landroid/graphics/PointF;

    iget v12, v7, Landroid/graphics/PointF;->x:F

    mul-float v12, v12, v19

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float v7, v7, v18

    invoke-direct {v10, v12, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 360
    iget v7, v11, Landroid/graphics/PointF;->x:F

    iget v11, v11, Landroid/graphics/PointF;->y:F

    iget v12, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v7, v11, v12, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 363
    :goto_3
    iget-boolean v7, v0, Lcom/metamoji/nt/share/NtPenPreview;->mMazecUse:Z

    if-nez v7, :cond_8

    .line 364
    invoke-virtual {v2}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    .line 369
    :cond_8
    iget-object v7, v0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForCurve:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 370
    iget-object v7, v0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForCurve:Landroid/graphics/Paint;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 371
    iget-object v7, v0, Lcom/metamoji/nt/share/NtPenPreview;->mPaintForCurve:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_9
    return-void
.end method

.method private getGradient(Lcom/metamoji/nt/share/NtPenStyle;Landroid/graphics/Path;)Landroid/graphics/Shader;
    .locals 10

    .line 378
    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 382
    :cond_0
    const-string v2, "gradation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x0

    .line 384
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 385
    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object p1

    .line 386
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    .line 387
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object v2

    :cond_1
    return-object v1
.end method

.method public static getInstance(Z)Lcom/metamoji/nt/share/NtPenPreview;
    .locals 1

    .line 83
    sget-object v0, Lcom/metamoji/nt/share/NtPenPreview;->instance_:Lcom/metamoji/nt/share/NtPenPreview;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/metamoji/nt/share/NtPenPreview;->mMazecUse:Z

    if-eq v0, p0, :cond_1

    .line 84
    :cond_0
    new-instance v0, Lcom/metamoji/nt/share/NtPenPreview;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/share/NtPenPreview;-><init>(Z)V

    sput-object v0, Lcom/metamoji/nt/share/NtPenPreview;->instance_:Lcom/metamoji/nt/share/NtPenPreview;

    .line 86
    :cond_1
    sget-object p0, Lcom/metamoji/nt/share/NtPenPreview;->instance_:Lcom/metamoji/nt/share/NtPenPreview;

    return-object p0
.end method

.method private initCalliPreviewPoints()V
    .locals 22

    move-object/from16 v0, p0

    .line 410
    iget-object v1, v0, Lcom/metamoji/nt/share/NtPenPreview;->mCalliPreviewPoints:Ljava/util/List;

    if-nez v1, :cond_4

    const-wide v1, -0x403be4d089630f20L    # -0.15707963267948966

    .line 412
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    neg-double v5, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 415
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0x65

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 416
    new-instance v10, Landroid/graphics/PointF;

    const/high16 v11, 0x7fc00000    # Float.NaN

    invoke-direct {v10, v11, v11}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v12, -0x32

    :goto_0
    const/16 v13, 0x32

    if-ge v12, v13, :cond_3

    int-to-double v13, v12

    const-wide/high16 v15, 0x4049000000000000L    # 50.0

    div-double v15, v13, v15

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    mul-double v15, v15, v17

    .line 419
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    mul-double v15, v15, v17

    const-wide v17, 0x3fc999999999999aL    # 0.2

    mul-double v15, v15, v17

    mul-double v17, v3, v13

    mul-double v19, v5, v15

    add-double v17, v17, v19

    mul-double/2addr v13, v7

    mul-double/2addr v15, v1

    add-double/2addr v13, v15

    .line 422
    new-instance v15, Landroid/graphics/PointF;

    const-wide/high16 v19, 0x4054000000000000L    # 80.0

    move/from16 v21, v12

    add-double v11, v17, v19

    double-to-float v11, v11

    neg-double v12, v13

    add-double v12, v12, v19

    double-to-float v12, v12

    invoke-direct {v15, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    move/from16 v11, v21

    const/16 v12, -0x32

    if-eq v11, v12, :cond_1

    const/16 v13, 0x31

    if-ne v11, v13, :cond_0

    goto :goto_1

    .line 426
    :cond_0
    iget v13, v15, Landroid/graphics/PointF;->x:F

    iget v14, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v14

    iget v14, v15, Landroid/graphics/PointF;->x:F

    iget v12, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v12

    mul-float/2addr v13, v14

    iget v12, v15, Landroid/graphics/PointF;->y:F

    iget v14, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v14

    iget v14, v15, Landroid/graphics/PointF;->y:F

    move-wide/from16 v17, v1

    iget v1, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v1

    mul-float/2addr v12, v14

    add-float/2addr v13, v12

    const/high16 v1, 0x41c80000    # 25.0f

    cmpl-float v1, v13, v1

    if-lez v1, :cond_2

    .line 428
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    :goto_1
    move-wide/from16 v17, v1

    .line 424
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v10, v15

    :cond_2
    add-int/lit8 v12, v11, 0x1

    move-wide/from16 v1, v17

    goto :goto_0

    .line 432
    :cond_3
    iput-object v9, v0, Lcom/metamoji/nt/share/NtPenPreview;->mCalliPreviewPoints:Ljava/util/List;

    :cond_4
    return-void
.end method

.method private initFountainPreviewPointsA()V
    .locals 18

    move-object/from16 v0, p0

    .line 437
    iget-object v1, v0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewPointsA:Ljava/util/List;

    if-nez v1, :cond_1

    const/16 v1, 0x14

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v2, v4, v2

    .line 440
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0x15

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 441
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    if-gt v7, v1, :cond_0

    int-to-double v9, v7

    mul-double/2addr v9, v2

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v11, v9

    const-wide v13, -0x4006de04abbbd2e8L    # -1.5707963267948966

    add-double/2addr v11, v13

    .line 444
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    add-double/2addr v11, v4

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    mul-double/2addr v11, v11

    const-wide v13, 0x406f400000000000L    # 250.0

    mul-double/2addr v11, v13

    .line 446
    new-instance v15, Landroid/graphics/PointF;

    const-wide v16, 0x4052c00000000000L    # 75.0

    add-double v11, v11, v16

    double-to-float v11, v11

    const/high16 v12, 0x43480000    # 200.0f

    invoke-direct {v15, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 447
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    mul-double/2addr v9, v13

    double-to-long v9, v9

    .line 448
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 450
    :cond_0
    iput-object v6, v0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewPointsA:Ljava/util/List;

    .line 451
    iput-object v8, v0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewTimesA:Ljava/util/List;

    :cond_1
    return-void
.end method

.method private initFountainPreviewPointsB()V
    .locals 15

    .line 456
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewPointsB:Ljava/util/List;

    if-nez v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/16 v2, 0x14

    int-to-double v3, v2

    div-double/2addr v0, v3

    .line 459
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 460
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-gt v4, v2, :cond_0

    int-to-double v6, v4

    mul-double/2addr v6, v0

    mul-double v8, v6, v6

    const-wide v10, 0x406f400000000000L    # 250.0

    mul-double/2addr v8, v10

    .line 464
    new-instance v12, Landroid/graphics/PointF;

    const-wide v13, 0x4052c00000000000L    # 75.0

    add-double/2addr v8, v13

    double-to-float v8, v8

    const/high16 v9, 0x43480000    # 200.0f

    invoke-direct {v12, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 465
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    mul-double/2addr v6, v10

    double-to-long v6, v6

    .line 466
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 468
    :cond_0
    iput-object v3, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewPointsB:Ljava/util/List;

    .line 469
    iput-object v5, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewTimesB:Ljava/util/List;

    :cond_1
    return-void
.end method

.method private initFountainPreviewPointsC()V
    .locals 11

    .line 474
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewPointsC:Ljava/util/List;

    if-nez v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/16 v2, 0x14

    int-to-double v3, v2

    div-double/2addr v0, v3

    .line 477
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 478
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-gt v4, v2, :cond_0

    int-to-double v6, v4

    mul-double/2addr v6, v0

    const-wide v8, 0x406f400000000000L    # 250.0

    mul-double/2addr v6, v8

    .line 482
    new-instance v8, Landroid/graphics/PointF;

    const-wide v9, 0x4052c00000000000L    # 75.0

    add-double/2addr v9, v6

    double-to-float v9, v9

    const/high16 v10, 0x43480000    # 200.0f

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 483
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    double-to-long v6, v6

    .line 484
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 486
    :cond_0
    iput-object v3, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewPointsC:Ljava/util/List;

    .line 487
    iput-object v5, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewTimesC:Ljava/util/List;

    :cond_1
    return-void
.end method

.method private initStandardPreviewPoints()V
    .locals 7

    .line 395
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mStandardPreviewPoints:Ljava/util/List;

    if-nez v0, :cond_1

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_0

    int-to-double v3, v2

    int-to-double v5, v1

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    add-double/2addr v3, v5

    .line 402
    new-instance v5, Landroid/graphics/PointF;

    double-to-float v3, v3

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 403
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    :cond_0
    iput-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mStandardPreviewPoints:Ljava/util/List;

    :cond_1
    return-void
.end method


# virtual methods
.method public createPenPreview(Lcom/metamoji/nt/share/NtPenStyle;FF)Landroid/graphics/Bitmap;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    move p2, v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 119
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 120
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    invoke-virtual {p0, v0, p1, p2}, Lcom/metamoji/nt/share/NtPenPreview;->drawPenPalettePreviewStrokeImage(Landroid/graphics/Canvas;Lcom/metamoji/nt/share/NtPenStyle;F)V

    return-object p3
.end method

.method public drawPenPalettePreviewStrokeImage(Landroid/graphics/Canvas;Lcom/metamoji/nt/share/NtPenStyle;F)V
    .locals 12

    .line 132
    invoke-virtual {p2}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "standard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 134
    const-string v2, "calligraphy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 135
    const-string v3, "fountainpen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 136
    iget-boolean v4, p0, Lcom/metamoji/nt/share/NtPenPreview;->mMazecUse:Z

    if-eqz v4, :cond_0

    .line 137
    const-string v4, "markerpen"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/metamoji/nt/share/NtPenPreview;->initStandardPreviewPoints()V

    .line 147
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenPreview;->mStandardPreviewPoints:Ljava/util/List;

    :goto_0
    move-object v8, v0

    move-object v7, v1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    .line 149
    invoke-direct {p0}, Lcom/metamoji/nt/share/NtPenPreview;->initCalliPreviewPoints()V

    .line 150
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenPreview;->mCalliPreviewPoints:Ljava/util/List;

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_5

    .line 165
    iget v0, p2, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 167
    invoke-direct {p0}, Lcom/metamoji/nt/share/NtPenPreview;->initFountainPreviewPointsC()V

    .line 168
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewPointsC:Ljava/util/List;

    .line 169
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewTimesC:Ljava/util/List;

    :goto_1
    move-object v7, v0

    move-object v8, v1

    goto :goto_2

    .line 170
    :cond_3
    iget v0, p2, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 171
    invoke-direct {p0}, Lcom/metamoji/nt/share/NtPenPreview;->initFountainPreviewPointsA()V

    .line 172
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewPointsA:Ljava/util/List;

    .line 173
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewTimesA:Ljava/util/List;

    goto :goto_1

    .line 175
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/nt/share/NtPenPreview;->initFountainPreviewPointsB()V

    .line 176
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewPointsB:Ljava/util/List;

    .line 177
    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenPreview;->mFountainPreviewTimesB:Ljava/util/List;

    goto :goto_1

    :cond_5
    move-object v7, v0

    move-object v8, v7

    :goto_2
    if-eqz v3, :cond_6

    const/16 v0, 0x190

    goto :goto_3

    :cond_6
    const/16 v0, 0xa0

    :goto_3
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v11, p3

    move v9, v0

    move v10, v9

    .line 190
    invoke-direct/range {v4 .. v11}, Lcom/metamoji/nt/share/NtPenPreview;->drawPenPreviewStrokeImage(Landroid/graphics/Canvas;Lcom/metamoji/nt/share/NtPenStyle;Ljava/util/List;Ljava/util/List;IIF)V

    return-void
.end method
