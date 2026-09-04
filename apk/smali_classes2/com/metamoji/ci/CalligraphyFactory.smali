.class public Lcom/metamoji/ci/CalligraphyFactory;
.super Ljava/lang/Object;
.source "CalligraphyFactory.java"


# static fields
.field public static final ALTER_SIDE_SURFACE:I = 0x10

.field public static final ALTER_STROKE:I = 0x40

.field public static final BACK_SURFACE:I = 0x4

.field public static final HEAD_EDGE_SURFACE:I = 0x80

.field public static final INVERT:I = 0x400

.field public static final REGULAR:I = 0x200

.field public static final SIDE_SURFACE:I = 0x8

.field public static final STROKE:I = 0x20

.field public static final SURFACE:I = 0x2

.field public static final TAIL_EDGE_SURFACE:I = 0x100

.field public static final UNI_SURFACE:I = 0x1


# instance fields
.field bdx:F

.field bdy:F

.field bezier:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public degenerateSurface:Z

.field public deltaOfInputTime:D

.field path:Landroid/graphics/Path;

.field pdx:F

.field pdy:F

.field public penAngle:D

.field public penRate:D

.field public penWidth:D

.field public roiEnd:I

.field public roiStart:I

.field public scaleOfInputTime:D

.field public shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field public type:I

.field public types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 156
    iput v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 157
    iput-wide v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->scaleOfInputTime:D

    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 158
    iput-wide v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->deltaOfInputTime:D

    const-wide v0, 0x402be5119ce075f7L    # 13.9474

    .line 159
    iput-wide v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->penWidth:D

    const-wide v0, 0x4046bca2339c0ebfL    # 45.4737

    .line 160
    iput-wide v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->penAngle:D

    const-wide v0, 0x3fcb9f559b3d07c8L    # 0.2158

    .line 161
    iput-wide v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->penRate:D

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->degenerateSurface:Z

    return-void
.end method


# virtual methods
.method addDivideBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "FF",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 420
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    mul-float/2addr v0, p5

    iget v1, p3, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v3

    mul-float/2addr v1, v2

    mul-float/2addr v1, p4

    sub-float/2addr v0, v1

    .line 421
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    mul-float/2addr v1, p5

    iget p5, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p5, v3

    mul-float/2addr p5, v2

    mul-float/2addr p5, p4

    sub-float/2addr v1, p5

    neg-float p4, v1

    div-float/2addr p4, v0

    .line 423
    iget p5, p1, Landroid/graphics/PointF;->x:F

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p4

    add-float/2addr p5, v0

    .line 424
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    .line 425
    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p4

    add-float/2addr p1, v1

    .line 426
    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p2

    mul-float/2addr p3, p4

    add-float/2addr v1, p3

    .line 427
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance p2, Landroid/graphics/PointF;

    sub-float p3, p1, p5

    mul-float/2addr p3, p4

    add-float/2addr p5, p3

    sub-float p3, v1, v0

    mul-float/2addr p3, p4

    add-float/2addr v0, p3

    invoke-direct {p2, p5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addEdgeSurface(Landroid/graphics/PointF;)V
    .locals 3

    .line 315
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ci/CalligraphyFactory;->moveTo(FF)V

    .line 316
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ci/CalligraphyFactory;->lineTo(FF)V

    .line 317
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ci/CalligraphyFactory;->lineTo(FF)V

    .line 318
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    add-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    add-float/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ci/CalligraphyFactory;->lineTo(FF)V

    .line 319
    iget-object p1, p0, Lcom/metamoji/ci/CalligraphyFactory;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method addPath(I)V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->shapes:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/ci/CalligraphyFactory;->path:Landroid/graphics/Path;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->types:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addStroke(Ljava/util/List;IIFFI)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;IIFFI)V"
        }
    .end annotation

    .line 328
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 329
    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p5

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ci/CalligraphyFactory;->moveTo(FF)V

    :goto_0
    if-ge p2, p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 333
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    add-int/lit8 p2, p2, 0x2

    .line 334
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 335
    iget v2, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, p4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p5

    iget v3, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, p4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p5

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/metamoji/ci/CalligraphyFactory;->bezierTo(FFFF)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p0, p6}, Lcom/metamoji/ci/CalligraphyFactory;->addPath(I)V

    return-void
.end method

