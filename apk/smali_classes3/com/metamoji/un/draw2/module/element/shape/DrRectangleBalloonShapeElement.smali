.class public Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;
.super Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;
.source "DrRectangleBalloonShapeElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;,
        Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;
    }
.end annotation


# static fields
.field private static final BASE_BOUNDS:Lcom/metamoji/cm/RectEx;

.field static final EXTRA_DATA_NAME_PREFIX_BASE_TAIL_POSITION_X:Ljava/lang/String; = "Ex!"

.field static final EXTRA_DATA_NAME_PREFIX_BASE_TAIL_POSITION_Y:Ljava/lang/String; = "Ey!"

.field static final EXTRA_DATA_NAME_PREFIX_NORMALIZED_CORNER_HEIGHT:Ljava/lang/String; = "Eh!"

.field static final EXTRA_DATA_NAME_PREFIX_NORMALIZED_CORNER_WIDTH:Ljava/lang/String; = "Ew!"

.field static final EXTRA_DATA_NAME_PREFIX_NORMALIZED_TAIL_WIDTH:Ljava/lang/String; = "Ed!"

.field private static final MAX_CORNER_RADIUS_RATIO:F = 0.17f

.field private static final MAX_TAIL_WIDTH_RATIO:F = 0.2f

.field static final MODEL_PROPERTY_CORNER_HEIGHT:Ljava/lang/String; = "h"

.field static final MODEL_PROPERTY_CORNER_RADIUS_HANDLE_ENABLEMENT:Ljava/lang/String; = "c"

.field static final MODEL_PROPERTY_CORNER_WIDTH:Ljava/lang/String; = "w"

.field static final MODEL_PROPERTY_PRESERVE_PROPERTIES:Ljava/lang/String; = "r"

.field static final MODEL_PROPERTY_TAIL_POSITION_HANDLE_ENABLEMENT:Ljava/lang/String; = "o"

.field static final MODEL_PROPERTY_TAIL_POSITION_X:Ljava/lang/String; = "x"

.field static final MODEL_PROPERTY_TAIL_POSITION_Y:Ljava/lang/String; = "y"

.field static final MODEL_PROPERTY_TAIL_WIDTH:Ljava/lang/String; = "d"

.field static final MODEL_PROPERTY_TAIL_WIDTH_HANDLE_ENABLEMENT:Ljava/lang/String; = "i"

.field static final VARIATION_KEY_BASE_TAIL_POSITION_X:Ljava/lang/String; = "x"

.field static final VARIATION_KEY_BASE_TAIL_POSITION_Y:Ljava/lang/String; = "y"

.field static final VARIATION_KEY_NORMALIZED_CORNER_HEIGHT:Ljava/lang/String; = "h"

.field static final VARIATION_KEY_NORMALIZED_CORNER_WIDTH:Ljava/lang/String; = "w"

.field static final VARIATION_KEY_NORMALIZED_TAIL_WIDTH:Ljava/lang/String; = "d"


# instance fields
.field private m_baseBoundsToSegmentBounds:Landroid/graphics/Matrix;

.field private m_cornerRadiusHandleEnablement:Z

.field private m_cornerSize:Lcom/metamoji/cm/SizeF;

.field private m_extraDataNameForBaseTailPositionX:Ljava/lang/String;

.field private m_extraDataNameForBaseTailPositionY:Ljava/lang/String;

.field private m_extraDataNameForNormalizedCornerHeight:Ljava/lang/String;

.field private m_extraDataNameForNormalizedCornerWidth:Ljava/lang/String;

.field private m_extraDataNameForNormalizedTailWidth:Ljava/lang/String;

.field private m_preserveProperties:Z

.field private m_segmentBoundsToBaseBounds:Landroid/graphics/Matrix;

.field private m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

.field private m_tailPosition:Landroid/graphics/PointF;

.field private m_tailPositionHandleEnablement:Z

.field private m_tailWidth:F

.field private m_tailWidthHandleEnablement:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 98
    new-instance v0, Lcom/metamoji/cm/RectEx;

    const/high16 v1, -0x3db80000    # -50.0f

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->BASE_BOUNDS:Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;-><init>()V

    return-void
.end method

