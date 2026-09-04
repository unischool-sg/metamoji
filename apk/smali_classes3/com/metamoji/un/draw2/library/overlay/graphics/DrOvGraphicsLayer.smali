.class public Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;
.super Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;
.source "DrOvGraphicsLayer.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;


# static fields
.field private static final UnitCirclePath:Landroid/graphics/Path;

.field private static final UnitSquarePath:Landroid/graphics/Path;


# instance fields
.field private final m_collection:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;",
            ">;"
        }
    .end annotation
.end field

.field private m_idCounter:I

.field private m_optimizeStyleAndMarginForZoom:Z

.field private m_scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->UnitCirclePath:Landroid/graphics/Path;

    .line 45
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    sput-object v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->UnitSquarePath:Landroid/graphics/Path;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 47
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 48
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphic;->UnitSquare:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;-><init>()V

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private static CreateCirclePath(Landroid/graphics/PointF;F)Landroid/graphics/Path;
    .locals 3

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 40
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-object v0
.end method

.method private static CreateEllipsePathInRect(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;
    .locals 2

    .line 33
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 34
    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->UnitCirclePath:Landroid/graphics/Path;

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphic;->FrameTransform(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    return-object v0
.end method

.method private static CreateRectPath(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;
    .locals 2

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 28
    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->UnitSquarePath:Landroid/graphics/Path;

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphic;->FrameTransform(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    return-object v0
.end method

.method private addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;)I
    .locals 4

    .line 630
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_scale:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->setScale(F)V

    .line 631
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 634
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_idCounter:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_idCounter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 637
    invoke-super {p0, v3}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->setHasVisibleContents(Z)V

    .line 640
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_idCounter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 643
    iget p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_idCounter:I

    return p1

    :catchall_0
    move-exception p1

    .line 641
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;I)V
    .locals 2

    .line 647
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_scale:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->setScale(F)V

    .line 648
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 649
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 650
    invoke-super {p0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->setHasVisibleContents(Z)V

    .line 653
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    return-void

    :catchall_0
    move-exception p1

    .line 654
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private complexObjectForId(I)Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;

    .line 662
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    instance-of v0, p1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;

    if-eqz v0, :cond_0

    .line 664
    check-cast p1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 662
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private drawPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FF)I
    .locals 6

    .line 599
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;-><init>(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FF)V

    .line 600
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;)I

    move-result p1

    .line 602
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->update()V

    return p1
.end method

.method private repaintPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FFI)V
    .locals 9

    .line 609
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;

    .line 611
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 616
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->resetPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FF)V

    .line 617
    iget p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_scale:F

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->setScale(F)V

    goto :goto_0

    :cond_0
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 619
    new-instance p1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;

    move v8, v7

    move v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;-><init>(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FF)V

    .line 620
    invoke-direct {p0, v3, p6}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;I)V

    move-object v2, v3

    .line 625
    :goto_0
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->update()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 611
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public addCircleAtPoint(Landroid/graphics/PointF;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;FI)V
    .locals 6

    .line 499
    invoke-direct {p0, p5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->complexObjectForId(I)Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 501
    new-instance v3, Lcom/metamoji/cm/RectEx;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p2, v1

    invoke-direct {v3, v0, p1, p2, p2}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 502
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->UnitCirclePath:Landroid/graphics/Path;

    const/4 v4, 0x0

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;-><init>(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FF)V

    .line 503
    invoke-virtual {p5, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;)V

    .line 504
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->update()V

    :cond_0
    return-void
.end method

.method public addCircleAtPoint(Landroid/graphics/PointF;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V
    .locals 0

    .line 494
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->CreateCirclePath(Landroid/graphics/PointF;F)Landroid/graphics/Path;

    move-result-object p1

    .line 495
    invoke-virtual {p0, p1, p3, p4}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V

    return-void
.end method

.method public addEllipseInRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;FI)V
    .locals 6

    .line 514
    invoke-direct {p0, p5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->complexObjectForId(I)Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 516
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->UnitCirclePath:Landroid/graphics/Path;

    move-object v3, p1

    move v4, p2

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;-><init>(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FF)V

    .line 517
    invoke-virtual {p5, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;)V

    .line 518
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->update()V

    :cond_0
    return-void
.end method

.method public addEllipseInRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V
    .locals 0

    .line 509
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->CreateEllipsePathInRect(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;

    move-result-object p1

    .line 510
    invoke-virtual {p0, p1, p3, p4}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V

    return-void
.end method

.method public addImage(Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFI)V
    .locals 6

    .line 523
    new-instance v2, Lcom/metamoji/cm/RectEx;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v0, p2, v1, v3}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 524
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/RectEx;FFI)V

    return-void
.end method

.method public addImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/RectEx;FFI)V
    .locals 1

    .line 528
    invoke-direct {p0, p5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->complexObjectForId(I)Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 530
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;-><init>(Landroid/graphics/Bitmap;FLcom/metamoji/cm/RectEx;F)V

    .line 531
    invoke-virtual {p5, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;)V

    .line 532
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;->update()V

    :cond_0
    return-void
.end method

.method public addPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V
    .locals 1

    .line 471
    invoke-direct {p0, p3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->complexObjectForId(I)Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 473
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;-><init>(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 474
    invoke-virtual {p3, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;)V

    .line 475
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->update()V

    :cond_0
    return-void
.end method

.method public addRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;FI)V
    .locals 6

    .line 485
    invoke-direct {p0, p5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->complexObjectForId(I)Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 487
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->UnitSquarePath:Landroid/graphics/Path;

    move-object v3, p1

    move v4, p2

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;-><init>(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FF)V

    .line 488
    invoke-virtual {p5, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;)V

    .line 489
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->update()V

    :cond_0
    return-void
.end method

.method public addRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V
    .locals 0

    .line 480
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->CreateRectPath(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;

    move-result-object p1

    .line 481
    invoke-virtual {p0, p1, p3, p4}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V

    return-void
.end method

.method public addTexts([Ljava/lang/String;Landroid/graphics/PointF;IIFLjava/lang/String;FIFIFI)V
    .locals 13

    move/from16 v0, p12

    .line 548
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->complexObjectForId(I)Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    new-instance v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;-><init>([Ljava/lang/String;Landroid/graphics/PointF;IIFLjava/lang/String;FIFIF)V

    .line 551
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;)V

    :cond_0
    return-void
.end method

.method public applyStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;

    .line 426
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    instance-of v0, p2, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->setStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 431
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->update()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 426
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public checkObjectWithId(I)Z
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 414
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeAllObjects()V

    .line 77
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->clear()V

    return-void
.end method

.method public clearComplexObjectWithId(I)V
    .locals 0

    .line 569
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->complexObjectForId(I)Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 571
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->clear()V

    :cond_0
    return-void
.end method

.method public createComplexObjectId()I
    .locals 1

    .line 462
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;-><init>()V

    .line 463
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;)I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeAllObjects()V

    .line 83
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->destroy()V

    return-void
.end method

.method public drawCircleAtPoint(Landroid/graphics/PointF;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)I
    .locals 0

    .line 147
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->CreateCirclePath(Landroid/graphics/PointF;F)Landroid/graphics/Path;

    move-result-object p1

    .line 148
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)I

    move-result p1

    return p1
.end method

.method public drawCircleAtPoint(Landroid/graphics/PointF;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;F)I
    .locals 7

    .line 152
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 153
    new-instance v4, Lcom/metamoji/cm/RectEx;

    sub-float/2addr v0, p2

    sub-float/2addr p1, p2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p2, v1

    invoke-direct {v4, v0, p1, p2, p2}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 154
    sget-object v2, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->UnitCirclePath:Landroid/graphics/Path;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FF)I

    move-result p1

    return p1
.end method

.method public drawEllipseInRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)I
    .locals 0

    .line 165
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->CreateEllipsePathInRect(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;

    move-result-object p1

    .line 166
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)I

    move-result p1

    return p1
.end method

.method public drawEllipseInRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;F)I
    .locals 6

    .line 170
    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->UnitCirclePath:Landroid/graphics/Path;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FF)I

    move-result p1

    return p1
