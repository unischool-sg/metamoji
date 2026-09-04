.class public Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;
.super Lcom/metamoji/mazec/stroke/StrokeDrawer;
.source "StrokeDrawerBuffered.java"


# static fields
.field private static final POINT_BUFFER_SIZE:I = 0x3

.field private static final middlePointAngleMin:D = 1.5707963267948966


# instance fields
.field private mCurPath:Landroid/graphics/Path;

.field private mLastAngleDelta:D

.field private mLastIndex:I

.field private mNumberOfBufferedPoints:I

.field private mPointsBuffer:[Landroid/graphics/PointF;

.field private mPrevLastIndex:I

.field private mWorkRect:Landroid/graphics/RectF;

.field private mWorkSmoothed:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeDrawer;-><init>()V

    const/4 v0, 0x3

    .line 17
    new-array v0, v0, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mPointsBuffer:[Landroid/graphics/PointF;

    const/4 v0, 0x6

    .line 18
    new-array v0, v0, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mWorkSmoothed:[Landroid/graphics/PointF;

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mWorkRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mNumberOfBufferedPoints:I

    return-void
.end method

.method private flushPointsBufferWithFinish(Z)V
    .locals 7

    .line 244
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mNumberOfBufferedPoints:I

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v1

    .line 253
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mWorkSmoothed:[Landroid/graphics/PointF;

    .line 254
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 255
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mPointsBuffer:[Landroid/graphics/PointF;

    iget v4, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mNumberOfBufferedPoints:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v2}, Lcom/metamoji/mazec/stroke/StrokeSmoothUtil;->MMJmiddlePointSmooth([Landroid/graphics/PointF;II[Landroid/graphics/PointF;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 257
    iput v6, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mNumberOfBufferedPoints:I

    return-void

    :cond_1
    if-nez v1, :cond_2

    .line 262
    aget-object v1, v2, v6

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/stroke/HwStroke;->setStartPoint(Landroid/graphics/PointF;)V

    :cond_2
    move v1, v5

    :goto_0
    add-int/lit8 v4, v3, -0x2

    if-ge v1, v4, :cond_3

    .line 267
    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Lcom/metamoji/mazec/stroke/HwStroke;->addPoint(Landroid/graphics/PointF;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    :goto_1
    if-ge v1, v3, :cond_4

    .line 272
    aget-object p1, v2, v1

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/stroke/HwStroke;->addPoint(Landroid/graphics/PointF;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 274
    :cond_4
    iput v6, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mNumberOfBufferedPoints:I

    return-void

    .line 276
    :cond_5
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mPointsBuffer:[Landroid/graphics/PointF;

    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mNumberOfBufferedPoints:I

    add-int/lit8 v1, v0, -0x2

    aget-object v1, p1, v1

    aput-object v1, p1, v6

    sub-int/2addr v0, v5

    .line 277
    aget-object v0, p1, v0

    aput-object v0, p1, v5

    const/4 p1, 0x2

    .line 278
    iput p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mNumberOfBufferedPoints:I

    return-void
.end method

.method private incrementallyDrawPath(Z)Landroid/graphics/RectF;
    .locals 8

    .line 189
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 193
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->flushPointsBufferWithFinish(Z)V

    .line 196
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 198
    sget-object p1, Lcom/metamoji/mazec/stroke/StrokeConstants;->RectNull:Landroid/graphics/RectF;

    return-object p1

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-gt v2, v3, :cond_1

    .line 205
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->pathForStroke(Lcom/metamoji/mazec/stroke/HwStroke;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mCurPath:Landroid/graphics/Path;

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0, v0, v4, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->pathForPoints(Ljava/util/List;ZZ)Landroid/graphics/Path;

    :goto_0
    sub-int/2addr v1, v3

    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 214
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 215
    iget v3, p1, Landroid/graphics/PointF;->x:F

    .line 216
    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-int/2addr v1, v4

    move v4, v3

    move v5, v4

    move v3, v1

    move v1, p1

    :goto_1
    if-ge v3, v2, :cond_7

    .line 219
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 220
    iget v7, v6, Landroid/graphics/PointF;->x:F

    cmpg-float v7, v5, v7

    if-gez v7, :cond_3

    .line 221
    iget v5, v6, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 222
    :cond_3
    iget v7, v6, Landroid/graphics/PointF;->x:F

    cmpl-float v7, v4, v7

    if-lez v7, :cond_4

    .line 223
    iget v4, v6, Landroid/graphics/PointF;->x:F

    .line 225
    :cond_4
    :goto_2
    iget v7, v6, Landroid/graphics/PointF;->y:F

    cmpg-float v7, v1, v7

    if-gez v7, :cond_5

    .line 226
    iget v1, v6, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 227
    :cond_5
    iget v7, v6, Landroid/graphics/PointF;->y:F

    cmpl-float v7, p1, v7

    if-lez v7, :cond_6

    .line 228
    iget p1, v6, Landroid/graphics/PointF;->y:F

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 231
    :cond_7
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mWorkRect:Landroid/graphics/RectF;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v5, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v4, p1, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 232
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mWorkRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method private pathForPoints(Ljava/util/List;ZZ)Landroid/graphics/Path;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;ZZ)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 323
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v3, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-nez p2, :cond_1

    .line 333
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 334
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 335
    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 339
    :cond_1
    iget-object v7, v0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mCurPath:Landroid/graphics/Path;

    .line 341
    iget v8, v0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mLastIndex:I

    if-nez v8, :cond_2

    .line 343
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 344
    iget v9, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v9, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 347
    :cond_2
    iget v3, v0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mPrevLastIndex:I

    .line 348
    iget-wide v5, v0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mLastAngleDelta:D

    :goto_0
    move v4, v8

    :goto_1
    move/from16 v18, v4

    move v4, v3

    move/from16 v3, v18

    :goto_2
    add-int/lit8 v8, v2, -0x1

    if-ge v3, v8, :cond_8

    .line 356
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    add-int/lit8 v9, v3, 0x1

    .line 358
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    .line 359
    iget v11, v8, Landroid/graphics/PointF;->x:F

    iget v12, v10, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    .line 360
    iget v13, v8, Landroid/graphics/PointF;->y:F

    iget v14, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    div-float/2addr v13, v12

    if-nez v3, :cond_3

    .line 363
    invoke-virtual {v7, v11, v13}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v16, v2

    move v12, v3

    move/from16 v17, v9

    goto/16 :goto_4

    .line 365
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 366
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v6, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    div-float/2addr v5, v12

    .line 367
    iget v6, v4, Landroid/graphics/PointF;->y:F

    iget v14, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v14

    div-float/2addr v6, v12

    .line 368
    iget v12, v8, Landroid/graphics/PointF;->x:F

    iget v14, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v14

    float-to-double v14, v12

    .line 369
    iget v12, v8, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v4

    move/from16 v16, v2

    float-to-double v1, v12

    .line 370
    iget v4, v10, Landroid/graphics/PointF;->x:F

    iget v12, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v12

    move v12, v3

    float-to-double v3, v4

    .line 371
    iget v10, v10, Landroid/graphics/PointF;->y:F

    move/from16 v17, v9

    iget v9, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v9

    float-to-double v9, v10

    .line 372
    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 373
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    sub-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    cmpl-double v3, v1, v3

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v3, :cond_4

    sub-double/2addr v1, v9

    :cond_4
    const-wide v3, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v3, v1, v3

    if-gez v3, :cond_5

    add-double/2addr v1, v9

    .line 384
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v9, 0x4008fe3cc6ff87deL    # 3.12413936106985

    cmpl-double v9, v3, v9

    if-ltz v9, :cond_6

    .line 387
    iget v3, v8, Landroid/graphics/PointF;->x:F

    iget v4, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 388
    invoke-virtual {v7, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    :cond_6
    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_7

    .line 391
    iget v3, v8, Landroid/graphics/PointF;->x:F

    iget v4, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 392
    invoke-virtual {v7, v11, v13}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 395
    :cond_7
    iget v3, v8, Landroid/graphics/PointF;->x:F

    iget v4, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v3, v4, v11, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_3
    move-wide v5, v1

    :goto_4
    move-object/from16 v1, p1

    move v4, v12

    move/from16 v2, v16

    move/from16 v3, v17

    goto/16 :goto_2

    :cond_8
    move v12, v3

    if-eqz p2, :cond_a

    if-eqz p3, :cond_9

    goto :goto_5

    .line 407
    :cond_9
    iput v12, v0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mLastIndex:I

    .line 408
    iput v4, v0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mPrevLastIndex:I

    .line 409
    iput-wide v5, v0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mLastAngleDelta:D

    return-object v7

    :cond_a
    :goto_5
    move-object/from16 v1, p1

    .line 404
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 405
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v7
.end method


# virtual methods
.method public addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)Landroid/graphics/RectF;
    .locals 3

    .line 68
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeTouch;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mPointsBuffer:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mNumberOfBufferedPoints:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mNumberOfBufferedPoints:I

    aput-object p1, v0, v1

    const/4 p1, 0x3

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->incrementallyDrawPath(Z)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    .line 111
    :cond_0
    sget-object p1, Lcom/metamoji/mazec/stroke/StrokeConstants;->RectNull:Landroid/graphics/RectF;

    return-object p1
.end method

.method public attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mCurPath:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mNumberOfBufferedPoints:I

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mPrevLastIndex:I

    .line 53
    iput p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mLastIndex:I

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mLastAngleDelta:D

    return-void
.end method

.method public canDraw(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z
    .locals 1

    .line 58
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public cancelStroke()V
    .locals 0

    return-void
.end method

.method public drawableForStroke(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 1

    .line 310
    new-instance v0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->pathForStroke(Lcom/metamoji/mazec/stroke/HwStroke;)Landroid/graphics/Path;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/mazec/stroke/drawable/PathCurve;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method public endStroke()Landroid/graphics/RectF;
    .locals 2

    const/4 v0, 0x1

    .line 121
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->incrementallyDrawPath(Z)Landroid/graphics/RectF;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStroke;->endStroke()V

    return-object v0
.end method

.method public getCurrentDrawable()Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 2

    .line 416
    new-instance v0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;

    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->mCurPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/metamoji/mazec/stroke/drawable/PathCurve;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method public pathForStroke(Lcom/metamoji/mazec/stroke/HwStroke;)Landroid/graphics/Path;
    .locals 6

    .line 288
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object p1

    .line 289
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_2

    .line 293
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 294
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 295
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    if-ne v0, v3, :cond_1

    .line 298
    iget p1, v2, Landroid/graphics/PointF;->x:F

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr p1, v0

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v0

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v1

    .line 300
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 301
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v1

    .line 305
    :cond_2
    invoke-direct {p0, p1, v2, v3}, Lcom/metamoji/mazec/stroke/StrokeDrawerBuffered;->pathForPoints(Ljava/util/List;ZZ)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method
