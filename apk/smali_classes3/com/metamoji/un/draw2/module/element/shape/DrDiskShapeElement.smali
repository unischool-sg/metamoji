.class public Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;
.super Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;
.source "DrDiskShapeElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;,
        Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;,
        Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;
    }
.end annotation


# static fields
.field private static final ANGLE_SNAP_BASE_MARGIN:F = 12.0f

.field private static final EXTRA_DATA_NAME_PREFIX_ANGLE_DIFFERENCE:Ljava/lang/String; = "Ed!"

.field private static final MODEL_PROPERTY_BASE_HORIZONTAL_DISK_WIDTH_RATIO:Ljava/lang/String; = "z"

.field private static final MODEL_PROPERTY_BASE_VERTICAL_DISK_WIDTH_RATIO:Ljava/lang/String; = "c"

.field private static final MODEL_PROPERTY_DISK_ANGLE_HANDLE_ENABLEMENT:Ljava/lang/String; = "a"

.field private static final MODEL_PROPERTY_DISK_WIDTH_HANDLE_ENABLEMENT:Ljava/lang/String; = "w"

.field private static final MODEL_PROPERTY_PRESERVED_HORIZONTAL_DISK_WIDTH:Ljava/lang/String; = "h"

.field private static final MODEL_PROPERTY_PRESERVED_VERTICAL_DISK_WIDTH:Ljava/lang/String; = "v"

.field private static final MODEL_PROPERTY_PRESERVE_DISK_ANGLE:Ljava/lang/String; = "n"

.field private static final MODEL_PROPERTY_RESTRAIN_ANGLE_HANDLE_MOVEMENT:Ljava/lang/String; = "r"

.field private static final VARIATION_KEY_BASE_HEIGHT:Ljava/lang/String; = "g"

.field private static final VARIATION_KEY_BASE_WIDTH:Ljava/lang/String; = "d"

.field private static final VARIATION_KEY_CONTENT_SCALE:Ljava/lang/String; = "o"

.field private static final VARIATION_KEY_END_DISK_ANGLE:Ljava/lang/String; = "e"

.field private static final VARIATION_KEY_HANDLE_TYPE:Ljava/lang/String; = "t"

.field private static final VARIATION_KEY_HORIZONTAL_DISK_WIDTH_RATIO:Ljava/lang/String; = "h"

.field private static final VARIATION_KEY_PRESERVED_HORIZONTAL_DISK_WIDTH:Ljava/lang/String; = "z"

.field private static final VARIATION_KEY_PRESERVED_VERTICAL_DISK_WIDTH:Ljava/lang/String; = "c"

.field private static final VARIATION_KEY_START_DISK_ANGLE:Ljava/lang/String; = "s"

.field private static final VARIATION_KEY_VERTICAL_DISK_WIDTH_RATIO:Ljava/lang/String; = "v"


# instance fields
.field private m_angleDifference:F

.field private m_baseHorizontalDiskWidth:F

.field private m_baseVerticalDiskWidth:F

.field private m_diskAngleHandleEnablement:Z

.field private m_diskWidthHandleEnablement:Z

.field private m_extraDataNameForAngleDifference:Ljava/lang/String;

.field private m_preserveDiskAngle:Z

.field private m_preserveDiskWidth:Z

.field private m_preservedHorizontalDiskWidth:F

.field private m_preservedVerticalDiskWidth:F

.field private m_restrainAngleHandleMovement:Z

.field private m_snapPoint_0:Landroid/graphics/PointF;

.field private m_snapPoint_180:Landroid/graphics/PointF;

.field private m_snapPoint_270:Landroid/graphics/PointF;

.field private m_snapPoint_90:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;-><init>()V

    return-void
.end method

.method private static adjustDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;)V
    .locals 4

    .line 2283
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v0

    .line 2284
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v1

    .line 2285
    iget v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    iget v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    cmpl-float v2, v0, v1

    const/high16 v3, 0x43b40000    # 360.0f

    if-nez v2, :cond_0

    add-float v1, v0, v3

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    add-float/2addr v1, v3

    .line 2292
    :cond_1
    :goto_0
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 2293
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    return-void
.end method

.method private static angleDifferenceBetweenStartDiskAnglePoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)F
    .locals 2

    .line 2348
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 2349
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p2

    .line 2350
    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p2

    .line 2351
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    .line 2350
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    return p0
.end method