.method addSubSurface(Ljava/util/List;IIFFFFZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;IIFFFFZ)V"
        }
    .end annotation

    add-float/2addr p6, p4

    add-float/2addr p7, p5

    .line 247
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 250
    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p4

    iget v2, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, p5

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/ci/CalligraphyFactory;->moveTo(FF)V

    if-eqz p8, :cond_1

    .line 252
    iget p8, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p8, p6

    iget v1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p7

    invoke-virtual {p0, p8, v1}, Lcom/metamoji/ci/CalligraphyFactory;->lineTo(FF)V

    move p8, p2

    :goto_0
    if-ge p8, p3, :cond_0

    add-int/lit8 v0, p8, 0x1

    .line 254
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    add-int/lit8 p8, p8, 0x2

    .line 255
    invoke-interface {p1, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 261
    iget v2, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, p6

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p7

    iget v3, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, p6

    iget v4, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, p7

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/metamoji/ci/CalligraphyFactory;->bezierTo(FFFF)V

    move-object v0, v1

    goto :goto_0

    .line 263
    :cond_0
    iget p6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p6, p4

    iget p7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p7, p5

    invoke-virtual {p0, p6, p7}, Lcom/metamoji/ci/CalligraphyFactory;->lineTo(FF)V

    :goto_1
    if-le p3, p2, :cond_3

    add-int/lit8 p6, p3, -0x1

    .line 265
    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/graphics/PointF;

    add-int/lit8 p7, p3, -0x2

    .line 266
    invoke-interface {p1, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/graphics/PointF;

    .line 267
    iget p8, p6, Landroid/graphics/PointF;->x:F

    add-float/2addr p8, p4

    iget p6, p6, Landroid/graphics/PointF;->y:F

    add-float/2addr p6, p5

    iget v0, p7, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, p4

    iget p7, p7, Landroid/graphics/PointF;->y:F

    add-float/2addr p7, p5

    invoke-virtual {p0, p8, p6, v0, p7}, Lcom/metamoji/ci/CalligraphyFactory;->bezierTo(FFFF)V

    add-int/lit8 p3, p3, -0x2

    goto :goto_1

    :cond_1
    move p8, p2

    :goto_2
    if-ge p8, p3, :cond_2

    add-int/lit8 v0, p8, 0x1

    .line 271
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    add-int/lit8 p8, p8, 0x2

    .line 272
    invoke-interface {p1, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 278
    iget v2, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, p4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p5

    iget v3, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, p4

    iget v4, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, p5

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/metamoji/ci/CalligraphyFactory;->bezierTo(FFFF)V

    move-object v0, v1

    goto :goto_2

    .line 280
    :cond_2
    iget p4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p4, p6

    iget p5, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p5, p7

    invoke-virtual {p0, p4, p5}, Lcom/metamoji/ci/CalligraphyFactory;->lineTo(FF)V

    :goto_3
    if-le p3, p2, :cond_3

    add-int/lit8 p4, p3, -0x1

    .line 282
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/PointF;

    add-int/lit8 p5, p3, -0x2

    .line 283
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/graphics/PointF;

    .line 284
    iget p8, p4, Landroid/graphics/PointF;->x:F

    add-float/2addr p8, p6

    iget p4, p4, Landroid/graphics/PointF;->y:F

    add-float/2addr p4, p7

    iget v0, p5, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, p6

    iget p5, p5, Landroid/graphics/PointF;->y:F

    add-float/2addr p5, p7

    invoke-virtual {p0, p8, p4, v0, p5}, Lcom/metamoji/ci/CalligraphyFactory;->bezierTo(FFFF)V

    add-int/lit8 p3, p3, -0x2

    goto :goto_3

    .line 287
    :cond_3
    iget-object p1, p0, Lcom/metamoji/ci/CalligraphyFactory;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method addSurface(Ljava/util/List;FFFFII)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;FFFFII)V"
        }
    .end annotation

    .line 355
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    .line 358
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge v4, v2, :cond_8

    .line 359
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    add-int/lit8 v3, v4, 0x1

    .line 360
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    add-int/lit8 v5, v4, 0x2

    .line 361
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    const/high16 v7, 0x3f000000    # 0.5f

    .line 362
    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/metamoji/ci/CalligraphyFactory;->dBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 363
    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, p5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p4

    sub-float/2addr v3, v2

    const/4 v2, 0x0

    cmpl-float v3, v3, v2

    if-lez v3, :cond_1

    move v10, v1

    goto :goto_1

    :cond_1
    move v10, v0

    .line 365
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v5, v3, :cond_4

    .line 366
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    add-int/lit8 v6, v5, 0x1

    .line 367
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    add-int/lit8 v8, v5, 0x2

    .line 368
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 369
    invoke-virtual {p0, v3, v6, v9, v7}, Lcom/metamoji/ci/CalligraphyFactory;->dBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v3

    .line 370
    iget v6, v3, Landroid/graphics/PointF;->x:F

    mul-float v6, v6, p5

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v3, v3, p4

    sub-float/2addr v6, v3

    cmpl-float v3, v6, v2

    if-lez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    if-eq v10, v3, :cond_3

    goto :goto_3

    :cond_3
    move v5, v8

    goto :goto_1

    :cond_4
    :goto_3
    if-eqz v10, :cond_5

    const/16 v2, 0x200

    goto :goto_4

    :cond_5
    const/16 v2, 0x400

    :goto_4
    move v11, v2

    and-int v2, v11, p7

    if-eqz v2, :cond_7

    .line 378
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->initSurfacePath()V

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 379
    invoke-virtual/range {v2 .. v10}, Lcom/metamoji/ci/CalligraphyFactory;->addSubSurface(Ljava/util/List;IIFFFFZ)V

    and-int/lit8 v3, p6, -0x61

    or-int/2addr v3, v11

    .line 380
    invoke-virtual {p0, v3}, Lcom/metamoji/ci/CalligraphyFactory;->addPath(I)V

    and-int/lit8 v3, p7, 0x20

    if-eqz v3, :cond_6

    .line 382
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->initStrokePath()V

    or-int/lit8 v8, v11, 0x20

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    .line 383
    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->addStroke(Ljava/util/List;IIFFI)V

    :cond_6
    and-int/lit8 v2, p7, 0x40

    if-eqz v2, :cond_7

    .line 386
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->initStrokePath()V

    add-float v6, p2, p4

    add-float v7, p3, p5

    or-int/lit8 v8, v11, 0x40

    move-object v2, p0

    move-object v3, p1

    .line 387
    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->addStroke(Ljava/util/List;IIFFI)V

    :cond_7
    move v4, v5

    goto/16 :goto_0

    :cond_8
    :goto_5
    return-void
.end method

.method addTwistSurface(Ljava/util/List;FFFF)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;FFFF)V"
        }
    .end annotation

    .line 291
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    .line 294
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge v4, v2, :cond_5

    .line 295
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    add-int/lit8 v3, v4, 0x1

    .line 296
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    add-int/lit8 v5, v4, 0x2

    .line 297
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    const/high16 v7, 0x3f000000    # 0.5f

    .line 298
    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/metamoji/ci/CalligraphyFactory;->dBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 299
    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, p5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p4

    sub-float/2addr v3, v2

    const/4 v2, 0x0

    cmpl-float v3, v3, v2

    if-lez v3, :cond_1

    move v10, v1

    goto :goto_1

    :cond_1
    move v10, v0

    .line 301
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v5, v3, :cond_4

    .line 302
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    add-int/lit8 v6, v5, 0x1

    .line 303
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    add-int/lit8 v8, v5, 0x2

    .line 304
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 305
    invoke-virtual {p0, v3, v6, v9, v7}, Lcom/metamoji/ci/CalligraphyFactory;->dBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v3

    .line 306
    iget v6, v3, Landroid/graphics/PointF;->x:F

    mul-float v6, v6, p5

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, p4

    sub-float/2addr v6, v3

    cmpl-float v3, v6, v2

    if-lez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    if-eq v10, v3, :cond_3

    goto :goto_3

    :cond_3
    move v5, v8

    goto :goto_1

    :cond_4
    :goto_3
    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    .line 309
    invoke-virtual/range {v2 .. v10}, Lcom/metamoji/ci/CalligraphyFactory;->addSubSurface(Ljava/util/List;IIFFFFZ)V

    move v4, v5

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method angle(DDDD)D
    .locals 10

    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    .line 448
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v2, p5, p5

    mul-double v4, p7, p7

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    mul-double v2, p1, p7

    mul-double v4, p5, p3

    sub-double/2addr v2, v4

    div-double/2addr v2, v0

    .line 450
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v6

    mul-double/2addr p1, p5

    mul-double v8, p3, p7

    add-double/2addr p1, v8

    div-double/2addr p1, v0

    .line 452
    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    mul-double/2addr p1, v4

    div-double/2addr p1, v6

    const-wide/16 v0, 0x0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    mul-double/2addr p1, v0

    :cond_0
    return-wide p1
