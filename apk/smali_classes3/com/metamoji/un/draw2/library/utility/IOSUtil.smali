.class public Lcom/metamoji/un/draw2/library/utility/IOSUtil;
.super Ljava/lang/Object;
.source "IOSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;
    }
.end annotation


# static fields
.field public static final CGAffineTransformIdentity:Landroid/graphics/Matrix;

.field public static final CGPointZero:Landroid/graphics/PointF;

.field public static final CGRectNull:Lcom/metamoji/cm/RectEx;

.field public static final CGSizeZero:Lcom/metamoji/cm/SizeF;

.field public static final HUGE_VALF:F = Infinityf

.field public static final INFINITY:F = Infinityf

.field public static final MAXFLOAT:F = 3.4028235E38f

.field public static final NAN:F = NaNf


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    .line 116
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, v1, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeZero:Lcom/metamoji/cm/SizeF;

    .line 136
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    const/4 v0, 0x0

    .line 429
    sput-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CGAffineTransformConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 502
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 504
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_2

    .line 506
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    return-object v0
.end method

.method public static CGAffineTransformEqualToTransform(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 0

    .line 491
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static CGAffineTransformInvert(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1

    .line 517
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 518
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public static CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 481
    invoke-virtual {p0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static CGAffineTransformMake(FFFFFF)Landroid/graphics/Matrix;
    .locals 2

    .line 442
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    const/4 v1, 0x0

    .line 443
    aput p0, v0, v1

    const/4 p0, 0x3

    .line 444
    aput p1, v0, p0

    const/4 p0, 0x1

    .line 445
    aput p2, v0, p0

    const/4 p0, 0x4

    .line 446
    aput p3, v0, p0

    const/4 p0, 0x2

    .line 447
    aput p4, v0, p0

    const/4 p0, 0x5

    .line 448
    aput p5, v0, p0

    const/4 p0, 0x6

    const/4 p1, 0x0

    .line 449
    aput p1, v0, p0

    const/4 p0, 0x7

    .line 450
    aput p1, v0, p0

    const/16 p0, 0x8

    const/high16 p1, 0x3f800000    # 1.0f

    .line 451
    aput p1, v0, p0

    .line 452
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 453
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-object p0
.end method

.method public static CGAffineTransformMakeRotation(F)Landroid/graphics/Matrix;
    .locals 3

    .line 470
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    float-to-double v1, p0

    .line 471
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    return-object v0
.end method

.method public static CGAffineTransformMakeScale(FF)Landroid/graphics/Matrix;
    .locals 1

    .line 464
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 465
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    return-object v0
.end method

.method public static CGAffineTransformMakeTranslation(FF)Landroid/graphics/Matrix;
    .locals 1

    .line 458
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 459
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-object v0
.end method

.method public static CGPathContainsPoint(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 635
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    :cond_0
    if-eqz p3, :cond_1

    .line 638
    sget-object p1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 639
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object p3

    if-ne p3, p1, :cond_2

    .line 641
    invoke-static {p0, p2}, Lcom/metamoji/df/sprite/PathUtil;->fillContainsPoint(Landroid/graphics/Path;Landroid/graphics/PointF;)Z

    move-result p0

    return p0

    .line 644
    :cond_2
    invoke-virtual {p0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 645
    invoke-static {p0, p2}, Lcom/metamoji/df/sprite/PathUtil;->fillContainsPoint(Landroid/graphics/Path;Landroid/graphics/PointF;)Z

    move-result p1

    .line 646
    invoke-virtual {p0, p3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return p1
.end method

.method public static CGPathCreateCopyByTransformingPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)Landroid/graphics/Path;
    .locals 1

    .line 619
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 620
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    return-object v0
.end method

.method public static CGPathGetPathBoundingBox(Landroid/graphics/Path;)Landroid/graphics/RectF;
    .locals 2

    .line 597
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x0

    .line 598
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-object v0
.end method

.method public static CGPathGetPathBoundingBox(Landroid/graphics/Path;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 603
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x0

    .line 604
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 605
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/RectEx;->set(Landroid/graphics/RectF;)V

    return-object p1
.end method

.method public static CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;
    .locals 1

    .line 98
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 8

    .line 101
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v1

    .line 102
    iget v0, p0, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x0

    aput v0, v1, v6

    .line 103
    iget p0, p0, Landroid/graphics/PointF;->y:F

    const/4 v7, 0x1

    aput p0, v1, v7

    if-eqz p1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v3, v1

    move-object v0, p1

    .line 105
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 107
    :cond_0
    aget p0, v1, v6

    aget p1, v1, v7

    invoke-virtual {p2, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-object p2
.end method

.method public static CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static CGPointMake(FF)Landroid/graphics/PointF;
    .locals 1

    .line 76
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static CGPointZero()Landroid/graphics/PointF;
    .locals 2

    .line 67
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static CGRectApplyAffineTransform(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 329
    invoke-virtual {p0}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object p0

    .line 330
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 331
    new-instance p1, Lcom/metamoji/cm/RectEx;

    invoke-direct {p1, p0}, Lcom/metamoji/cm/RectEx;-><init>(Landroid/graphics/RectF;)V

    return-object p1
.end method

.method public static CGRectContainsPoint(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 402
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static CGRectContainsPoint(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;)Z
    .locals 6

    .line 406
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 409
    :cond_0
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 410
    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    add-float/2addr v2, v0

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    move v2, v0

    move v0, v5

    .line 412
    :goto_0
    iget v4, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_5

    iget v0, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_2

    .line 414
    :cond_2
    iget v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 415
    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v2, p0, v3

    add-float/2addr p0, v0

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    move v5, v0

    move v0, p0

    move p0, v5

    .line 417
    :goto_1
    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_5

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p0, p1, p0

    if-lez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v1
.end method

.method public static CGRectContainsRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Z
    .locals 9

    .line 295
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 297
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 303
    :cond_1
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 304
    iget v3, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    add-float/2addr v3, v0

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    move v8, v3

    move v3, v0

    move v0, v8

    .line 306
    :goto_0
    iget v5, p1, Lcom/metamoji/cm/RectEx;->x:F

    .line 307
    iget v6, p1, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v7, v6, v4

    add-float/2addr v6, v5

    if-lez v7, :cond_3

    goto :goto_1

    :cond_3
    move v8, v6

    move v6, v5

    move v5, v8

    :goto_1
    cmpg-float v0, v0, v5

    if-gtz v0, :cond_8

    cmpg-float v0, v6, v3

    if-lez v0, :cond_4

    goto :goto_4

    .line 311
    :cond_4
    iget v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 312
    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v3, p0, v4

    add-float/2addr p0, v0

    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    move v8, v0

    move v0, p0

    move p0, v8

    .line 314
    :goto_2
    iget v3, p1, Lcom/metamoji/cm/RectEx;->y:F

    .line 315
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v4, p1, v4

    add-float/2addr p1, v3

    if-lez v4, :cond_6

    goto :goto_3

    :cond_6
    move v8, v3

    move v3, p1

    move p1, v8

    :goto_3
    cmpg-float v0, v0, v3

    if-gtz v0, :cond_8

    cmpg-float p0, p1, p0

    if-lez p0, :cond_7

    goto :goto_4

    :cond_7
    return v1

    :cond_8
    :goto_4
    return v2
.end method

.method public static CGRectEqualToRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0, p1}, Lcom/metamoji/cm/RectEx;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static CGRectGetHeight(Lcom/metamoji/cm/RectEx;)F
    .locals 0

    .line 392
    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public static CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F
    .locals 2

    .line 349
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Lcom/metamoji/cm/RectEx;->x:F

    return p0
.end method

.method public static CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F
    .locals 2

    .line 367
    iget v0, p0, Lcom/metamoji/cm/RectEx;->height:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Lcom/metamoji/cm/RectEx;->y:F

    return p0
.end method

.method public static CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F
    .locals 2

    .line 376
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F
    .locals 2

    .line 385
    iget v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F
    .locals 2

    .line 340
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget p0, p0, Lcom/metamoji/cm/RectEx;->x:F

    return p0

    :cond_0
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v0, p0

    return v0
.end method

.method public static CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F
    .locals 2

    .line 358
    iget v0, p0, Lcom/metamoji/cm/RectEx;->height:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget p0, p0, Lcom/metamoji/cm/RectEx;->y:F

    return p0

    :cond_0
    iget v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v0, p0

    return v0
.end method

.method public static CGRectGetWidth(Lcom/metamoji/cm/RectEx;)F
    .locals 0

    .line 389
    iget p0, p0, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public static CGRectInset(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;
    .locals 1

    .line 199
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 200
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->inset(FF)V

    return-object v0
.end method

.method public static CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 205
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FFLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static CGRectInset(Lcom/metamoji/cm/RectEx;FFLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 208
    invoke-virtual {p3, p0}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 209
    iget p0, p3, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr p0, p1

    iput p0, p3, Lcom/metamoji/cm/RectEx;->x:F

    .line 210
    iget p0, p3, Lcom/metamoji/cm/RectEx;->y:F

    add-float/2addr p0, p2

    iput p0, p3, Lcom/metamoji/cm/RectEx;->y:F

    .line 211
    iget p0, p3, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    sub-float/2addr p0, p1

    iput p0, p3, Lcom/metamoji/cm/RectEx;->width:F

    .line 212
    iget p0, p3, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr p2, v0

    sub-float/2addr p0, p2

    iput p0, p3, Lcom/metamoji/cm/RectEx;->height:F

    return-object p3
.end method

.method public static CGRectIntersection(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 253
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIntersection(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static CGRectIntersection(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 7

    .line 256
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 261
    :cond_0
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 262
    iget v1, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    add-float/2addr v1, v0

    if-lez v3, :cond_1

    move v6, v1

    move v1, v0

    move v0, v6

    .line 264
    :cond_1
    iget v3, p1, Lcom/metamoji/cm/RectEx;->x:F

    .line 265
    iget v4, p1, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v5, v4, v2

    add-float/2addr v4, v3

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    move v6, v4

    move v4, v3

    move v3, v6

    :goto_0
    cmpg-float v5, v0, v3

    if-ltz v5, :cond_8

    cmpl-float v5, v1, v4

    if-lez v5, :cond_3

    goto :goto_3

    .line 270
    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p2, Lcom/metamoji/cm/RectEx;->x:F

    .line 271
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p2, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/metamoji/cm/RectEx;->width:F

    .line 273
    iget v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 274
    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v1, p0, v2

    add-float/2addr p0, v0

    if-lez v1, :cond_4

    move v6, v0

    move v0, p0

    move p0, v6

    .line 276
    :cond_4
    iget v1, p1, Lcom/metamoji/cm/RectEx;->y:F

    .line 277
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v2, p1, v2

    add-float/2addr p1, v1

    if-lez v2, :cond_5

    goto :goto_1

    :cond_5
    move v6, v1

    move v1, p1

    move p1, v6

    :goto_1
    cmpg-float v2, v0, v1

    if-ltz v2, :cond_7

    cmpl-float v2, p0, p1

    if-lez v2, :cond_6

    goto :goto_2

    .line 282
    :cond_6
    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p2, Lcom/metamoji/cm/RectEx;->y:F

    .line 283
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iget p1, p2, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr p0, p1

    iput p0, p2, Lcom/metamoji/cm/RectEx;->height:F

    return-object p2

    .line 280
    :cond_7
    :goto_2
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->setNull(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    .line 268
    :cond_8
    :goto_3
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->setNull(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    .line 257
    :cond_9
    :goto_4
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->setNull(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static CGRectIsEmpty(Lcom/metamoji/cm/RectEx;)Z
    .locals 2

    .line 175
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static CGRectIsNull(Landroid/graphics/RectF;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 166
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 171
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 154
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v0
.end method

.method public static CGRectNull()Lcom/metamoji/cm/RectEx;
    .locals 3

    .line 138
    new-instance v0, Lcom/metamoji/cm/RectEx;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v0
.end method

.method public static CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 217
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 7

    .line 220
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    .line 221
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 223
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->setNull(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p2, p1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    return-object p2

    :cond_1
    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {p2, p0}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    return-object p2

    .line 231
    :cond_2
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 232
    iget v1, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    add-float/2addr v1, v0

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    move v6, v1

    move v1, v0

    move v0, v6

    .line 234
    :goto_0
    iget v3, p1, Lcom/metamoji/cm/RectEx;->x:F

    .line 235
    iget v4, p1, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v5, v4, v2

    add-float/2addr v4, v3

    if-lez v5, :cond_4

    goto :goto_1

    :cond_4
    move v6, v4

    move v4, v3

    move v3, v6

    .line 237
    :goto_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p2, Lcom/metamoji/cm/RectEx;->x:F

    .line 238
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p2, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/metamoji/cm/RectEx;->width:F

    .line 240
    iget v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 241
    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v1, p0, v2

    add-float/2addr p0, v0

    if-lez v1, :cond_5

    goto :goto_2

    :cond_5
    move v6, v0

    move v0, p0

    move p0, v6

    .line 243
    :goto_2
    iget v1, p1, Lcom/metamoji/cm/RectEx;->y:F

    .line 244
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v2, p1, v2

    add-float/2addr p1, v1

    if-lez v2, :cond_6

    goto :goto_3

    :cond_6
    move v6, v1

    move v1, p1

    move p1, v6

    .line 246
    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p2, Lcom/metamoji/cm/RectEx;->y:F

    .line 247
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iget p1, p2, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr p0, p1

    iput p0, p2, Lcom/metamoji/cm/RectEx;->height:F

    return-object p2
.end method

.method public static CGSizeEqualToSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget v1, p0, Lcom/metamoji/cm/SizeF;->width:F

    iget v2, p1, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget p0, p0, Lcom/metamoji/cm/SizeF;->height:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static CGSizeMake(FF)Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 120
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public static CGSizeZero()Lcom/metamoji/cm/SizeF;
    .locals 2

    .line 117
    new-instance v0, Lcom/metamoji/cm/SizeF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public static asNumber(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 1

    .line 703
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static copy(Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1

    .line 656
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 657
    invoke-virtual {v0, p0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-object v0
.end method

.method public static copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 56
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static copy(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 58
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, p0}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V

    return-object v0
.end method

.method public static copy(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 57
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, p0}, Lcom/metamoji/cm/SizeF;-><init>(Lcom/metamoji/cm/SizeF;)V

    return-object v0
.end method

.method public static copy(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isfinite(D)Z
    .locals 1

    .line 47
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isfinite(F)Z
    .locals 1

    .line 44
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isnan(D)Z
    .locals 0

    .line 40
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    return p0
.end method

.method public static isnan(F)Z
    .locals 0

    .line 37
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    return p0
.end method

.method public static varargs listWithObjects([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 675
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static originOf(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;
    .locals 2

    .line 130
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static reversedList(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 696
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/ReversedListGenerator;

    invoke-direct {v0, p0}, Lcom/metamoji/un/draw2/library/utility/ReversedListGenerator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static setNull(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 2

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0, v0, v0, v1, v1}, Lcom/metamoji/cm/RectEx;->set(FFFF)V

    return-object p0
.end method

.method public static varargs setWithObjects([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation

    .line 685
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 686
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;
    .locals 2

    .line 131
    new-instance v0, Lcom/metamoji/cm/SizeF;

    iget v1, p0, Lcom/metamoji/cm/RectEx;->width:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-direct {v0, v1, p0}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method