.method private static angleDifferenceFromStartDiskAngle(FF)F
    .locals 4

    const/4 v0, 0x5

    .line 2331
    invoke-static {p0, p1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-eqz v1, :cond_0

    return v2

    :cond_0
    add-float v1, p0, v2

    .line 2333
    invoke-static {v1, p1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return v3

    :cond_1
    sub-float/2addr p0, p1

    add-float/2addr p0, v2

    .line 2337
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object p1

    const/4 v1, 0x0

    .line 2338
    aput p0, p1, v1

    .line 2339
    invoke-static {p1, v3, v2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    .line 2340
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2342
    :cond_2
    aget p0, p1, v1

    return p0
.end method

.method private applyAngleDifferenceWithStartDiskAngle(FF)V
    .locals 0

    .line 1636
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->angleDifferenceFromStartDiskAngle(FF)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_angleDifference:F

    return-void
.end method

.method private applyBaseHorizontalDiskWidth(FF)V
    .locals 2

    .line 1604
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseHorizontalDiskWidth:F

    .line 1605
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    .line 1607
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    iget p2, p1, Lcom/metamoji/cm/RectEx;->width:F

    .line 1611
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseHorizontalDiskWidth:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1612
    invoke-static {v0, p2, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthRatioFromDiskWidth(FFF)F

    move-result p2

    .line 1611
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->saveBaseHorizontalDiskWidthRatioToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_1
    return-void
.end method

.method private applyBaseVerticalDiskWidth(FF)V
    .locals 2

    .line 1620
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseVerticalDiskWidth:F

    .line 1621
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    .line 1623
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    iget p2, p1, Lcom/metamoji/cm/RectEx;->height:F

    .line 1627
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseVerticalDiskWidth:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1628
    invoke-static {v0, p2, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthRatioFromDiskWidth(FFF)F

    move-result p2

    .line 1627
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->saveBaseVerticalDiskWidthRatioToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_1
    return-void
.end method

.method private applyPreservedHorizontalDiskWidth(F)V
    .locals 1

    .line 1577
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    if-nez v0, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    .line 1580
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedHorizontalDiskWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1581
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedHorizontalDiskWidth:F

    .line 1582
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1583
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedHorizontalDiskWidth:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->savePreservedHorizontalDiskWidthToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_1
    return-void
.end method

.method private applyPreservedVerticalDiskWidth(F)V
    .locals 1

    .line 1589
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    if-nez v0, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    .line 1592
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedVerticalDiskWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1593
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedVerticalDiskWidth:F

    .line 1594
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1595
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedVerticalDiskWidth:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->savePreservedVerticalDiskWidthToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_1
    return-void
.end method

.method private applyStartDiskAngle(FFFFLcom/metamoji/cm/RectEx;ZZ)V
    .locals 6

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v0, p5

    .line 1542
    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->createSegmentsWithBaseBounds(Lcom/metamoji/cm/RectEx;FFFFLcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1548
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result p3

    const/4 p4, 0x0

    if-eq p2, p3, :cond_0

    const/4 p2, 0x0

    .line 1549
    invoke-static {p4, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1550
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1551
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->destroy()V

    goto :goto_0

    .line 1557
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p4, p2, :cond_1

    .line 1558
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1559
    invoke-virtual {p0, p4}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->copyToSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    .line 1560
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->destroy()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    if-eqz p6, :cond_2

    .line 1565
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->updateSegments()V

    :cond_2
    if-eqz p7, :cond_3

    .line 1570
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->updateExtraHandles()V

    :cond_3
    return-void
.end method

.method private static baseHeightFromVariation(Ljava/util/Map;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)F"
        }
    .end annotation

    .line 2475
    const-string v0, "g"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2477
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method private static baseWidthFromVariation(Ljava/util/Map;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)F"
        }
    .end annotation

    .line 2466
    const-string v0, "d"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2468
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method private centerPoint()Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x1

    .line 1456
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 1457
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private static checkAnglesOfStartDiskAnglePoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;)V
    .locals 4

    .line 2302
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    .line 2303
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 2304
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 2305
    iget v0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 2306
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 2307
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/PointF;->y:F

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 2310
    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p2

    const/4 v1, 0x6

    .line 2311
    invoke-static {p2, v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v2

    const/high16 v3, 0x43b40000    # 360.0f

    if-eqz v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    cmpg-float v2, p2, v0

    if-gez v2, :cond_1

    add-float/2addr p2, v3

    .line 2316
    :cond_1
    :goto_0
    iput p2, p3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 2319
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    .line 2320
    invoke-static {p0, v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    cmpg-float p1, p0, v0

    if-gez p1, :cond_3

    add-float v0, p0, v3

    goto :goto_1

    :cond_3
    move v0, p0

    .line 2325
    :goto_1
    iget p0, p3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    add-float/2addr p0, v0

    iput p0, p3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    return-void
.end method

.method private checkDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/cm/RectEx;)V
    .locals 7

    .line 1498
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->centerPoint()Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x3

    .line 1501
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    .line 1502
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    .line 1503
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v0

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 1506
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1507
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    .line 1508
    iget v4, v3, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    iget v4, p2, Lcom/metamoji/cm/RectEx;->width:F

    iget v6, v3, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 1509
    :goto_0
    iget v6, v3, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_1

    iget p2, p2, Lcom/metamoji/cm/RectEx;->height:F

    iget v3, v3, Lcom/metamoji/cm/RectEx;->height:F

    div-float v5, p2, v3

    .line 1510
    :cond_1
    iget p2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, v4

    iput p2, v2, Landroid/graphics/PointF;->x:F

    .line 1511
    iget p2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, v5

    iput p2, v2, Landroid/graphics/PointF;->y:F

    .line 1512
    iget p2, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, v4

    iput p2, v0, Landroid/graphics/PointF;->x:F

    .line 1513
    iget p2, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, v5

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 1518
    :cond_2
    sget-object p2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    invoke-static {v2, v0, p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkAnglesOfStartDiskAnglePoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;)V

    .line 1524
    iget p2, p1, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    iget v0, p1, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1525
    iget p2, p1, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p2, v0

    iput p2, p1, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    :cond_3
    return-void
.end method

.method private checkPropertiesForHandlePoint(Landroid/graphics/PointF;IFLcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1888
    iget-boolean v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    iget-boolean v6, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    move-result-object v5

    .line 1897
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->ordinal()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v6, v10, :cond_9

    const/4 v11, 0x2

    if-eq v6, v11, :cond_9

    const/4 v2, 0x3

    if-eq v6, v2, :cond_0

    const/4 v1, 0x0

    .line 2082
    invoke-static {v9, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v9

    .line 1956
    :cond_0
    sget-object v2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, v3, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/cm/RectEx;)V

    .line 1957
    iget v2, v3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 1958
    iget v5, v3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 1961
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthHandlePoint()Landroid/graphics/PointF;

    move-result-object v6

    .line 1962
    invoke-static {v1, v6, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1964
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v11

    invoke-static {v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v12

    .line 1967
    invoke-static {v1, v12}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v11

    .line 1970
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->startDiskAngleHandlePoint()Landroid/graphics/PointF;

    move-result-object v13

    .line 1971
    invoke-static {v13, v12}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v14

    cmpl-float v15, v11, v14

    if-lez v15, :cond_1

    move v11, v14

    goto :goto_0

    :cond_1
    move-object v13, v1

    .line 1978
    :goto_0
    invoke-static {v6, v12}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 1981
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->outsideRadiusX()F

    move-result v16

    .line 1982
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->outsideRadiusY()F

    move-result v17

    .line 1985
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->insideRadiusX()F

    move-result v6

    .line 1986
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->insideRadiusY()F

    move-result v18

    .line 1989
    iget v14, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseHorizontalDiskWidth:F

    sub-float v14, v16, v14

    .line 1990
    iget v15, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseVerticalDiskWidth:F

    sub-float v15, v17, v15

    cmpl-float v19, v14, v7

    if-lez v19, :cond_2

    cmpl-float v19, v15, v7

    if-lez v19, :cond_2

    move/from16 p2, v9

    float-to-double v9, v2

    .line 1995
    invoke-static {v12, v14, v15, v9, v10}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnEllipseWithCenterInDegrees(Landroid/graphics/PointF;FFD)Landroid/graphics/PointF;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v9

    goto :goto_1

    :cond_2
    move/from16 p2, v9

    move v9, v7

    :goto_1
    cmpl-float v10, v9, v1

    if-ltz v10, :cond_5

    cmpl-float v9, v11, v9

    if-ltz v9, :cond_3

    .line 2008
    invoke-static/range {v12 .. v17}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkMorphedEllipseRadiuses(Landroid/graphics/PointF;Landroid/graphics/PointF;FFFF)Landroid/graphics/PointF;

    move-result-object v1

    :goto_2
    move/from16 v10, v16

    goto :goto_4

    :cond_3
    move/from16 v10, v16

    move/from16 v20, v17

    cmpl-float v1, v11, v1

    if-ltz v1, :cond_4

    move/from16 v16, v14

    move/from16 v17, v15

    move/from16 v15, v18

    move v14, v6

    .line 2016
    invoke-static/range {v12 .. v17}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkMorphedEllipseRadiuses(Landroid/graphics/PointF;Landroid/graphics/PointF;FFFF)Landroid/graphics/PointF;

    move-result-object v1

    goto :goto_3

    :cond_4
    move v14, v6

    move/from16 v15, v18

    const/4 v1, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v16, v14

    move v14, v1

    .line 2024
    invoke-static/range {v12 .. v17}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkMorphedEllipseRadiuses(Landroid/graphics/PointF;Landroid/graphics/PointF;FFFF)Landroid/graphics/PointF;

    move-result-object v1

    :goto_3
    move/from16 v6, v20

    goto :goto_5

    :cond_5
    move v10, v14

    move v14, v6

    move v6, v10

    move/from16 v10, v18

    move/from16 v18, v15

    move v15, v10

    move/from16 v10, v16

    move/from16 v20, v17

    cmpl-float v1, v11, v1

    if-ltz v1, :cond_6

    move/from16 v16, v10

    move/from16 v17, v20

    .line 2034
    invoke-static/range {v12 .. v17}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkMorphedEllipseRadiuses(Landroid/graphics/PointF;Landroid/graphics/PointF;FFFF)Landroid/graphics/PointF;

    move-result-object v1

    :goto_4
    move/from16 v6, v17

    goto :goto_5

    :cond_6
    move/from16 v16, v10

    move/from16 v17, v20

    cmpl-float v1, v11, v9

    if-ltz v1, :cond_7

    move v14, v6

    move/from16 v15, v18

    .line 2042
    invoke-static/range {v12 .. v17}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkMorphedEllipseRadiuses(Landroid/graphics/PointF;Landroid/graphics/PointF;FFFF)Landroid/graphics/PointF;

    move-result-object v1

    goto :goto_2

    :cond_7
    move v14, v6

    move/from16 v10, v16

    move/from16 v6, v17

    move/from16 v15, v18

    const/4 v1, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v16, v14

    move v14, v1

    .line 2050
    invoke-static/range {v12 .. v17}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkMorphedEllipseRadiuses(Landroid/graphics/PointF;Landroid/graphics/PointF;FFFF)Landroid/graphics/PointF;

    move-result-object v1

    .line 2060
    :goto_5
    iget v9, v1, Landroid/graphics/PointF;->x:F

    sub-float v16, v10, v9

    .line 2061
    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v17, v6, v1

    .line 2064
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v1

    .line 2065
    aput v16, v1, p2

    .line 2066
    invoke-static {v1, v7, v10, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    .line 2067
    aget v9, v1, p2

    .line 2068
    aput v17, v1, p2

    .line 2069
    invoke-static {v1, v7, v6, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    .line 2070
    aget v1, v1, p2

    move v6, v9

    const/4 v9, 0x1

    goto/16 :goto_c

    :cond_8
    move/from16 p2, v9

    .line 2075
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->horizontalDiskWidth()F

    move-result v9

    .line 2076
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->verticalDiskWidth()F

    move-result v1

    move v6, v9

    move/from16 v9, p2

    goto/16 :goto_c

    :cond_9
    move/from16 p2, v9

    .line 1901
    sget-object v6, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, v3, v6}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/cm/RectEx;)V

    .line 1902
    iget v6, v3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 1903
    iget v9, v3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 1906
    sget-object v10, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->START_DISK_ANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    if-ne v5, v10, :cond_a

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    move/from16 v5, p2

    :goto_6
    if-eqz v5, :cond_b

    move-object v10, v1

    goto :goto_7

    .line 1907
    :cond_b
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->startDiskAngleHandlePoint()Landroid/graphics/PointF;

    move-result-object v10

    :goto_7
    if-eqz v5, :cond_c

    .line 1908
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->endDiskAngleHandlePoint()Landroid/graphics/PointF;

    move-result-object v11

    goto :goto_8

    :cond_c
    move-object v11, v1

    :goto_8
    if-eqz v5, :cond_d

    .line 1911
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->startDiskAngleHandlePoint()Landroid/graphics/PointF;

    move-result-object v5

    goto :goto_9

    :cond_d
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->endDiskAngleHandlePoint()Landroid/graphics/PointF;

    move-result-object v5

    .line 1914
    :goto_9
    invoke-static {v1, v5, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v1

    const/high16 v5, 0x43b40000    # 360.0f

    if-eqz v1, :cond_10

    .line 1916
    invoke-static {v6, v9, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1917
    invoke-static {v2, v7, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-eqz v1, :cond_e

    add-float/2addr v9, v5

    move v2, v6

    move v5, v9

    goto :goto_a

    :cond_e
    add-float v1, v6, v5

    .line 1922
    invoke-static {v1, v9, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1923
    invoke-static {v2, v5, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-eqz v1, :cond_f

    move v2, v6

    move v5, v2

    goto :goto_a

    :cond_f
    move v2, v6

    move v5, v9

    move/from16 v9, p2

    goto :goto_b

    .line 1933
    :cond_10
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1931
    invoke-static {v10, v11, v1, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkAnglesOfStartDiskAnglePoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;)V

    .line 1935
    iget v1, v3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 1936
    iget v6, v3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 1939
    invoke-static {v1, v6, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1940
    invoke-static {v2, v7, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v2

    if-eqz v2, :cond_11

    add-float/2addr v6, v5

    :cond_11
    move v2, v1

    move v5, v6

    :goto_a
    const/4 v9, 0x1

    .line 1949
    :goto_b
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->horizontalDiskWidth()F

    move-result v6

    .line 1950
    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->verticalDiskWidth()F

    move-result v1

    .line 2087
    :goto_c
    iput v2, v3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 2088
    iput v5, v3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 2089
    iput v6, v4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;->horizontal:F

    .line 2090
    iput v1, v4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;->vertical:F

    return v9
.end method

.method private checkPropertiesForVariation(Ljava/util/Map;ILcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I",
            "Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;",
            "Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;",
            "Z)Z"
        }
    .end annotation

    .line 1725
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    invoke-static {p2, v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    move-result-object p2

    .line 1734
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->ordinal()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_8

    const/4 v4, 0x2

    if-eq p2, v4, :cond_8

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq p2, v5, :cond_0

    .line 1868
    invoke-static {v4, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 1806
    :cond_0
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    if-eqz p2, :cond_3

    .line 1808
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->preservedHorizontalDiskWidthFromVariation(Ljava/util/Map;)F

    move-result p2

    .line 1809
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->preservedVerticalDiskWidthFromVariation(Ljava/util/Map;)F

    move-result v0

    .line 1810
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->contentScaleFromVariation(Ljava/util/Map;)F

    move-result p1

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    .line 1814
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->contentScale()F

    move-result v2

    div-float/2addr v2, p1

    mul-float/2addr p2, v2

    mul-float/2addr v0, v2

    :cond_1
    if-eqz p5, :cond_2

    .line 1821
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyPreservedHorizontalDiskWidth(F)V

    .line 1822
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyPreservedVerticalDiskWidth(F)V

    .line 1826
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    iget p1, p1, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p1, p5

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1827
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    iget p2, p2, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p2, p5

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    .line 1830
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->horizontalDiskWidthRatioFromVariation(Ljava/util/Map;)F

    move-result p2

    cmpg-float p5, p2, v2

    if-gez p5, :cond_4

    .line 1832
    invoke-static {v0, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 1835
    :cond_4
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->verticalDiskWidthRatioFromVariation(Ljava/util/Map;)F

    move-result p1

    cmpg-float p5, p1, v2

    if-gez p5, :cond_5

    .line 1837
    invoke-static {v3, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 1842
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p5

    iget p5, p5, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {p2, p5}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthFromDiskWidthRatio(FF)F

    move-result p2

    .line 1843
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p5

    iget p5, p5, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {p1, p5}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthFromDiskWidthRatio(FF)F

    move-result p1

    move v8, p2

    move p2, p1

    move p1, v8

    .line 1847
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->horizontalDiskWidth()F

    move-result p5

    .line 1848
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->verticalDiskWidth()F

    move-result v0

    .line 1849
    invoke-static {p1, p5, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v2

    if-eqz v2, :cond_6

    move p1, p5

    :cond_6
    xor-int/lit8 p5, v2, 0x1

    .line 1854
    invoke-static {p2, v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-eqz v1, :cond_7

    move v3, p5

    move p2, v0

    .line 1861
    :cond_7
    sget-object p5, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-direct {p0, p3, p5}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/cm/RectEx;)V

    .line 1862
    iget p5, p3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 1863
    iget v0, p3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    goto/16 :goto_4

    .line 1738
    :cond_8
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->startDiskAngleFromVariation(Ljava/util/Map;)F

    move-result p2

    .line 1739
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->endDiskAngleFromVariation(Ljava/util/Map;)F

    move-result p5

    .line 1742
    iget-boolean v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskAngle:Z

    if-nez v4, :cond_d

    .line 1744
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->baseWidthFromVariation(Ljava/util/Map;)F

    move-result v4

    .line 1745
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->baseHeightFromVariation(Ljava/util/Map;)F

    move-result p1

    cmpl-float v5, v4, v2

    if-eqz v5, :cond_9

    .line 1748
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v5, v4

    goto :goto_1

    :cond_9
    move v5, v2

    :goto_1
    cmpl-float v4, p1, v2

    if-eqz v4, :cond_a

    .line 1749
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v2, p1

    :cond_a
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1752
    invoke-static {v5, p1, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1753
    invoke-static {v2, p1, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-nez v4, :cond_d

    :cond_b
    cmpl-float v4, p2, p5

    if-eqz v4, :cond_c

    move v0, v3

    .line 1758
    :cond_c
    sget-object v4, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    float-to-double v6, p2

    invoke-static {v4, p1, v6, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnCircleWithCenterInDegrees(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;

    move-result-object p2

    .line 1759
    sget-object v4, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    float-to-double v6, p5

    invoke-static {v4, p1, v6, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnCircleWithCenterInDegrees(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;

    move-result-object p1

    .line 1762
    iget p5, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr p5, v5

    iput p5, p2, Landroid/graphics/PointF;->x:F

    .line 1763
    iget p5, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr p5, v2

    iput p5, p2, Landroid/graphics/PointF;->y:F

    .line 1764
    iget p5, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p5, v5

    iput p5, p1, Landroid/graphics/PointF;->x:F

    .line 1765
    iget p5, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p5, v2

    iput p5, p1, Landroid/graphics/PointF;->y:F

    .line 1768
    sget-object p5, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    invoke-static {p2, p1, p5, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkAnglesOfStartDiskAnglePoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;)V

    .line 1772
    iget p2, p3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 1773
    iget p5, p3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    cmpl-float p1, p2, p5

    if-nez p1, :cond_d

    if-eqz v0, :cond_d

    const/high16 p1, 0x43b40000    # 360.0f

    add-float/2addr p5, p1

    .line 1784
    :cond_d
    sget-object p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-direct {p0, p3, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/cm/RectEx;)V

    .line 1785
    iget p1, p3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 1786
    iget v0, p3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 1787
    invoke-static {p2, p1, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_2

    :cond_e
    move p1, p2

    :goto_2
    xor-int/lit8 p2, v2, 0x1

    .line 1792
    invoke-static {p5, v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-eqz v1, :cond_f

    move v3, p2

    goto :goto_3

    :cond_f
    move v0, p5

    .line 1799
    :goto_3
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->horizontalDiskWidth()F

    move-result p2

    .line 1800
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->verticalDiskWidth()F

    move-result p5

    move v8, p5

    move p5, p1

    move p1, p2

    move p2, v8

    .line 1873
    :goto_4
    iput p5, p3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 1874
    iput v0, p3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 1875
    iput p1, p4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;->horizontal:F

    .line 1876
    iput p2, p4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;->vertical:F

    return v3
.end method

.method private constructWithBaseBounds(Lcom/metamoji/cm/RectEx;FFFFZZZZZ)V
    .locals 3

    if-nez p6, :cond_0

    if-nez p7, :cond_0

    const/4 p8, 0x0

    .line 1379
    :cond_0
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;

    invoke-direct {v0, p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;-><init>(FF)V

    .line 1380
    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->adjustDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;)V

    .line 1381
    iget p2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 1382
    iget p3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 1385
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyAngleDifferenceWithStartDiskAngle(FF)V

    .line 1388
    iget v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {p4, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthFromDiskWidthRatio(FF)F

    move-result v0

    .line 1389
    iget v1, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {p5, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthFromDiskWidthRatio(FF)F

    move-result v1

    if-eqz p10, :cond_1

    .line 1393
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedHorizontalDiskWidth:F

    .line 1394
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedVerticalDiskWidth:F

    goto :goto_0

    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    .line 1396
    iput v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedHorizontalDiskWidth:F

    .line 1397
    iput v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedVerticalDiskWidth:F

    .line 1399
    :goto_0
    iput-boolean p6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    .line 1400
    iput-boolean p7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    .line 1401
    iput-boolean p8, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_restrainAngleHandleMovement:Z

    .line 1402
    iput-boolean p9, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskAngle:Z

    .line 1403
    iput-boolean p10, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    .line 1404
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseHorizontalDiskWidth:F

    .line 1405
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseVerticalDiskWidth:F

    .line 1408
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p6

    if-eqz p6, :cond_2

    .line 1409
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p6

    iget-boolean p7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    invoke-static {p6, p7}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->saveDiskAngleHandleEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1410
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p6

    iget-boolean p7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    invoke-static {p6, p7}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->saveDiskWidthHandleEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1411
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p6

    iget-boolean p7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskAngle:Z

    invoke-static {p6, p7}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->savePreserveDiskAngleToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1412
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p6

    iget p7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedHorizontalDiskWidth:F

    invoke-static {p6, p7}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->savePreservedHorizontalDiskWidthToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1413
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p6

    iget p7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedVerticalDiskWidth:F

    invoke-static {p6, p7}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->savePreservedVerticalDiskWidthToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1414
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p6

    invoke-static {p6, p4}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->saveBaseHorizontalDiskWidthRatioToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1415
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p4

    invoke-static {p4, p5}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->saveBaseVerticalDiskWidthRatioToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1416
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p4

    iget-boolean p5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_restrainAngleHandleMovement:Z

    invoke-static {p4, p5}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->saveRestrainAngleHandleMovementToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1425
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p6

    move p4, v0

    move p5, v1

    .line 1420
    invoke-static/range {p1 .. p6}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->createSegmentsWithBaseBounds(Lcom/metamoji/cm/RectEx;FFFFLcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1426
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1427
    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->addSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    goto :goto_1

    .line 1431
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->updateSegments()V

    .line 1434
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->updateExtraHandles()V

    return-void
.end method

.method private static contentScaleFromVariation(Ljava/util/Map;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)F"
        }
    .end annotation

    .line 2540
    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_1

    .line 2542
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 2544
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    :cond_0
    return p0

    :cond_1
    return v0
.end method

.method private static createPathWithBaseBounds(Lcom/metamoji/cm/RectEx;FFFF)Landroid/graphics/Path;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2248
    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->createSegmentsWithBaseBounds(Lcom/metamoji/cm/RectEx;FFFFLcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2256
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 2270
    new-instance p2, Landroid/graphics/PointF;

    const/high16 p3, 0x7fc00000    # Float.NaN

    invoke-direct {p2, p3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2271
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 2272
    invoke-virtual {p3, p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->addToPath(Landroid/graphics/Path;Landroid/graphics/PointF;)V

    .line 2273
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->destroy()V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static createSegmentsWithBaseBounds(Lcom/metamoji/cm/RectEx;FFFFLcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/RectEx;",
            "FFFF",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x5

    .line 2125
    invoke-static {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    const/high16 v5, 0x43b40000    # 360.0f

    if-eqz v4, :cond_0

    move v10, v1

    move v11, v10

    goto :goto_0

    :cond_0
    add-float v4, v1, v5

    .line 2127
    invoke-static {v4, v2, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    if-eqz v3, :cond_1

    sub-float v1, v4, v5

    move v10, v1

    move v11, v4

    goto :goto_0

    :cond_1
    move v10, v1

    move v11, v2

    .line 2133
    :goto_0
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 2134
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 2135
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v7

    .line 2138
    iget v3, v0, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v8, v3, v4

    .line 2139
    iget v3, v0, Lcom/metamoji/cm/RectEx;->height:F

    div-float v9, v3, v4

    sub-float v3, v8, p3

    sub-float v4, v9, p4

    .line 2144
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2147
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v6

    const/4 v14, 0x0

    .line 2148
    invoke-virtual {v6, v14}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsVisible(Z)V

    .line 2149
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->originOf(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v12

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v15

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-static {v15, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v6, v12, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2150
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2153
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 2154
    invoke-virtual {v0, v14}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsVisible(Z)V

    .line 2155
    invoke-virtual {v0, v14}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    add-float v6, v1, v3

    .line 2156
    invoke-static {v6, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v6

    add-float/2addr v2, v4

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2157
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpl-float v0, v10, v11

    if-eqz v0, :cond_4

    .line 2162
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v6

    .line 2163
    invoke-virtual {v6, v14}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    const/4 v12, 0x1

    .line 2164
    invoke-virtual/range {v6 .. v12}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    move-object v0, v6

    .line 2167
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v6

    .line 2168
    invoke-virtual {v6, v14}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    const/4 v1, 0x0

    cmpl-float v2, v3, v1

    if-eqz v2, :cond_2

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_2

    const/4 v12, 0x0

    move v8, v11

    move v11, v10

    move v10, v8

    move v8, v3

    move v9, v4

    .line 2170
    invoke-virtual/range {v6 .. v12}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    move/from16 v16, v11

    move v11, v10

    move/from16 v10, v16

    goto :goto_1

    .line 2172
    :cond_2
    invoke-virtual {v6, v7, v7}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2173
    invoke-virtual {v6, v14}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsVisible(Z)V

    :goto_1
    add-float/2addr v10, v5

    cmpl-float v1, v11, v10

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v14

    .line 2180
    :goto_2
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v2

    .line 2181
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v3

    .line 2184
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v4

    .line 2185
    invoke-virtual {v4, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsVisible(Z)V

    .line 2186
    invoke-virtual {v4, v14}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2187
    invoke-virtual {v4, v2, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2188
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2191
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2194
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    .line 2195
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v2

    .line 2198
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v3

    .line 2199
    invoke-virtual {v3, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsVisible(Z)V

    .line 2200
    invoke-virtual {v3, v14}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2201
    invoke-virtual {v3, v0, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2202
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2205
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v13

    :cond_4
    move v0, v3

    move v1, v4

    float-to-double v2, v10

    .line 2208
    invoke-static {v7, v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnEllipseWithCenterInDegrees(Landroid/graphics/PointF;FFD)Landroid/graphics/PointF;

    move-result-object v0

    .line 2209
    invoke-static {v7, v8, v9, v2, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnEllipseWithCenterInDegrees(Landroid/graphics/PointF;FFD)Landroid/graphics/PointF;

    move-result-object v1

    .line 2212
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2213
    invoke-virtual {v2, v14}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2214
    invoke-virtual {v2, v0, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2215
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2218
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2219
    invoke-virtual {v2, v14}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsVisible(Z)V

    .line 2220
    invoke-virtual {v2, v14}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2221
    invoke-virtual {v2, v1, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2222
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2225
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 2226
    invoke-virtual {v2, v14}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2227
    invoke-virtual {v2, v1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2228
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2231
    invoke-static/range {p5 .. p5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    .line 2232
    invoke-virtual {v1, v14}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsVisible(Z)V

    .line 2233
    invoke-virtual {v1, v14}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 2234
    invoke-virtual {v1, v0, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2235
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v13
.end method

.method private static diskWidthFromDiskWidthRatio(FF)F
    .locals 0

    mul-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private diskWidthHandlePoint()Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x2

    .line 1451
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private static diskWidthRatioFromDiskWidth(FF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2390
    invoke-static {p0, p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthRatioFromDiskWidth(FFF)F

    move-result p0

    return p0
.end method

.method private static diskWidthRatioFromDiskWidth(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    div-float/2addr p0, p1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 2395
    :goto_0
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object p1

    const/4 v1, 0x0

    .line 2396
    aput p0, p1, v1

    const/4 p0, 0x5

    .line 2397
    invoke-static {p1, v0, p2, p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 2398
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2400
    :cond_1
    aget p0, p1, v1

    return p0
.end method

.method private static endDiskAngleFromVariation(Ljava/util/Map;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)F"
        }
    .end annotation

    .line 2457
    const-string v0, "e"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2459
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private endDiskAngleHandlePoint()Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x3

    .line 1447
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private extraDataNameForAngleDifference()Ljava/lang/String;
    .locals 3

    .line 2097
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_extraDataNameForAngleDifference:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2098
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2099
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ed!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_extraDataNameForAngleDifference:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2103
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 2107
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2108
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_extraDataNameForAngleDifference:Ljava/lang/String;

    .line 2111
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_extraDataNameForAngleDifference:Ljava/lang/String;

    return-object v0
.end method

.method private static handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 2374
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->DISK_WIDTH:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    return-object p0

    :cond_1
    if-eqz p1, :cond_4

    .line 2369
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->START_DISK_ANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    .line 2362
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->END_DISK_ANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    return-object p0

    :cond_3
    if-eqz p2, :cond_4

    .line 2364
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->DISK_WIDTH:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    return-object p0

    .line 2380
    :cond_4
    :goto_0
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->NONE:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    return-object p0
.end method

.method private horizontalDiskWidth()F
    .locals 2

    .line 1487
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->outsideRadiusX()F

    move-result v0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->insideRadiusX()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private static horizontalDiskWidthRatioFromVariation(Ljava/util/Map;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)F"
        }
    .end annotation

    .line 2484
    const-string v0, "h"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2486
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 2487
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    const/4 v1, 0x0

    .line 2488
    aput p0, v0, v1

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 2489
    invoke-static {v0, v3, p0, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2490
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2492
    :cond_0
    aget p0, v0, v1

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method private insideRadiusX()F
    .locals 2

    const/4 v0, 0x1

    .line 1463
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 1464
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v0

    return v1
.end method

.method private insideRadiusY()F
    .locals 2

    const/4 v0, 0x1

    .line 1468
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 1469
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    return v1
.end method

.method public static newDiskShapeElementWithBaseBounds(Lcom/metamoji/cm/RectEx;FFFFZZZZZLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;
    .locals 12

    move-object/from16 v11, p13

    .line 1310
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFiniteRect(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1311
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v3

    .line 1314
    :cond_0
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/metamoji/cm/RectEx;->height:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    goto :goto_1

    .line 1318
    :cond_1
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    .line 1319
    aput p3, v0, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    .line 1320
    invoke-static {v0, v4, v5, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x2

    .line 1321
    invoke-static {v7, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1323
    :cond_2
    aget v7, v0, v2

    .line 1324
    aput p4, v0, v2

    .line 1325
    invoke-static {v0, v4, v5, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x3

    .line 1326
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1328
    :cond_3
    aget v5, v0, v2

    if-eqz p11, :cond_4

    .line 1331
    invoke-static/range {p11 .. p11}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->newEmptyDiskShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v3

    .line 1334
    :goto_0
    new-instance v2, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;-><init>()V

    move-object/from16 v4, p12

    invoke-virtual {v2, v0, v4, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;

    move-object/from16 v2, p10

    .line 1337
    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move v4, v7

    move/from16 v7, p6

    .line 1340
    invoke-direct/range {v0 .. v10}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->constructWithBaseBounds(Lcom/metamoji/cm/RectEx;FFFFZZZZZ)V

    if-eqz v11, :cond_5

    .line 1353
    invoke-virtual {v0, v11}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    :cond_5
    return-object v0

    :cond_6
    :goto_1
    const/4 v0, 0x1

    .line 1315
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v3
.end method

.method public static newEmptyDiskShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 1282
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->newEmptySegmentalShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1284
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->DISK_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1286
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method private outsideRadiusX()F
    .locals 2

    const/4 v0, 0x0

    .line 1475
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 1476
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    return v1
.end method

.method private outsideRadiusY()F
    .locals 2

    const/4 v0, 0x0

    .line 1480
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 1481
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    return v1
.end method

.method private static preservedHorizontalDiskWidthFromVariation(Ljava/util/Map;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)F"
        }
    .end annotation

    .line 2514
    const-string/jumbo v0, "z"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p0, :cond_1

    .line 2516
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 2518
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    :cond_0
    return p0

    :cond_1
    return v0
.end method

.method private static preservedVerticalDiskWidthFromVariation(Ljava/util/Map;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)F"
        }
    .end annotation

    .line 2527
    const-string v0, "c"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p0, :cond_1

    .line 2529
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 2531
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    :cond_0
    return p0

    :cond_1
    return v0
.end method

.method private static saveBaseHorizontalDiskWidthRatioToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 2612
    const-string/jumbo v1, "z"

    if-eqz v0, :cond_1

    .line 2613
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2615
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveBaseVerticalDiskWidthRatioToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 2623
    const-string v1, "c"

    if-eqz v0, :cond_1

    .line 2624
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2626
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveDiskAngleHandleEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2557
    :cond_0
    const-string v0, "a"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2558
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2560
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveDiskWidthHandleEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2568
    :cond_0
    const-string/jumbo v0, "w"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2569
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2571
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreserveDiskAngleToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2579
    :cond_0
    const-string v0, "n"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2580
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2582
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreservedHorizontalDiskWidthToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 2590
    const-string v1, "h"

    if-ltz v0, :cond_1

    .line 2591
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2593
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreservedVerticalDiskWidthToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 2601
    const-string/jumbo v1, "v"

    if-ltz v0, :cond_1

    .line 2602
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2604
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveRestrainAngleHandleMovementToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2634
    :cond_0
    const-string v0, "r"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2635
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2637
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static startDiskAngleFromVariation(Ljava/util/Map;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)F"
        }
    .end annotation

    .line 2448
    const-string/jumbo v0, "s"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2450
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private startDiskAngleHandlePoint()Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x3

    .line 1443
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private updateAngleDifference()V
    .locals 2

    .line 1702
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;-><init>()V

    .line 1703
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/cm/RectEx;)V

    .line 1704
    iget v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    iget v0, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    invoke-direct {p0, v1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyAngleDifferenceWithStartDiskAngle(FF)V

    return-void
.end method

.method private updateBaseDiskWidthsWithBaseBounds(Lcom/metamoji/cm/RectEx;F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_0

    .line 1674
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseHorizontalDiskWidth:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseHorizontalDiskWidth:F

    .line 1675
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseVerticalDiskWidth:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseVerticalDiskWidth:F

    return-void

    .line 1680
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    .line 1681
    iget v1, p2, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/metamoji/cm/RectEx;->width:F

    iget v3, p2, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    cmpl-float v3, v1, v0

    if-eqz v3, :cond_3

    .line 1683
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    .line 1686
    iget v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseHorizontalDiskWidth:F

    if-eqz v3, :cond_2

    .line 1684
    iget v1, p1, Lcom/metamoji/cm/RectEx;->width:F

    invoke-direct {p0, v4, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyBaseHorizontalDiskWidth(FF)V

    goto :goto_1

    :cond_2
    mul-float/2addr v4, v1

    .line 1686
    iget v1, p1, Lcom/metamoji/cm/RectEx;->width:F

    invoke-direct {p0, v4, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyBaseHorizontalDiskWidth(FF)V

    .line 1689
    :cond_3
    :goto_1
    iget v1, p2, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    iget v1, p1, Lcom/metamoji/cm/RectEx;->height:F

    iget p2, p2, Lcom/metamoji/cm/RectEx;->height:F

    div-float v2, v1, p2

    :cond_4
    cmpl-float p2, v2, v0

    if-eqz p2, :cond_6

    .line 1691
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    .line 1694
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseVerticalDiskWidth:F

    if-eqz p2, :cond_5

    .line 1692
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyBaseVerticalDiskWidth(FF)V

    return-void

    :cond_5
    mul-float/2addr v0, v2

    .line 1694
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyBaseVerticalDiskWidth(FF)V

    :cond_6
    return-void
.end method

.method private updatePreservedDiskWidthsWithBaseBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 6

    .line 1641
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 1646
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->horizontalDiskWidth()F

    move-result v0

    .line 1647
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->verticalDiskWidth()F

    move-result v1

    .line 1650
    iget v2, p1, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 1651
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p1, v3

    .line 1654
    iget v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedHorizontalDiskWidth:F

    .line 1655
    iget v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedVerticalDiskWidth:F

    cmpl-float v5, v0, v3

    if-gtz v5, :cond_2

    cmpg-float v5, v0, v3

    if-gez v5, :cond_1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :cond_2
    :goto_0
    cmpl-float v2, v1, v4

    if-gtz v2, :cond_4

    cmpg-float v2, v1, v4

    if-gez v2, :cond_3

    cmpg-float p1, v1, p1

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    .line 1666
    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyPreservedHorizontalDiskWidth(F)V

    .line 1667
    invoke-direct {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyPreservedVerticalDiskWidth(F)V

    return-void
.end method

.method private updateSnapPoints()V
    .locals 4

    .line 1709
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 1710
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 1711
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 1712
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_snapPoint_0:Landroid/graphics/PointF;

    .line 1713
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_snapPoint_90:Landroid/graphics/PointF;

    .line 1714
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_snapPoint_180:Landroid/graphics/PointF;

    .line 1715
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_snapPoint_270:Landroid/graphics/PointF;

    return-void
.end method

.method private static variationFromStartDiskAngle(FFFFFFFFF)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFFFFF)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 2415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    cmpl-float v2, p0, v1

    if-eqz v2, :cond_0

    .line 2417
    const-string/jumbo v2, "s"

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    cmpl-float p0, p1, v1

    if-eqz p0, :cond_1

    .line 2420
    const-string p0, "e"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    cmpl-float p0, p2, v1

    if-ltz p0, :cond_2

    .line 2423
    const-string p0, "d"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    cmpl-float p0, p3, v1

    if-ltz p0, :cond_3

    .line 2426
    const-string p0, "g"

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    cmpl-float p0, p4, v1

    const/high16 p1, 0x3f800000    # 1.0f

    if-ltz p0, :cond_4

    cmpg-float p0, p4, p1

    if-gtz p0, :cond_4

    .line 2429
    const-string p0, "h"

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    cmpl-float p0, p5, v1

    if-ltz p0, :cond_5

    cmpg-float p0, p5, p1

    if-gtz p0, :cond_5

    .line 2432
    const-string/jumbo p0, "v"

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    cmpl-float p0, p6, v1

    if-ltz p0, :cond_6

    .line 2435
    const-string/jumbo p0, "z"

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    cmpl-float p0, p7, v1

    if-ltz p0, :cond_7

    .line 2438
    const-string p0, "c"

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    cmpl-float p0, p8, p1

    if-eqz p0, :cond_8

    .line 2441
    const-string p0, "o"

    invoke-static {p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v0
.end method

.method private verticalDiskWidth()F
    .locals 2

    .line 1491
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->outsideRadiusY()F

    move-result v0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->insideRadiusY()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private static verticalDiskWidthRatioFromVariation(Ljava/util/Map;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)F"
        }
    .end annotation

    .line 2499
    const-string/jumbo v0, "v"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2501
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 2502
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    const/4 v1, 0x0

    .line 2503
    aput p0, v0, v1

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 2504
    invoke-static {v0, v3, p0, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2505
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2507
    :cond_0
    aget p0, v0, v1

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method protected applyExtraHandlePoint_(Landroid/graphics/PointF;I)Z
    .locals 11

    .line 1062
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return v8

    .line 1067
    :cond_0
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_angleDifference:F

    .line 1068
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v9

    .line 1069
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->extraDataNameForAngleDifference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2, v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1071
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    :cond_1
    move v3, v1

    .line 1076
    new-instance v4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;

    invoke-direct {v4}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;-><init>()V

    .line 1077
    new-instance v5, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;-><init>(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement-IA;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1078
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkPropertiesForHandlePoint(Landroid/graphics/PointF;IFLcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1083
    iget v1, v4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 1084
    iget v2, v4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 1085
    iget v3, v5, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;->horizontal:F

    .line 1086
    iget v5, v5, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;->vertical:F

    .line 1089
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->extraDataAcceptability()Z

    move-result v6

    const/4 v10, 0x1

    if-eqz v6, :cond_2

    .line 1090
    sget-object v6, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-direct {p0, v4, v6}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/cm/RectEx;)V

    .line 1091
    iget v6, v4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    iget v4, v4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 1092
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->extraDataNameForAngleDifference()Ljava/lang/String;

    move-result-object v7

    .line 1093
    invoke-static {v6, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->angleDifferenceFromStartDiskAngle(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 1092
    invoke-virtual {v9, v7, v4, v10, v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_2
    move v4, v5

    .line 1103
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    .line 1099
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyStartDiskAngle(FFFFLcom/metamoji/cm/RectEx;ZZ)V

    .line 1108
    invoke-direct {p0, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyPreservedHorizontalDiskWidth(F)V

    .line 1109
    invoke-direct {p0, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyPreservedVerticalDiskWidth(F)V

    .line 1112
    invoke-direct {p0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyAngleDifferenceWithStartDiskAngle(FF)V

    .line 1115
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->extraDataAcceptability()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1116
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->extraDataNameForAngleDifference()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_angleDifference:F

    .line 1117
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 1116
    invoke-virtual {v9, v1, v2, v8, v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_3
    return v10

    :cond_4
    return v8
.end method

.method protected applySegmentBounds_(Lcom/metamoji/cm/RectEx;F)V
    .locals 10

    .line 411
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->updateBaseDiskWidthsWithBaseBounds(Lcom/metamoji/cm/RectEx;F)V

    .line 419
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskAngle:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    if-nez v0, :cond_1

    .line 420
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->applySegmentBounds_(Lcom/metamoji/cm/RectEx;F)V

    .line 423
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->updateAngleDifference()V

    return-void

    .line 430
    :cond_1
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;-><init>()V

    .line 431
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskAngle:Z

    if-eqz v1, :cond_2

    .line 432
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/cm/RectEx;)V

    goto :goto_0

    .line 434
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/cm/RectEx;)V

    .line 436
    :goto_0
    iget v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 437
    iget v4, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 441
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    if-eqz v0, :cond_4

    .line 442
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedHorizontalDiskWidth:F

    .line 443
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedVerticalDiskWidth:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_3

    mul-float/2addr v0, p2

    mul-float/2addr v1, p2

    .line 447
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyPreservedHorizontalDiskWidth(F)V

    .line 448
    invoke-direct {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyPreservedVerticalDiskWidth(F)V

    .line 450
    :cond_3
    iget p2, p1, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 451
    iget v0, p1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v5, p2

    move v6, v0

    goto :goto_2

    .line 453
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    .line 454
    iget v0, p2, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->horizontalDiskWidth()F

    move-result v0

    iget v2, p1, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v0, v2

    iget v2, p2, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 455
    :goto_1
    iget v2, p2, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->verticalDiskWidth()F

    move-result v1

    iget v2, p1, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v1, v2

    iget p2, p2, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v1, p2

    :cond_6
    move v5, v0

    move v6, v1

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v7, p1

    .line 459
    invoke-direct/range {v2 .. v9}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyStartDiskAngle(FFFFLcom/metamoji/cm/RectEx;ZZ)V

    .line 468
    invoke-direct {p0, v3, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyAngleDifferenceWithStartDiskAngle(FF)V

    return-void
.end method

.method protected applySegments_()V
    .locals 4

    .line 480
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 485
    :cond_0
    const-string/jumbo v0, "z"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    .line 486
    const-string v1, "c"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v1

    .line 487
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->outsideRadiusX()F

    move-result v2

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseHorizontalDiskWidth:F

    .line 488
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->outsideRadiusY()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseVerticalDiskWidth:F

    .line 491
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->updatePreservedDiskWidthsWithBaseBounds(Lcom/metamoji/cm/RectEx;)V

    .line 494
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->updateAngleDifference()V

    return-void
.end method

.method protected cancelEvaluationOfExtraHandleAtIndex_(I)V
    .locals 0

    .line 1013
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->updateAngleDifference()V

    return-void
.end method

.method protected checkEqualityOfExtraHandleVariation_(Ljava/util/Map;Ljava/util/Map;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)Z"
        }
    .end annotation

    .line 824
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    invoke-static {p3, v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->ordinal()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq p3, v2, :cond_6

    const/4 v3, 0x2

    if-eq p3, v3, :cond_6

    const/4 v3, 0x3

    if-eq p3, v3, :cond_0

    const/4 p1, 0x0

    .line 870
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 841
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->horizontalDiskWidthRatioFromVariation(Ljava/util/Map;)F

    move-result p3

    const/4 v3, 0x0

    cmpg-float v4, p3, v3

    const/high16 v5, -0x40800000    # -1.0f

    if-gez v4, :cond_1

    move p3, v5

    .line 845
    :cond_1
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->horizontalDiskWidthRatioFromVariation(Ljava/util/Map;)F

    move-result v4

    cmpg-float v6, v4, v3

    if-gez v6, :cond_2

    move v4, v5

    .line 849
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->verticalDiskWidthRatioFromVariation(Ljava/util/Map;)F

    move-result v6

    cmpg-float v7, v6, v3

    if-gez v7, :cond_3

    move v6, v5

    .line 853
    :cond_3
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->verticalDiskWidthRatioFromVariation(Ljava/util/Map;)F

    move-result v7

    cmpg-float v3, v7, v3

    if-gez v3, :cond_4

    goto :goto_0

    :cond_4
    move v5, v7

    .line 857
    :goto_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->preservedHorizontalDiskWidthFromVariation(Ljava/util/Map;)F

    move-result v3

    .line 858
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->preservedHorizontalDiskWidthFromVariation(Ljava/util/Map;)F

    move-result v7

    .line 859
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->preservedVerticalDiskWidthFromVariation(Ljava/util/Map;)F

    move-result v8

    .line 860
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->preservedVerticalDiskWidthFromVariation(Ljava/util/Map;)F

    move-result v9

    .line 861
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->contentScaleFromVariation(Ljava/util/Map;)F

    move-result p1

    .line 862
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->contentScaleFromVariation(Ljava/util/Map;)F

    move-result p2

    .line 863
    invoke-static {p3, v4, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 864
    invoke-static {v6, v5, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 865
    invoke-static {v3, v7, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 866
    invoke-static {v8, v9, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 867
    invoke-static {p1, p2, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0

    .line 827
    :cond_6
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->startDiskAngleFromVariation(Ljava/util/Map;)F

    move-result p3

    .line 828
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->startDiskAngleFromVariation(Ljava/util/Map;)F

    move-result v3

    .line 829
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->endDiskAngleFromVariation(Ljava/util/Map;)F

    move-result v4

    .line 830
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->endDiskAngleFromVariation(Ljava/util/Map;)F

    move-result v5

    .line 831
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->baseWidthFromVariation(Ljava/util/Map;)F

    move-result v6

    .line 832
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->baseWidthFromVariation(Ljava/util/Map;)F

    move-result v7

    .line 833
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->baseHeightFromVariation(Ljava/util/Map;)F

    move-result p1

    .line 834
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->baseHeightFromVariation(Ljava/util/Map;)F

    move-result p2

    .line 835
    invoke-static {p3, v3, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 836
    invoke-static {v4, v5, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 837
    invoke-static {v6, v7, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 838
    invoke-static {p1, p2, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p1

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method protected checkMovementOfExtraHandleAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 4

    .line 884
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 889
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    invoke-static {p1, v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->ordinal()I

    move-result p1

    const/4 v0, 0x5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 p1, 0x0

    .line 910
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 908
    :cond_1
    invoke-static {p2, p3, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    :goto_0
    xor-int/2addr p1, v2

    return p1

    .line 894
    :cond_2
    invoke-static {p2, p3, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 895
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_restrainAngleHandleMovement:Z

    if-eqz p1, :cond_3

    .line 898
    new-instance p1, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;-><init>()V

    .line 899
    sget-object p2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/cm/RectEx;)V

    .line 900
    iget p2, p1, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    iget p1, p1, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    sub-float/2addr p2, p1

    const/high16 p1, 0x43b40000    # 360.0f

    add-float/2addr p2, p1

    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_angleDifference:F

    invoke-static {p2, p1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method protected containsPoint_(Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected destroy_()V
    .locals 1

    const/4 v0, 0x0

    .line 1258
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_extraDataNameForAngleDifference:Ljava/lang/String;

    .line 1259
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->destroy_()V

    return-void
.end method

.method public diskAngleHandleEnablement()Z
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 120
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    return v0
.end method

.method public diskWidthHandleEnablement()Z
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    return v0
.end method

.method protected displayAngleForExtraHandlePoint_(Landroid/graphics/PointF;I)F
    .locals 2

    .line 1027
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    if-nez p1, :cond_0

    return v0

    .line 1032
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    invoke-static {p2, p1, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    move-result-object p1

    .line 1033
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    return v0

    :cond_1
    const/high16 p1, 0x43b40000    # 360.0f

    .line 1036
    iget p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_angleDifference:F

    sub-float/2addr p1, p2

    return p1
.end method

.method protected editExtraHandleWithVariationAlways_()Z
    .locals 1

    .line 1051
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    return v0
.end method

.method protected editOriginally_()Z
    .locals 1

    .line 389
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskAngle:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected evaluateExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 9

    .line 923
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 928
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    invoke-static {p2, v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    move-result-object p2

    .line 931
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    const/4 p2, 0x0

    .line 997
    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    .line 991
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p2

    .line 992
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->startDiskAngleHandlePoint()Landroid/graphics/PointF;

    move-result-object v0

    .line 991
    invoke-static {p2, v0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getNearestPointToSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 935
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v0

    .line 937
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->outsideRadiusX()F

    move-result v3

    .line 938
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->outsideRadiusY()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 939
    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    iget v7, p1, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v8

    .line 940
    invoke-static {v7, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 939
    invoke-static {v5, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    float-to-double v7, p1

    .line 936
    invoke-static {v0, v3, v4, v7, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnEllipseWithCenterInDegrees(Landroid/graphics/PointF;FFD)Landroid/graphics/PointF;

    move-result-object p1

    .line 943
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v0

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v3, v0

    float-to-double v3, v3

    .line 944
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_snapPoint_0:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v7, v0

    cmpg-double v0, v7, v3

    if-gez v0, :cond_3

    .line 945
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_snapPoint_0:Landroid/graphics/PointF;

    goto :goto_0

    .line 946
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_snapPoint_90:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v7, v0

    cmpg-double v0, v7, v3

    if-gez v0, :cond_4

    .line 947
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_snapPoint_90:Landroid/graphics/PointF;

    goto :goto_0

    .line 948
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_snapPoint_180:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v7, v0

    cmpg-double v0, v7, v3

    if-gez v0, :cond_5

    .line 949
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_snapPoint_180:Landroid/graphics/PointF;

    goto :goto_0

    .line 950
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_snapPoint_270:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v7, v0

    cmpg-double v0, v7, v3

    if-gez v0, :cond_6

    .line 951
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_snapPoint_270:Landroid/graphics/PointF;

    .line 955
    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_restrainAngleHandleMovement:Z

    if-eqz v0, :cond_10

    .line 957
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->START_DISK_ANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    if-ne p2, v0, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_8

    move-object p2, p1

    goto :goto_1

    .line 958
    :cond_8
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->startDiskAngleHandlePoint()Landroid/graphics/PointF;

    move-result-object p2

    :goto_1
    if-eqz v1, :cond_9

    .line 959
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->endDiskAngleHandlePoint()Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_2

    :cond_9
    move-object v0, p1

    .line 964
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    .line 962
    invoke-static {p2, v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->angleDifferenceBetweenStartDiskAnglePoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 967
    iget v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_angleDifference:F

    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v5, v3, v4

    const/high16 v7, 0x43b40000    # 360.0f

    if-gtz v5, :cond_b

    cmpg-float v5, v2, v6

    if-gtz v5, :cond_d

    neg-float v5, v2

    add-float/2addr v5, v3

    cmpg-float v3, v5, v4

    if-gez v3, :cond_d

    if-eqz v1, :cond_a

    move-object p1, v0

    goto :goto_3

    :cond_a
    move-object p1, p2

    :goto_3
    move v2, v6

    goto :goto_5

    :cond_b
    cmpl-float v5, v2, v6

    if-ltz v5, :cond_d

    add-float v5, v2, v7

    sub-float/2addr v5, v3

    cmpg-float v3, v5, v4

    if-gez v3, :cond_d

    if-eqz v1, :cond_c

    move-object p1, v0

    goto :goto_4

    :cond_c
    move-object p1, p2

    :goto_4
    move v2, v7

    :cond_d
    :goto_5
    cmpl-float p2, v2, v6

    if-ltz p2, :cond_e

    goto :goto_6

    :cond_e
    add-float/2addr v2, v7

    .line 980
    :goto_6
    iput v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_angleDifference:F

    const/4 p2, 0x5

    .line 981
    invoke-static {v2, v6, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 982
    iput v6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_angleDifference:F

    return-object p1

    .line 983
    :cond_f
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_angleDifference:F

    invoke-static {v0, v7, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 984
    iput v7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_angleDifference:F

    :cond_10
    return-object p1
.end method

.method protected extraHandleCount_()I
    .locals 2

    .line 505
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 509
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 512
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    return v1
.end method

.method protected extraHandleEnablementAtIndex_(I)Z
    .locals 3

    .line 621
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 624
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    invoke-static {p1, v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    .line 631
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 629
    :cond_1
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    return p1

    .line 627
    :cond_2
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    return p1
.end method

.method protected extraHandlePointAtIndex_(I)Landroid/graphics/PointF;
    .locals 3

    .line 526
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    .line 527
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 529
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    invoke-static {p1, v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 539
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 540
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 537
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthHandlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 535
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->endDiskAngleHandlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 533
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->startDiskAngleHandlePoint()Landroid/graphics/PointF;

    move-result-object p1

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

    .line 552
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    .line 553
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 557
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    invoke-static {p1, v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    move-result-object v0

    .line 563
    new-instance v5, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;

    invoke-direct {v5}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;-><init>()V

    .line 564
    new-instance v6, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;-><init>(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement-IA;)V

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move-object v3, p2

    .line 565
    invoke-direct/range {v2 .. v7}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkPropertiesForVariation(Ljava/util/Map;ILcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;Z)Z

    move-result p1

    const/4 p2, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    .line 570
    iget p1, v5, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 571
    iget v4, v5, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 572
    iget v5, v6, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;->horizontal:F

    .line 573
    iget v6, v6, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;->vertical:F

    .line 576
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v7

    .line 577
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->ordinal()I

    move-result v0

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, p2, :cond_1

    const/4 p1, 0x0

    .line 594
    invoke-static {p1, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 595
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 589
    :cond_1
    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p2

    iget v0, v7, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v0, v9

    sub-float/2addr v0, v5

    iget v1, v7, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v1, v9

    sub-float/2addr v1, v6

    float-to-double v2, p1

    invoke-static {p2, v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnEllipseWithCenterInDegrees(Landroid/graphics/PointF;FFD)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 584
    :cond_2
    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p1

    iget p2, v7, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr p2, v9

    iget v0, v7, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v0, v9

    float-to-double v1, v4

    invoke-static {p1, p2, v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnEllipseWithCenterInDegrees(Landroid/graphics/PointF;FFD)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 579
    :cond_3
    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p2

    iget v0, v7, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v0, v9

    iget v1, v7, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v1, v9

    float-to-double v2, p1

    invoke-static {p2, v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnEllipseWithCenterInDegrees(Landroid/graphics/PointF;FFD)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 599
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->ordinal()I

    move-result p1

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, p2, :cond_5

    .line 607
    invoke-static {v3, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 608
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 605
    :cond_5
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthHandlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 603
    :cond_6
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->endDiskAngleHandlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 601
    :cond_7
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->startDiskAngleHandlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(I)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 644
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 660
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    invoke-static {p1, v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    .line 685
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 675
    :cond_1
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 676
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedHorizontalDiskWidth:F

    .line 677
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedVerticalDiskWidth:F

    .line 678
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->contentScale()F

    move-result v3

    move v11, p1

    move v5, v0

    move v6, v5

    move v12, v1

    move v7, v2

    move v8, v7

    move v9, v8

    move v10, v9

    goto/16 :goto_1

    .line 680
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->horizontalDiskWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthRatioFromDiskWidth(FF)F

    move-result p1

    .line 681
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->verticalDiskWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v1, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthRatioFromDiskWidth(FF)F

    move-result v1

    move v9, p1

    move v5, v0

    move v6, v5

    move v10, v1

    move v7, v2

    move v8, v7

    move v11, v8

    goto :goto_0

    .line 665
    :cond_3
    new-instance p1, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;-><init>()V

    .line 666
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/cm/RectEx;)V

    .line 667
    iget v0, p1, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 668
    iget p1, p1, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 669
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskAngle:Z

    if-nez v1, :cond_4

    .line 670
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    .line 671
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/cm/RectEx;->height:F

    move v6, p1

    move v5, v0

    move v7, v1

    move v9, v2

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v3

    move v8, v4

    goto :goto_2

    :cond_4
    move v6, p1

    move v5, v0

    move v7, v2

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_0
    move v12, v11

    :goto_1
    move v13, v3

    .line 690
    :goto_2
    invoke-static/range {v5 .. v13}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->variationFromStartDiskAngle(FFFFFFFFF)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(ILandroid/graphics/PointF;)Ljava/util/Map;
    .locals 19
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

    move-object/from16 v0, p0

    .line 709
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_0

    return-object v6

    .line 715
    :cond_0
    new-instance v4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;

    invoke-direct {v4}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;-><init>()V

    .line 716
    new-instance v5, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;

    invoke-direct {v5, v6}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;-><init>(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement-IA;)V

    .line 717
    iget v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_angleDifference:F

    move/from16 v2, p1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkPropertiesForHandlePoint(Landroid/graphics/PointF;IFLcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;)Z

    .line 722
    iget v1, v4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 723
    iget v2, v4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 724
    iget v3, v5, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;->horizontal:F

    .line 725
    iget v4, v5, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;->vertical:F

    .line 735
    iget-boolean v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    iget-boolean v7, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    move/from16 v8, p1

    invoke-static {v8, v5, v7}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->ordinal()I

    move-result v5

    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    if-eq v5, v7, :cond_3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    const/4 v1, 0x3

    if-eq v5, v1, :cond_1

    const/4 v1, 0x0

    .line 760
    invoke-static {v1, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v6

    .line 748
    :cond_1
    iget-boolean v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    if-eqz v1, :cond_2

    .line 749
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->contentScale()F

    move-result v9

    move v1, v8

    move v2, v1

    goto :goto_0

    .line 751
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthRatioFromDiskWidth(FF)F

    move-result v1

    .line 752
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthRatioFromDiskWidth(FF)F

    move-result v2

    move v3, v8

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move v10, v5

    move v11, v10

    move v12, v8

    move v13, v12

    goto :goto_2

    .line 740
    :cond_3
    iget-boolean v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskAngle:Z

    if-nez v3, :cond_4

    .line 741
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/cm/RectEx;->width:F

    .line 742
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/cm/RectEx;->height:F

    goto :goto_1

    :cond_4
    move v3, v8

    move v4, v3

    :goto_1
    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v8

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_2
    move/from16 v18, v9

    .line 765
    invoke-static/range {v10 .. v18}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->variationFromStartDiskAngle(FFFFFFFFF)Ljava/util/HashMap;

    move-result-object v1

    return-object v1
.end method

.method protected highlightPathWithExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/Path;
    .locals 8

    .line 1201
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1207
    :cond_0
    new-instance v6, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;

    invoke-direct {v6}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;-><init>()V

    .line 1208
    new-instance v7, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;

    invoke-direct {v7, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;-><init>(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement-IA;)V

    .line 1209
    iget v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_angleDifference:F

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkPropertiesForHandlePoint(Landroid/graphics/PointF;IFLcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;)Z

    .line 1216
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    iget p2, v6, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    iget v0, v6, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    iget v1, v7, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;->horizontal:F

    iget v2, v7, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;->vertical:F

    invoke-static {p1, p2, v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->createPathWithBaseBounds(Lcom/metamoji/cm/RectEx;FFFF)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method protected highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;
    .locals 5

    .line 1136
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1141
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskAngle:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    if-nez v0, :cond_1

    .line 1142
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1

    .line 1147
    :cond_1
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;-><init>()V

    .line 1148
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskAngle:Z

    if-eqz v1, :cond_2

    .line 1149
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/cm/RectEx;)V

    goto :goto_0

    .line 1151
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/cm/RectEx;)V

    .line 1153
    :goto_0
    iget v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 1154
    iget v0, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 1158
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    if-eqz v2, :cond_4

    .line 1159
    iget v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedHorizontalDiskWidth:F

    .line 1160
    iget v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedVerticalDiskWidth:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_3

    mul-float/2addr v2, p2

    mul-float/2addr v3, p2

    .line 1165
    :cond_3
    iget p2, p1, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p2, v4

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 1166
    iget v2, p1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_2

    .line 1168
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    .line 1169
    iget v2, p2, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->horizontalDiskWidth()F

    move-result v2

    iget v4, p1, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v2, v4

    iget v4, p2, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v2, v4

    goto :goto_1

    :cond_5
    move v2, v3

    .line 1170
    :goto_1
    iget v4, p2, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->verticalDiskWidth()F

    move-result v3

    iget v4, p1, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v3, v4

    iget p2, p2, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v3, p2

    :cond_6
    move p2, v2

    move v2, v3

    .line 1174
    :goto_2
    invoke-static {p1, v1, v0, p2, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->createPathWithBaseBounds(Lcom/metamoji/cm/RectEx;FFFF)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method protected highlightRectWithExtraHandlePoint_(Landroid/graphics/PointF;I)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 1190
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected initWithTranslate_(FFFFZZF)Z
    .locals 1

    const/high16 p1, -0x40800000    # -1.0f

    .line 299
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedHorizontalDiskWidth:F

    .line 300
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedVerticalDiskWidth:F

    const/4 p1, 0x0

    .line 301
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseHorizontalDiskWidth:F

    .line 302
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseVerticalDiskWidth:F

    const/4 p2, 0x1

    .line 303
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    .line 304
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    .line 305
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_restrainAngleHandleMovement:Z

    .line 306
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskAngle:Z

    const/4 p3, 0x0

    .line 307
    iput-boolean p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    .line 308
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_angleDifference:F

    .line 311
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result p4

    if-nez p4, :cond_0

    return p3

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 322
    iget-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    .line 323
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    const-string p6, "a"

    invoke-static {p6, p4, p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskAngleHandleEnablement:Z

    .line 326
    iget-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    .line 327
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    const-string/jumbo p6, "w"

    invoke-static {p6, p4, p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_diskWidthHandleEnablement:Z

    .line 330
    iget-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskAngle:Z

    .line 331
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    const-string p6, "n"

    invoke-static {p6, p4, p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskAngle:Z

    .line 334
    iget p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedHorizontalDiskWidth:F

    .line 335
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    const-string p6, "h"

    invoke-static {p6, p4, p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p4

    iput p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedHorizontalDiskWidth:F

    .line 336
    iget p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedVerticalDiskWidth:F

    .line 337
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    const-string/jumbo p6, "v"

    invoke-static {p6, p4, p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p4

    iput p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedVerticalDiskWidth:F

    .line 340
    const-string/jumbo p4, "z"

    .line 341
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    invoke-static {p4, p1, p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p4

    .line 342
    const-string p5, "c"

    .line 343
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p6

    invoke-static {p5, p1, p6}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p5

    .line 346
    iget-boolean p6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_restrainAngleHandleMovement:Z

    .line 347
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p7

    const-string v0, "r"

    invoke-static {v0, p6, p7}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p6

    iput-boolean p6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_restrainAngleHandleMovement:Z

    goto :goto_0

    :cond_1
    move p4, p1

    move p5, p4

    .line 351
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->outsideRadiusX()F

    move-result p6

    mul-float/2addr p6, p4

    iput p6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseHorizontalDiskWidth:F

    .line 352
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->outsideRadiusY()F

    move-result p4

    mul-float/2addr p4, p5

    iput p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_baseVerticalDiskWidth:F

    .line 355
    iget p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedHorizontalDiskWidth:F

    cmpl-float p4, p4, p1

    if-gez p4, :cond_3

    iget p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preservedVerticalDiskWidth:F

    cmpl-float p1, p4, p1

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    move p2, p3

    :cond_3
    :goto_1
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    .line 358
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->updatePreservedDiskWidthsWithBaseBounds(Lcom/metamoji/cm/RectEx;)V

    .line 361
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->updateAngleDifference()V

    .line 364
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->updateSnapPoints()V

    return p3
.end method

.method protected isAbleToFill_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public preserveDiskAngle()Z
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskAngle:Z

    return v0
.end method

.method public preserveDiskWidth()Z
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_preserveDiskWidth:Z

    return v0
.end method

.method protected replacementPath_()Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public restrainAngleHandleMovement()Z
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_restrainAngleHandleMovement:Z

    return v0
.end method

.method protected setExtraHandleVariation_(Ljava/util/Map;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)V"
        }
    .end annotation

    .line 784
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    new-instance v4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;

    invoke-direct {v4}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;-><init>()V

    .line 791
    new-instance v5, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;-><init>(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement-IA;)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    .line 792
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkPropertiesForVariation(Ljava/util/Map;ILcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 797
    iget v7, v4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 798
    iget v8, v4, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 799
    iget v9, v5, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;->horizontal:F

    .line 800
    iget v10, v5, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Extent;->vertical:F

    .line 807
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v6, p0

    .line 803
    invoke-direct/range {v6 .. v13}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyStartDiskAngle(FFFFLcom/metamoji/cm/RectEx;ZZ)V

    .line 812
    invoke-direct {p0, v7, v8}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyAngleDifferenceWithStartDiskAngle(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHorizontalDiskWidthRatio(FF)V
    .locals 8

    .line 209
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->isDestroyed()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 210
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 214
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 217
    :cond_1
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v1

    .line 218
    aput p1, v1, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    .line 219
    invoke-static {v1, v4, v5, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x2

    .line 220
    invoke-static {v7, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 222
    :cond_2
    aget v7, v1, v3

    .line 223
    aput p2, v1, v3

    .line 224
    invoke-static {v1, v4, v5, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x3

    .line 225
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 227
    :cond_3
    aget v1, v1, v3

    .line 230
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v5

    .line 231
    iget v2, v5, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {v7, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthFromDiskWidthRatio(FF)F

    move-result v3

    .line 232
    iget v2, v5, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->diskWidthFromDiskWidthRatio(FF)F

    move-result v4

    .line 236
    new-instance v1, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;-><init>()V

    .line 237
    sget-object v2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-direct {p0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->checkDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;Lcom/metamoji/cm/RectEx;)V

    .line 240
    iget v2, v1, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    iget v1, v1, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    const/4 v6, 0x1

    const/4 v7, 0x1

    move v0, v2

    move v2, v1

    move v1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyStartDiskAngle(FFFFLcom/metamoji/cm/RectEx;ZZ)V

    .line 249
    invoke-direct {p0, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyPreservedHorizontalDiskWidth(F)V

    .line 250
    invoke-direct {p0, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyPreservedVerticalDiskWidth(F)V

    const/high16 v1, -0x40800000    # -1.0f

    .line 253
    invoke-direct {p0, v3, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyBaseHorizontalDiskWidth(FF)V

    .line 254
    invoke-direct {p0, v4, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyBaseVerticalDiskWidth(FF)V

    return-void
.end method

.method public setStartDiskAngleInDegrees(FF)V
    .locals 9

    .line 172
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 173
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 177
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 182
    :cond_1
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;-><init>(FF)V

    .line 183
    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->adjustDiskAngles(Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;)V

    .line 184
    iget v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->start:F

    .line 185
    iget v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$Range;->end:F

    .line 190
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->horizontalDiskWidth()F

    move-result v4

    .line 191
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->verticalDiskWidth()F

    move-result v5

    .line 192
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    .line 188
    invoke-direct/range {v1 .. v8}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyStartDiskAngle(FFFFLcom/metamoji/cm/RectEx;ZZ)V

    .line 197
    invoke-direct {p0, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->applyAngleDifferenceWithStartDiskAngle(FF)V

    return-void
.end method

.method public setStartDiskAngleInRadians(FF)V
    .locals 0

    .line 201
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p1

    .line 202
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p2

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->setStartDiskAngleInDegrees(FF)V

    return-void
.end method

.method public setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    .line 265
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 266
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ed!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_extraDataNameForAngleDifference:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 272
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 275
    :cond_1
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->m_extraDataNameForAngleDifference:Ljava/lang/String;

    return-void
.end method

.method protected shapeType_()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
    .locals 1

    .line 376
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->DISK_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    return-object v0
.end method

.method protected updateSegmentBounds()V
    .locals 0

    .line 1267
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateSegmentBounds()V

    .line 1270
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->updateSnapPoints()V

    return-void
.end method
