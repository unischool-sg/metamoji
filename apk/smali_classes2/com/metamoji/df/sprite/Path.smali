.class public Lcom/metamoji/df/sprite/Path;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Lcom/metamoji/df/sprite/GraphicsInstruction;


# static fields
.field private static final ENABLED_AND_FILL_PAINT:I = 0x8

.field private static final ENABLED_AND_LINE_PAINT:I = 0x4

.field private static final ENABLED_BOUNDS:I = 0x2


# instance fields
.field private andFillPaint:Landroid/graphics/Paint;

.field private andLinePaint:Landroid/graphics/Paint;

.field private bounds:Landroid/graphics/RectF;

.field private fillAlpha:F

.field private fillPaint:Lcom/metamoji/df/sprite/Paint;

.field private flags:I

.field private lineAlpha:F

.field private lineCap:Lcom/metamoji/df/sprite/LineCap;

.field private lineDash:[F

.field private lineJoin:Lcom/metamoji/df/sprite/LineJoin;

.field private linePaint:Lcom/metamoji/df/sprite/Paint;

.field private lineWidth:F

.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Path;-><init>(Landroid/graphics/Path;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Path;->andLinePaint:Landroid/graphics/Paint;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Path;->andFillPaint:Landroid/graphics/Paint;

    .line 87
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Path;->bounds:Landroid/graphics/RectF;

    .line 45
    iput-object p1, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    .line 46
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->reset()V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Path;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Path;->andLinePaint:Landroid/graphics/Paint;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Path;->andFillPaint:Landroid/graphics/Paint;

    .line 87
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Path;->bounds:Landroid/graphics/RectF;

    .line 54
    iput-object p1, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    .line 55
    iget p1, p2, Lcom/metamoji/df/sprite/Path;->lineWidth:F

    iput p1, p0, Lcom/metamoji/df/sprite/Path;->lineWidth:F

    .line 56
    iget-object p1, p2, Lcom/metamoji/df/sprite/Path;->lineCap:Lcom/metamoji/df/sprite/LineCap;

    iput-object p1, p0, Lcom/metamoji/df/sprite/Path;->lineCap:Lcom/metamoji/df/sprite/LineCap;

    .line 57
    iget-object p1, p2, Lcom/metamoji/df/sprite/Path;->lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    iput-object p1, p0, Lcom/metamoji/df/sprite/Path;->lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    .line 58
    iget-object p1, p2, Lcom/metamoji/df/sprite/Path;->lineDash:[F

    iput-object p1, p0, Lcom/metamoji/df/sprite/Path;->lineDash:[F

    .line 59
    iget-object p1, p2, Lcom/metamoji/df/sprite/Path;->linePaint:Lcom/metamoji/df/sprite/Paint;

    iput-object p1, p0, Lcom/metamoji/df/sprite/Path;->linePaint:Lcom/metamoji/df/sprite/Paint;

    .line 60
    iget p1, p2, Lcom/metamoji/df/sprite/Path;->lineAlpha:F

    iput p1, p0, Lcom/metamoji/df/sprite/Path;->lineAlpha:F

    .line 61
    iget-object p1, p2, Lcom/metamoji/df/sprite/Path;->fillPaint:Lcom/metamoji/df/sprite/Paint;

    iput-object p1, p0, Lcom/metamoji/df/sprite/Path;->fillPaint:Lcom/metamoji/df/sprite/Paint;

    .line 62
    iget p1, p2, Lcom/metamoji/df/sprite/Path;->fillAlpha:F

    iput p1, p0, Lcom/metamoji/df/sprite/Path;->fillAlpha:F

    return-void
.end method

.method private IS_ENABLED_AND_FILL_PAINT()Z
    .locals 1

    .line 97
    iget v0, p0, Lcom/metamoji/df/sprite/Path;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_ENABLED_AND_LINE_PAINT()Z
    .locals 1

    .line 95
    iget v0, p0, Lcom/metamoji/df/sprite/Path;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_ENABLED_BOUNDS()Z
    .locals 1

    .line 93
    iget v0, p0, Lcom/metamoji/df/sprite/Path;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private SET_ENABLED_AND_FILL_PAINT(Z)I
    .locals 1

    .line 98
    iget v0, p0, Lcom/metamoji/df/sprite/Path;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x8

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Path;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x9

    goto :goto_0
.end method

.method private SET_ENABLED_AND_LINE_PAINT(Z)I
    .locals 1

    .line 96
    iget v0, p0, Lcom/metamoji/df/sprite/Path;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x4

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Path;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x5

    goto :goto_0
.end method

.method private SET_ENABLED_BOUNDS(Z)I
    .locals 1

    .line 94
    iget v0, p0, Lcom/metamoji/df/sprite/Path;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x2

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Path;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x3

    goto :goto_0
.end method

.method private buildBounds(Landroid/graphics/RectF;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 262
    iget v0, p0, Lcom/metamoji/df/sprite/Path;->lineWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 263
    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 264
    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 265
    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 266
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private clearCacheBounds()V
    .locals 1

    .line 114
    monitor-enter p0

    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Path;->SET_ENABLED_BOUNDS(Z)I

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearFillPaintCache()V
    .locals 1

    .line 106
    monitor-enter p0

    const/4 v0, 0x0

    .line 107
    :try_start_0
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Path;->SET_ENABLED_AND_FILL_PAINT(Z)I

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearLinePaintCache()V
    .locals 1

    .line 101
    monitor-enter p0

    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Path;->SET_ENABLED_AND_LINE_PAINT(Z)I

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ensure()V
    .locals 1

    .line 270
    monitor-enter p0

    .line 271
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->internalEnsure()V

    .line 272
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static eq([F[F)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    return v1

    .line 202
    :cond_2
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    move v2, v1

    .line 205
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 206
    aget v3, p0, v2

    aget v4, p1, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method private internalEnsure()V
    .locals 5

    .line 276
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->IS_ENABLED_AND_FILL_PAINT()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->fillPaint:Lcom/metamoji/df/sprite/Paint;

    if-eqz v0, :cond_0

    .line 278
    iget-object v2, p0, Lcom/metamoji/df/sprite/Path;->andFillPaint:Landroid/graphics/Paint;

    invoke-interface {v0, v2}, Lcom/metamoji/df/sprite/Paint;->resolve(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/sprite/Path;->andFillPaint:Landroid/graphics/Paint;

    .line 279
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 280
    invoke-direct {p0, v1}, Lcom/metamoji/df/sprite/Path;->SET_ENABLED_AND_FILL_PAINT(Z)I

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->IS_ENABLED_AND_LINE_PAINT()Z

    move-result v0

    if-nez v0, :cond_2

    .line 284
    iget v0, p0, Lcom/metamoji/df/sprite/Path;->lineWidth:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->linePaint:Lcom/metamoji/df/sprite/Paint;

    if-eqz v0, :cond_2

    .line 285
    iget-object v3, p0, Lcom/metamoji/df/sprite/Path;->andLinePaint:Landroid/graphics/Paint;

    invoke-interface {v0, v3}, Lcom/metamoji/df/sprite/Paint;->resolve(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/sprite/Path;->andLinePaint:Landroid/graphics/Paint;

    .line 286
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 287
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->andLinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/metamoji/df/sprite/Path;->lineWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 288
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->andLinePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/metamoji/df/sprite/Path;->lineCap:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/LineCap;->toCap()Landroid/graphics/Paint$Cap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 289
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->andLinePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/metamoji/df/sprite/Path;->lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/LineJoin;->toJoin()Landroid/graphics/Paint$Join;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 290
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->lineDash:[F

    .line 293
    iget-object v3, p0, Lcom/metamoji/df/sprite/Path;->andLinePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 291
    new-instance v0, Landroid/graphics/DashPathEffect;

    iget-object v4, p0, Lcom/metamoji/df/sprite/Path;->lineDash:[F

    invoke-direct {v0, v4, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 293
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 295
    :goto_0
    invoke-direct {p0, v1}, Lcom/metamoji/df/sprite/Path;->SET_ENABLED_AND_LINE_PAINT(Z)I

    :cond_2
    return-void
.end method

.method private internalGetBounds()Landroid/graphics/RectF;
    .locals 1

    .line 336
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->IS_ENABLED_BOUNDS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->bounds:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Path;->buildBounds(Landroid/graphics/RectF;)V

    const/4 v0, 0x1

    .line 338
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Path;->SET_ENABLED_BOUNDS(Z)I

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method private reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 120
    iput v0, p0, Lcom/metamoji/df/sprite/Path;->lineWidth:F

    .line 121
    sget-object v1, Lcom/metamoji/df/sprite/LineCap;->BUTT:Lcom/metamoji/df/sprite/LineCap;

    iput-object v1, p0, Lcom/metamoji/df/sprite/Path;->lineCap:Lcom/metamoji/df/sprite/LineCap;

    .line 122
    sget-object v1, Lcom/metamoji/df/sprite/LineJoin;->BEVEL:Lcom/metamoji/df/sprite/LineJoin;

    iput-object v1, p0, Lcom/metamoji/df/sprite/Path;->lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lcom/metamoji/df/sprite/Path;->lineDash:[F

    .line 124
    sget-object v2, Lcom/metamoji/df/sprite/PaintSolid;->BLACK:Lcom/metamoji/df/sprite/PaintSolid;

    iput-object v2, p0, Lcom/metamoji/df/sprite/Path;->linePaint:Lcom/metamoji/df/sprite/Paint;

    .line 125
    iput v0, p0, Lcom/metamoji/df/sprite/Path;->lineAlpha:F

    .line 126
    iput-object v1, p0, Lcom/metamoji/df/sprite/Path;->fillPaint:Lcom/metamoji/df/sprite/Paint;

    .line 127
    iput v0, p0, Lcom/metamoji/df/sprite/Path;->fillAlpha:F

    .line 128
    sget-object v0, Lcom/metamoji/df/sprite/FillRule;->WINDING:Lcom/metamoji/df/sprite/FillRule;

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Path;->setFillRule(Lcom/metamoji/df/sprite/FillRule;)V

    .line 129
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearLinePaintCache()V

    .line 130
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearFillPaintCache()V

    .line 131
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearCacheBounds()V

    return-void
.end method


# virtual methods
.method public addArc(FFFFFF)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    add-float/2addr p3, p1

    add-float/2addr p4, p2

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, p5, p6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public addPath(Lcom/metamoji/df/sprite/Path;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    iget-object p1, p1, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 460
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearCacheBounds()V

    return-void
.end method

.method public apply(Landroid/graphics/Matrix;)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 480
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearCacheBounds()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 396
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->reset()V

    return-void
.end method

.method public clone()Lcom/metamoji/df/sprite/GraphicsInstruction;
    .locals 2

    .line 376
    new-instance v0, Lcom/metamoji/df/sprite/Path;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    invoke-direct {v0, v1, p0}, Lcom/metamoji/df/sprite/Path;-><init>(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Path;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Path;->clone()Lcom/metamoji/df/sprite/GraphicsInstruction;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 0

    .line 349
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Path;->strokeContainsPoint(Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public curveTo(FFFFFF)V
    .locals 7

    .line 427
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    move v5, p1

    move v6, p2

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 428
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearCacheBounds()V

    return-void
.end method

.method public draw()V
    .locals 0

    return-void
.end method

.method public fillContainsPoint(Landroid/graphics/PointF;)Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/PathUtil;->fillContainsPoint(Landroid/graphics/Path;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 330
    monitor-enter p0

    .line 331
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->internalGetBounds()Landroid/graphics/RectF;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 332
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFillAlpha()F
    .locals 1

    .line 241
    iget v0, p0, Lcom/metamoji/df/sprite/Path;->fillAlpha:F

    return v0
.end method

.method public getFillPaint()Lcom/metamoji/df/sprite/Paint;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->fillPaint:Lcom/metamoji/df/sprite/Paint;

    return-object v0
.end method

.method public getFillRule()Lcom/metamoji/df/sprite/FillRule;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/df/sprite/FillRule;->valueOf(Landroid/graphics/Path$FillType;)Lcom/metamoji/df/sprite/FillRule;

    move-result-object v0

    return-object v0
.end method

.method public getLineAlpha()F
    .locals 1

    .line 224
    iget v0, p0, Lcom/metamoji/df/sprite/Path;->lineAlpha:F

    return v0
.end method

.method public getLineCap()Lcom/metamoji/df/sprite/LineCap;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->lineCap:Lcom/metamoji/df/sprite/LineCap;

    return-object v0
.end method

.method public getLineDash()[F
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->lineDash:[F

    return-object v0
.end method

.method public getLineJoin()Lcom/metamoji/df/sprite/LineJoin;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    return-object v0
.end method

.method public getLinePaint()Lcom/metamoji/df/sprite/Paint;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->linePaint:Lcom/metamoji/df/sprite/Paint;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 142
    iget v0, p0, Lcom/metamoji/df/sprite/Path;->lineWidth:F

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 414
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearCacheBounds()V

    return-void
.end method

.method public moveTo(FF)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 405
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearCacheBounds()V

    return-void
.end method

.method public outline()Lcom/metamoji/df/sprite/Path;
    .locals 3

    .line 487
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 488
    iget-object v1, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 489
    new-instance v1, Lcom/metamoji/df/sprite/Path;

    invoke-direct {v1, v0}, Lcom/metamoji/df/sprite/Path;-><init>(Landroid/graphics/Path;)V

    return-object v1
.end method

.method public paint(Lcom/metamoji/df/sprite/Context;)V
    .locals 6

    .line 307
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->ensure()V

    .line 308
    iget-object v1, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/metamoji/df/sprite/Path;->fillAlpha:F

    .line 309
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->IS_ENABLED_AND_FILL_PAINT()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->andFillPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    iget v4, p0, Lcom/metamoji/df/sprite/Path;->lineAlpha:F

    .line 310
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->IS_ENABLED_AND_LINE_PAINT()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v3, p0, Lcom/metamoji/df/sprite/Path;->andLinePaint:Landroid/graphics/Paint;

    :cond_1
    move-object v5, v3

    move-object v3, v0

    move-object v0, p1

    .line 308
    invoke-interface/range {v0 .. v5}, Lcom/metamoji/df/sprite/Context;->drawPath(Landroid/graphics/Path;FLandroid/graphics/Paint;FLandroid/graphics/Paint;)V

    return-void
.end method

.method public quadTo(FFFF)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p3, p4, p1, p2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 440
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearCacheBounds()V

    return-void
.end method

.method public setFillAlpha(F)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/metamoji/df/sprite/Path;->fillAlpha:F

    return-void
.end method

.method public setFillPaint(Lcom/metamoji/df/sprite/Paint;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->fillPaint:Lcom/metamoji/df/sprite/Paint;

    if-eq v0, p1, :cond_0

    .line 233
    iput-object p1, p0, Lcom/metamoji/df/sprite/Path;->fillPaint:Lcom/metamoji/df/sprite/Paint;

    .line 234
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearFillPaintCache()V

    :cond_0
    return-void
.end method

.method public setFillRule(Lcom/metamoji/df/sprite/FillRule;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/FillRule;->toType()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-void
.end method

.method public setLineAlpha(F)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/metamoji/df/sprite/Path;->lineAlpha:F

    return-void
.end method

.method public setLineCap(Lcom/metamoji/df/sprite/LineCap;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->lineCap:Lcom/metamoji/df/sprite/LineCap;

    if-eq v0, p1, :cond_0

    .line 159
    iput-object p1, p0, Lcom/metamoji/df/sprite/Path;->lineCap:Lcom/metamoji/df/sprite/LineCap;

    .line 160
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearLinePaintCache()V

    :cond_0
    return-void
.end method

.method public setLineDash([F)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->lineDash:[F

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Path;->eq([F[F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iput-object p1, p0, Lcom/metamoji/df/sprite/Path;->lineDash:[F

    .line 188
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearLinePaintCache()V

    :cond_0
    return-void
.end method

.method public setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    if-eq v0, p1, :cond_0

    .line 173
    iput-object p1, p0, Lcom/metamoji/df/sprite/Path;->lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    .line 174
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearLinePaintCache()V

    :cond_0
    return-void
.end method

.method public setLinePaint(Lcom/metamoji/df/sprite/Paint;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->linePaint:Lcom/metamoji/df/sprite/Paint;

    if-eq v0, p1, :cond_0

    .line 216
    iput-object p1, p0, Lcom/metamoji/df/sprite/Path;->linePaint:Lcom/metamoji/df/sprite/Paint;

    .line 217
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearLinePaintCache()V

    :cond_0
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1

    .line 144
    iget v0, p0, Lcom/metamoji/df/sprite/Path;->lineWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 145
    iput p1, p0, Lcom/metamoji/df/sprite/Path;->lineWidth:F

    .line 146
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearLinePaintCache()V

    :cond_0
    return-void
.end method

.method public setPath(Landroid/graphics/Path;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    .line 137
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->clearCacheBounds()V

    return-void
.end method

.method public strokeContainsPoint(Landroid/graphics/PointF;)Z
    .locals 2

    .line 357
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->ensure()V

    .line 358
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Path;->IS_ENABLED_AND_LINE_PAINT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Path;->andLinePaint:Landroid/graphics/Paint;

    invoke-static {v0, v1, p1}, Lcom/metamoji/df/sprite/PathUtil;->strokeContainsPoint(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/PointF;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Ph"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Path;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/df/sprite/Geometry;->toString(Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Matrix;)Lcom/metamoji/df/sprite/Path;
    .locals 2

    .line 469
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 470
    iget-object v1, p0, Lcom/metamoji/df/sprite/Path;->path:Landroid/graphics/Path;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 471
    new-instance p1, Lcom/metamoji/df/sprite/Path;

    invoke-direct {p1, v0, p0}, Lcom/metamoji/df/sprite/Path;-><init>(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Path;)V

    return-object p1
.end method