.end method

.method bezierTo(FFFF)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-void
.end method

.method dBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 4

    .line 178
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    mul-float/2addr v0, p4

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 179
    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr p3, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p3, v1

    mul-float/2addr p3, v2

    mul-float/2addr p3, p4

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    mul-float/2addr p2, v2

    add-float/2addr p3, p2

    .line 180
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, p3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method divideBezier(FF)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget v1, p0, Lcom/metamoji/ci/CalligraphyFactory;->roiStart:I

    :goto_0
    iget v2, p0, Lcom/metamoji/ci/CalligraphyFactory;->roiEnd:I

    add-int/lit8 v3, v2, -0x1

    .line 209
    iget-object v4, p0, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    if-ge v1, v3, :cond_1

    .line 192
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v2, p0, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/graphics/PointF;

    .line 194
    iget-object v2, p0, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    add-int/lit8 v9, v1, 0x1

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/graphics/PointF;

    .line 195
    iget-object v2, p0, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    add-int/lit8 v1, v1, 0x2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/graphics/PointF;

    move-object v3, p0

    move v7, p1

    move v8, p2

    .line 196
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->isTwist(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    iget p1, v6, Landroid/graphics/PointF;->x:F

    iget p2, v5, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p2, v2

    sub-float/2addr p1, p2

    iget p2, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, p2

    mul-float/2addr p1, v2

    mul-float/2addr p1, v8

    iget p2, v6, Landroid/graphics/PointF;->y:F

    iget v9, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v9, v2

    sub-float/2addr p2, v9

    iget v9, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, v9

    mul-float/2addr p2, v2

    mul-float/2addr p2, v7

    sub-float/2addr p1, p2

    .line 198
    iget p2, v5, Landroid/graphics/PointF;->x:F

    iget v9, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v9

    mul-float/2addr p2, v2

    mul-float/2addr p2, v8

    iget v9, v5, Landroid/graphics/PointF;->y:F

    iget v10, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    mul-float/2addr v9, v7

    sub-float/2addr p2, v9

    neg-float p2, p2

    div-float/2addr p2, p1

    .line 200
    iget p1, v4, Landroid/graphics/PointF;->x:F

    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v9, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v9

    mul-float/2addr v2, p2

    add-float/2addr p1, v2

    .line 201
    iget v2, v4, Landroid/graphics/PointF;->y:F

    iget v9, v5, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v4

    mul-float/2addr v9, p2

    add-float/2addr v2, v9

    .line 202
    iget v4, v5, Landroid/graphics/PointF;->x:F

    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v10, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, p2

    add-float/2addr v4, v9

    .line 203
    iget v9, v5, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v5

    mul-float/2addr v6, p2

    add-float/2addr v9, v6

    .line 204
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, p1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v5, Landroid/graphics/PointF;

    sub-float v6, v4, p1

    mul-float/2addr v6, p2

    add-float/2addr p1, v6

    sub-float v6, v9, v2

    mul-float/2addr v6, p2

    add-float/2addr v2, v6

    invoke-direct {v5, p1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v4, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    :cond_0
    iget-object p1, v3, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move p1, v7

    move p2, v8

    goto/16 :goto_0

    :cond_1
    move-object v3, p0

    add-int/lit8 v2, v2, -0x1

    .line 209
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method divideBezier2()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 433
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 434
    iget v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->roiStart:I

    :goto_0
    iget v1, p0, Lcom/metamoji/ci/CalligraphyFactory;->roiEnd:I

    add-int/lit8 v2, v1, -0x2

    .line 443
    iget-object v3, p0, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    if-ge v0, v2, :cond_2

    .line 435
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v1, p0, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 437
    iget-object v2, p0, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 438
    iget-object v3, p0, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    add-int/lit8 v13, v0, 0x2

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/graphics/PointF;

    .line 439
    iget v11, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v12, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    move-object v7, p0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-virtual/range {v7 .. v12}, Lcom/metamoji/ci/CalligraphyFactory;->isTwist(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v4, v7, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v5, v7, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/ci/CalligraphyFactory;->addDivideBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFLjava/util/List;)V

    goto :goto_1

    .line 440
    :cond_0
    iget v11, v7, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v12, v7, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-virtual/range {v7 .. v12}, Lcom/metamoji/ci/CalligraphyFactory;->isTwist(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v4, v7, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v5, v7, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/ci/CalligraphyFactory;->addDivideBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFLjava/util/List;)V

    goto :goto_1

    .line 441
    :cond_1
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move v0, v13

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 443
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public init(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    .line 171
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->roiReset()V

    return-void
.end method

.method initStrokePath()V
    .locals 1

    .line 219
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->path:Landroid/graphics/Path;

    return-void
.end method

.method initSurfacePath()V
    .locals 2

    .line 214
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->path:Landroid/graphics/Path;

    .line 215
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-void
.end method

.method isTwist(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Z
    .locals 3

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/ci/CalligraphyFactory;->dBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 185
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/metamoji/ci/CalligraphyFactory;->dBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    .line 186
    iget p2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, p5

    iget p3, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p3, p4

    sub-float/2addr p2, p3

    iget p3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p3, p5

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, p4

    sub-float/2addr p3, p1

    mul-float/2addr p2, p3

    cmpg-float p1, p2, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method lineTo(FF)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method moveTo(FF)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method

.method renderSurface()V
    .locals 12

    .line 395
    iget v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v1, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ci/CalligraphyFactory;->divideBezier(FF)Ljava/util/List;

    move-result-object v3

    .line 396
    iget v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v1, p0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ci/CalligraphyFactory;->divideBezier(FF)Ljava/util/List;

    move-result-object v0

    .line 398
    iget v1, p0, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 399
    iget v4, p0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v5, p0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    iget v6, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v7, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    const/4 v8, 0x4

    const/16 v9, 0x600

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/metamoji/ci/CalligraphyFactory;->addSurface(Ljava/util/List;FFFFII)V

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, p0

    .line 401
    :goto_0
    iget v1, v4, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 402
    iget v8, v4, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v9, v4, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    const/16 v10, 0x8

    const/16 v11, 0x400

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v4 .. v11}, Lcom/metamoji/ci/CalligraphyFactory;->addSurface(Ljava/util/List;FFFFII)V

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 404
    :goto_1
    iget v0, v4, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 405
    iget v6, v4, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v7, v4, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    iget v8, v4, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v9, v4, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    const/16 v10, 0x10

    const/16 v11, 0x400

    invoke-virtual/range {v4 .. v11}, Lcom/metamoji/ci/CalligraphyFactory;->addSurface(Ljava/util/List;FFFFII)V

    .line 407
    :cond_2
    iget v0, v4, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 408
    iget v8, v4, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v9, v4, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    const/16 v10, 0x8

    const/16 v11, 0x200

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/metamoji/ci/CalligraphyFactory;->addSurface(Ljava/util/List;FFFFII)V

    .line 410
    :cond_3
    iget v0, v4, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 411
    iget v6, v4, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v7, v4, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    iget v8, v4, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v9, v4, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    const/16 v10, 0x10

    const/16 v11, 0x200

    invoke-virtual/range {v4 .. v11}, Lcom/metamoji/ci/CalligraphyFactory;->addSurface(Ljava/util/List;FFFFII)V

    .line 413
    :cond_4
    iget v0, v4, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 414
    iget v6, v4, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v7, v4, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    const/4 v8, 0x2

    const/16 v9, 0x600

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/metamoji/ci/CalligraphyFactory;->addSurface(Ljava/util/List;FFFFII)V

    :cond_5
    return-void
.end method

.method renderSurface2()V
    .locals 18

    move-object/from16 v0, p0

    .line 475
    iget-object v1, v0, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    goto/16 :goto_c

    .line 476
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ci/CalligraphyFactory;->divideBezier2()Ljava/util/List;

    move-result-object v1

    const/4 v10, 0x0

    move v2, v10

    .line 478
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_10

    .line 479
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    add-int/lit8 v4, v2, 0x1

    .line 480
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    add-int/lit8 v5, v2, 0x2

    .line 481
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    const/high16 v7, 0x3f000000    # 0.5f

    .line 482
    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/metamoji/ci/CalligraphyFactory;->dBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v4

    .line 483
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v8, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    mul-float/2addr v6, v8

    iget v8, v4, Landroid/graphics/PointF;->y:F

    iget v11, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    mul-float/2addr v8, v11

    sub-float/2addr v6, v8

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1

    move v6, v8

    move v8, v9

    goto :goto_1

    :cond_1
    move v6, v8

    move v8, v10

    .line 484
    :goto_1
    iget v11, v4, Landroid/graphics/PointF;->x:F

    iget v12, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    mul-float/2addr v11, v12

    iget v12, v4, Landroid/graphics/PointF;->y:F

    iget v13, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    cmpl-float v11, v11, v6

    if-lez v11, :cond_2

    move v11, v9

    goto :goto_2

    :cond_2
    move v11, v10

    :goto_2
    const/16 v12, 0x200

    const/16 v13, 0x400

    if-eqz v8, :cond_3

    move v14, v12

    goto :goto_3

    :cond_3
    move v14, v13

    :goto_3
    if-eqz v11, :cond_4

    goto :goto_4

    :cond_4
    move v12, v13

    .line 487
    :goto_4
    invoke-virtual {v0, v3, v4}, Lcom/metamoji/ci/CalligraphyFactory;->selectSurface(Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result v13

    move v3, v5

    .line 489
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_9

    .line 490
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    add-int/lit8 v5, v3, 0x1

    .line 491
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    add-int/lit8 v15, v3, 0x2

    .line 492
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Landroid/graphics/PointF;

    .line 493
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/metamoji/ci/CalligraphyFactory;->dBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v4

    .line 494
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v6, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    mul-float/2addr v5, v6

    iget v6, v4, Landroid/graphics/PointF;->y:F

    iget v7, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v17

    if-lez v5, :cond_5

    move v5, v9

    goto :goto_6

    :cond_5
    move v5, v10

    :goto_6
    if-eq v8, v5, :cond_6

    goto :goto_8

    .line 495
    :cond_6
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v6, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    mul-float/2addr v5, v6

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v6, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    mul-float/2addr v4, v6

    sub-float/2addr v5, v4

    cmpl-float v4, v5, v17

    if-lez v4, :cond_7

    move v4, v9

    goto :goto_7

    :cond_7
    move v4, v10

    :goto_7
    if-eq v11, v4, :cond_8

    goto :goto_8

    :cond_8
    move v3, v15

    move/from16 v6, v17

    const/high16 v7, 0x3f000000    # 0.5f

    goto :goto_5

    :cond_9
    :goto_8
    and-int/lit8 v4, v13, 0x2

    if-eqz v4, :cond_a

    .line 499
    iget v4, v0, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_a

    .line 500
    invoke-virtual {v0}, Lcom/metamoji/ci/CalligraphyFactory;->initSurfacePath()V

    .line 501
    iget v6, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v7, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->addSubSurface(Ljava/util/List;IIFFFFZ)V

    or-int/lit8 v4, v14, 0x2

    .line 502
    invoke-virtual {v0, v4}, Lcom/metamoji/ci/CalligraphyFactory;->addPath(I)V

    :cond_a
    and-int/lit8 v4, v13, 0x4

    if-eqz v4, :cond_b

    .line 504
    iget v4, v0, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_b

    .line 505
    invoke-virtual {v0}, Lcom/metamoji/ci/CalligraphyFactory;->initSurfacePath()V

    .line 506
    iget v4, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v5, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    iget v6, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v7, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->addSubSurface(Ljava/util/List;IIFFFFZ)V

    or-int/lit8 v4, v14, 0x4

    .line 507
    invoke-virtual {v0, v4}, Lcom/metamoji/ci/CalligraphyFactory;->addPath(I)V

    :cond_b
    and-int/lit8 v4, v13, 0x8

    if-eqz v4, :cond_c

    .line 509
    iget v4, v0, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_c

    .line 510
    invoke-virtual {v0}, Lcom/metamoji/ci/CalligraphyFactory;->initSurfacePath()V

    .line 511
    iget v6, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v7, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->addSubSurface(Ljava/util/List;IIFFFFZ)V

    or-int/lit8 v4, v12, 0x8

    .line 512
    invoke-virtual {v0, v4}, Lcom/metamoji/ci/CalligraphyFactory;->addPath(I)V

    goto :goto_9

    :cond_c
    move v8, v11

    :goto_9
    and-int/lit8 v4, v13, 0x10

    if-eqz v4, :cond_d

    move v4, v9

    goto :goto_a

    :cond_d
    move v4, v10

    .line 514
    :goto_a
    iget v5, v0, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_e

    move v5, v9

    goto :goto_b

    :cond_e
    move v5, v10

    :goto_b
    and-int/2addr v4, v5

    if-eqz v4, :cond_f

    .line 515
    invoke-virtual {v0}, Lcom/metamoji/ci/CalligraphyFactory;->initSurfacePath()V

    .line 516
    iget v4, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v5, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    iget v6, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v7, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->addSubSurface(Ljava/util/List;IIFFFFZ)V

    or-int/lit8 v2, v12, 0x10

    .line 517
    invoke-virtual {v0, v2}, Lcom/metamoji/ci/CalligraphyFactory;->addPath(I)V

    :cond_f
    move v2, v3

    goto/16 :goto_0

    :cond_10
    :goto_c
    return-void
.end method

.method renderUniSurface()V
    .locals 14

    .line 341
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->initSurfacePath()V

    .line 342
    iget v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v1, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ci/CalligraphyFactory;->divideBezier(FF)Ljava/util/List;

    move-result-object v3

    .line 343
    iget v6, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v7, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/ci/CalligraphyFactory;->addTwistSurface(Ljava/util/List;FFFF)V

    .line 344
    iget v4, v2, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v5, v2, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    iget v6, v2, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v7, v2, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/ci/CalligraphyFactory;->addTwistSurface(Ljava/util/List;FFFF)V

    .line 345
    iget v0, v2, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v1, v2, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ci/CalligraphyFactory;->divideBezier(FF)Ljava/util/List;

    move-result-object v9

    .line 346
    iget v12, v2, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v13, v2, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Lcom/metamoji/ci/CalligraphyFactory;->addTwistSurface(Ljava/util/List;FFFF)V

    .line 347
    iget v10, v2, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v11, v2, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    iget v12, v2, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v13, v2, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    invoke-virtual/range {v8 .. v13}, Lcom/metamoji/ci/CalligraphyFactory;->addTwistSurface(Ljava/util/List;FFFF)V

    .line 348
    iget-object v0, v2, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    iget v1, v2, Lcom/metamoji/ci/CalligraphyFactory;->roiEnd:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/metamoji/ci/CalligraphyFactory;->addEdgeSurface(Landroid/graphics/PointF;)V

    .line 350
    invoke-virtual {p0, v3}, Lcom/metamoji/ci/CalligraphyFactory;->addPath(I)V

    return-void
.end method

.method renderUniSurface2()V
    .locals 14

    .line 524
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->initSurfacePath()V

    .line 525
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->divideBezier2()Ljava/util/List;

    move-result-object v1

    const/4 v9, 0x0

    move v2, v9

    .line 528
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    if-ge v2, v0, :cond_6

    .line 529
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    add-int/lit8 v3, v2, 0x1

    .line 530
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    add-int/lit8 v4, v2, 0x2

    .line 531
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 532
    invoke-virtual {p0, v0, v3, v5, v11}, Lcom/metamoji/ci/CalligraphyFactory;->dBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v3

    .line 533
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    mul-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v10

    if-lez v5, :cond_0

    move v8, v12

    goto :goto_1

    :cond_0
    move v8, v9

    .line 534
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/metamoji/ci/CalligraphyFactory;->selectSurface(Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result v13

    move v3, v4

    .line 536
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ge v3, v0, :cond_3

    .line 537
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    add-int/lit8 v4, v3, 0x1

    .line 538
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    add-int/lit8 v5, v3, 0x2

    .line 539
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 540
    invoke-virtual {p0, v0, v4, v6, v11}, Lcom/metamoji/ci/CalligraphyFactory;->dBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 541
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    mul-float/2addr v4, v6

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    mul-float/2addr v0, v6

    sub-float/2addr v4, v0

    cmpl-float v0, v4, v10

    if-lez v0, :cond_1

    move v0, v12

    goto :goto_3

    :cond_1
    move v0, v9

    :goto_3
    if-eq v8, v0, :cond_2

    goto :goto_4

    :cond_2
    move v3, v5

    goto :goto_2

    :cond_3
    :goto_4
    and-int/lit8 v0, v13, 0x2

    if-eqz v0, :cond_4

    .line 545
    iget v6, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v7, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->addSubSurface(Ljava/util/List;IIFFFFZ)V

    goto :goto_5

    :cond_4
    move-object v0, p0

    :goto_5
    and-int/lit8 v4, v13, 0x4

    if-eqz v4, :cond_5

    .line 548
    iget v4, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v5, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    iget v6, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v7, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->addSubSurface(Ljava/util/List;IIFFFFZ)V

    :cond_5
    move v2, v3

    goto/16 :goto_0

    :cond_6
    move-object v0, p0

    move v2, v9

    .line 554
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_d

    .line 555
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    add-int/lit8 v4, v2, 0x1

    .line 556
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    add-int/lit8 v5, v2, 0x2

    .line 557
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 558
    invoke-virtual {p0, v3, v4, v6, v11}, Lcom/metamoji/ci/CalligraphyFactory;->dBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v4

    .line 559
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v7, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    mul-float/2addr v6, v7

    iget v7, v4, Landroid/graphics/PointF;->y:F

    iget v8, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    cmpl-float v6, v6, v10

    if-lez v6, :cond_7

    move v8, v12

    goto :goto_7

    :cond_7
    move v8, v9

    .line 560
    :goto_7
    invoke-virtual {p0, v3, v4}, Lcom/metamoji/ci/CalligraphyFactory;->selectSurface(Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result v13

    move v3, v5

    .line 562
    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_a

    .line 563
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    add-int/lit8 v5, v3, 0x1

    .line 564
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    add-int/lit8 v6, v3, 0x2

    .line 565
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 566
    invoke-virtual {p0, v4, v5, v7, v11}, Lcom/metamoji/ci/CalligraphyFactory;->dBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v4

    .line 567
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v7, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    mul-float/2addr v5, v7

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v7, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    mul-float/2addr v4, v7

    sub-float/2addr v5, v4

    cmpl-float v4, v5, v10

    if-lez v4, :cond_8

    move v4, v12

    goto :goto_9

    :cond_8
    move v4, v9

    :goto_9
    if-eq v8, v4, :cond_9

    goto :goto_a

    :cond_9
    move v3, v6

    goto :goto_8

    :cond_a
    :goto_a
    and-int/lit8 v4, v13, 0x8

    if-eqz v4, :cond_b

    .line 571
    iget v6, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v7, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->addSubSurface(Ljava/util/List;IIFFFFZ)V

    :cond_b
    and-int/lit8 v4, v13, 0x10

    if-eqz v4, :cond_c

    .line 574
    iget v4, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v5, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    iget v6, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    iget v7, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->addSubSurface(Ljava/util/List;IIFFFFZ)V

    :cond_c
    move v2, v3

    goto/16 :goto_6

    .line 578
    :cond_d
    iget-object v1, v0, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    iget v2, v0, Lcom/metamoji/ci/CalligraphyFactory;->roiEnd:I

    sub-int/2addr v2, v12

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0, v1}, Lcom/metamoji/ci/CalligraphyFactory;->addEdgeSurface(Landroid/graphics/PointF;)V

    .line 579
    invoke-virtual {p0, v12}, Lcom/metamoji/ci/CalligraphyFactory;->addPath(I)V

    return-void
.end method

.method public roiReset()V
    .locals 1

    const/4 v0, -0x1

    .line 146
    iput v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->roiStart:I

    .line 147
    iput v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->roiEnd:I

    return-void
.end method

.method selectSurface(Landroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 458
    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v2, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v3, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v11, v1, v2

    .line 459
    iget v1, v9, Landroid/graphics/PointF;->y:F

    iget v2, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    iget v4, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    add-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float v12, v1, v2

    .line 460
    iget v1, v9, Landroid/graphics/PointF;->x:F

    sub-float v1, v11, v1

    float-to-double v1, v1

    iget v3, v9, Landroid/graphics/PointF;->y:F

    sub-float v3, v12, v3

    float-to-double v3, v3

    iget v5, v10, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    iget v7, v10, Landroid/graphics/PointF;->y:F

    float-to-double v7, v7

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->angle(DDDD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    .line 461
    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v2, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    add-float/2addr v1, v2

    sub-float v1, v11, v1

    float-to-double v1, v1

    iget v3, v9, Landroid/graphics/PointF;->y:F

    iget v4, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    add-float/2addr v3, v4

    sub-float v3, v12, v3

    float-to-double v3, v3

    iget v5, v10, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    iget v7, v10, Landroid/graphics/PointF;->y:F

    float-to-double v7, v7

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->angle(DDDD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    .line 462
    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v2, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    add-float/2addr v1, v2

    sub-float v1, v11, v1

    float-to-double v1, v1

    iget v3, v9, Landroid/graphics/PointF;->y:F

    iget v4, v0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    add-float/2addr v3, v4

    iget v4, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    add-float/2addr v3, v4

    sub-float v3, v12, v3

    float-to-double v3, v3

    iget v5, v10, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    iget v7, v10, Landroid/graphics/PointF;->y:F

    float-to-double v7, v7

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->angle(DDDD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    .line 463
    iget v1, v9, Landroid/graphics/PointF;->x:F

    iget v2, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    add-float/2addr v1, v2

    sub-float/2addr v11, v1

    float-to-double v1, v11

    iget v3, v9, Landroid/graphics/PointF;->y:F

    iget v4, v0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    add-float/2addr v3, v4

    sub-float/2addr v12, v3

    float-to-double v3, v12

    iget v5, v10, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    iget v7, v10, Landroid/graphics/PointF;->y:F

    float-to-double v7, v7

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ci/CalligraphyFactory;->angle(DDDD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v2, v15, v13

    if-gez v2, :cond_0

    move-wide v2, v15

    goto :goto_0

    :cond_0
    move-wide v2, v13

    :goto_0
    cmpg-double v4, v17, v2

    if-gez v4, :cond_1

    move-wide/from16 v2, v17

    :cond_1
    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, v2

    :goto_1
    cmpl-double v2, v0, v13

    if-nez v2, :cond_3

    const/16 v0, 0xa

    return v0

    :cond_3
    cmpl-double v2, v0, v15

    if-nez v2, :cond_4

    const/16 v0, 0x12

    return v0

    :cond_4
    cmpl-double v0, v0, v17

    if-nez v0, :cond_5

    const/16 v0, 0x14

    return v0

    :cond_5
    const/16 v0, 0xc

    return v0
.end method

.method public solve()V
    .locals 15

    .line 586
    iget-wide v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->penAngle:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v4

    .line 587
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget-wide v8, p0, Lcom/metamoji/ci/CalligraphyFactory;->penWidth:D

    mul-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    .line 588
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    iget-wide v6, p0, Lcom/metamoji/ci/CalligraphyFactory;->penWidth:D

    mul-double/2addr v0, v6

    double-to-float v0, v0

    iput v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    .line 589
    iget-wide v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->penAngle:D

    const-wide v6, 0x4056800000000000L    # 90.0

    add-double/2addr v0, v6

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    .line 590
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/metamoji/ci/CalligraphyFactory;->penWidth:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/metamoji/ci/CalligraphyFactory;->penRate:D

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/metamoji/ci/CalligraphyFactory;->bdx:F

    .line 591
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    neg-double v0, v0

    iget-wide v2, p0, Lcom/metamoji/ci/CalligraphyFactory;->penWidth:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/metamoji/ci/CalligraphyFactory;->penRate:D

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->bdy:F

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->shapes:Ljava/util/List;

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->types:Ljava/util/List;

    .line 594
    iget v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->roiStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->roiStart:I

    .line 595
    :cond_0
    iget v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->roiEnd:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->roiEnd:I

    .line 596
    :cond_1
    iget v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_4

    .line 597
    iget-boolean v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->degenerateSurface:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->renderUniSurface2()V

    goto :goto_0

    .line 598
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->renderUniSurface()V

    .line 600
    :goto_0
    iget v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    .line 601
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->initStrokePath()V

    .line 602
    iget-object v2, p0, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    iget v3, p0, Lcom/metamoji/ci/CalligraphyFactory;->roiStart:I

    iget v0, p0, Lcom/metamoji/ci/CalligraphyFactory;->roiEnd:I

    add-int/lit8 v4, v0, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ci/CalligraphyFactory;->addStroke(Ljava/util/List;IIFFI)V

    move-object v8, v1

    goto :goto_1

    :cond_3
    move-object v8, p0

    .line 605
    :goto_1
    iget v0, v8, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 606
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->initStrokePath()V

    .line 607
    iget-object v9, v8, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    iget v10, v8, Lcom/metamoji/ci/CalligraphyFactory;->roiStart:I

    iget v0, v8, Lcom/metamoji/ci/CalligraphyFactory;->roiEnd:I

    add-int/lit8 v11, v0, -0x1

    iget v12, v8, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v13, v8, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    const/16 v14, 0x40

    invoke-virtual/range {v8 .. v14}, Lcom/metamoji/ci/CalligraphyFactory;->addStroke(Ljava/util/List;IIFFI)V

    return-void

    :cond_4
    move-object v8, p0

    and-int/lit16 v1, v0, 0x19e

    if-eqz v1, :cond_7

    .line 610
    iget-boolean v0, v8, Lcom/metamoji/ci/CalligraphyFactory;->degenerateSurface:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->renderSurface2()V

    goto :goto_2

    .line 611
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->renderSurface()V

    .line 612
    :goto_2
    iget v0, v8, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 613
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->initSurfacePath()V

    .line 614
    iget-object v0, v8, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    iget v2, v8, Lcom/metamoji/ci/CalligraphyFactory;->roiStart:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/metamoji/ci/CalligraphyFactory;->addEdgeSurface(Landroid/graphics/PointF;)V

    .line 615
    invoke-virtual {p0, v1}, Lcom/metamoji/ci/CalligraphyFactory;->addPath(I)V

    .line 617
    :cond_6
    iget v0, v8, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 618
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->initSurfacePath()V

    .line 619
    iget-object v0, v8, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    iget v2, v8, Lcom/metamoji/ci/CalligraphyFactory;->roiEnd:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/metamoji/ci/CalligraphyFactory;->addEdgeSurface(Landroid/graphics/PointF;)V

    .line 620
    invoke-virtual {p0, v1}, Lcom/metamoji/ci/CalligraphyFactory;->addPath(I)V

    return-void

    :cond_7
    and-int/lit8 v1, v0, 0x60

    if-eqz v1, :cond_9

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 624
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->initStrokePath()V

    .line 625
    iget-object v9, v8, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    iget v10, v8, Lcom/metamoji/ci/CalligraphyFactory;->roiStart:I

    iget v0, v8, Lcom/metamoji/ci/CalligraphyFactory;->roiEnd:I

    add-int/lit8 v11, v0, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x20

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/metamoji/ci/CalligraphyFactory;->addStroke(Ljava/util/List;IIFFI)V

    .line 627
    :cond_8
    iget v0, v8, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 628
    invoke-virtual {p0}, Lcom/metamoji/ci/CalligraphyFactory;->initStrokePath()V

    .line 629
    iget-object v9, v8, Lcom/metamoji/ci/CalligraphyFactory;->bezier:Ljava/util/List;

    iget v10, v8, Lcom/metamoji/ci/CalligraphyFactory;->roiStart:I

    iget v0, v8, Lcom/metamoji/ci/CalligraphyFactory;->roiEnd:I

    add-int/lit8 v11, v0, -0x1

    iget v12, v8, Lcom/metamoji/ci/CalligraphyFactory;->pdx:F

    iget v13, v8, Lcom/metamoji/ci/CalligraphyFactory;->pdy:F

    const/16 v14, 0x40

    invoke-virtual/range {v8 .. v14}, Lcom/metamoji/ci/CalligraphyFactory;->addStroke(Ljava/util/List;IIFFI)V

    :cond_9
    return-void
.end method