.end method

.method public drawImage(Landroid/graphics/Bitmap;Landroid/graphics/PointF;FF)I
    .locals 4

    .line 186
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 187
    new-instance v1, Lcom/metamoji/cm/RectEx;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v0, p2, v2, v3}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 188
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/RectEx;FF)I

    move-result p1

    return p1
.end method

.method public drawImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/RectEx;FF)I
    .locals 1

    .line 192
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;-><init>(Landroid/graphics/Bitmap;FLcom/metamoji/cm/RectEx;F)V

    .line 193
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;)I

    move-result p1

    .line 195
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->update()V

    return p1
.end method

.method public drawPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)I
    .locals 1

    .line 117
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;-><init>(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 118
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;)I

    move-result p1

    .line 120
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->update()V

    return p1
.end method

.method public drawRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)I
    .locals 0

    .line 132
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->CreateRectPath(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)I

    move-result p1

    return p1
.end method

.method public drawRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;F)I
    .locals 6

    .line 137
    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->UnitSquarePath:Landroid/graphics/Path;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FF)I

    move-result p1

    return p1
.end method

.method public drawTexts([Ljava/lang/String;Landroid/graphics/PointF;IIFLjava/lang/String;FIFIF)I
    .locals 12

    .line 223
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;-><init>([Ljava/lang/String;Landroid/graphics/PointF;IIFLjava/lang/String;FIFIF)V

    .line 224
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;)I

    move-result p1

    .line 226
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->update()V

    return p1
.end method

.method public getSizeOfTexts([Ljava/lang/String;Ljava/lang/String;FFZ)Lcom/metamoji/cm/SizeF;
    .locals 0

    .line 587
    invoke-static {p1, p2, p3, p4}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;->getSizeOfTexts([Ljava/lang/String;Ljava/lang/String;FF)Lcom/metamoji/cm/SizeF;

    move-result-object p1

    if-nez p5, :cond_0

    .line 589
    iget p2, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget p3, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_scale:F

    mul-float/2addr p2, p3

    iput p2, p1, Lcom/metamoji/cm/SizeF;->width:F

    .line 590
    iget p2, p1, Lcom/metamoji/cm/SizeF;->height:F

    iget p3, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_scale:F

    mul-float/2addr p2, p3

    iput p2, p1, Lcom/metamoji/cm/SizeF;->height:F

    :cond_0
    return-object p1
.end method

.method public hideObjectWithId(I)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;

    .line 396
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->visible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->setVisible(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 396
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public internalUpdate()V
    .locals 4

    .line 689
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_ignoreCoordinates:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_optimizeStyleAndMarginForZoom:Z

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->density()F

    move-result v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->zoom()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 693
    :goto_0
    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_scale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 694
    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_scale:F

    .line 695
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 696
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;

    .line 697
    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->setScale(F)V

    .line 698
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->update()V

    goto :goto_1

    .line 700
    :cond_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 703
    :cond_2
    :goto_2
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->internalUpdate()V

    return-void
.end method

.method public optimizeStyleAndMarginForZoom()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_optimizeStyleAndMarginForZoom:Z

    return v0
.end method

.method public removeAllObjects()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v1, 0x0

    .line 369
    invoke-super {p0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->setHasVisibleContents(Z)V

    .line 370
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->removeChildren()V

    return-void

    :catchall_0
    move-exception v1

    .line 370
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeObjectWithId(I)V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;

    if-eqz v1, :cond_1

    .line 355
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 358
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->setHasVisibleContents(Z)V

    .line 361
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 363
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

.method public repaintCircleAtPoint(Landroid/graphics/PointF;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;FI)V
    .locals 8

    .line 274
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 275
    new-instance v4, Lcom/metamoji/cm/RectEx;

    sub-float/2addr v0, p2

    sub-float/2addr p1, p2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p2, v1

    invoke-direct {v4, v0, p1, p2, p2}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 276
    sget-object v2, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->UnitCirclePath:Landroid/graphics/Path;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FFI)V

    return-void
.end method

.method public repaintCircleAtPoint(Landroid/graphics/PointF;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V
    .locals 0

    .line 269
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->CreateCirclePath(Landroid/graphics/PointF;F)Landroid/graphics/Path;

    move-result-object p1

    .line 270
    invoke-virtual {p0, p1, p3, p4}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V

    return-void
.end method

.method public repaintEllipseInRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;FI)V
    .locals 7

    .line 285
    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->UnitCirclePath:Landroid/graphics/Path;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v2, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FFI)V

    return-void
.end method

.method public repaintEllipseInRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V
    .locals 0

    .line 280
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->CreateEllipsePathInRect(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;

    move-result-object p1

    .line 281
    invoke-virtual {p0, p1, p3, p4}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V

    return-void
.end method

.method public repaintImage(Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFI)V
    .locals 7

    .line 289
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 290
    new-instance v3, Lcom/metamoji/cm/RectEx;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v3, v0, p2, v1, v2}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 291
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/RectEx;FFI)V

    return-void
.end method

.method public repaintImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/RectEx;FFI)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;

    .line 299
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v1, p1, p4, p2, p3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;->resetImage(Landroid/graphics/Bitmap;FLcom/metamoji/cm/RectEx;F)V

    .line 305
    iget p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_scale:F

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;->setScale(F)V

    goto :goto_0

    .line 307
    :cond_0
    new-instance v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;

    invoke-direct {v1, p1, p4, p2, p3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;-><init>(Landroid/graphics/Bitmap;FLcom/metamoji/cm/RectEx;F)V

    .line 308
    invoke-direct {p0, v1, p5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;I)V

    .line 313
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;->update()V

    return-void

    :catchall_0
    move-exception p1

    .line 299
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public repaintPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;

    .line 241
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->resetPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 247
    iget p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_scale:F

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->setScale(F)V

    goto :goto_0

    .line 250
    :cond_0
    new-instance v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;

    invoke-direct {v1, p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;-><init>(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 251
    invoke-direct {p0, v1, p3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;I)V

    .line 256
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->update()V

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

.method public repaintRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;FI)V
    .locals 7

    .line 265
    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->UnitSquarePath:Landroid/graphics/Path;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v2, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FFI)V

    return-void
.end method

.method public repaintRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V
    .locals 0

    .line 260
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->CreateRectPath(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;

    move-result-object p1

    .line 261
    invoke-virtual {p0, p1, p3, p4}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V

    return-void
.end method

.method public repaintTexts([Ljava/lang/String;Landroid/graphics/PointF;IIFLjava/lang/String;FIFIFI)V
    .locals 16

    move-object/from16 v1, p0

    .line 330
    iget-object v2, v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 331
    :try_start_0
    iget-object v0, v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;

    .line 332
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    .line 335
    invoke-virtual/range {v3 .. v14}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;->resetTexts([Ljava/lang/String;Landroid/graphics/PointF;IIFLjava/lang/String;FIFIF)V

    .line 336
    iget v0, v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_scale:F

    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;->setScale(F)V

    return-void

    .line 338
    :cond_0
    new-instance v4, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-direct/range {v4 .. v15}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;-><init>([Ljava/lang/String;Landroid/graphics/PointF;IIFLjava/lang/String;FIFIF)V

    move/from16 v0, p12

    .line 339
    invoke-direct {v1, v4, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;I)V

    return-void

    :catchall_0
    move-exception v0

    .line 332
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAlpha(FI)V
    .locals 0

    .line 559
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->complexObjectForId(I)Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 561
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setDropShadowWithColor(Ljava/lang/Integer;FLandroid/graphics/PointF;FI)V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;

    .line 449
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_0

    .line 451
    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->setShadowColor(Ljava/lang/Integer;FLandroid/graphics/PointF;F)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 449
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOptimizeStyleAndMarginForZoom(Z)V
    .locals 1

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_optimizeStyleAndMarginForZoom:Z

    if-ne v0, p1, :cond_0

    .line 102
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_optimizeStyleAndMarginForZoom:Z

    .line 105
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->internalUpdate()V

    .line 108
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public showObjectWithId(I)V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->m_collection:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;

    .line 382
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->visible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 386
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->setVisible(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 382
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public type()Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;
    .locals 1

    .line 71
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->GRAPHICS:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    return-object v0
.end method
