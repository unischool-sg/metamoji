.class public Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;
.super Ljava/lang/Object;
.source "DrAcSprite.java"


# static fields
.field private static final IDENTITY:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 807
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->IDENTITY:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChild(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 289
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static addChildAtIndex(ILcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p0, :cond_2

    .line 301
    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Sprite;->getNumChildren()I

    move-result v1

    if-le p0, v1, :cond_1

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p2, p1, p0}, Lcom/metamoji/df/sprite/Sprite;->addChildAt(Lcom/metamoji/df/sprite/Sprite;I)V

    return-void

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 302
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 297
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static alpha(Lcom/metamoji/df/sprite/Sprite;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 202
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getAlpha()F

    move-result p0

    return p0
.end method

.method public static angleInDegrees(Lcom/metamoji/df/sprite/Sprite;)F
    .locals 2

    .line 135
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->angleInRadians(Lcom/metamoji/df/sprite/Sprite;)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static angleInRadians(Lcom/metamoji/df/sprite/Sprite;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getRotation()F

    move-result p0

    return p0
.end method

.method public static checkDropShadow(Lcom/metamoji/df/sprite/Sprite;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 679
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getDropShadow()Lcom/metamoji/df/sprite/DropShadow;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static checkSprite(Lcom/metamoji/df/sprite/Sprite;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static childAtIndex(ILcom/metamoji/df/sprite/Sprite;)Lcom/metamoji/df/sprite/Sprite;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 245
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    .line 249
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->getChildAt(I)Lcom/metamoji/df/sprite/Sprite;

    move-result-object p0

    return-object p0
.end method

.method public static childCount(Lcom/metamoji/df/sprite/Sprite;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 278
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getNumChildren()I

    move-result p0

    return p0
.end method

.method public static clear(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 635
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    return-void
.end method

.method public static clearDropShadow(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 671
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 674
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Sprite;->setDropShadow(Lcom/metamoji/df/sprite/DropShadow;)V

    return-void
.end method

.method public static clipped(Lcom/metamoji/df/sprite/Sprite;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->isClipping()Z

    move-result p0

    return p0
.end method

.method public static drawCircleAtPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 532
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 535
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/metamoji/df/sprite/Graphics;->drawCircle(FFF)V

    return-void
.end method

.method public static drawImage(Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFLcom/metamoji/df/sprite/Sprite;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const/4 p0, 0x0

    .line 620
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 624
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 627
    :cond_1
    invoke-virtual {p4}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    move-object v4, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    return-void
.end method

.method public static drawLinearGradientPath(Landroid/graphics/Path;Landroid/graphics/PointF;Ljava/lang/Integer;FLandroid/graphics/PointF;Ljava/lang/Integer;FLcom/metamoji/df/sprite/Sprite;)V
    .locals 1

    move-object v0, p0

    .line 604
    new-instance p0, Lcom/metamoji/df/sprite/Path;

    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Path;-><init>(Landroid/graphics/Path;)V

    invoke-static/range {p0 .. p7}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawLinearGradientPath(Lcom/metamoji/df/sprite/Path;Landroid/graphics/PointF;Ljava/lang/Integer;FLandroid/graphics/PointF;Ljava/lang/Integer;FLcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method

.method public static drawLinearGradientPath(Lcom/metamoji/df/sprite/Path;Landroid/graphics/PointF;Ljava/lang/Integer;FLandroid/graphics/PointF;Ljava/lang/Integer;FLcom/metamoji/df/sprite/Sprite;)V
    .locals 1

    if-nez p7, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 574
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/high16 p2, -0x1000000

    .line 581
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_2
    if-nez p5, :cond_3

    const/4 p5, -0x1

    .line 584
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 586
    :cond_3
    new-instance v0, Lcom/metamoji/df/sprite/LinearGradientPath;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/LinearGradientPath;-><init>()V

    .line 587
    invoke-virtual {v0, p0}, Lcom/metamoji/df/sprite/LinearGradientPath;->setPath(Lcom/metamoji/df/sprite/Path;)V

    .line 588
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/LinearGradientPath;->setStartPoint(Landroid/graphics/PointF;)V

    .line 589
    invoke-virtual {v0, p4}, Lcom/metamoji/df/sprite/LinearGradientPath;->setEndPoint(Landroid/graphics/PointF;)V

    .line 590
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/metamoji/df/sprite/LinearGradientPath;->setFillColor(I)V

    .line 591
    invoke-virtual {v0, p3}, Lcom/metamoji/df/sprite/LinearGradientPath;->setFillAlpha(F)V

    .line 592
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/metamoji/df/sprite/LinearGradientPath;->setAlterFillColor(I)V

    .line 593
    invoke-virtual {v0, p6}, Lcom/metamoji/df/sprite/LinearGradientPath;->setAlterFillAlpha(F)V

    .line 594
    invoke-virtual {p7}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static drawPath(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Sprite;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 555
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 559
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 562
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Graphics;->drawBezierPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public static drawPath(Lcom/metamoji/df/sprite/Path;Lcom/metamoji/df/sprite/Sprite;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 541
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 545
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 549
    :cond_1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 550
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Path;->getPath()Landroid/graphics/Path;

    move-result-object p0

    sget-object v1, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->IDENTITY:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 551
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->drawBezierPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public static drawRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 524
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 527
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget v1, p0, Lcom/metamoji/cm/RectEx;->y:F

    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    return-void
.end method

.method public static equals(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 217
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0
.end method

.method public static fillAlpha(Lcom/metamoji/df/sprite/Sprite;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 431
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->getFillAlpha()F

    move-result p0

    return p0
.end method

.method public static fillColor(Lcom/metamoji/df/sprite/Sprite;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 422
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->getFillPaint()Lcom/metamoji/df/sprite/Paint;

    move-result-object p0

    .line 426
    instance-of v1, p0, Lcom/metamoji/df/sprite/PaintSolid;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/PaintSolid;->getColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static firstChild(Lcom/metamoji/df/sprite/Sprite;)Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 254
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0

    .line 257
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Sprite;->getChildAt(I)Lcom/metamoji/df/sprite/Sprite;

    move-result-object p0

    return-object p0
.end method

.method public static globalPointFromLocalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 786
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    .line 789
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->localToGlobal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static hasChild(Lcom/metamoji/df/sprite/Sprite;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 270
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getNumChildren()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static height(Lcom/metamoji/df/sprite/Sprite;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result p0

    return p0
.end method

.method public static lastChild(Lcom/metamoji/df/sprite/Sprite;)Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 262
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getNumChildren()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Sprite;->getChildAt(I)Lcom/metamoji/df/sprite/Sprite;

    move-result-object p0

    return-object p0
.end method

.method public static lienDash(Lcom/metamoji/df/sprite/Sprite;)[F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 439
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->getLineDash()[F

    move-result-object p0

    return-object p0
.end method

.method public static lineCap(Lcom/metamoji/df/sprite/Sprite;)Lcom/metamoji/df/sprite/LineCap;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 397
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 398
    sget-object p0, Lcom/metamoji/df/sprite/LineCap;->ROUND:Lcom/metamoji/df/sprite/LineCap;

    return-object p0

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->getLineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object p0

    return-object p0
.end method

.method public static lineColor(Lcom/metamoji/df/sprite/Sprite;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 388
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 389
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->getLinePaint()Lcom/metamoji/df/sprite/Paint;

    move-result-object p0

    .line 392
    instance-of v1, p0, Lcom/metamoji/df/sprite/PaintSolid;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/PaintSolid;->getColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static lineJoin(Lcom/metamoji/df/sprite/Sprite;)Lcom/metamoji/df/sprite/LineJoin;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 405
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 406
    sget-object p0, Lcom/metamoji/df/sprite/LineJoin;->ROUND:Lcom/metamoji/df/sprite/LineJoin;

    return-object p0

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->getLineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object p0

    return-object p0
.end method

.method public static lineWidth(Lcom/metamoji/df/sprite/Sprite;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 380
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Graphics;->getLineWidth()F

    move-result p0

    return p0
.end method

.method public static localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 794
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    .line 797
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static matrixFromGlobalToLocal(Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/Matrix;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 766
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 767
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-object p0

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/df/sprite/Geometry;->invert(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static matrixFromLocalToGlobal(Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/Matrix;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 775
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 776
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-object p0

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getGlobalMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static miterLimit(Lcom/metamoji/df/sprite/Sprite;)F
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 414
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static newSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 37
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    return-object v0
.end method

.method public static parent(Lcom/metamoji/df/sprite/Sprite;)Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 225
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getParent()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p0

    return-object p0
.end method

.method public static rasterizeWithBounds(Lcom/metamoji/cm/RectEx;FFLcom/metamoji/df/sprite/Sprite;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/4 p0, 0x0

    .line 696
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 700
    :cond_0
    :try_start_0
    new-instance v2, Lcom/metamoji/df/sprite/Rasterizer;

    invoke-direct {v2}, Lcom/metamoji/df/sprite/Rasterizer;-><init>()V

    .line 701
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Rasterizer;->setWidth(I)V

    .line 702
    iget v0, p0, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Rasterizer;->setHeight(I)V

    .line 704
    invoke-virtual {p3}, Lcom/metamoji/df/sprite/Sprite;->getX()F

    move-result v0

    iget v3, p0, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v0, v3

    mul-float v4, v0, p1

    .line 705
    invoke-virtual {p3}, Lcom/metamoji/df/sprite/Sprite;->getY()F

    move-result v0

    iget p0, p0, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr v0, p0

    mul-float v5, v0, p2

    move v6, p1

    move v7, p2

    move-object v3, p3

    .line 703
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/df/sprite/Rasterizer;->paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V

    .line 707
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Rasterizer;->getImage()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const/4 p1, 0x1

    .line 710
    invoke-static {p1, v1, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;Ljava/lang/Exception;)V

    return-object v1
.end method

.method public static rasterizeWithBounds(Lcom/metamoji/cm/RectEx;FFZLjava/util/List;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/RectEx;",
            "FFZ",
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/Sprite;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p4, :cond_4

    .line 720
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 725
    :cond_0
    :try_start_0
    new-instance v2, Lcom/metamoji/df/sprite/Rasterizer;

    invoke-direct {v2}, Lcom/metamoji/df/sprite/Rasterizer;-><init>()V

    .line 726
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Rasterizer;->setWidth(I)V

    .line 727
    iget v0, p0, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Rasterizer;->setHeight(I)V

    if-eqz p3, :cond_1

    .line 730
    new-instance v3, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v3}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    const/4 p3, 0x0

    .line 731
    invoke-virtual {v3, p3}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 732
    invoke-virtual {v3, p3}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 733
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Rasterizer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 734
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Rasterizer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 735
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    .line 736
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 737
    sget-object v4, Lcom/metamoji/df/sprite/PaintSolid;->WHITE:Lcom/metamoji/df/sprite/PaintSolid;

    invoke-virtual {v0, v4}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 738
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v4

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v5

    invoke-virtual {v0, p3, p3, v4, v5}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 740
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/df/sprite/Rasterizer;->paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V

    .line 743
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Lcom/metamoji/df/sprite/Sprite;

    if-nez v3, :cond_2

    const/4 p4, 0x1

    .line 745
    invoke-static {p4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 749
    :cond_2
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getX()F

    move-result p4

    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr p4, v0

    mul-float v4, p4, p1

    .line 750
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getY()F

    move-result p4

    iget v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr p4, v0

    mul-float v5, p4, p2

    move v6, p1

    move v7, p2

    .line 748
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/df/sprite/Rasterizer;->paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V

    move p1, v6

    move p2, v7

    goto :goto_0

    .line 753
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Rasterizer;->getImage()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const/4 p1, 0x2

    .line 756
    invoke-static {p1, v1, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;Ljava/lang/Exception;)V

    return-object v1

    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 721
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1
.end method

.method public static removeChild(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 323
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getParent()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p0, 0x1

    .line 328
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 331
    :cond_1
    invoke-virtual {v1, p0}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method

.method public static removeChildAtIndex(ILcom/metamoji/df/sprite/Sprite;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 336
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-ltz p0, :cond_2

    .line 339
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getNumChildren()I

    move-result v1

    if-lt p0, v1, :cond_1

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->removeChildAt(I)V

    return-void

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 340
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static removeChildren(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 369
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->removeChildren()V

    return-void
.end method

.method public static removeFirstChild(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 348
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getNumChildren()I

    move-result v1

    if-lez v1, :cond_1

    .line 352
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Sprite;->removeChildAt(I)V

    :cond_1
    return-void
.end method

.method public static removeLastChild(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 358
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getNumChildren()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 363
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Sprite;->removeChildAt(I)V

    :cond_1
    return-void
.end method

.method public static replaceChildAtIndex(ILcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ltz p0, :cond_2

    .line 313
    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Sprite;->getNumChildren()I

    move-result v2

    if-lt p0, v2, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p2, p1, p0}, Lcom/metamoji/df/sprite/Sprite;->addChildAt(Lcom/metamoji/df/sprite/Sprite;I)V

    add-int/2addr p0, v1

    .line 318
    invoke-virtual {p2, p0}, Lcom/metamoji/df/sprite/Sprite;->removeChildAt(I)V

    return-void

    .line 314
    :cond_2
    :goto_0
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 310
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static root(Lcom/metamoji/df/sprite/Sprite;)Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 233
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getParent()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    .line 240
    :cond_1
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->root(Lcom/metamoji/df/sprite/Sprite;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object p0

    return-object p0
.end method

.method public static scaleX(Lcom/metamoji/df/sprite/Sprite;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 113
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getScaleX()F

    move-result p0

    return p0
.end method

.method public static scaleY(Lcom/metamoji/df/sprite/Sprite;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 121
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getScaleY()F

    move-result p0

    return p0
.end method

.method public static setAlpha(FLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 209
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 212
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->setAlpha(F)V

    return-void
.end method

.method public static setAngleInDegrees(FLcom/metamoji/df/sprite/Sprite;)V
    .locals 2

    float-to-double v0, p0

    .line 194
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setAngleInRadians(FLcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method

.method public static setAngleInRadians(FLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 188
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 191
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    return-void
.end method

.method public static setClipped(ZLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 70
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 73
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    return-void
.end method

.method public static setDropShadowWithColor(Ljava/lang/Integer;FFFFLcom/metamoji/df/sprite/Sprite;)V
    .locals 1

    if-nez p5, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 654
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 660
    :cond_1
    new-instance v0, Lcom/metamoji/df/sprite/DropShadow;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/DropShadow;-><init>()V

    .line 661
    iput p2, v0, Lcom/metamoji/df/sprite/DropShadow;->x:F

    .line 662
    iput p3, v0, Lcom/metamoji/df/sprite/DropShadow;->y:F

    .line 663
    iput p4, v0, Lcom/metamoji/df/sprite/DropShadow;->blur:F

    .line 664
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/metamoji/df/sprite/DropShadow;->color:I

    .line 665
    iput p1, v0, Lcom/metamoji/df/sprite/DropShadow;->alpha:F

    .line 666
    invoke-virtual {p5, v0}, Lcom/metamoji/df/sprite/Sprite;->setDropShadow(Lcom/metamoji/df/sprite/DropShadow;)V

    return-void
.end method

.method public static setFillAlpha(FLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 513
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 516
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    return-void
.end method

.method public static setFillColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 504
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 507
    new-instance v0, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    .line 508
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    return-void
.end method

.method public static setHeight(FLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 164
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 167
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    return-void
.end method

.method public static setLineAlpha(FLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 464
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 467
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Graphics;->setLineAlpha(F)V

    return-void
.end method

.method public static setLineCap(Lcom/metamoji/df/sprite/LineCap;Lcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 472
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 475
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Graphics;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    return-void
.end method

.method public static setLineColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 455
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 458
    new-instance v0, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    .line 459
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    return-void
.end method

.method public static setLineDash([FLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 496
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 499
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Graphics;->setLineDash([F)V

    return-void
.end method

.method public static setLineJoin(Lcom/metamoji/df/sprite/LineJoin;Lcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 480
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 483
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Graphics;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    return-void
.end method

.method public static setLineWidth(FLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 447
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 450
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    return-void
.end method

.method public static setMiterLimit(FLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 488
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setScaleX(FLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 172
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 175
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->setScaleX(F)V

    return-void
.end method

.method public static setScaleY(FLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 180
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 183
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->setScaleY(F)V

    return-void
.end method

.method public static setVisible(ZLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 52
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 55
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    return-void
.end method

.method public static setWidth(FLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 156
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 159
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    return-void
.end method

.method public static setX(FLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 140
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 143
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    return-void
.end method

.method public static setY(FLcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 148
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 151
    :cond_0
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    return-void
.end method

.method public static visible(Lcom/metamoji/df/sprite/Sprite;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->isVisible()Z

    move-result p0

    return p0
.end method

.method public static width(Lcom/metamoji/df/sprite/Sprite;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result p0

    return p0
.end method

.method public static x(Lcom/metamoji/df/sprite/Sprite;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getX()F

    move-result p0

    return p0
.end method

.method public static y(Lcom/metamoji/df/sprite/Sprite;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 89
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Sprite;->getY()F

    move-result p0

    return p0
.end method