.method private adoptPropertiesFromSegments()V
    .locals 11

    const/4 v0, 0x1

    .line 1470
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v1

    .line 1471
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1473
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsPoint(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    invoke-static {v2, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsPoint(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    .line 1478
    :cond_0
    invoke-direct {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->updateTailPosition(Landroid/graphics/PointF;)V

    .line 1481
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->getTailAreaForTailPosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    goto :goto_0

    .line 1483
    :cond_1
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1487
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x5

    if-eqz v1, :cond_8

    if-eq v1, v0, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_2

    const/4 v8, 0x4

    if-eq v1, v8, :cond_2

    .line 1518
    invoke-static {v6, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_3

    .line 1496
    :cond_2
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v1

    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 1497
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v8

    if-eqz v8, :cond_7

    cmpg-float v8, v1, v2

    if-gez v8, :cond_3

    goto :goto_2

    .line 1503
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v8

    iget-object v9, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    sget-object v10, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->UPPER_SIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    if-eq v9, v10, :cond_5

    iget-object v9, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    sget-object v10, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->LOWER_SIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    if-ne v9, v10, :cond_4

    goto :goto_1

    :cond_4
    move v0, v3

    :cond_5
    :goto_1
    invoke-static {v8, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxTailWidthForSegmentSize(Lcom/metamoji/cm/SizeF;Z)F

    move-result v0

    .line 1507
    invoke-static {v1, v0, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_6

    move v1, v3

    .line 1512
    :cond_6
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    invoke-static {v1, v0, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1513
    invoke-direct {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->updateTailWidth(F)V

    goto :goto_3

    .line 1498
    :cond_7
    :goto_2
    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1523
    :cond_8
    :goto_3
    invoke-virtual {p0, v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 1524
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFiniteSize(Lcom/metamoji/cm/SizeF;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_e

    iget v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_9

    goto :goto_4

    .line 1530
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxCornerSizeForSegmentSize(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v1

    .line 1533
    iget v2, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v2, v3, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v2

    if-nez v2, :cond_a

    iget v2, v0, Lcom/metamoji/cm/SizeF;->height:F

    iget v3, v1, Lcom/metamoji/cm/SizeF;->height:F

    .line 1534
    invoke-static {v2, v3, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v2, v2, v3

    if-gez v2, :cond_b

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v2, v0, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    iget v3, v0, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr v2, v3

    .line 1536
    invoke-static {v1, v2, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1537
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    .line 1541
    :cond_c
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    invoke-static {v0, v1, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1542
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->updateCornerSize(Lcom/metamoji/cm/SizeF;)V

    :cond_d
    return-void

    .line 1525
    :cond_e
    :goto_4
    invoke-static {v5, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method private applyTailPosition(Landroid/graphics/PointF;FLcom/metamoji/cm/SizeF;Lcom/metamoji/cm/RectEx;ZZ)V
    .locals 6

    .line 1427
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->updateTailPosition(Landroid/graphics/PointF;)V

    .line 1428
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->updateTailWidth(F)V

    .line 1429
    invoke-direct {p0, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->updateCornerSize(Lcom/metamoji/cm/SizeF;)V

    .line 1432
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    invoke-static {p1, p4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->getTailAreaForTailPosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    .line 1435
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    const/4 v5, 0x0

    move-object v0, p4

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->createSegmentsWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p1

    .line 1441
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result p3

    const/4 p4, 0x0

    if-eq p2, p3, :cond_0

    const/4 p2, 0x0

    .line 1442
    invoke-static {p4, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1444
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->destroy()V

    goto :goto_0

    .line 1450
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p4, p2, :cond_1

    .line 1451
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1452
    invoke-virtual {p0, p4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->copyToSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    .line 1453
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->destroy()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    .line 1458
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->updateSegments()V

    :cond_2
    if-eqz p6, :cond_3

    .line 1463
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->updateExtraHandles()V

    :cond_3
    return-void
.end method

.method private static baseBoundsToSegmentBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;
    .locals 4

    .line 2484
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMakeTranslation(FF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 2485
    iget v1, p0, Lcom/metamoji/cm/RectEx;->width:F

    sget-object v2, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->BASE_BOUNDS:Lcom/metamoji/cm/RectEx;

    iget v3, v2, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v1, v3

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p0, v2

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    return-object v0
.end method

.method private static checkCornerRadiusHandlePointRangeWithSegmentBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/SizeF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4

    .line 2698
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxCornerSizeForSegmentSize(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 2699
    iget v1, p1, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_1

    .line 2702
    :cond_0
    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget v2, p1, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v1, v2

    .line 2703
    iget v2, v0, Lcom/metamoji/cm/SizeF;->height:F

    iget v3, p1, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 2704
    iget p1, v0, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_0

    :cond_1
    iget p1, p1, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr p1, v2

    .line 2705
    :goto_0
    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 2706
    iget p1, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 2708
    :cond_2
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/metamoji/cm/RectEx;->y:F

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_2

    .line 2700
    :cond_3
    :goto_1
    iget p1, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    invoke-virtual {p2, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 2710
    :goto_2
    iget p1, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->y:F

    invoke-virtual {p3, p1, p0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private checkPropertiesForHandlePoint(Landroid/graphics/PointF;ILandroid/graphics/PointF;FLcom/metamoji/cm/SizeF;)F
    .locals 7

    .line 1657
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    invoke-static {p2, v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->handleTypeFromHandleIndex(IZZZ)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_12

    const/4 p3, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_0

    .line 1751
    invoke-static {v0, p3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p4

    .line 1723
    :cond_0
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    .line 1724
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    invoke-static {v0, v1, p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->checkCornerRadiusHandlePointRangeWithSegmentBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/SizeF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1730
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 1731
    sget-object p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeZero:Lcom/metamoji/cm/SizeF;

    invoke-virtual {p5, p1}, Lcom/metamoji/cm/SizeF;->set(Lcom/metamoji/cm/SizeF;)V

    return p4

    .line 1732
    :cond_1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 1733
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget p2, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    .line 1734
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_2

    .line 1735
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr p2, p1

    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p3, p3, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr p2, p3

    invoke-virtual {p5, p1, p2}, Lcom/metamoji/cm/SizeF;->set(FF)V

    return p4

    .line 1737
    :cond_2
    invoke-virtual {p5, p1, p1}, Lcom/metamoji/cm/SizeF;->set(FF)V

    return p4

    .line 1740
    :cond_3
    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    .line 1741
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_4

    .line 1742
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr p2, p1

    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p3, p3, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr p2, p3

    invoke-virtual {p5, p1, p2}, Lcom/metamoji/cm/SizeF;->set(FF)V

    return p4

    .line 1744
    :cond_4
    invoke-virtual {p5, p1, p1}, Lcom/metamoji/cm/SizeF;->set(FF)V

    return p4

    .line 1669
    :cond_5
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    new-instance p5, Landroid/graphics/PointF;

    invoke-direct {p5}, Landroid/graphics/PointF;-><init>()V

    .line 1670
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    invoke-static {v4, v5, v6, p2, p5}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->checkTailWidthHandlePointRangeWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1677
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->ordinal()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v4, v0, :cond_f

    if-eq v4, v2, :cond_c

    if-eq v4, v1, :cond_9

    const/4 v0, 0x4

    if-eq v4, v0, :cond_6

    const/4 p1, 0x0

    .line 1715
    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p4

    .line 1706
    :cond_6
    iget p3, p1, Landroid/graphics/PointF;->x:F

    iget p4, p2, Landroid/graphics/PointF;->x:F

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_7

    .line 1707
    iget p1, p5, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->x:F

    :goto_0
    sub-float/2addr p1, p2

    mul-float/2addr p1, v5

    return p1

    .line 1708
    :cond_7
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p3, p5, Landroid/graphics/PointF;->x:F

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_8

    .line 1709
    iget p2, p5, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    :goto_1
    sub-float/2addr p2, p1

    mul-float/2addr p2, v5

    return p2

    :cond_8
    return v3

    .line 1697
    :cond_9
    iget p3, p1, Landroid/graphics/PointF;->x:F

    iget p4, p2, Landroid/graphics/PointF;->x:F

    cmpl-float p3, p3, p4

    if-ltz p3, :cond_a

    .line 1698
    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p5, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 1699
    :cond_a
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p3, p5, Landroid/graphics/PointF;->x:F

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_b

    .line 1700
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget p2, p5, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_b
    return v3

    .line 1688
    :cond_c
    iget p3, p1, Landroid/graphics/PointF;->y:F

    iget p4, p2, Landroid/graphics/PointF;->y:F

    cmpl-float p3, p3, p4

    if-ltz p3, :cond_d

    .line 1689
    iget p1, p2, Landroid/graphics/PointF;->y:F

    iget p2, p5, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 1690
    :cond_d
    iget p2, p1, Landroid/graphics/PointF;->y:F

    iget p3, p5, Landroid/graphics/PointF;->y:F

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_e

    .line 1691
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p5, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_e
    return v3

    .line 1679
    :cond_f
    iget p3, p1, Landroid/graphics/PointF;->y:F

    iget p4, p2, Landroid/graphics/PointF;->y:F

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_10

    .line 1680
    iget p1, p5, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 1681
    :cond_10
    iget p2, p1, Landroid/graphics/PointF;->y:F

    iget p3, p5, Landroid/graphics/PointF;->y:F

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_11

    .line 1682
    iget p2, p5, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_11
    return v3

    .line 1663
    :cond_12
    invoke-virtual {p3, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return p4
.end method

.method private checkPropertyVariationsWithSegmentBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/DrEditContext;Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;ZZ)F
    .locals 8

    .line 1554
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1556
    invoke-virtual {p4, v0, v0}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 1557
    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_a

    const/4 p1, 0x5

    const/4 p2, 0x0

    if-eq v1, p1, :cond_0

    .line 1645
    invoke-static {v2, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 1641
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 1624
    :cond_1
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->scale()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1625
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p5

    invoke-static {p5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p5

    sub-float/2addr p2, p5

    mul-float/2addr p2, p1

    iget-object p5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget p5, p5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p6

    invoke-static {p6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p6

    sub-float/2addr p5, p6

    mul-float/2addr p5, p1

    invoke-virtual {p3, p2, p5}, Landroid/graphics/PointF;->set(FF)V

    .line 1631
    invoke-virtual {p4, p1, p1}, Lcom/metamoji/cm/SizeF;->set(FF)V

    return p1

    .line 1566
    :cond_2
    iget p4, p3, Landroid/graphics/PointF;->x:F

    .line 1567
    iget p4, p3, Landroid/graphics/PointF;->y:F

    .line 1568
    iget-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_preserveProperties:Z

    .line 1599
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    if-eqz p4, :cond_7

    .line 1570
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->transform()Landroid/graphics/Matrix;

    move-result-object p4

    invoke-static {v1, p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p4

    .line 1573
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingX()Z

    move-result v1

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v1, :cond_4

    .line 1574
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->angleInDegrees()F

    move-result v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkAxisSwitchingZoneForAngleInDegrees(F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1575
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPointY()F

    move-result v1

    mul-float/2addr v1, v6

    iget v7, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v7

    iput v1, p4, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 1577
    :cond_3
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPointX()F

    move-result v1

    mul-float/2addr v1, v6

    iget v7, p4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v7

    iput v1, p4, Landroid/graphics/PointF;->x:F

    .line 1580
    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingY()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1581
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->angleInDegrees()F

    move-result v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkAxisSwitchingZoneForAngleInDegrees(F)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1582
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPointX()F

    move-result v1

    mul-float/2addr v1, v6

    iget v6, p4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v6

    iput v1, p4, Landroid/graphics/PointF;->x:F

    goto :goto_1

    .line 1584
    :cond_5
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPointY()F

    move-result v1

    mul-float/2addr v1, v6

    iget v6, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v6

    iput v1, p4, Landroid/graphics/PointF;->y:F

    .line 1590
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->angleInRadians()F

    move-result v1

    .line 1589
    invoke-static {p1, v1, p5, p6}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->transformForSegmentBounds(Lcom/metamoji/cm/RectEx;FZZ)Landroid/graphics/Matrix;

    move-result-object p5

    invoke-static {p5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformInvert(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p4

    .line 1595
    iget p5, p4, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p6

    sub-float/2addr p5, p6

    .line 1596
    iget p4, p4, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    sub-float/2addr p4, p1

    goto :goto_2

    .line 1599
    :cond_7
    iget p1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p4

    invoke-static {p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p4

    sub-float/2addr p1, p4

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleWidth()F

    move-result p4

    mul-float p5, p1, p4

    .line 1600
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p4

    invoke-static {p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p4

    sub-float/2addr p1, p4

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleHeight()F

    move-result p4

    mul-float/2addr p4, p1

    .line 1602
    :goto_2
    invoke-virtual {p3, p5, p4}, Landroid/graphics/PointF;->set(FF)V

    .line 1605
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_preserveProperties:Z

    if-nez p1, :cond_a

    .line 1606
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->ordinal()I

    move-result p1

    if-eq p1, v2, :cond_9

    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_8

    goto :goto_3

    .line 1613
    :cond_8
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleWidth()F

    move-result p1

    return p1

    .line 1609
    :cond_9
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleHeight()F

    move-result p1

    return p1

    :cond_a
    :goto_3
    return v0

    .line 1560
    :cond_b
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p2

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p4

    invoke-static {p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p4

    sub-float/2addr p2, p4

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return v0
.end method

.method private static checkTailWidthHandlePointRangeWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 2606
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    .line 2607
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    .line 2608
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    .line 2609
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    .line 2610
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxCornerSizeForSegmentSize(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v7

    .line 2611
    iget v8, v7, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v8, v3

    .line 2612
    iget v9, v7, Lcom/metamoji/cm/SizeF;->width:F

    sub-float v9, v4, v9

    .line 2613
    iget v10, v7, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v10, v5

    .line 2614
    iget v7, v7, Lcom/metamoji/cm/SizeF;->height:F

    sub-float v7, v6, v7

    .line 2615
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->ordinal()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v11, :cond_c

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    if-eq v11, v15, :cond_9

    const/4 v3, 0x2

    if-eq v11, v3, :cond_6

    const/4 v3, 0x3

    if-eq v11, v3, :cond_3

    const/4 v3, 0x4

    if-eq v11, v3, :cond_0

    .line 2689
    invoke-static {v15, v12}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2672
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    invoke-static {v3, v15}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxTailWidthForSegmentSize(Lcom/metamoji/cm/SizeF;Z)F

    move-result v3

    mul-float/2addr v3, v14

    add-float v4, v8, v3

    sub-float/2addr v9, v3

    .line 2675
    iget v5, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_1

    .line 2676
    invoke-virtual {v1, v8, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 2677
    invoke-virtual {v2, v4, v6}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 2678
    :cond_1
    iget v4, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_2

    sub-float v0, v9, v3

    .line 2679
    invoke-virtual {v1, v0, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 2680
    invoke-virtual {v2, v9, v6}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 2682
    :cond_2
    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v3

    invoke-virtual {v1, v4, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 2683
    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v0, v6}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 2655
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    invoke-static {v3, v15}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxTailWidthForSegmentSize(Lcom/metamoji/cm/SizeF;Z)F

    move-result v3

    mul-float/2addr v3, v14

    add-float/2addr v8, v3

    sub-float v4, v9, v3

    .line 2658
    iget v6, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_4

    add-float/2addr v3, v8

    .line 2659
    invoke-virtual {v1, v3, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 2660
    invoke-virtual {v2, v8, v5}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 2661
    :cond_4
    iget v6, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_5

    .line 2662
    invoke-virtual {v1, v9, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 2663
    invoke-virtual {v2, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 2665
    :cond_5
    iget v4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 2666
    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v0, v5}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 2638
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    invoke-static {v3, v13}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxTailWidthForSegmentSize(Lcom/metamoji/cm/SizeF;Z)F

    move-result v3

    mul-float/2addr v3, v14

    add-float/2addr v10, v3

    sub-float v5, v7, v3

    .line 2641
    iget v6, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v6, v10

    if-gez v6, :cond_7

    add-float/2addr v3, v10

    .line 2642
    invoke-virtual {v1, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 2643
    invoke-virtual {v2, v4, v10}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 2644
    :cond_7
    iget v6, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_8

    .line 2645
    invoke-virtual {v1, v4, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 2646
    invoke-virtual {v2, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 2648
    :cond_8
    iget v5, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 2649
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 2621
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v4

    invoke-static {v4, v13}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxTailWidthForSegmentSize(Lcom/metamoji/cm/SizeF;Z)F

    move-result v4

    mul-float/2addr v4, v14

    add-float v5, v10, v4

    sub-float/2addr v7, v4

    .line 2624
    iget v6, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v6, v5

    if-gez v6, :cond_a

    .line 2625
    invoke-virtual {v1, v3, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 2626
    invoke-virtual {v2, v3, v5}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 2627
    :cond_a
    iget v5, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_b

    sub-float v0, v7, v4

    .line 2628
    invoke-virtual {v1, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 2629
    invoke-virtual {v2, v3, v7}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 2631
    :cond_b
    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v4

    invoke-virtual {v1, v3, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 2632
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 2617
    :cond_c
    invoke-static {v13, v12}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method private constructWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;FFZZZZ)V
    .locals 6

    .line 1265
    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    .line 1268
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->getTailAreaForTailPosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    .line 1271
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->ordinal()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    const/4 v3, 0x4

    if-eq p2, v3, :cond_0

    const/4 p2, 0x0

    .line 1289
    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1290
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    goto :goto_2

    .line 1284
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxTailWidthForSegmentSize(Lcom/metamoji/cm/SizeF;Z)F

    move-result p2

    cmpg-float v0, p3, p2

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    move p3, p2

    .line 1285
    :goto_0
    iput p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    goto :goto_2

    .line 1278
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxTailWidthForSegmentSize(Lcom/metamoji/cm/SizeF;Z)F

    move-result p2

    cmpg-float v0, p3, p2

    if-gtz v0, :cond_3

    goto :goto_1

    :cond_3
    move p3, p2

    .line 1279
    :goto_1
    iput p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    goto :goto_2

    .line 1273
    :cond_4
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    .line 1296
    :goto_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxCornerSizeForSegmentSize(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object p2

    .line 1297
    iget p3, p2, Lcom/metamoji/cm/SizeF;->width:F

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p4, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 1298
    invoke-static {p2, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    .line 1301
    iput-boolean p5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    .line 1302
    iput-boolean p6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    .line 1303
    iput-boolean p7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    .line 1304
    iput-boolean p8, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_preserveProperties:Z

    .line 1307
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->updateTransformsWidthSegmentBounds(Lcom/metamoji/cm/RectEx;)V

    .line 1310
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1311
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->saveTailPositionXToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1312
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->saveTailPositionYToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1313
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->saveTailWidthToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1314
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p3, p3, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->saveCornerWidthToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1315
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p3, p3, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->saveCornerHeightToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1316
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-boolean p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->saveTailPositionHandleEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1317
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-boolean p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->saveTailWidthHandleEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1318
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-boolean p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->saveCornerRadiusHandleEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1319
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-boolean p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_preserveProperties:Z

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->savePreservePropertiesToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1323
    :cond_5
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->createSegmentsWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p1

    .line 1324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1325
    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->addSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    goto :goto_3

    .line 1329
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->updateSegments()V

    .line 1332
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->updateExtraHandles()V

    return-void
.end method

.method private cornerRadiusHandlePoint()Landroid/graphics/PointF;
    .locals 3

    .line 1355
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1367
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1370
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    .line 1365
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x9

    .line 1363
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x7

    .line 1361
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 1359
    :cond_3
    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 1357
    :cond_4
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private static cornerSizeFromVariation(Ljava/util/Map;F)Lcom/metamoji/cm/SizeF;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;F)",
            "Lcom/metamoji/cm/SizeF;"
        }
    .end annotation

    .line 2767
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeZero()Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 2768
    const-string/jumbo v1, "w"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2770
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 2772
    :cond_0
    const-string v1, "h"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2774
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    mul-float/2addr p0, p1

    iput p0, v0, Lcom/metamoji/cm/SizeF;->height:F

    :cond_1
    return-object v0
.end method

.method private static createPathWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;Lcom/metamoji/cm/SizeF;)Landroid/graphics/Path;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2453
    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->createSegmentsWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p0

    .line 2461
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 2462
    new-instance p2, Landroid/graphics/PointF;

    const/high16 p3, 0x7fc00000    # Float.NaN

    invoke-direct {p2, p3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2463
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 2464
    invoke-virtual {p3, p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->addToPath(Landroid/graphics/Path;Landroid/graphics/PointF;)V

    .line 2465
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->destroy()V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static createSegmentsWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/model/IModel;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/RectEx;",
            "Landroid/graphics/PointF;",
            "F",
            "Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;",
            "Lcom/metamoji/cm/SizeF;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1858
    invoke-static/range {p4 .. p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v1

    .line 1860
    iget v2, v1, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 1861
    :cond_0
    sget-object v2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeZero:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/SizeF;->set(Lcom/metamoji/cm/SizeF;)V

    .line 1865
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxCornerSizeForSegmentSize(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    .line 1866
    iget v4, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, v2, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2

    iget v4, v1, Lcom/metamoji/cm/SizeF;->height:F

    iget v5, v2, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 1867
    :cond_2
    iget v4, v2, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v4, v5

    .line 1868
    iget v5, v2, Lcom/metamoji/cm/SizeF;->height:F

    iget v6, v1, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v5, v6

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_3

    .line 1870
    iget v5, v2, Lcom/metamoji/cm/SizeF;->width:F

    iput v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    .line 1871
    iget v5, v1, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v5, v4

    iput v5, v1, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_0

    .line 1873
    :cond_3
    iget v4, v2, Lcom/metamoji/cm/SizeF;->height:F

    iput v4, v1, Lcom/metamoji/cm/SizeF;->height:F

    .line 1874
    iget v4, v1, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr v4, v5

    iput v4, v1, Lcom/metamoji/cm/SizeF;->width:F

    .line 1879
    :cond_4
    :goto_0
    iget v4, v1, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v4, v4, v3

    const/4 v6, 0x0

    if-lez v4, :cond_5

    iget v4, v1, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v6

    .line 1882
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    .line 1883
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    .line 1884
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v8

    .line 1885
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v9

    .line 1886
    iget v10, v1, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v10, v4

    .line 1887
    iget v11, v1, Lcom/metamoji/cm/SizeF;->width:F

    sub-float v11, v7, v11

    .line 1888
    iget v12, v1, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v12, v8

    .line 1889
    iget v13, v1, Lcom/metamoji/cm/SizeF;->height:F

    sub-float v13, v9, v13

    .line 1892
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1895
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v15

    .line 1896
    invoke-virtual {v15, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsVisible(Z)V

    .line 1897
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->originOf(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    move/from16 v16, v3

    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    invoke-static {v5, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v15, v6, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1898
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1901
    invoke-virtual/range {p3 .. p3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->ordinal()I

    move-result v3

    if-eqz v3, :cond_26

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1e

    const/4 v15, 0x2

    if-eq v3, v15, :cond_16

    const/4 v15, 0x3

    if-eq v3, v15, :cond_e

    const/4 v15, 0x4

    if-eq v3, v15, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2439
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v14

    .line 2329
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxTailWidthForSegmentSize(Lcom/metamoji/cm/SizeF;Z)F

    move-result v3

    cmpl-float v6, p2, v3

    if-lez v6, :cond_7

    move v6, v3

    goto :goto_2

    :cond_7
    move/from16 v6, p2

    .line 2335
    :goto_2
    iget v15, v2, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v15, v4

    mul-float/2addr v3, v5

    add-float/2addr v15, v3

    .line 2336
    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    sub-float v2, v7, v2

    sub-float/2addr v2, v3

    .line 2340
    iget v3, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v15

    if-gez v3, :cond_8

    mul-float/2addr v6, v5

    sub-float v2, v15, v6

    .line 2341
    invoke-static {v2, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    add-float/2addr v15, v6

    .line 2342
    invoke-static {v15, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_3

    .line 2343
    :cond_8
    iget v3, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_9

    mul-float/2addr v6, v5

    sub-float v3, v2, v6

    .line 2344
    invoke-static {v3, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    add-float/2addr v2, v6

    .line 2345
    invoke-static {v2, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v24, v3

    move-object v3, v2

    move-object/from16 v2, v24

    goto :goto_3

    .line 2347
    :cond_9
    iget v2, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v5

    sub-float/2addr v2, v6

    invoke-static {v2, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    .line 2348
    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v6

    invoke-static {v3, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    .line 2352
    :goto_3
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v5

    const/4 v6, 0x0

    .line 2353
    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2354
    invoke-virtual {v5, v0, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2355
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2358
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2359
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2360
    invoke-static {v10, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2361
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2364
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2365
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_a

    .line 2367
    invoke-static {v10, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v6, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43340000    # 180.0f

    const/16 v23, 0x1

    const/high16 v21, 0x42b40000    # 90.0f

    move-object/from16 v17, v2

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_4

    .line 2369
    :cond_a
    invoke-static {v4, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2371
    :goto_4
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2374
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 2375
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2376
    invoke-static {v4, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2377
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2380
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2381
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_b

    .line 2383
    invoke-static {v10, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v4, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43870000    # 270.0f

    const/16 v23, 0x1

    const/high16 v21, 0x43340000    # 180.0f

    move-object/from16 v17, v2

    move/from16 v19, v4

    move/from16 v20, v5

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_5

    .line 2385
    :cond_b
    invoke-static {v4, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2387
    :goto_5
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2390
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 2391
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2392
    invoke-static {v11, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2393
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2396
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2397
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_c

    .line 2399
    invoke-static {v11, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v4, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43b40000    # 360.0f

    const/16 v23, 0x1

    const/high16 v21, 0x43870000    # 270.0f

    move-object/from16 v17, v2

    move/from16 v19, v4

    move/from16 v20, v5

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_6

    .line 2401
    :cond_c
    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2403
    :goto_6
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2406
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 2407
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2408
    invoke-static {v7, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2409
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2412
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2413
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_d

    .line 2415
    invoke-static {v11, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v4, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x42b40000    # 90.0f

    const/16 v23, 0x1

    const/16 v21, 0x0

    move/from16 v20, v1

    move-object/from16 v17, v2

    move/from16 v19, v4

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    move-object/from16 v1, v17

    goto :goto_7

    :cond_d
    move-object v1, v2

    .line 2417
    invoke-static {v7, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2419
    :goto_7
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2422
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    const/4 v6, 0x0

    .line 2423
    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2424
    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2425
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2428
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    .line 2429
    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2430
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2431
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v14

    .line 2218
    :cond_e
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxTailWidthForSegmentSize(Lcom/metamoji/cm/SizeF;Z)F

    move-result v3

    cmpl-float v6, p2, v3

    if-lez v6, :cond_f

    move v6, v3

    goto :goto_8

    :cond_f
    move/from16 v6, p2

    .line 2224
    :goto_8
    iget v15, v2, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v15, v4

    mul-float/2addr v3, v5

    add-float/2addr v15, v3

    .line 2225
    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    sub-float v2, v7, v2

    sub-float/2addr v2, v3

    .line 2229
    iget v3, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v15

    if-gez v3, :cond_10

    mul-float/2addr v6, v5

    add-float v2, v15, v6

    .line 2230
    invoke-static {v2, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    sub-float/2addr v15, v6

    .line 2231
    invoke-static {v15, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_9

    .line 2232
    :cond_10
    iget v3, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_11

    mul-float/2addr v6, v5

    add-float v3, v2, v6

    .line 2233
    invoke-static {v3, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    sub-float/2addr v2, v6

    .line 2234
    invoke-static {v2, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v24, v3

    move-object v3, v2

    move-object/from16 v2, v24

    goto :goto_9

    .line 2236
    :cond_11
    iget v2, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v5

    add-float/2addr v2, v6

    invoke-static {v2, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    .line 2237
    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v6

    invoke-static {v3, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    .line 2241
    :goto_9
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v5

    const/4 v6, 0x0

    .line 2242
    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2243
    invoke-virtual {v5, v0, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2244
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2247
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2248
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2249
    invoke-static {v11, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2250
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2253
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2254
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_12

    .line 2256
    invoke-static {v11, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v6, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43b40000    # 360.0f

    const/16 v23, 0x1

    const/high16 v21, 0x43870000    # 270.0f

    move-object/from16 v17, v2

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_a

    .line 2258
    :cond_12
    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2260
    :goto_a
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2263
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 2264
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2265
    invoke-static {v7, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2266
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2269
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2270
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_13

    .line 2272
    invoke-static {v11, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v6, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x42b40000    # 90.0f

    const/16 v23, 0x1

    const/16 v21, 0x0

    move-object/from16 v17, v2

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_b

    .line 2274
    :cond_13
    invoke-static {v7, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2276
    :goto_b
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2279
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 2280
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2281
    invoke-static {v10, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2282
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2285
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2286
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_14

    .line 2288
    invoke-static {v10, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v6, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43340000    # 180.0f

    const/16 v23, 0x1

    const/high16 v21, 0x42b40000    # 90.0f

    move-object/from16 v17, v2

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_c

    .line 2290
    :cond_14
    invoke-static {v4, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2292
    :goto_c
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2295
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 2296
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2297
    invoke-static {v4, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2298
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2301
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2302
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_15

    .line 2304
    invoke-static {v10, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v4, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43870000    # 270.0f

    const/16 v23, 0x1

    const/high16 v21, 0x43340000    # 180.0f

    move/from16 v20, v1

    move-object/from16 v17, v2

    move/from16 v19, v4

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    move-object/from16 v1, v17

    goto :goto_d

    :cond_15
    move-object v1, v2

    .line 2306
    invoke-static {v4, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2308
    :goto_d
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2311
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    const/4 v6, 0x0

    .line 2312
    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2313
    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2314
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2317
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    .line 2318
    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2319
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2320
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v14

    :cond_16
    const/4 v6, 0x0

    .line 2107
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxTailWidthForSegmentSize(Lcom/metamoji/cm/SizeF;Z)F

    move-result v3

    cmpl-float v6, p2, v3

    if-lez v6, :cond_17

    move v6, v3

    goto :goto_e

    :cond_17
    move/from16 v6, p2

    .line 2113
    :goto_e
    iget v15, v2, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v15, v8

    mul-float/2addr v3, v5

    add-float/2addr v15, v3

    .line 2114
    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    sub-float v2, v9, v2

    sub-float/2addr v2, v3

    .line 2118
    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v15

    if-gez v3, :cond_18

    mul-float/2addr v6, v5

    add-float v2, v15, v6

    .line 2119
    invoke-static {v7, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    sub-float/2addr v15, v6

    .line 2120
    invoke-static {v7, v15}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_f

    .line 2121
    :cond_18
    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_19

    mul-float/2addr v6, v5

    add-float v3, v2, v6

    .line 2122
    invoke-static {v7, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    sub-float/2addr v2, v6

    .line 2123
    invoke-static {v7, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v24, v3

    move-object v3, v2

    move-object/from16 v2, v24

    goto :goto_f

    .line 2125
    :cond_19
    iget v2, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v5

    add-float/2addr v2, v6

    invoke-static {v7, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    .line 2126
    iget v3, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v6

    invoke-static {v7, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    .line 2130
    :goto_f
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v5

    const/4 v6, 0x0

    .line 2131
    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2132
    invoke-virtual {v5, v0, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2133
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2136
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2137
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2138
    invoke-static {v7, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2139
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2142
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2143
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_1a

    .line 2145
    invoke-static {v11, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v6, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x42b40000    # 90.0f

    const/16 v23, 0x1

    const/16 v21, 0x0

    move-object/from16 v17, v2

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_10

    .line 2147
    :cond_1a
    invoke-static {v7, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2149
    :goto_10
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2152
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 2153
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2154
    invoke-static {v10, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2155
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2158
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2159
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_1b

    .line 2161
    invoke-static {v10, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v6, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43340000    # 180.0f

    const/16 v23, 0x1

    const/high16 v21, 0x42b40000    # 90.0f

    move-object/from16 v17, v2

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_11

    .line 2163
    :cond_1b
    invoke-static {v4, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2165
    :goto_11
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2168
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 2169
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2170
    invoke-static {v4, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2171
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2174
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2175
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_1c

    .line 2177
    invoke-static {v10, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v4, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43870000    # 270.0f

    const/16 v23, 0x1

    const/high16 v21, 0x43340000    # 180.0f

    move-object/from16 v17, v2

    move/from16 v19, v4

    move/from16 v20, v5

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_12

    .line 2179
    :cond_1c
    invoke-static {v4, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2181
    :goto_12
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2184
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 2185
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2186
    invoke-static {v11, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2187
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2190
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2191
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_1d

    .line 2193
    invoke-static {v11, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v4, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43b40000    # 360.0f

    const/16 v23, 0x1

    const/high16 v21, 0x43870000    # 270.0f

    move/from16 v20, v1

    move-object/from16 v17, v2

    move/from16 v19, v4

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    move-object/from16 v1, v17

    goto :goto_13

    :cond_1d
    move-object v1, v2

    .line 2195
    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2197
    :goto_13
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2200
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    const/4 v6, 0x0

    .line 2201
    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2202
    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2203
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2206
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    .line 2207
    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2208
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2209
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v14

    :cond_1e
    const/4 v6, 0x0

    .line 1996
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxTailWidthForSegmentSize(Lcom/metamoji/cm/SizeF;Z)F

    move-result v3

    cmpl-float v6, p2, v3

    if-lez v6, :cond_1f

    move v6, v3

    goto :goto_14

    :cond_1f
    move/from16 v6, p2

    .line 2002
    :goto_14
    iget v15, v2, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v15, v8

    mul-float/2addr v3, v5

    add-float/2addr v15, v3

    .line 2003
    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    sub-float v2, v9, v2

    sub-float/2addr v2, v3

    .line 2007
    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v15

    if-gez v3, :cond_20

    mul-float/2addr v6, v5

    sub-float v2, v15, v6

    .line 2008
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    add-float/2addr v15, v6

    .line 2009
    invoke-static {v4, v15}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_15

    .line 2010
    :cond_20
    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v2

    if-lez v3, :cond_21

    mul-float/2addr v6, v5

    sub-float v3, v2, v6

    .line 2011
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    add-float/2addr v2, v6

    .line 2012
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v24, v3

    move-object v3, v2

    move-object/from16 v2, v24

    goto :goto_15

    .line 2014
    :cond_21
    iget v2, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v5

    sub-float/2addr v2, v6

    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    .line 2015
    iget v3, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v6

    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    .line 2019
    :goto_15
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v5

    const/4 v6, 0x0

    .line 2020
    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2021
    invoke-virtual {v5, v0, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2022
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2025
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2026
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2027
    invoke-static {v4, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2028
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2031
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2032
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_22

    .line 2034
    invoke-static {v10, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v6, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43870000    # 270.0f

    const/16 v23, 0x1

    const/high16 v21, 0x43340000    # 180.0f

    move-object/from16 v17, v2

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_16

    .line 2036
    :cond_22
    invoke-static {v4, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2038
    :goto_16
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2041
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 2042
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2043
    invoke-static {v11, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2044
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2047
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2048
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_23

    .line 2050
    invoke-static {v11, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v6, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43b40000    # 360.0f

    const/16 v23, 0x1

    const/high16 v21, 0x43870000    # 270.0f

    move-object/from16 v17, v2

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_17

    .line 2052
    :cond_23
    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2054
    :goto_17
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2057
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 2058
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2059
    invoke-static {v7, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2060
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2063
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2064
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_24

    .line 2066
    invoke-static {v11, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v6, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x42b40000    # 90.0f

    const/16 v23, 0x1

    const/16 v21, 0x0

    move-object/from16 v17, v2

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_18

    .line 2068
    :cond_24
    invoke-static {v7, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2070
    :goto_18
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2073
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 2074
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2075
    invoke-static {v10, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2076
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2079
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2080
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_25

    .line 2082
    invoke-static {v10, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v4, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43340000    # 180.0f

    const/16 v23, 0x1

    const/high16 v21, 0x42b40000    # 90.0f

    move/from16 v20, v1

    move-object/from16 v17, v2

    move/from16 v19, v4

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    move-object/from16 v1, v17

    goto :goto_19

    :cond_25
    move-object v1, v2

    .line 2084
    invoke-static {v4, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2086
    :goto_19
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2089
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    const/4 v6, 0x0

    .line 2090
    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2091
    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2092
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2095
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    .line 2096
    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2097
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2098
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v14

    :cond_26
    const/4 v6, 0x0

    .line 1904
    invoke-static {v10, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 1907
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 1908
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 1909
    invoke-virtual {v2, v0, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1910
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1913
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 1914
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 1915
    invoke-static {v11, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 1916
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1919
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 1920
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_27

    .line 1922
    invoke-static {v11, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43b40000    # 360.0f

    const/16 v23, 0x1

    const/high16 v21, 0x43870000    # 270.0f

    move-object/from16 v17, v2

    move/from16 v19, v3

    move/from16 v20, v5

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_1a

    .line 1924
    :cond_27
    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 1926
    :goto_1a
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 1930
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 1931
    invoke-static {v7, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 1932
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1935
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 1936
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_28

    .line 1938
    invoke-static {v11, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x42b40000    # 90.0f

    const/16 v23, 0x1

    const/16 v21, 0x0

    move-object/from16 v17, v2

    move/from16 v19, v3

    move/from16 v20, v5

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_1b

    .line 1940
    :cond_28
    invoke-static {v7, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 1942
    :goto_1b
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1945
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 1946
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 1947
    invoke-static {v10, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 1948
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1951
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 1952
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_29

    .line 1954
    invoke-static {v10, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43340000    # 180.0f

    const/16 v23, 0x1

    const/high16 v21, 0x42b40000    # 90.0f

    move-object/from16 v17, v2

    move/from16 v19, v3

    move/from16 v20, v5

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_1c

    .line 1956
    :cond_29
    invoke-static {v4, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 1958
    :goto_1c
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1961
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    const/4 v6, 0x0

    .line 1962
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 1963
    invoke-static {v4, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 1964
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1967
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 1968
    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    if-eqz v16, :cond_2a

    .line 1970
    invoke-static {v10, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v18

    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/high16 v22, 0x43870000    # 270.0f

    const/16 v23, 0x1

    const/high16 v21, 0x43340000    # 180.0f

    move/from16 v20, v1

    move-object/from16 v17, v2

    move/from16 v19, v3

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    move-object/from16 v1, v17

    goto :goto_1d

    :cond_2a
    move-object v1, v2

    .line 1972
    invoke-static {v4, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 1974
    :goto_1d
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    const/4 v6, 0x0

    .line 1978
    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 1979
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 1980
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1983
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    .line 1984
    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 1985
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 1986
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v14
.end method

.method private extraDataNameForBaseTailPositionX()Ljava/lang/String;
    .locals 3

    .line 1759
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForBaseTailPositionX:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1760
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1761
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1763
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ex!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForBaseTailPositionX:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1765
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1769
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1770
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForBaseTailPositionX:Ljava/lang/String;

    .line 1773
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForBaseTailPositionX:Ljava/lang/String;

    return-object v0
.end method

.method private extraDataNameForBaseTailPositionY()Ljava/lang/String;
    .locals 3

    .line 1777
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForBaseTailPositionY:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1778
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1779
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1781
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ey!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForBaseTailPositionY:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1783
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1787
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1788
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForBaseTailPositionY:Ljava/lang/String;

    .line 1791
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForBaseTailPositionY:Ljava/lang/String;

    return-object v0
.end method

.method private extraDataNameForNormalizedCornerHeight()Ljava/lang/String;
    .locals 3

    .line 1831
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedCornerHeight:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1832
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1833
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1835
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Eh!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedCornerHeight:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1837
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1841
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1842
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedCornerHeight:Ljava/lang/String;

    .line 1845
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedCornerHeight:Ljava/lang/String;

    return-object v0
.end method

.method private extraDataNameForNormalizedCornerWidth()Ljava/lang/String;
    .locals 3

    .line 1813
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedCornerWidth:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1814
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1815
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1817
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ew!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedCornerWidth:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1819
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1823
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1824
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedCornerWidth:Ljava/lang/String;

    .line 1827
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedCornerWidth:Ljava/lang/String;

    return-object v0
.end method

.method private extraDataNameForNormalizedTailWidth()Ljava/lang/String;
    .locals 3

    .line 1795
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedTailWidth:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1796
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1797
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1799
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ed!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedTailWidth:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1801
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1805
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1806
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedTailWidth:Ljava/lang/String;

    .line 1809
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedTailWidth:Ljava/lang/String;

    return-object v0
.end method

.method private static getTailAreaForTailPosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;
    .locals 8

    .line 2501
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 2502
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 2503
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 2504
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    .line 2505
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->maxCornerSizeForSegmentSize(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object p1

    .line 2506
    iget v4, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, p1, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 2507
    iget v4, p1, Lcom/metamoji/cm/SizeF;->height:F

    iput v4, p1, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_0

    .line 2509
    :cond_0
    iget v4, p1, Lcom/metamoji/cm/SizeF;->width:F

    iput v4, p1, Lcom/metamoji/cm/SizeF;->height:F

    .line 2511
    :goto_0
    iget v4, p1, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v4, v0

    .line 2512
    iget v5, p1, Lcom/metamoji/cm/SizeF;->width:F

    sub-float v5, v1, v5

    .line 2513
    iget v6, p1, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v6, v2

    .line 2514
    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    sub-float p1, v3, p1

    .line 2515
    iget v7, p0, Landroid/graphics/PointF;->x:F

    cmpg-float v7, v7, v0

    if-gez v7, :cond_5

    .line 2516
    iget v1, p0, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 2517
    invoke-static {v0, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 2518
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1

    .line 2519
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->LEFT_SIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    return-object p0

    .line 2521
    :cond_1
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->UPPER_SIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    return-object p0

    .line 2523
    :cond_2
    iget v1, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    .line 2524
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 2525
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_3

    .line 2526
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->LEFT_SIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    return-object p0

    .line 2528
    :cond_3
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->LOWER_SIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    return-object p0

    .line 2531
    :cond_4
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->LEFT_SIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    return-object p0

    .line 2533
    :cond_5
    iget v0, p0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 2534
    iget v0, p0, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    .line 2535
    invoke-static {v1, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 2536
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_6

    .line 2537
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->RIGHT_SIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    return-object p0

    .line 2539
    :cond_6
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->UPPER_SIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    return-object p0

    .line 2541
    :cond_7
    iget v0, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    .line 2542
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 2543
    invoke-static {v5, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_8

    .line 2544
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->RIGHT_SIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    return-object p0

    .line 2546
    :cond_8
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->LOWER_SIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    return-object p0

    .line 2549
    :cond_9
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->RIGHT_SIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    return-object p0

    .line 2552
    :cond_a
    iget p1, p0, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v2

    if-gez p1, :cond_b

    .line 2553
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->UPPER_SIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    return-object p0

    .line 2554
    :cond_b
    iget p0, p0, Landroid/graphics/PointF;->y:F

    cmpl-float p0, p0, v3

    if-lez p0, :cond_c

    .line 2555
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->LOWER_SIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    return-object p0

    .line 2557
    :cond_c
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->INSIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    return-object p0
.end method

.method private static handleTypeFromHandleIndex(IZZZ)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    .line 2591
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->TAIL_POSITION:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    return-object p0

    :cond_1
    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    .line 2581
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->TAIL_WIDTH:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    return-object p0

    :cond_2
    if-eqz p1, :cond_7

    .line 2583
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->TAIL_POSITION:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    return-object p0

    :cond_3
    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    .line 2586
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->TAIL_POSITION:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    return-object p0

    :cond_4
    if-eqz p3, :cond_5

    .line 2571
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->CORNER_RADIUS:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    return-object p0

    :cond_5
    if-eqz p2, :cond_6

    .line 2573
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->TAIL_WIDTH:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    return-object p0

    :cond_6
    if-eqz p1, :cond_7

    .line 2575
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->TAIL_POSITION:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    return-object p0

    .line 2597
    :cond_7
    :goto_0
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->NONE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    return-object p0
.end method

.method private static maxCornerSizeForSegmentSize(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;
    .locals 2

    .line 2496
    iget v0, p0, Lcom/metamoji/cm/SizeF;->width:F

    const v1, 0x3e2e147b    # 0.17f

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr p0, v1

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    return-object p0
.end method

.method private static maxTailWidthForSegmentSize(Lcom/metamoji/cm/SizeF;Z)F
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_0

    .line 2491
    iget p0, p0, Lcom/metamoji/cm/SizeF;->width:F

    :goto_0
    mul-float/2addr p0, v0

    return p0

    :cond_0
    iget p0, p0, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_0
.end method

.method public static newEmptyRectangleBalloonShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 1177
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->newEmptySegmentalShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1179
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->RECTANGLE_BALLOON_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1181
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static newRectangleBalloonShapeElementWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;FFZZZZLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;
    .locals 3

    .line 1204
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFiniteRect(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 1205
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1208
    :cond_0
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/metamoji/cm/RectEx;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_2

    .line 1212
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x2

    .line 1213
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1216
    :cond_2
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-eqz v0, :cond_8

    cmpg-float v0, p2, v2

    if-gez v0, :cond_3

    goto :goto_1

    .line 1220
    :cond_3
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-eqz v0, :cond_7

    cmpg-float v0, p3, v2

    if-gez v0, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p9, :cond_5

    .line 1226
    invoke-static {p9}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->newEmptyRectangleBalloonShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 1229
    :cond_5
    new-instance p9, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;

    invoke-direct {p9}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;-><init>()V

    invoke-virtual {p9, v1, p10, p11}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p9

    check-cast p9, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;

    .line 1232
    invoke-virtual {p9, p8}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    move p8, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    move-object p0, p9

    .line 1235
    invoke-direct/range {p0 .. p8}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->constructWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;FFZZZZ)V

    if-eqz p11, :cond_6

    .line 1246
    invoke-virtual {p0, p11}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    :cond_6
    return-object p0

    :cond_7
    :goto_0
    const/4 p0, 0x4

    .line 1221
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_8
    :goto_1
    const/4 p0, 0x3

    .line 1217
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_9
    :goto_2
    const/4 p0, 0x1

    .line 1209
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1
.end method

.method private static saveCornerHeightToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 2828
    const-string v1, "h"

    if-eqz v0, :cond_1

    .line 2829
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2831
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveCornerRadiusHandleEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2861
    :cond_0
    const-string v0, "c"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2862
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2864
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveCornerWidthToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 2817
    const-string/jumbo v1, "w"

    if-eqz v0, :cond_1

    .line 2818
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2820
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreservePropertiesToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2872
    :cond_0
    const-string v0, "r"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2873
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2875
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveTailPositionHandleEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2839
    :cond_0
    const-string v0, "o"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2840
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2842
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveTailPositionXToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 2784
    const-string/jumbo v1, "x"

    if-eqz v0, :cond_1

    .line 2785
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2787
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveTailPositionYToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 2795
    const-string/jumbo v1, "y"

    if-eqz v0, :cond_1

    .line 2796
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2798
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveTailWidthHandleEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2850
    :cond_0
    const-string v0, "i"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2851
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2853
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveTailWidthToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 2806
    const-string v1, "d"

    if-eqz v0, :cond_1

    .line 2807
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2809
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static tailPositionFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Landroid/graphics/Matrix;",
            ")",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 2745
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero()Landroid/graphics/PointF;

    move-result-object v0

    .line 2746
    const-string/jumbo v1, "x"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2748
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2750
    :cond_0
    const-string/jumbo v1, "y"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2752
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    iput p0, v0, Landroid/graphics/PointF;->y:F

    .line 2754
    :cond_1
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private static tailWidthFromVariation(Ljava/util/Map;F)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;F)F"
        }
    .end annotation

    .line 2759
    const-string v0, "d"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2761
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    mul-float/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private tailWidthHandlePoint()Landroid/graphics/PointF;
    .locals 3

    .line 1340
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1348
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1351
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 1346
    :cond_0
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private updateCornerSize(Lcom/metamoji/cm/SizeF;)V
    .locals 2

    .line 1399
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget v1, p1, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v1, p1, Lcom/metamoji/cm/SizeF;->width:F

    iput v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 1401
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1402
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->saveCornerWidthToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    iget v1, p1, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1406
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    iput p1, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 1407
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1408
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->saveCornerHeightToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_1
    return-void
.end method

.method private updateTailPosition(Landroid/graphics/PointF;)V
    .locals 2

    .line 1375
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 1377
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1378
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->saveTailPositionXToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1382
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 1383
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1384
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->saveTailPositionYToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_1
    return-void
.end method

.method private updateTailWidth(F)V
    .locals 1

    .line 1390
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1391
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    .line 1392
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1393
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->saveTailWidthToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_0
    return-void
.end method

.method private updateTransformsWidthSegmentBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 0

    .line 1415
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->baseBoundsToSegmentBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_baseBoundsToSegmentBounds:Landroid/graphics/Matrix;

    .line 1416
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformInvert(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_segmentBoundsToBaseBounds:Landroid/graphics/Matrix;

    return-void
.end method

.method private static variationFromTailPosition(Landroid/graphics/PointF;FLcom/metamoji/cm/SizeF;Landroid/graphics/Matrix;F)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "F",
            "Lcom/metamoji/cm/SizeF;",
            "Landroid/graphics/Matrix;",
            "F)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 2719
    invoke-static {p0, p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p0

    div-float/2addr p1, p4

    .line 2721
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object p2

    .line 2722
    iget p3, p2, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr p3, p4

    iput p3, p2, Lcom/metamoji/cm/SizeF;->width:F

    .line 2723
    iget p3, p2, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr p3, p4

    iput p3, p2, Lcom/metamoji/cm/SizeF;->height:F

    .line 2724
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 2725
    iget p4, p0, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpl-float p4, p4, v0

    if-eqz p4, :cond_0

    .line 2726
    iget p4, p0, Landroid/graphics/PointF;->x:F

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    const-string/jumbo v1, "x"

    invoke-virtual {p3, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2728
    :cond_0
    iget p4, p0, Landroid/graphics/PointF;->y:F

    cmpl-float p4, p4, v0

    if-eqz p4, :cond_1

    .line 2729
    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo p4, "y"

    invoke-virtual {p3, p4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    cmpl-float p0, p1, v0

    if-eqz p0, :cond_2

    .line 2732
    const-string p0, "d"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2734
    :cond_2
    iget p0, p2, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_3

    .line 2735
    iget p0, p2, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo p1, "w"

    invoke-virtual {p3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2737
    :cond_3
    iget p0, p2, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_4

    .line 2738
    iget p0, p2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p1, "h"

    invoke-virtual {p3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object p3
.end method


# virtual methods
.method protected applyExtraHandlePoint_(Landroid/graphics/PointF;I)Z
    .locals 9

    .line 994
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 1000
    iget v6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    .line 1001
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v5

    move-object v2, p0

    move v4, p2

    move-object v7, v5

    move-object v5, v3

    move-object v3, p1

    .line 1002
    invoke-direct/range {v2 .. v7}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->checkPropertiesForHandlePoint(Landroid/graphics/PointF;ILandroid/graphics/PointF;FLcom/metamoji/cm/SizeF;)F

    move-result v4

    move-object v3, v5

    move-object v5, v7

    .line 1009
    iget-object p1, v2, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    const/4 p2, 0x5

    invoke-static {v3, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v2, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    .line 1010
    invoke-static {v4, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v2, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    .line 1011
    invoke-static {v5, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 1012
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->applyTailPosition(Landroid/graphics/PointF;FLcom/metamoji/cm/SizeF;Lcom/metamoji/cm/RectEx;ZZ)V

    const/4 p1, 0x1

    return p1
.end method

.method protected applySegmentBounds_(Lcom/metamoji/cm/RectEx;F)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 321
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 326
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v7

    .line 327
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->extraDataAcceptability()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    .line 328
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result v2

    div-float/2addr v2, v1

    .line 329
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_segmentBoundsToBaseBounds:Landroid/graphics/Matrix;

    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v4

    .line 330
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForBaseTailPositionX()Ljava/lang/String;

    move-result-object v5

    iget v6, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v7, v5, v6, v3, v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 331
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForBaseTailPositionY()Ljava/lang/String;

    move-result-object v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v7, v5, v4, v3, v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 332
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForNormalizedTailWidth()Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    div-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5, v3, v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 333
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForNormalizedCornerWidth()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5, v3, v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 334
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForNormalizedCornerHeight()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v7, v4, v2, v3, v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 338
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->canRegisterReplacementsOfModel()Z

    move-result v2

    const-string v9, "h"

    const-string/jumbo v10, "w"

    const-string v11, "d"

    const-string/jumbo v12, "y"

    const-string/jumbo v13, "x"

    if-eqz v2, :cond_2

    .line 339
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v13, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 340
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v12, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 341
    iget v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v11, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 342
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v10, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 343
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v9, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 347
    :cond_2
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForBaseTailPositionX()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    const-class v4, Ljava/lang/Number;

    invoke-static {v2, v4}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 348
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForBaseTailPositionY()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4, v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Ljava/lang/Number;

    invoke-static {v4, v5}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 349
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForNormalizedTailWidth()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5, v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Ljava/lang/Number;

    invoke-static {v5, v6}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    .line 350
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForNormalizedCornerWidth()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v6

    const-class v14, Ljava/lang/Number;

    invoke-static {v6, v14}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    .line 351
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForNormalizedCornerHeight()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14, v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v14

    const-class v15, Ljava/lang/Number;

    invoke-static {v14, v15}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    if-nez v14, :cond_3

    goto :goto_0

    .line 446
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    .line 447
    invoke-static/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->baseBoundsToSegmentBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 446
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    .line 448
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result v3

    mul-float/2addr v2, v3

    .line 449
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    move-object/from16 v4, p1

    goto/16 :goto_3

    .line 359
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->editContext()Lcom/metamoji/un/draw2/module/element/DrEditContext;

    move-result-object v2

    if-nez v2, :cond_5

    .line 362
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editContextOfInteraction()Lcom/metamoji/un/draw2/module/element/DrEditContext;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 364
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->angleInDegrees()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationForRectInDegrees(Lcom/metamoji/cm/RectEx;F)V

    .line 369
    :cond_5
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v3

    move-object v3, v4

    .line 372
    invoke-static {v5, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v4

    if-eqz v2, :cond_7

    .line 380
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->isReversingX()Z

    move-result v5

    .line 381
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->isReversingY()Z

    move-result v6

    move-object/from16 v1, p1

    .line 375
    invoke-direct/range {v0 .. v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->checkPropertyVariationsWithSegmentBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/DrEditContext;Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;ZZ)F

    move-result v2

    move-object v14, v4

    move-object v4, v1

    :cond_6
    move v1, v2

    goto/16 :goto_2

    :cond_7
    move-object v14, v4

    move-object/from16 v4, p1

    cmpl-float v2, v1, v5

    const/4 v15, 0x5

    if-eqz v2, :cond_8

    .line 384
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    iget v5, v4, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v2, v5

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/cm/RectEx;->height:F

    iget v8, v4, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v5, v8

    invoke-static {v2, v5, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 386
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    sub-float/2addr v2, v5

    mul-float/2addr v2, v1

    iput v2, v3, Landroid/graphics/PointF;->x:F

    .line 387
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    sub-float/2addr v2, v5

    mul-float/2addr v2, v1

    iput v2, v3, Landroid/graphics/PointF;->y:F

    .line 393
    iput v1, v14, Lcom/metamoji/cm/SizeF;->width:F

    .line 394
    iput v1, v14, Lcom/metamoji/cm/SizeF;->height:F

    goto/16 :goto_2

    .line 397
    :cond_8
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    invoke-static {v1, v2, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 398
    iget-boolean v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_preserveProperties:Z

    if-eqz v1, :cond_a

    .line 400
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->isReversingX()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->isReversingY()Z

    move-result v1

    if-nez v1, :cond_9

    .line 401
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v3, Landroid/graphics/PointF;->x:F

    .line 402
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v3, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1

    .line 405
    :cond_9
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    .line 407
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->angleInRadians()F

    move-result v2

    .line 408
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->isReversingX()Z

    move-result v5

    .line 409
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->isReversingY()Z

    move-result v6

    .line 406
    invoke-static {v4, v2, v5, v6}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->transformForSegmentBounds(Lcom/metamoji/cm/RectEx;FZZ)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformInvert(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 405
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    .line 412
    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    sub-float/2addr v2, v5

    iput v2, v3, Landroid/graphics/PointF;->x:F

    .line 413
    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v3, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 417
    :cond_a
    iget v1, v4, Lcom/metamoji/cm/RectEx;->width:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v1, v2

    .line 418
    iget v2, v4, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v2, v5

    .line 419
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v8

    sub-float/2addr v5, v8

    mul-float/2addr v5, v1

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 420
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v8

    sub-float/2addr v5, v8

    mul-float/2addr v5, v2

    iput v5, v3, Landroid/graphics/PointF;->y:F

    .line 423
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->ordinal()I

    move-result v5

    if-eq v5, v6, :cond_6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    const/4 v2, 0x3

    if-eq v5, v2, :cond_c

    const/4 v2, 0x4

    if-eq v5, v2, :cond_c

    :cond_b
    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 441
    :cond_c
    :goto_2
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    iget v5, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v5

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v3

    invoke-static {v2, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    .line 442
    iget v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    mul-float/2addr v1, v3

    .line 443
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, v14, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr v3, v5

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->height:F

    iget v6, v14, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v5, v6

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    move-object/from16 v16, v2

    move v2, v1

    move-object/from16 v1, v16

    :goto_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 453
    invoke-direct/range {v0 .. v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->applyTailPosition(Landroid/graphics/PointF;FLcom/metamoji/cm/SizeF;Lcom/metamoji/cm/RectEx;ZZ)V

    .line 456
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->updateTransformsWidthSegmentBounds(Lcom/metamoji/cm/RectEx;)V

    .line 459
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->extraDataAcceptability()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 460
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_segmentBoundsToBaseBounds:Landroid/graphics/Matrix;

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    .line 461
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForBaseTailPositionX()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v3, v4, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 462
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForBaseTailPositionY()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v7, v2, v1, v4, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 463
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForNormalizedTailWidth()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v7, v1, v2, v4, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 464
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForNormalizedCornerWidth()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v7, v1, v2, v4, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 465
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->extraDataNameForNormalizedCornerHeight()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v7, v1, v2, v4, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    goto :goto_4

    :cond_d
    const/4 v4, 0x0

    .line 469
    :goto_4
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->canRegisterReplacementsOfModel()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 470
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v13, v1, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 471
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v12, v1, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 472
    iget v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v11, v1, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 473
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v10, v1, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 474
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v9, v1, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_e
    :goto_5
    return-void
.end method

.method protected applySegments_()V
    .locals 1

    .line 487
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->adoptPropertiesFromSegments()V

    .line 495
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->updateTransformsWidthSegmentBounds(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method protected cancelEvaluationOfExtraHandleAtIndex_(I)V
    .locals 0

    .line 971
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->cancelEvaluationOfExtraHandleAtIndex_(I)V

    return-void
.end method

.method protected checkMovementOfExtraHandleAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 0

    .line 859
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x5

    .line 862
    invoke-static {p2, p3, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected containsPoint_(Landroid/graphics/PointF;)Z
    .locals 3

    .line 1141
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->INSIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkInnerPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method public cornerRadiusHandleEnablement()Z
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    return v0
.end method

.method protected destroy_()V
    .locals 1

    const/4 v0, 0x0

    .line 1157
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForBaseTailPositionX:Ljava/lang/String;

    .line 1158
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForBaseTailPositionY:Ljava/lang/String;

    .line 1159
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedTailWidth:Ljava/lang/String;

    .line 1160
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedCornerWidth:Ljava/lang/String;

    .line 1161
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedCornerHeight:Ljava/lang/String;

    return-void
.end method

.method protected editExtraHandleWithVariationAlways_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected editOriginally_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected evaluateExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 9

    .line 873
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 878
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    invoke-static {p2, v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->handleTypeFromHandleIndex(IZZZ)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_11

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_1

    .line 956
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 957
    invoke-static {v4, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 939
    :cond_1
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 940
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    invoke-static {v1, v2, p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->checkCornerRadiusHandlePointRangeWithSegmentBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/SizeF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 946
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 947
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 948
    :cond_2
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 949
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 951
    :cond_3
    :goto_0
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p1, Landroid/graphics/PointF;->y:F

    return-object p1

    .line 889
    :cond_4
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 890
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v6

    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    invoke-static {v6, v7, v8, p2, v5}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->checkTailWidthHandlePointRangeWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 897
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->ordinal()I

    move-result v6

    if-eq v6, v0, :cond_e

    if-eq v6, v3, :cond_b

    if-eq v6, v2, :cond_8

    const/4 v0, 0x4

    if-eq v6, v0, :cond_5

    const/4 p1, 0x0

    .line 931
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 932
    invoke-static {v4, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 923
    :cond_5
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 924
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    goto :goto_1

    .line 925
    :cond_6
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 926
    iget v0, v5, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 928
    :cond_7
    :goto_1
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p1, Landroid/graphics/PointF;->y:F

    return-object p1

    .line 915
    :cond_8
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, v5, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 916
    iget v0, v5, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 917
    :cond_9
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 918
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 920
    :cond_a
    :goto_2
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p1, Landroid/graphics/PointF;->y:F

    return-object p1

    .line 907
    :cond_b
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 908
    iget v0, v5, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 909
    :cond_c
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    .line 910
    iget v0, p2, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 912
    :cond_d
    :goto_3
    iget p2, p2, Landroid/graphics/PointF;->x:F

    iput p2, p1, Landroid/graphics/PointF;->x:F

    return-object p1

    .line 899
    :cond_e
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    .line 900
    iget v0, p2, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_4

    .line 901
    :cond_f
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    .line 902
    iget v0, v5, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 904
    :cond_10
    :goto_4
    iget p2, p2, Landroid/graphics/PointF;->x:F

    iput p2, p1, Landroid/graphics/PointF;->x:F

    :cond_11
    :goto_5
    return-object p1
.end method

.method protected extraHandleCount_()I
    .locals 2

    .line 506
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 510
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    .line 513
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 516
    :cond_1
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method protected extraHandleEnablementAtIndex_(I)Z
    .locals 4

    .line 664
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 669
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    invoke-static {p1, v0, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->handleTypeFromHandleIndex(IZZZ)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    .line 681
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 679
    :cond_1
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    return p1

    .line 677
    :cond_2
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsPoint(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v1

    .line 674
    :cond_4
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    return p1
.end method

.method protected extraHandlePointAtIndex_(I)Landroid/graphics/PointF;
    .locals 4

    .line 530
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    .line 531
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 535
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    invoke-static {p1, v0, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->handleTypeFromHandleIndex(IZZZ)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 543
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 544
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 541
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->cornerRadiusHandlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 539
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->tailWidthHandlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 537
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    return-object p1
.end method

.method protected extraHandlePointAtIndex_(ILjava/util/Map;)Landroid/graphics/PointF;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 556
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    .line 557
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 561
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    invoke-static {p1, v0, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->handleTypeFromHandleIndex(IZZZ)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq p1, v5, :cond_4

    if-eq p1, v3, :cond_1

    .line 651
    invoke-static {v5, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 652
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 632
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result p1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->cornerSizeFromVariation(Ljava/util/Map;F)Lcom/metamoji/cm/SizeF;

    move-result-object p1

    .line 635
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    invoke-static {p1, p2, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 636
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->cornerRadiusHandlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 640
    :cond_2
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 641
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1, p1, p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->checkCornerRadiusHandlePointRangeWithSegmentBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/SizeF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 647
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 648
    iget v2, p1, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_3

    iget p2, v0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr p2, p1

    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2

    .line 571
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result p1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->tailWidthFromVariation(Ljava/util/Map;F)F

    move-result p1

    .line 574
    iget p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    invoke-static {p1, p2, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 575
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->tailWidthHandlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 579
    :cond_5
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    sget-object v2, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->INSIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    if-ne p2, v2, :cond_6

    const/4 p1, 0x0

    .line 580
    invoke-static {p1, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 581
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->tailWidthHandlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_6
    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    .line 588
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 589
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v7

    iget-object v8, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget-object v9, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    invoke-static {v7, v8, v9, v2, v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->checkTailWidthHandlePointRangeWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 596
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->ordinal()I

    move-result v7

    if-eq v7, v0, :cond_d

    if-eq v7, v5, :cond_b

    if-eq v7, v3, :cond_9

    const/4 v3, 0x4

    if-eq v7, v3, :cond_7

    .line 626
    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 627
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 619
    :cond_7
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    cmpl-float p2, p1, v0

    if-lez p2, :cond_8

    move p1, v0

    .line 623
    :cond_8
    iget p2, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 612
    :cond_9
    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v1, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    cmpl-float p2, p1, v0

    if-lez p2, :cond_a

    move p1, v0

    .line 616
    :cond_a
    iget p2, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 605
    :cond_b
    iget v0, v2, Landroid/graphics/PointF;->y:F

    iget v1, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    cmpl-float p2, p1, v0

    if-lez p2, :cond_c

    move p1, v0

    .line 609
    :cond_c
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result p2

    iget v0, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p1

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 598
    :cond_d
    iget v0, v6, Landroid/graphics/PointF;->y:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    cmpl-float p2, p1, v0

    if-lez p2, :cond_e

    move p1, v0

    .line 602
    :cond_e
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result p2

    iget v0, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 567
    :cond_f
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_baseBoundsToSegmentBounds:Landroid/graphics/Matrix;

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->tailPositionFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(I)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 694
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 699
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    .line 701
    sget-object v2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeZero:Lcom/metamoji/cm/SizeF;

    .line 704
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    iget-boolean v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    invoke-static {p1, v3, v4, v5}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->handleTypeFromHandleIndex(IZZZ)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->ordinal()I

    move-result p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 p1, 0x0

    .line 740
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 733
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    .line 734
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 735
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    .line 736
    iget v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    goto :goto_0

    .line 726
    :cond_2
    iget v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    .line 727
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 728
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    .line 729
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    goto :goto_0

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    .line 710
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 721
    iget v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    .line 722
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    .line 745
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_segmentBoundsToBaseBounds:Landroid/graphics/Matrix;

    .line 749
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result v1

    .line 745
    invoke-static {v0, v4, v2, p1, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->variationFromTailPosition(Landroid/graphics/PointF;FLcom/metamoji/cm/SizeF;Landroid/graphics/Matrix;F)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(ILandroid/graphics/PointF;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 760
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 766
    iget v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    .line 767
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v6

    move-object v1, p0

    move v3, p1

    move-object v2, p2

    .line 768
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->checkPropertiesForHandlePoint(Landroid/graphics/PointF;ILandroid/graphics/PointF;FLcom/metamoji/cm/SizeF;)F

    move-result p1

    .line 775
    iget-object p2, v1, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_segmentBoundsToBaseBounds:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result v0

    invoke-static {v4, p1, v6, p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->variationFromTailPosition(Landroid/graphics/PointF;FLcom/metamoji/cm/SizeF;Landroid/graphics/Matrix;F)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected highlightPathWithExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/Path;
    .locals 7

    .line 1094
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 1100
    iget v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    .line 1101
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 1102
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->checkPropertiesForHandlePoint(Landroid/graphics/PointF;ILandroid/graphics/PointF;FLcom/metamoji/cm/SizeF;)F

    move-result p1

    .line 1109
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    .line 1112
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->getTailAreaForTailPosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    move-result-object v0

    .line 1109
    invoke-static {p2, v4, p1, v0, v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->createPathWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;Lcom/metamoji/cm/SizeF;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method protected highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;
    .locals 7

    .line 1028
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1033
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->highlightContext()Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->editContext()Lcom/metamoji/un/draw2/module/element/DrEditContext;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1036
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->getTailAreaForTailPosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->createPathWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;Lcom/metamoji/cm/SizeF;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1

    .line 1040
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->isReversingX()Z

    move-result p2

    .line 1041
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->isReversingY()Z

    move-result v0

    .line 1042
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingX()Z

    move-result v1

    if-eqz v1, :cond_2

    xor-int/lit8 p2, p2, 0x1

    :cond_2
    move v5, p2

    .line 1045
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingY()Z

    move-result p2

    if-eqz p2, :cond_3

    xor-int/lit8 v0, v0, 0x1

    :cond_3
    move v6, v0

    .line 1050
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 1052
    new-instance v4, Lcom/metamoji/cm/SizeF;

    invoke-direct {v4}, Lcom/metamoji/cm/SizeF;-><init>()V

    move-object v0, p0

    move-object v1, p1

    .line 1053
    invoke-direct/range {v0 .. v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->checkPropertyVariationsWithSegmentBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/DrEditContext;Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;ZZ)F

    move-result p1

    .line 1062
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p2

    iget v2, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, v2

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    invoke-static {p2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p2

    .line 1063
    iget v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    mul-float/2addr v2, p1

    .line 1064
    iget-object p1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p1, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget v3, v4, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr p1, v3

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->height:F

    iget v4, v4, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v3, v4

    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object p1

    .line 1070
    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->getTailAreaForTailPosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    move-result-object v3

    .line 1067
    invoke-static {v1, p2, v2, v3, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->createPathWithSegmentBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;Lcom/metamoji/cm/SizeF;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method protected highlightRectWithExtraHandlePoint_(Landroid/graphics/PointF;I)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 1083
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected initWithTranslate_(FFFFZZF)Z
    .locals 0

    .line 224
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero()Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 225
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    .line 226
    sget-object p1, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;->INSIDE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    .line 227
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeZero()Lcom/metamoji/cm/SizeF;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    .line 229
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    .line 230
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    .line 231
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_preserveProperties:Z

    .line 232
    sget-object p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_baseBoundsToSegmentBounds:Landroid/graphics/Matrix;

    .line 233
    sget-object p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_segmentBoundsToBaseBounds:Landroid/graphics/Matrix;

    .line 236
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget p3, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p4

    const-string/jumbo p5, "x"

    invoke-static {p5, p3, p4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p3

    iput p3, p1, Landroid/graphics/PointF;->x:F

    .line 244
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget p3, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p4

    const-string/jumbo p5, "y"

    invoke-static {p5, p3, p4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p3

    iput p3, p1, Landroid/graphics/PointF;->y:F

    .line 247
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    const-string p4, "d"

    invoke-static {p4, p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    .line 250
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p3, p1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p4

    const-string/jumbo p5, "w"

    invoke-static {p5, p3, p4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p3

    iput p3, p1, Lcom/metamoji/cm/SizeF;->width:F

    .line 251
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p3, p1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p4

    const-string p5, "h"

    invoke-static {p5, p3, p4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p3

    iput p3, p1, Lcom/metamoji/cm/SizeF;->height:F

    .line 254
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    const-string p4, "o"

    invoke-static {p4, p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    .line 257
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    const-string p4, "i"

    invoke-static {p4, p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    .line 260
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    const-string p4, "c"

    invoke-static {p4, p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    .line 263
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_preserveProperties:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    const-string p4, "r"

    invoke-static {p4, p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_preserveProperties:Z

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->getTailAreaForTailPosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailArea:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonTailArea;

    .line 270
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->updateTransformsWidthSegmentBounds(Lcom/metamoji/cm/RectEx;)V

    .line 273
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->adoptPropertiesFromSegments()V

    return p2
.end method

.method protected isAbleToFill_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public preserveProperties()Z
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 169
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_preserveProperties:Z

    return v0
.end method

.method protected replacementPath_()Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected setExtraHandleVariation_(Ljava/util/Map;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)V"
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    move-object v5, p0

    goto/16 :goto_3

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    .line 792
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    .line 793
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    .line 794
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    iget-boolean v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerRadiusHandleEnablement:Z

    invoke-static {p2, v3, v4, v5}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->handleTypeFromHandleIndex(IZZZ)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->ordinal()I

    move-result p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v4, :cond_3

    const/4 v5, 0x2

    if-eq p2, v5, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 p1, 0x0

    .line 820
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 813
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->cornerSizeFromVariation(Ljava/util/Map;F)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    .line 814
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 815
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_baseBoundsToSegmentBounds:Landroid/graphics/Matrix;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->tailPositionFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 816
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->tailWidthFromVariation(Ljava/util/Map;F)F

    move-result v1

    goto :goto_0

    .line 806
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->tailWidthFromVariation(Ljava/util/Map;F)F

    move-result v1

    .line 807
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 808
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_baseBoundsToSegmentBounds:Landroid/graphics/Matrix;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->tailPositionFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 809
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->cornerSizeFromVariation(Ljava/util/Map;F)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    goto :goto_0

    .line 799
    :cond_3
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_baseBoundsToSegmentBounds:Landroid/graphics/Matrix;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->tailPositionFromVariation(Ljava/util/Map;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 800
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 801
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->tailWidthFromVariation(Ljava/util/Map;F)F

    move-result v1

    .line 802
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->contentScale()F

    move-result p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->cornerSizeFromVariation(Ljava/util/Map;F)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    :cond_4
    :goto_0
    move-object v6, v0

    move v7, v1

    move-object v8, v2

    .line 825
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->canRegisterReplacementsOfModel()Z

    move-result p1

    const-string p2, "h"

    const-string/jumbo v0, "w"

    const-string v1, "d"

    const-string/jumbo v2, "y"

    const-string/jumbo v12, "x"

    if-eqz p1, :cond_5

    .line 826
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v12, p1, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 827
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 828
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 829
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p1, p1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 830
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p2, p1, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 834
    :cond_5
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    const/4 v4, 0x5

    invoke-static {v6, p1, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    .line 835
    invoke-static {v7, p1, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    .line 836
    invoke-static {v8, p1, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;I)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move-object v5, p0

    goto :goto_2

    .line 837
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->applyTailPosition(Landroid/graphics/PointF;FLcom/metamoji/cm/SizeF;Lcom/metamoji/cm/RectEx;ZZ)V

    .line 841
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->canRegisterReplacementsOfModel()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 842
    iget-object p1, v5, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v12, p1, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 843
    iget-object p1, v5, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 844
    iget p1, v5, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidth:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 845
    iget-object p1, v5, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p1, p1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 846
    iget-object p1, v5, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_cornerSize:Lcom/metamoji/cm/SizeF;

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p2, p1, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    .line 180
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 181
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ex!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForBaseTailPositionX:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ey!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForBaseTailPositionY:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ed!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedTailWidth:Ljava/lang/String;

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ew!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedCornerWidth:Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Eh!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedCornerHeight:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 191
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 194
    :cond_1
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForBaseTailPositionX:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForBaseTailPositionY:Ljava/lang/String;

    .line 196
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedTailWidth:Ljava/lang/String;

    .line 197
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedCornerWidth:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_extraDataNameForNormalizedCornerHeight:Ljava/lang/String;

    return-void
.end method

.method protected shapeType_()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
    .locals 1

    .line 285
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->RECTANGLE_BALLOON_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    return-object v0
.end method

.method public tailPositionHandleEnablement()Z
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    return v0
.end method

.method public tailWidthHandleEnablement()Z
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    return v0
.end method
