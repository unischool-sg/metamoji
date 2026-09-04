.class public Lcom/metamoji/df/sprite/Graphics;
.super Ljava/lang/Object;
.source "Graphics.java"


# static fields
.field private static final DELTA_ANGLE:D = 1.0E-4

.field private static final ENABLED_BOUNDS:I = 0x1


# instance fields
.field private bounds:Landroid/graphics/RectF;

.field private fillAlpha:F

.field private fillPaint:Lcom/metamoji/df/sprite/Paint;

.field private fillRule:Lcom/metamoji/df/sprite/FillRule;

.field private flags:I

.field private fontName:Ljava/lang/String;

.field private fontSize:F

.field private lineAlpha:F

.field private lineCap:Lcom/metamoji/df/sprite/LineCap;

.field private lineDash:[F

.field private lineJoin:Lcom/metamoji/df/sprite/LineJoin;

.field private linePaint:Lcom/metamoji/df/sprite/Paint;

.field private lineWidth:F

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/GraphicsInstruction;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Lcom/metamoji/df/sprite/Sprite;

.field private path:Landroid/graphics/Path;

.field private textAlpha:F

.field private textPaint:Lcom/metamoji/df/sprite/Paint;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->bounds:Landroid/graphics/RectF;

    .line 31
    iput-object p1, p0, Lcom/metamoji/df/sprite/Graphics;->owner:Lcom/metamoji/df/sprite/Sprite;

    .line 32
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Graphics;->reset()V

    return-void
.end method

.method private IS_ENABLED_BOUNDS()Z
    .locals 2

    .line 77
    iget v0, p0, Lcom/metamoji/df/sprite/Graphics;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private SET_ENABLED_BOUNDS(Z)I
    .locals 1

    .line 78
    iget v0, p0, Lcom/metamoji/df/sprite/Graphics;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x1

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Graphics;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x2

    goto :goto_0
.end method

.method private boundsChange()V
    .locals 1

    .line 111
    monitor-enter p0

    const/4 v0, 0x0

    .line 112
    :try_start_0
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->SET_ENABLED_BOUNDS(Z)I

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->owner:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->boundsChange()V

    return-void

    :catchall_0
    move-exception v0

    .line 113
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private buildBounds(Landroid/graphics/RectF;)Z
    .locals 7

    .line 276
    sget-object v0, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->withdraw()Landroid/graphics/RectF;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_0

    .line 280
    iget-object v6, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/df/sprite/GraphicsInstruction;

    .line 281
    invoke-interface {v6}, Lcom/metamoji/df/sprite/GraphicsInstruction;->getBounds()Landroid/graphics/RectF;

    move-result-object v6

    invoke-static {v4, v6, v0}, Lcom/metamoji/df/sprite/Geometry;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 283
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 285
    invoke-virtual {p1, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 290
    :cond_1
    sget-object p1, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->deposit(Landroid/graphics/RectF;)V

    if-eqz v4, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v3

    :catchall_0
    move-exception p1

    .line 283
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private invalidate(Landroid/graphics/RectF;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->owner:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->invalidate(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    iput v0, p0, Lcom/metamoji/df/sprite/Graphics;->lineWidth:F

    .line 84
    sget-object v1, Lcom/metamoji/df/sprite/LineCap;->BUTT:Lcom/metamoji/df/sprite/LineCap;

    iput-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->lineCap:Lcom/metamoji/df/sprite/LineCap;

    .line 85
    sget-object v1, Lcom/metamoji/df/sprite/LineJoin;->BEVEL:Lcom/metamoji/df/sprite/LineJoin;

    iput-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->lineDash:[F

    .line 87
    sget-object v2, Lcom/metamoji/df/sprite/PaintSolid;->BLACK:Lcom/metamoji/df/sprite/PaintSolid;

    iput-object v2, p0, Lcom/metamoji/df/sprite/Graphics;->linePaint:Lcom/metamoji/df/sprite/Paint;

    .line 88
    iput v0, p0, Lcom/metamoji/df/sprite/Graphics;->lineAlpha:F

    .line 89
    iput-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->fillPaint:Lcom/metamoji/df/sprite/Paint;

    .line 90
    iput v0, p0, Lcom/metamoji/df/sprite/Graphics;->fillAlpha:F

    .line 91
    sget-object v2, Lcom/metamoji/df/sprite/FillRule;->WINDING:Lcom/metamoji/df/sprite/FillRule;

    iput-object v2, p0, Lcom/metamoji/df/sprite/Graphics;->fillRule:Lcom/metamoji/df/sprite/FillRule;

    .line 92
    iput v0, p0, Lcom/metamoji/df/sprite/Graphics;->textAlpha:F

    .line 93
    sget-object v0, Lcom/metamoji/df/sprite/PaintSolid;->BLACK:Lcom/metamoji/df/sprite/PaintSolid;

    iput-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->textPaint:Lcom/metamoji/df/sprite/Paint;

    .line 94
    iput-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->fontName:Ljava/lang/String;

    const/high16 v0, 0x41400000    # 12.0f

    .line 95
    iput v0, p0, Lcom/metamoji/df/sprite/Graphics;->fontSize:F

    return-void
.end method


# virtual methods
.method public addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V
    .locals 2

    .line 238
    invoke-interface {p1}, Lcom/metamoji/df/sprite/GraphicsInstruction;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->invalidate(Landroid/graphics/RectF;)V

    .line 239
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Graphics;->boundsChange()V

    return-void

    :catchall_0
    move-exception p1

    .line 241
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public arcTo(FFFFF)V
    .locals 13

    move/from16 v0, p5

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 410
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x401921e11d6141fcL    # 6.2830853071795865

    cmpl-double v5, v3, v5

    if-lez v5, :cond_3

    const-wide v5, 0x4022d97c7f3321d2L    # 9.42477796076938

    cmpg-double v5, v3, v5

    if-gez v5, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :goto_1
    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v0

    move-object v0, p0

    goto :goto_3

    :cond_1
    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    div-double v7, v3, v5

    .line 418
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v7, v11

    sub-double/2addr v3, v7

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    int-to-double v0, v2

    add-double/2addr v3, v5

    mul-double/2addr v0, v3

    div-double/2addr v0, v9

    double-to-float v0, v0

    goto :goto_1

    .line 422
    :goto_3
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/df/sprite/Graphics;->arcTo(FFFFF)V

    move v6, v5

    add-float v5, v4, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    .line 423
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/df/sprite/Graphics;->arcTo(FFFFF)V

    return-void

    :cond_3
    move/from16 v4, p4

    .line 427
    iget-object v2, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    if-nez v2, :cond_4

    .line 428
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    .line 430
    :cond_4
    iget-object v2, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    sub-float v5, p1, p3

    sub-float v6, p2, p3

    add-float p1, p1, p3

    add-float p2, p2, p3

    invoke-direct {v3, v5, v6, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    float-to-double p1, v4

    .line 431
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-double v4, v0

    .line 432
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float p2, v4

    .line 430
    invoke-virtual {v2, v3, p1, p2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public bounds()Landroid/graphics/RectF;
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 340
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->invalidate(Landroid/graphics/RectF;)V

    .line 341
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 343
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Graphics;->reset()V

    .line 345
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Graphics;->boundsChange()V

    return-void

    :catchall_0
    move-exception v1

    .line 343
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public closePath()V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    if-nez v0, :cond_0

    return-void

    .line 476
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 477
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    const/4 v0, 0x0

    .line 478
    iput-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    return-void
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 5

    .line 313
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 316
    iget-object v4, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/GraphicsInstruction;

    .line 317
    invoke-interface {v4, p1}, Lcom/metamoji/df/sprite/GraphicsInstruction;->containsPoint(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    .line 318
    monitor-exit v0

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public copyTo(Lcom/metamoji/df/sprite/Graphics;)V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 329
    iget-object v3, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/GraphicsInstruction;

    .line 330
    invoke-interface {v3}, Lcom/metamoji/df/sprite/GraphicsInstruction;->clone()Lcom/metamoji/df/sprite/GraphicsInstruction;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public curveTo(FFFFFF)V
    .locals 7

    .line 379
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    move v5, p1

    move v6, p2

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    .line 382
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-void

    .line 380
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot call now"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public draw()V
    .locals 6

    .line 439
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    if-eqz v0, :cond_3

    .line 440
    new-instance v0, Lcom/metamoji/df/sprite/PathInstruction;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/PathInstruction;-><init>(Landroid/graphics/Path;)V

    .line 441
    iget-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/df/sprite/Graphics;->fillRule:Lcom/metamoji/df/sprite/FillRule;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/FillRule;->toType()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 442
    iget-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->fillPaint:Lcom/metamoji/df/sprite/Paint;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 443
    invoke-interface {v1, v2}, Lcom/metamoji/df/sprite/Paint;->resolve(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v1

    .line 444
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 445
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/PathInstruction;->setFillPaint(Landroid/graphics/Paint;)V

    .line 446
    iget v1, p0, Lcom/metamoji/df/sprite/Graphics;->fillAlpha:F

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/PathInstruction;->setFillAlpha(F)V

    .line 450
    :cond_0
    iget v1, p0, Lcom/metamoji/df/sprite/Graphics;->lineWidth:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->linePaint:Lcom/metamoji/df/sprite/Paint;

    if-eqz v1, :cond_2

    .line 451
    invoke-interface {v1, v2}, Lcom/metamoji/df/sprite/Paint;->resolve(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v1

    .line 452
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 453
    iget v4, p0, Lcom/metamoji/df/sprite/Graphics;->lineWidth:F

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 454
    iget-object v4, p0, Lcom/metamoji/df/sprite/Graphics;->lineCap:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v4}, Lcom/metamoji/df/sprite/LineCap;->toCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 455
    iget-object v4, p0, Lcom/metamoji/df/sprite/Graphics;->lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v4}, Lcom/metamoji/df/sprite/LineJoin;->toJoin()Landroid/graphics/Paint$Join;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 456
    iget-object v4, p0, Lcom/metamoji/df/sprite/Graphics;->lineDash:[F

    if-eqz v4, :cond_1

    .line 457
    new-instance v4, Landroid/graphics/DashPathEffect;

    iget-object v5, p0, Lcom/metamoji/df/sprite/Graphics;->lineDash:[F

    invoke-direct {v4, v5, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 461
    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/PathInstruction;->setLinePaint(Landroid/graphics/Paint;)V

    .line 462
    iget v1, p0, Lcom/metamoji/df/sprite/Graphics;->lineAlpha:F

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/PathInstruction;->setLineAlpha(F)V

    .line 464
    :cond_2
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    .line 465
    iput-object v2, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    :cond_3
    return-void
.end method

.method public drawBezierPath(Landroid/graphics/Path;)V
    .locals 0

    .line 682
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    .line 683
    iput-object p1, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    .line 684
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    return-void
.end method

.method public drawCircle(FFF)V
    .locals 2

    .line 622
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    .line 623
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    .line 624
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 625
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    return-void
.end method

.method public drawEllipse(FFFF)V
    .locals 3

    .line 635
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    .line 636
    new-instance v0, Landroid/graphics/RectF;

    sub-float v1, p1, p3

    sub-float v2, p2, p4

    add-float/2addr p1, p3

    add-float/2addr p2, p4

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 637
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    .line 638
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 639
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    return-void
.end method

.method public drawImage(FFLandroid/graphics/Bitmap;FF)V
    .locals 1

    .line 512
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    .line 513
    new-instance v0, Lcom/metamoji/df/sprite/BitmapInstruction;

    invoke-direct {v0, p3}, Lcom/metamoji/df/sprite/BitmapInstruction;-><init>(Landroid/graphics/Bitmap;)V

    .line 514
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/BitmapInstruction;->setX(F)V

    .line 515
    invoke-virtual {v0, p2}, Lcom/metamoji/df/sprite/BitmapInstruction;->setY(F)V

    .line 516
    invoke-virtual {v0, p4}, Lcom/metamoji/df/sprite/BitmapInstruction;->setScaleX(F)V

    .line 517
    invoke-virtual {v0, p5}, Lcom/metamoji/df/sprite/BitmapInstruction;->setScaleY(F)V

    .line 518
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    return-void
.end method

.method public drawImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 1

    .line 527
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    .line 528
    new-instance v0, Lcom/metamoji/df/sprite/BitmapRectInstruction;

    invoke-direct {v0, p1}, Lcom/metamoji/df/sprite/BitmapRectInstruction;-><init>(Landroid/graphics/Bitmap;)V

    .line 529
    invoke-virtual {v0, p2}, Lcom/metamoji/df/sprite/BitmapRectInstruction;->setSourceRect(Landroid/graphics/Rect;)V

    .line 530
    invoke-virtual {v0, p3}, Lcom/metamoji/df/sprite/BitmapRectInstruction;->setDestinationRect(Landroid/graphics/RectF;)V

    .line 531
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    return-void
.end method

.method public drawPDFPage(FFLcom/metamoji/df/sprite/pdf/PDFPage;)V
    .locals 1

    .line 643
    new-instance v0, Lcom/metamoji/df/sprite/PDFPageInstruction;

    invoke-direct {v0, p3, p1, p2}, Lcom/metamoji/df/sprite/PDFPageInstruction;-><init>(Lcom/metamoji/df/sprite/pdf/PDFPage;FF)V

    .line 644
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    return-void
.end method

.method public drawPath(Lcom/metamoji/df/sprite/LinearGradientPath;)V
    .locals 0

    .line 659
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    return-void
.end method

.method public drawPath(Lcom/metamoji/df/sprite/Path;)V
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    return-void
.end method

.method public drawPoints()V
    .locals 2

    .line 647
    new-instance v0, Ljava/lang/Error;

    const-string v1, "N/A"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawPolygon([Landroid/graphics/PointF;)V
    .locals 5

    .line 571
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 573
    aget-object v3, p1, v1

    if-eqz v2, :cond_0

    .line 575
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v4, v3}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    goto :goto_1

    .line 577
    :cond_0
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 582
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    :cond_2
    return-void
.end method

.method public drawPolyline([Landroid/graphics/PointF;)V
    .locals 5

    .line 551
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 553
    aget-object v3, p1, v1

    if-eqz v2, :cond_0

    .line 555
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v4, v3}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    goto :goto_1

    .line 557
    :cond_0
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 562
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    :cond_2
    return-void
.end method

.method public drawRect(FFFF)V
    .locals 1

    .line 593
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    .line 594
    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr p3, p1

    add-float/2addr p4, p2

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 595
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    .line 596
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 597
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    return-void
.end method

.method public drawRoundRect(FFFFFF)V
    .locals 1

    .line 609
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    .line 610
    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr p3, p1

    add-float/2addr p4, p2

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 611
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    .line 612
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, p5, p6, p2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 613
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    return-void
.end method

.method public drawString(FFLjava/lang/String;)V
    .locals 3

    .line 487
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    .line 488
    new-instance v0, Lcom/metamoji/df/sprite/TextInstruction;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/TextInstruction;-><init>()V

    .line 489
    invoke-virtual {v0, p3}, Lcom/metamoji/df/sprite/TextInstruction;->setText(Ljava/lang/String;)V

    .line 490
    iget-object p3, p0, Lcom/metamoji/df/sprite/Graphics;->textPaint:Lcom/metamoji/df/sprite/Paint;

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcom/metamoji/df/sprite/Paint;->resolve(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p3

    .line 493
    iget v1, p0, Lcom/metamoji/df/sprite/Graphics;->fontSize:F

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 494
    iget-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->fontName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 495
    invoke-static {v1, v2}, Lcom/metamoji/df/sprite/TypefaceResolver;->resolve(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 497
    :cond_0
    invoke-virtual {v0, p3}, Lcom/metamoji/df/sprite/TextInstruction;->setPaint(Landroid/graphics/Paint;)V

    .line 498
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/TextInstruction;->setX(F)V

    .line 499
    invoke-virtual {v0, p2}, Lcom/metamoji/df/sprite/TextInstruction;->setY(F)V

    .line 500
    iget p1, p0, Lcom/metamoji/df/sprite/Graphics;->textAlpha:F

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/TextInstruction;->setAlpha(F)V

    .line 501
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    return-void
.end method

.method public drawStroke()V
    .locals 2

    .line 648
    new-instance v0, Ljava/lang/Error;

    const-string v1, "N/A"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawTiledImage(Landroid/graphics/RectF;Landroid/graphics/Bitmap;FF)V
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    .line 542
    new-instance v0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/metamoji/df/sprite/BitmapTiledInstruction;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/RectF;FF)V

    .line 543
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    return-void
.end method

.method public erasePath()V
    .locals 2

    .line 662
    new-instance v0, Ljava/lang/Error;

    const-string v1, "N/A"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 298
    monitor-enter p0

    .line 299
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Graphics;->IS_ENABLED_BOUNDS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->bounds:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->buildBounds(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 301
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->SET_ENABLED_BOUNDS(Z)I

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Graphics;->IS_ENABLED_BOUNDS()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->bounds:Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 305
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFillAlpha()F
    .locals 1

    .line 183
    iget v0, p0, Lcom/metamoji/df/sprite/Graphics;->fillAlpha:F

    return v0
.end method

.method public getFillPaint()Lcom/metamoji/df/sprite/Paint;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->fillPaint:Lcom/metamoji/df/sprite/Paint;

    return-object v0
.end method

.method public getFillRule()Lcom/metamoji/df/sprite/FillRule;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->fillRule:Lcom/metamoji/df/sprite/FillRule;

    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 228
    iget v0, p0, Lcom/metamoji/df/sprite/Graphics;->fontSize:F

    return v0
.end method

.method public getLineAlpha()F
    .locals 1

    .line 165
    iget v0, p0, Lcom/metamoji/df/sprite/Graphics;->lineAlpha:F

    return v0
.end method

.method public getLineCap()Lcom/metamoji/df/sprite/LineCap;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->lineCap:Lcom/metamoji/df/sprite/LineCap;

    return-object v0
.end method

.method public getLineDash()[F
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->lineDash:[F

    return-object v0
.end method

.method public getLineJoin()Lcom/metamoji/df/sprite/LineJoin;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    return-object v0
.end method

.method public getLinePaint()Lcom/metamoji/df/sprite/Paint;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->linePaint:Lcom/metamoji/df/sprite/Paint;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 120
    iget v0, p0, Lcom/metamoji/df/sprite/Graphics;->lineWidth:F

    return v0
.end method

.method public getTextAlpha()F
    .locals 1

    .line 210
    iget v0, p0, Lcom/metamoji/df/sprite/Graphics;->textAlpha:F

    return v0
.end method

.method public getTextPaint()Lcom/metamoji/df/sprite/Paint;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->textPaint:Lcom/metamoji/df/sprite/Paint;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void

    .line 365
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot call now"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public moveTo(FF)V
    .locals 1

    .line 354
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->draw()V

    .line 355
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    .line 356
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method

.method public paint(Lcom/metamoji/df/sprite/Context;)V
    .locals 6

    .line 260
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 263
    iget-object v3, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/GraphicsInstruction;

    .line 264
    invoke-interface {v3}, Lcom/metamoji/df/sprite/GraphicsInstruction;->getBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getDirtyRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/metamoji/df/sprite/Geometry;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    invoke-interface {v3, p1}, Lcom/metamoji/df/sprite/GraphicsInstruction;->paint(Lcom/metamoji/df/sprite/Context;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public quadTo(FFFF)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->path:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0, p3, p4, p1, p2}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-void

    .line 393
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot call now"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->textPaint:Lcom/metamoji/df/sprite/Paint;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/metamoji/df/sprite/Paint;->resolve(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    .line 693
    iget v1, p0, Lcom/metamoji/df/sprite/Graphics;->fontSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 694
    iget-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->fontName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 695
    invoke-static {v1, v2}, Lcom/metamoji/df/sprite/TypefaceResolver;->resolve(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 697
    :cond_0
    invoke-static {p1, v0}, Lcom/metamoji/df/sprite/TextInstruction;->rectOfString(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public removeInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V
    .locals 2

    .line 249
    invoke-interface {p1}, Lcom/metamoji/df/sprite/GraphicsInstruction;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->invalidate(Landroid/graphics/RectF;)V

    .line 250
    iget-object v0, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 252
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Graphics;->boundsChange()V

    return-void

    :catchall_0
    move-exception p1

    .line 252
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFillAlpha(F)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/metamoji/df/sprite/Graphics;->fillAlpha:F

    return-void
.end method

.method public setFillPaint(Lcom/metamoji/df/sprite/Paint;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/metamoji/df/sprite/Graphics;->fillPaint:Lcom/metamoji/df/sprite/Paint;

    return-void
.end method

.method public setFillRule(Lcom/metamoji/df/sprite/FillRule;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/metamoji/df/sprite/Graphics;->fillRule:Lcom/metamoji/df/sprite/FillRule;

    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/metamoji/df/sprite/Graphics;->fontName:Ljava/lang/String;

    return-void
.end method

.method public setFontSize(F)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/metamoji/df/sprite/Graphics;->fontSize:F

    return-void
.end method

.method public setLineAlpha(F)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/metamoji/df/sprite/Graphics;->lineAlpha:F

    return-void
.end method

.method public setLineCap(Lcom/metamoji/df/sprite/LineCap;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/metamoji/df/sprite/Graphics;->lineCap:Lcom/metamoji/df/sprite/LineCap;

    return-void
.end method

.method public setLineDash([F)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/metamoji/df/sprite/Graphics;->lineDash:[F

    return-void
.end method

.method public setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/metamoji/df/sprite/Graphics;->lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    return-void
.end method

.method public setLinePaint(Lcom/metamoji/df/sprite/Paint;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/metamoji/df/sprite/Graphics;->linePaint:Lcom/metamoji/df/sprite/Paint;

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/metamoji/df/sprite/Graphics;->lineWidth:F

    return-void
.end method

.method public setTextAlpha(F)V
    .locals 0

    .line 214
    iput p1, p0, Lcom/metamoji/df/sprite/Graphics;->textAlpha:F

    return-void
.end method

.method public setTextPaint(Lcom/metamoji/df/sprite/Paint;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/metamoji/df/sprite/Graphics;->textPaint:Lcom/metamoji/df/sprite/Paint;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    monitor-enter v1

    .line 713
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 715
    iget-object v4, p0, Lcom/metamoji/df/sprite/Graphics;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/sprite/GraphicsInstruction;

    .line 716
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 718
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 718
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
