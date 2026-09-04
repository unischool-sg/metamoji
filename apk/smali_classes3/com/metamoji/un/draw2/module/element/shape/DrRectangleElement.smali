.class public Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;
.super Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;
.source "DrRectangleElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;
    }
.end annotation


# static fields
.field public static final DrRectangleCornerPosition_ALL:I = 0xf

.field public static final DrRectangleCornerPosition_LEFT_BOTTOM:I = 0x4

.field public static final DrRectangleCornerPosition_LEFT_SIDE:I = 0x5

.field public static final DrRectangleCornerPosition_LEFT_SLANT:I = 0x6

.field public static final DrRectangleCornerPosition_LEFT_TOP:I = 0x1

.field public static final DrRectangleCornerPosition_LOWER_SIDE:I = 0xc

.field public static final DrRectangleCornerPosition_NONE:I = 0x0

.field public static final DrRectangleCornerPosition_OTHER_THAN_LEFT_BOTTOM:I = 0xb

.field public static final DrRectangleCornerPosition_OTHER_THAN_LEFT_TOP:I = 0xe

.field public static final DrRectangleCornerPosition_OTHER_THAN_RIGHT_BOTTOM:I = 0x7

.field public static final DrRectangleCornerPosition_OTHER_THAN_RIGHT_TOP:I = 0xd

.field public static final DrRectangleCornerPosition_RIGHT_BOTTOM:I = 0x8

.field public static final DrRectangleCornerPosition_RIGHT_SIDE:I = 0xa

.field public static final DrRectangleCornerPosition_RIGHT_SLANT:I = 0x9

.field public static final DrRectangleCornerPosition_RIGHT_TOP:I = 0x2

.field public static final DrRectangleCornerPosition_UPPER_SIDE:I = 0x3

.field private static final MODEL_PROPERTY_EXTRA_HANDLE_HORIZONTAL_MOVABILITY:Ljava/lang/String; = "z"

.field private static final MODEL_PROPERTY_EXTRA_HANDLE_VERTICAL_MOVABILITY:Ljava/lang/String; = "c"

.field private static final MODEL_PROPERTY_FLEXIBLE_CORNER_POSITION:Ljava/lang/String; = "f"

.field private static final MODEL_PROPERTY_LEFT_BOTTOM_CORNER_TYPE:Ljava/lang/String; = "2"

.field private static final MODEL_PROPERTY_LEFT_TOP_CORNER_TYPE:Ljava/lang/String; = "0"

.field private static final MODEL_PROPERTY_PRESERVED_CORNER_SIZE_RATIO:Ljava/lang/String; = "r"

.field private static final MODEL_PROPERTY_PRESERVED_FIXED_CORNER_HEIGHT:Ljava/lang/String; = "g"

.field private static final MODEL_PROPERTY_PRESERVED_FIXED_CORNER_WIDTH:Ljava/lang/String; = "d"

.field private static final MODEL_PROPERTY_PRESERVED_FLEXIBLE_CORNER_HEIGHT:Ljava/lang/String; = "h"

.field private static final MODEL_PROPERTY_PRESERVED_FLEXIBLE_CORNER_WIDTH:Ljava/lang/String; = "w"

.field private static final MODEL_PROPERTY_PRESERVE_CORNER_ASPECT_RATIO:Ljava/lang/String; = "a"

.field private static final MODEL_PROPERTY_RIGHT_BOTTOM_CORNER_TYPE:Ljava/lang/String; = "3"

.field private static final MODEL_PROPERTY_RIGHT_TOP_CORNER_TYPE:Ljava/lang/String; = "1"

.field private static final VARIATION_KEY_CONTENT_SCALE:Ljava/lang/String; = "c"

.field private static final VARIATION_KEY_CORNER_HEIGHT_RATIO:Ljava/lang/String; = "e"

.field private static final VARIATION_KEY_CORNER_WIDTH_RATIO:Ljava/lang/String; = "i"

.field private static final VARIATION_KEY_PRESERVED_CORNER_HEIGHT:Ljava/lang/String; = "h"

.field private static final VARIATION_KEY_PRESERVED_CORNER_WIDTH:Ljava/lang/String; = "w"


# instance fields
.field private m_fixedCornerSizeRatio:F

.field private m_flexibleCornerPosition:I

.field private m_handleHorizontalMovability:Z

.field private m_handleVerticalMovability:Z

.field private m_leftBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

.field private m_leftTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

.field private m_preserveCornerAspectRatio:Z

.field private m_preserveCornerHeight:Z

.field private m_preserveCornerWidth:Z

.field private m_preservedCornerSizeRatio:F

.field private final m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

.field private final m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

.field private m_rightBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

.field private m_rightTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;-><init>()V

    .line 117
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    .line 118
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    return-void
.end method

.method private adjustHandlePoint(Landroid/graphics/PointF;Z)Landroid/graphics/PointF;
    .locals 6

    .line 1762
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1763
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 1764
    new-instance v1, Lcom/metamoji/cm/RectEx;

    iget v2, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget v4, p1, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p1, v5

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    const/4 p1, 0x5

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;I)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1767
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private applyFlexibleCornerSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/RectEx;ZZ)V
    .locals 9

    .line 1482
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    const/4 v8, 0x0

    move-object v6, p1

    move-object v7, p2

    move-object v0, p3

    invoke-static/range {v0 .. v8}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->createSegmentsWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1491
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result p3

    const/4 v0, 0x0

    if-eq p2, p3, :cond_0

    const/4 p2, 0x0

    .line 1492
    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1493
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1494
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->destroy()V

    goto :goto_0

    .line 1500
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_1

    .line 1501
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1502
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->copyToSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    .line 1503
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->destroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 1508
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->updateSegments()V

    :cond_2
    if-eqz p5, :cond_3

    .line 1513
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->updateExtraHandles()V

    :cond_3
    return-void
.end method

.method private applyPreservedFixedCornerSize(Lcom/metamoji/cm/SizeF;)V
    .locals 3

    .line 1545
    iget v0, p1, Lcom/metamoji/cm/SizeF;->width:F

    .line 1546
    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    .line 1547
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v1, :cond_0

    move v0, v2

    .line 1550
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-nez v1, :cond_1

    move p1, v2

    .line 1553
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 1554
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iput v0, v1, Lcom/metamoji/cm/SizeF;->width:F

    .line 1555
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1556
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->savePreservedFixedCornerWidthToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1559
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    .line 1560
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iput p1, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 1561
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1562
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->savePreservedFixedCornerHeightToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_3
    return-void
.end method

.method private applyPreservedFlexibleCornerSize(Lcom/metamoji/cm/SizeF;)V
    .locals 3

    .line 1521
    iget v0, p1, Lcom/metamoji/cm/SizeF;->width:F

    .line 1522
    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    .line 1523
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v1, :cond_0

    move v0, v2

    .line 1526
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-nez v1, :cond_1

    move p1, v2

    .line 1529
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 1530
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    iput v0, v1, Lcom/metamoji/cm/SizeF;->width:F

    .line 1531
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1532
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->savePreservedFlexibleCornerWidthToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1535
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    .line 1536
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    iput p1, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 1537
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1538
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->savePreservedFlexibleCornerHeightToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_3
    return-void
.end method

.method private checkFixedCornerSizesForBaseBounds(Lcom/metamoji/cm/RectEx;FLcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 1717
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    if-eqz v0, :cond_0

    .line 1718
    iget v0, p4, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr v0, p2

    iput v0, p4, Lcom/metamoji/cm/SizeF;->width:F

    .line 1720
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-eqz v0, :cond_1

    .line 1721
    iget v0, p4, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v0, p2

    iput v0, p4, Lcom/metamoji/cm/SizeF;->height:F

    .line 1726
    :cond_1
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 1727
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerAspectRatio:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_fixedCornerSizeRatio:F

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_2

    .line 1728
    iget p2, p4, Lcom/metamoji/cm/SizeF;->width:F

    iput p2, p3, Lcom/metamoji/cm/SizeF;->width:F

    .line 1729
    iget p2, p1, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr p2, v0

    .line 1730
    iget v2, p3, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v2, v2, p2

    if-lez v2, :cond_5

    .line 1731
    iput p2, p3, Lcom/metamoji/cm/SizeF;->width:F

    .line 1732
    iget v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_fixedCornerSizeRatio:F

    mul-float/2addr p2, v2

    iput p2, p3, Lcom/metamoji/cm/SizeF;->height:F

    move-object p2, p3

    goto :goto_2

    .line 1736
    :cond_2
    iget p2, p4, Lcom/metamoji/cm/SizeF;->width:F

    iget v2, p1, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v2, v0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p3, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_1

    .line 1739
    :cond_3
    iget p2, p3, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_4

    iget v2, p1, Lcom/metamoji/cm/RectEx;->width:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    mul-float/2addr p2, v2

    iput p2, p3, Lcom/metamoji/cm/SizeF;->width:F

    :cond_5
    :goto_1
    move-object p2, p4

    .line 1741
    :goto_2
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-eqz v2, :cond_8

    .line 1742
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerAspectRatio:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_fixedCornerSizeRatio:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_7

    .line 1743
    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    iput p2, p3, Lcom/metamoji/cm/SizeF;->height:F

    .line 1744
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p1, v0

    .line 1745
    iget p2, p3, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float p2, p2, p1

    if-lez p2, :cond_6

    .line 1746
    iput p1, p3, Lcom/metamoji/cm/SizeF;->height:F

    .line 1747
    iget p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_fixedCornerSizeRatio:F

    div-float/2addr p1, p2

    iput p1, p3, Lcom/metamoji/cm/SizeF;->width:F

    :cond_6
    return-void

    .line 1750
    :cond_7
    iget p2, p4, Lcom/metamoji/cm/SizeF;->height:F

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p1, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p3, Lcom/metamoji/cm/SizeF;->height:F

    return-void

    .line 1753
    :cond_8
    iget p2, p3, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p4

    iget p4, p4, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float p4, p4, v1

    if-eqz p4, :cond_9

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p4

    iget p4, p4, Lcom/metamoji/cm/RectEx;->height:F

    div-float v1, p1, p4

    :cond_9
    mul-float/2addr p2, v1

    iput p2, p3, Lcom/metamoji/cm/SizeF;->height:F

    return-void
.end method

.method private checkFlexibleCornerSizesForBaseBounds(Lcom/metamoji/cm/RectEx;FLcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 1668
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    if-eqz v0, :cond_0

    .line 1669
    iget v0, p4, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr v0, p2

    iput v0, p4, Lcom/metamoji/cm/SizeF;->width:F

    .line 1671
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-eqz v0, :cond_1

    .line 1672
    iget v0, p4, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v0, p2

    iput v0, p4, Lcom/metamoji/cm/SizeF;->height:F

    .line 1677
    :cond_1
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 1678
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerAspectRatio:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_2

    .line 1679
    iget p2, p4, Lcom/metamoji/cm/SizeF;->width:F

    iput p2, p3, Lcom/metamoji/cm/SizeF;->width:F

    .line 1680
    iget p2, p1, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr p2, v0

    .line 1681
    iget v2, p3, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v2, v2, p2

    if-lez v2, :cond_5

    .line 1682
    iput p2, p3, Lcom/metamoji/cm/SizeF;->width:F

    .line 1683
    iget v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    mul-float/2addr p2, v2

    iput p2, p3, Lcom/metamoji/cm/SizeF;->height:F

    move-object p2, p3

    goto :goto_2

    .line 1687
    :cond_2
    iget p2, p4, Lcom/metamoji/cm/SizeF;->width:F

    iget v2, p1, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v2, v0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p3, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_1

    .line 1690
    :cond_3
    iget p2, p3, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_4

    iget v2, p1, Lcom/metamoji/cm/RectEx;->width:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    mul-float/2addr p2, v2

    iput p2, p3, Lcom/metamoji/cm/SizeF;->width:F

    :cond_5
    :goto_1
    move-object p2, p4

    .line 1692
    :goto_2
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-eqz v2, :cond_8

    .line 1693
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerAspectRatio:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_7

    .line 1694
    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    iput p2, p3, Lcom/metamoji/cm/SizeF;->height:F

    .line 1695
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p1, v0

    .line 1696
    iget p2, p3, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float p2, p2, p1

    if-lez p2, :cond_6

    .line 1697
    iput p1, p3, Lcom/metamoji/cm/SizeF;->height:F

    .line 1698
    iget p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    div-float/2addr p1, p2

    iput p1, p3, Lcom/metamoji/cm/SizeF;->width:F

    :cond_6
    return-void

    .line 1701
    :cond_7
    iget p2, p4, Lcom/metamoji/cm/SizeF;->height:F

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p1, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p3, Lcom/metamoji/cm/SizeF;->height:F

    return-void

    .line 1704
    :cond_8
    iget p2, p3, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p4

    iget p4, p4, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float p4, p4, v1

    if-eqz p4, :cond_9

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p4

    iget p4, p4, Lcom/metamoji/cm/RectEx;->height:F

    div-float v1, p1, p4

    :cond_9
    mul-float/2addr p2, v1

    iput p2, p3, Lcom/metamoji/cm/SizeF;->height:F

    return-void
.end method

.method private constructWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;ZZZZZ)V
    .locals 12

    move/from16 v0, p9

    move/from16 v1, p10

    .line 1168
    sget-object v2, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    const/high16 v3, -0x40800000    # -1.0f

    if-eq p2, v2, :cond_1

    if-eqz p6, :cond_1

    if-nez p12, :cond_0

    if-nez p13, :cond_0

    goto :goto_0

    :cond_0
    or-int/lit8 v2, p6, 0x1

    move/from16 v4, p11

    move/from16 v5, p12

    move/from16 v6, p13

    move v7, v2

    move-object/from16 v2, p7

    goto :goto_1

    .line 1173
    :cond_1
    :goto_0
    invoke-static {v3, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_1
    const/16 v8, 0xf

    if-ne v7, v8, :cond_2

    .line 1183
    invoke-static {v3, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v8

    goto :goto_2

    :cond_2
    move-object/from16 v8, p8

    :goto_2
    const/4 v9, 0x0

    if-eqz v4, :cond_4

    .line 1185
    iget v10, v2, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v10, v10, v9

    if-eqz v10, :cond_3

    iget v10, v2, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v10, v10, v9

    if-nez v10, :cond_4

    .line 1187
    :cond_3
    new-instance v2, Lcom/metamoji/cm/SizeF;

    invoke-direct {v2, v9, v9}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 1191
    :cond_4
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->size(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeFromCornerSizeRatio(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v10

    .line 1192
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->size(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeFromCornerSizeRatio(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v8

    .line 1195
    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 1196
    iput-object p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    move-object/from16 p2, p4

    .line 1197
    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    move-object/from16 p2, p5

    .line 1198
    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 1199
    iput v7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    .line 1204
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    if-eqz v0, :cond_5

    .line 1201
    iget v7, v10, Lcom/metamoji/cm/SizeF;->width:F

    iput v7, p2, Lcom/metamoji/cm/SizeF;->width:F

    .line 1202
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iget v7, v8, Lcom/metamoji/cm/SizeF;->width:F

    iput v7, p2, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_3

    .line 1204
    :cond_5
    iput v3, p2, Lcom/metamoji/cm/SizeF;->width:F

    .line 1205
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iput v3, p2, Lcom/metamoji/cm/SizeF;->width:F

    .line 1211
    :goto_3
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    if-eqz v1, :cond_6

    .line 1208
    iget v3, v10, Lcom/metamoji/cm/SizeF;->height:F

    iput v3, p2, Lcom/metamoji/cm/SizeF;->height:F

    .line 1209
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iget v3, v8, Lcom/metamoji/cm/SizeF;->height:F

    iput v3, p2, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_4

    .line 1211
    :cond_6
    iput v3, p2, Lcom/metamoji/cm/SizeF;->height:F

    .line 1212
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iput v3, p2, Lcom/metamoji/cm/SizeF;->height:F

    .line 1214
    :goto_4
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    .line 1215
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    .line 1216
    iput-boolean v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerAspectRatio:Z

    .line 1217
    iput-boolean v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleHorizontalMovability:Z

    .line 1218
    iput-boolean v6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleVerticalMovability:Z

    if-eqz v4, :cond_9

    .line 1220
    iget p2, v10, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float p2, p2, v9

    if-lez p2, :cond_7

    iget p2, v10, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float p2, p2, v9

    if-lez p2, :cond_7

    .line 1221
    iget p2, v10, Lcom/metamoji/cm/SizeF;->height:F

    iget v0, v10, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    goto :goto_5

    .line 1223
    :cond_7
    iget p2, v2, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float p2, p2, v9

    if-lez p2, :cond_8

    iget p2, v2, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float p2, p2, v9

    if-lez p2, :cond_8

    .line 1224
    iget p2, v2, Lcom/metamoji/cm/SizeF;->height:F

    iget v0, v2, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    goto :goto_5

    :cond_8
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1226
    iput p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    goto :goto_5

    .line 1230
    :cond_9
    iput v9, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    .line 1232
    :goto_5
    iget p2, v8, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float p2, p2, v9

    if-lez p2, :cond_a

    iget p2, v8, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float p2, p2, v9

    if-lez p2, :cond_a

    .line 1233
    iget p2, v8, Lcom/metamoji/cm/SizeF;->height:F

    iget v0, v8, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_fixedCornerSizeRatio:F

    .line 1237
    :cond_a
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 1238
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    invoke-static {p2, v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->saveCornerTypesToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;)V

    .line 1243
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->saveFlexibleCornerPositionToModel(Lcom/metamoji/df/model/IModel;I)V

    .line 1244
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerAspectRatio:Z

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->savePreserveCornerAspectRatioToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1245
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleHorizontalMovability:Z

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->saveExtraHandleHorizontalMovabilityToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1246
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleVerticalMovability:Z

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->saveExtraHandleVerticalMovabilityToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1247
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->savePreservedFlexibleCornerWidthToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1248
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->savePreservedFlexibleCornerHeightToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1249
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->savePreservedFixedCornerWidthToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1250
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->savePreservedFixedCornerHeightToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1251
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->savePreservedCornerSizeRatioToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1255
    :cond_b
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    .line 1263
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    move-object p3, p2

    move-object/from16 p4, v0

    move-object/from16 p5, v1

    move-object/from16 p6, v2

    move/from16 p7, v3

    move-object/from16 p10, v4

    move-object/from16 p9, v8

    move-object/from16 p8, v10

    move-object p2, p1

    .line 1255
    invoke-static/range {p2 .. p10}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->createSegmentsWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1264
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1265
    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->addSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    goto :goto_6

    .line 1269
    :cond_c
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->updateSegments()V

    .line 1272
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->updateExtraHandles()V

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

    .line 2374
    const-string v0, "c"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_1

    .line 2376
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 2378
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    :cond_0
    return p0

    :cond_1
    return v0
.end method

.method private static cornerSizeFromCornerSizeRatio(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;
    .locals 5

    .line 2284
    iget v0, p0, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v0, v2

    iget v4, p0, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2285
    :goto_0
    iget v4, p0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_1

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr p1, v2

    iget p0, p0, Lcom/metamoji/cm/SizeF;->height:F

    mul-float v3, p1, p0

    .line 2286
    :cond_1
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    return-object p0
.end method

.method private cornerSizeFromHandlePoint(Landroid/graphics/PointF;)Lcom/metamoji/cm/SizeF;
    .locals 10

    .line 1775
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 1776
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 1777
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 1778
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    .line 1779
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    sub-float/2addr v2, v1

    sub-float/2addr v0, v3

    .line 1784
    iget v4, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v1

    .line 1785
    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v3

    .line 1788
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->leftTopCornerBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->size(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v1

    .line 1789
    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    .line 1790
    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    .line 1791
    iget-boolean v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerAspectRatio:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_7

    cmpl-float v5, v4, v8

    if-gtz v5, :cond_1

    cmpl-float v5, p1, v8

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move p1, v8

    move v4, p1

    goto :goto_4

    .line 1794
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleHorizontalMovability:Z

    .line 1808
    iget-boolean v9, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleVerticalMovability:Z

    if-eqz v5, :cond_4

    if-eqz v9, :cond_2

    goto :goto_4

    :cond_2
    cmpl-float p1, v3, v8

    if-nez p1, :cond_3

    .line 1802
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    mul-float/2addr p1, v4

    goto :goto_4

    :cond_3
    div-float p1, v4, v3

    mul-float/2addr v1, p1

    goto :goto_3

    :cond_4
    if-eqz v9, :cond_6

    cmpl-float v4, v1, v8

    if-nez v4, :cond_5

    .line 1811
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    div-float v1, p1, v1

    move v4, v1

    goto :goto_4

    :cond_5
    div-float v1, p1, v1

    mul-float/2addr v3, v1

    move v4, v3

    goto :goto_4

    .line 1817
    :cond_6
    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1827
    :cond_7
    iget-boolean v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleHorizontalMovability:Z

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    move v4, v3

    .line 1830
    :goto_2
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleVerticalMovability:Z

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    move p1, v1

    .line 1836
    :goto_4
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v1

    .line 1837
    aput v4, v1, v7

    const/4 v3, 0x5

    .line 1838
    invoke-static {v1, v8, v2, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    .line 1839
    invoke-static {v2, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1841
    :cond_a
    aget v2, v1, v7

    .line 1842
    aput p1, v1, v7

    .line 1843
    invoke-static {v1, v8, v0, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x2

    .line 1844
    invoke-static {p1, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1846
    :cond_b
    aget p1, v1, v7

    .line 1848
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object p1

    return-object p1
.end method

.method private static cornerSizeRatioFromCornerSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;
    .locals 6

    .line 2290
    iget v0, p1, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/cm/SizeF;->width:F

    iget v3, p1, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v3, v2

    div-float/2addr v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2291
    :goto_0
    iget v3, p1, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    iget p0, p0, Lcom/metamoji/cm/SizeF;->height:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr p1, v2

    div-float/2addr p0, p1

    goto :goto_1

    :cond_1
    move p0, v1

    .line 2292
    :goto_1
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object p1

    const/4 v2, 0x0

    .line 2293
    aput v0, p1, v2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x5

    .line 2294
    invoke-static {p1, v1, v0, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 2295
    invoke-static {v2, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2297
    :cond_2
    aget v4, p1, v2

    .line 2298
    aput p0, p1, v2

    .line 2299
    invoke-static {p1, v1, v0, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    .line 2300
    invoke-static {p0, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2302
    :cond_3
    aget p0, p1, v2

    .line 2303
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    return-object p0
.end method

.method private static cornerSizeRatioFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/SizeF;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/metamoji/cm/SizeF;"
        }
    .end annotation

    .line 2329
    const-string v0, "i"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 2330
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    if-eqz v0, :cond_1

    .line 2332
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 2333
    aput v0, v1, v6

    .line 2334
    invoke-static {v1, v5, v4, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2335
    invoke-static {v6, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2337
    :cond_0
    aget v0, v1, v6

    goto :goto_0

    :cond_1
    move v0, v7

    .line 2340
    :goto_0
    const-string v8, "e"

    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2342
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 2343
    aput p0, v1, v6

    .line 2344
    invoke-static {v1, v5, v4, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 2345
    invoke-static {p0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2347
    :cond_2
    aget v7, v1, v6

    .line 2349
    :cond_3
    invoke-static {v0, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    return-object p0
.end method

.method private static createCornerSegmentsWithCornerType(Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/RectEx;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;",
            "I",
            "Lcom/metamoji/cm/RectEx;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;"
        }
    .end annotation

    .line 2058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2059
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 2060
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 2061
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    .line 2062
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p2

    .line 2063
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result p0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz p0, :cond_24

    if-eq p0, v8, :cond_1f

    if-eq p0, v7, :cond_12

    const/4 v9, 0x3

    if-eq p0, v9, :cond_5

    if-eq p0, v6, :cond_0

    const/4 p0, 0x5

    .line 2275
    invoke-static {p0, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-eq p1, v8, :cond_4

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_2

    if-eq p1, v4, :cond_1

    .line 2266
    invoke-static {v6, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2263
    :cond_1
    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_0

    .line 2260
    :cond_2
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_0

    .line 2257
    :cond_3
    invoke-static {v2, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_0

    .line 2254
    :cond_4
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    .line 2269
    :goto_0
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p1

    .line 2270
    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2271
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_5
    if-eq p1, v8, :cond_f

    if-eq p1, v7, :cond_c

    if-eq p1, v6, :cond_9

    if-eq p1, v4, :cond_6

    .line 2244
    invoke-static {v9, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_6
    move p0, v1

    .line 2231
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    cmpl-float p1, p0, v2

    if-eqz p1, :cond_8

    cmpl-float p1, v3, p2

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move v9, v2

    .line 2235
    invoke-static {v9, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    move v10, v3

    sub-float v3, v9, p0

    sub-float v4, p2, v10

    const/high16 v6, 0x43340000    # 180.0f

    const/4 v7, 0x0

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto/16 :goto_8

    .line 2233
    :cond_8
    :goto_1
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    goto/16 :goto_8

    :cond_9
    move p0, v1

    move v9, v2

    move v10, v3

    .line 2218
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    cmpl-float p1, p0, v9

    if-eqz p1, :cond_b

    cmpl-float p1, v10, p2

    if-nez p1, :cond_a

    goto :goto_2

    .line 2222
    :cond_a
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    sub-float v4, v9, p0

    sub-float v5, p2, v10

    const/high16 v7, 0x43870000    # 270.0f

    const/4 v8, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_3

    .line 2220
    :cond_b
    :goto_2
    invoke-static {p0, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    :goto_3
    move-object v1, v2

    goto :goto_8

    :cond_c
    move p0, v1

    move v9, v2

    move v10, v3

    .line 2205
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v3

    cmpl-float p1, p0, v9

    if-eqz p1, :cond_e

    cmpl-float p1, v10, p2

    if-nez p1, :cond_d

    goto :goto_4

    .line 2209
    :cond_d
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    sub-float v5, v9, p0

    sub-float v6, p2, v10

    const/high16 v8, 0x42b40000    # 90.0f

    const/4 v9, 0x0

    const/high16 v7, 0x43340000    # 180.0f

    invoke-virtual/range {v3 .. v9}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_5

    .line 2207
    :cond_e
    :goto_4
    invoke-static {v9, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    :goto_5
    move-object v1, v3

    goto :goto_8

    :cond_f
    move p0, v1

    move v9, v2

    move v10, v3

    .line 2192
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v4

    cmpl-float p1, p0, v9

    if-eqz p1, :cond_11

    cmpl-float p1, v10, p2

    if-nez p1, :cond_10

    goto :goto_6

    .line 2196
    :cond_10
    invoke-static {p0, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    sub-float v6, v9, p0

    sub-float v7, p2, v10

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual/range {v4 .. v10}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_7

    .line 2194
    :cond_11
    :goto_6
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    :goto_7
    move-object v1, v4

    .line 2247
    :goto_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_12
    move p0, v1

    move v9, v2

    move v10, v3

    if-eq p1, v8, :cond_1c

    if-eq p1, v7, :cond_19

    if-eq p1, v6, :cond_16

    if-eq p1, v4, :cond_13

    .line 2182
    invoke-static {v7, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2169
    :cond_13
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    cmpl-float p1, p0, v9

    if-eqz p1, :cond_15

    cmpl-float p1, v10, p2

    if-nez p1, :cond_14

    goto :goto_9

    .line 2173
    :cond_14
    invoke-static {p0, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    sub-float v4, v9, p0

    sub-float v5, p2, v10

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto/16 :goto_10

    .line 2171
    :cond_15
    :goto_9
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    goto/16 :goto_10

    .line 2156
    :cond_16
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v3

    cmpl-float p1, p0, v9

    if-eqz p1, :cond_18

    cmpl-float p1, v10, p2

    if-nez p1, :cond_17

    goto :goto_a

    .line 2160
    :cond_17
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    sub-float v5, v9, p0

    sub-float v6, p2, v10

    const/high16 v8, 0x43340000    # 180.0f

    const/4 v9, 0x1

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual/range {v3 .. v9}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_b

    .line 2158
    :cond_18
    :goto_a
    invoke-static {p0, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    :goto_b
    move-object v2, v3

    goto :goto_10

    .line 2143
    :cond_19
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v4

    cmpl-float p1, p0, v9

    if-eqz p1, :cond_1b

    cmpl-float p1, v10, p2

    if-nez p1, :cond_1a

    goto :goto_c

    .line 2147
    :cond_1a
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    sub-float v6, v9, p0

    sub-float v7, p2, v10

    const/high16 v9, 0x43b40000    # 360.0f

    const/4 v10, 0x1

    const/high16 v8, 0x43870000    # 270.0f

    invoke-virtual/range {v4 .. v10}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_d

    .line 2145
    :cond_1b
    :goto_c
    invoke-static {v9, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    :goto_d
    move-object v2, v4

    goto :goto_10

    .line 2130
    :cond_1c
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v5

    cmpl-float p1, p0, v9

    if-eqz p1, :cond_1e

    cmpl-float p1, v10, p2

    if-nez p1, :cond_1d

    goto :goto_e

    .line 2134
    :cond_1d
    invoke-static {v9, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v6

    sub-float v7, v9, p0

    sub-float v8, p2, v10

    const/high16 v10, 0x43870000    # 270.0f

    const/4 v11, 0x1

    const/high16 v9, 0x43340000    # 180.0f

    invoke-virtual/range {v5 .. v11}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setEllipseArcInDegrees(Landroid/graphics/PointF;FFFFZ)V

    goto :goto_f

    .line 2132
    :cond_1e
    :goto_e
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    :goto_f
    move-object v2, v5

    .line 2185
    :goto_10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1f
    move p0, v1

    move v9, v2

    move v10, v3

    if-eq p1, v8, :cond_23

    if-eq p1, v7, :cond_22

    if-eq p1, v6, :cond_21

    if-eq p1, v4, :cond_20

    .line 2115
    invoke-static {v8, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2111
    :cond_20
    invoke-static {p0, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 2112
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_11

    .line 2107
    :cond_21
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 2108
    invoke-static {p0, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_11

    .line 2103
    :cond_22
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 2104
    invoke-static {v9, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_11

    .line 2099
    :cond_23
    invoke-static {v9, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 2100
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    .line 2118
    :goto_11
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p2

    .line 2119
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p3

    .line 2120
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2121
    invoke-virtual {p3, p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2122
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2123
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_24
    move p0, v1

    move v9, v2

    move v10, v3

    if-eq p1, v8, :cond_28

    if-eq p1, v7, :cond_27

    if-eq p1, v6, :cond_26

    if-eq p1, v4, :cond_25

    const/4 p0, 0x0

    .line 2084
    invoke-static {p0, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2080
    :cond_25
    invoke-static {v9, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 2081
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_12

    .line 2076
    :cond_26
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 2077
    invoke-static {p0, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_12

    .line 2072
    :cond_27
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 2073
    invoke-static {v9, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_12

    .line 2068
    :cond_28
    invoke-static {p0, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 2069
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    .line 2087
    :goto_12
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p2

    .line 2088
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p3

    .line 2089
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2090
    invoke-virtual {p3, p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 2091
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2092
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static createPathWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Landroid/graphics/Path;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 2019
    invoke-static/range {v0 .. v8}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->createSegmentsWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2030
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 2044
    new-instance p2, Landroid/graphics/PointF;

    const/high16 p3, 0x7fc00000    # Float.NaN

    invoke-direct {p2, p3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2045
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 2046
    invoke-virtual {p3, p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->addToPath(Landroid/graphics/Path;Landroid/graphics/PointF;)V

    .line 2047
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->destroy()V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static createSegmentsWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/RectEx;",
            "Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;",
            "Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;",
            "Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;",
            "Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;",
            "I",
            "Lcom/metamoji/cm/SizeF;",
            "Lcom/metamoji/cm/SizeF;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 1864
    iget v3, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 1865
    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 1866
    iget v4, v1, Lcom/metamoji/cm/SizeF;->width:F

    .line 1867
    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    .line 1870
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    .line 1871
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    .line 1872
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    .line 1873
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v8

    and-int/lit8 v9, p5, 0x1

    if-eqz v9, :cond_0

    add-float v9, v5, v3

    add-float v10, v7, v0

    move v12, v0

    move v11, v3

    goto :goto_0

    :cond_0
    add-float v9, v5, v4

    add-float v10, v7, v1

    move v12, v1

    move v11, v4

    :goto_0
    and-int/lit8 v13, p5, 0x2

    if-eqz v13, :cond_1

    sub-float v13, v6, v3

    add-float v14, v7, v0

    move/from16 p6, v0

    move v15, v3

    goto :goto_1

    :cond_1
    sub-float v13, v6, v4

    add-float v14, v7, v1

    move/from16 p6, v0

    move v0, v1

    move v15, v4

    :goto_1
    and-int/lit8 v16, p5, 0x4

    if-eqz v16, :cond_2

    add-float v16, v5, v3

    sub-float v17, v8, p6

    move/from16 p7, v1

    move/from16 p0, v11

    move/from16 v1, v16

    move/from16 v11, p6

    move/from16 v16, v3

    move/from16 v3, v17

    move/from16 v17, v4

    move/from16 v4, v16

    goto :goto_2

    :cond_2
    add-float v16, v5, v4

    sub-float v17, v8, v1

    move/from16 p7, v1

    move/from16 p0, v11

    move/from16 v11, p7

    move/from16 v1, v16

    move/from16 v16, v3

    move/from16 v3, v17

    move/from16 v17, v4

    :goto_2
    move/from16 v18, v12

    const/16 v12, 0x8

    and-int/lit8 v19, p5, 0x8

    if-eqz v19, :cond_3

    sub-float v17, v6, v16

    sub-float v19, v8, p6

    move/from16 p7, v17

    move/from16 v17, v3

    move/from16 v3, p7

    move/from16 p7, v19

    move/from16 v19, v4

    move/from16 v4, p7

    move/from16 p7, v16

    move/from16 v16, v10

    move/from16 v10, p7

    move/from16 v12, p6

    goto :goto_3

    :cond_3
    sub-float v16, v6, v17

    sub-float v19, v8, p7

    move/from16 v12, v17

    move/from16 v17, v3

    move/from16 v3, v16

    move/from16 v16, v10

    move v10, v12

    move/from16 v12, v19

    move/from16 v19, v4

    move v4, v12

    move/from16 v12, p7

    :goto_3
    move/from16 p7, v5

    .line 1944
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move/from16 v20, v11

    .line 1947
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v11

    .line 1948
    invoke-static {v9, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v9

    move/from16 v21, v1

    invoke-static {v13, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v11, v9, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1949
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1952
    new-instance v1, Lcom/metamoji/cm/RectEx;

    invoke-direct {v1, v13, v7, v15, v0}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    const/4 v0, 0x2

    move-object/from16 v9, p2

    invoke-static {v9, v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->createCornerSegmentsWithCornerType(Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/RectEx;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1959
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1962
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 1963
    invoke-static {v6, v14}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v6, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1964
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1967
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, v3, v4, v10, v12}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    move-object/from16 v1, p4

    const/16 v4, 0x8

    invoke-static {v1, v4, v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->createCornerSegmentsWithCornerType(Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/RectEx;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1974
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1977
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 1978
    invoke-static {v3, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    move/from16 v3, v21

    invoke-static {v3, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1979
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1982
    new-instance v0, Lcom/metamoji/cm/RectEx;

    move/from16 v1, p7

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v6, v20

    invoke-direct {v0, v1, v3, v4, v6}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    const/4 v4, 0x4

    move-object/from16 v6, p3

    invoke-static {v6, v4, v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->createCornerSegmentsWithCornerType(Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/RectEx;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1989
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1992
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 1993
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    move/from16 v10, v16

    invoke-static {v1, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1994
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    new-instance v0, Lcom/metamoji/cm/RectEx;

    move/from16 v3, p0

    move/from16 v4, v18

    invoke-direct {v0, v1, v7, v3, v4}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    const/4 v1, 0x1

    move-object/from16 v3, p1

    invoke-static {v3, v1, v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->createCornerSegmentsWithCornerType(Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/RectEx;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2004
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v5
.end method

.method private fixedCornerSize()Lcom/metamoji/cm/SizeF;
    .locals 2

    .line 1461
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_3

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 1463
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->rightTopCornerBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->size(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 1465
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->leftBottomCornerBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->size(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    :cond_1
    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    .line 1467
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->rightBottomCornerBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->size(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    .line 1469
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    .line 1471
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->leftTopCornerBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->size(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0
.end method

.method private flexibleCornerSize()Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 1457
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->leftTopCornerBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->size(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0
.end method

.method private leftBottomCornerBounds()Lcom/metamoji/cm/RectEx;
    .locals 8

    .line 1315
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    .line 1328
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1329
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-static {v0, v1, v6, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    .line 1324
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_0

    .line 1318
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result v0

    sub-int/2addr v0, v3

    .line 1331
    :goto_0
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result v7

    if-eqz v7, :cond_3

    if-eq v7, v5, :cond_3

    if-eq v7, v2, :cond_2

    if-eq v7, v4, :cond_2

    if-eq v7, v3, :cond_2

    .line 1343
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1344
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-static {v0, v1, v6, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    .line 1340
    :cond_2
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    .line 1334
    :cond_3
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 1335
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->prevSegment()Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method private leftSideLength()F
    .locals 3

    .line 1421
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1432
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1433
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    return v0

    .line 1429
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    return v0

    .line 1424
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    return v0
.end method

.method private leftTopCornerBounds()Lcom/metamoji/cm/RectEx;
    .locals 3

    .line 1278
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1290
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1291
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    .line 1287
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->lastSegment()Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    .line 1281
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->lastSegment()Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 1282
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->prevSegment()Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method private lowerSideLength()F
    .locals 7

    .line 1391
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v5, :cond_0

    const/4 v0, 0x0

    .line 1401
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1402
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/RectEx;->width:F

    return v0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    .line 1404
    :goto_0
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result v6

    if-eqz v6, :cond_2

    if-eq v6, v4, :cond_2

    if-eq v6, v3, :cond_3

    if-eq v6, v2, :cond_3

    if-eq v6, v5, :cond_3

    .line 1414
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1415
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/RectEx;->width:F

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 1417
    :cond_3
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/RectEx;->width:F

    return v0
.end method

.method public static newEmptyRectangleElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 1057
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->newEmptySegmentalShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1059
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->RECTANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1061
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static newRectangleElementWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;ZZZZZLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;
    .locals 15

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v14, p16

    .line 1088
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFiniteRect(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1089
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 1092
    :cond_0
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-lez v0, :cond_8

    iget v0, p0, Lcom/metamoji/cm/RectEx;->height:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    goto/16 :goto_1

    .line 1096
    :cond_1
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    .line 1097
    iget v4, v7, Lcom/metamoji/cm/SizeF;->width:F

    aput v4, v0, v1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    .line 1098
    invoke-static {v0, v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x2

    .line 1099
    invoke-static {v6, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1101
    :cond_2
    aget v6, v0, v1

    iput v6, v7, Lcom/metamoji/cm/SizeF;->width:F

    .line 1102
    iget v6, v7, Lcom/metamoji/cm/SizeF;->height:F

    aput v6, v0, v1

    .line 1103
    invoke-static {v0, v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x3

    .line 1104
    invoke-static {v6, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1106
    :cond_3
    aget v6, v0, v1

    iput v6, v7, Lcom/metamoji/cm/SizeF;->height:F

    .line 1107
    iget v6, v8, Lcom/metamoji/cm/SizeF;->width:F

    aput v6, v0, v1

    .line 1108
    invoke-static {v0, v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x4

    .line 1109
    invoke-static {v6, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1111
    :cond_4
    aget v6, v0, v1

    iput v6, v8, Lcom/metamoji/cm/SizeF;->width:F

    .line 1112
    iget v6, v8, Lcom/metamoji/cm/SizeF;->height:F

    aput v6, v0, v1

    .line 1113
    invoke-static {v0, v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x5

    .line 1114
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1116
    :cond_5
    aget v0, v0, v1

    iput v0, v8, Lcom/metamoji/cm/SizeF;->height:F

    if-eqz p14, :cond_6

    .line 1119
    invoke-static/range {p14 .. p14}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->newEmptyRectangleElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v2

    .line 1122
    :goto_0
    new-instance v1, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;-><init>()V

    move-object/from16 v3, p15

    invoke-virtual {v1, v0, v3, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;

    move-object/from16 v1, p13

    .line 1125
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 1128
    invoke-direct/range {v0 .. v13}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->constructWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;ZZZZZ)V

    if-eqz v14, :cond_7

    .line 1144
    invoke-virtual {v0, v14}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    :cond_7
    return-object v0

    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 1093
    invoke-static {p0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2
.end method

.method private static origin(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;
    .locals 2

    .line 2518
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private static preservedCornerSizeFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/SizeF;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/metamoji/cm/SizeF;"
        }
    .end annotation

    .line 2354
    const-string/jumbo v0, "w"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    .line 2356
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, 0x0

    .line 2358
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2362
    :cond_1
    :goto_0
    const-string v4, "h"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2364
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpg-float p0, v3, v2

    if-gez p0, :cond_2

    const/4 p0, 0x1

    .line 2366
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2369
    :cond_2
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    return-object p0
.end method

.method private rightBottomCornerBounds()Lcom/metamoji/cm/RectEx;
    .locals 8

    .line 1350
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    .line 1363
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1364
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-static {v0, v1, v5, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1366
    :goto_0
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result v7

    if-eqz v7, :cond_3

    if-eq v7, v6, :cond_3

    if-eq v7, v2, :cond_2

    if-eq v7, v4, :cond_2

    if-eq v7, v3, :cond_2

    .line 1378
    invoke-static {v6, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1379
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-static {v0, v1, v5, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    .line 1375
    :cond_2
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    :cond_3
    add-int/2addr v0, v6

    .line 1369
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 1370
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->prevSegment()Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method private rightSideLength()F
    .locals 3

    .line 1438
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1449
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1450
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    return v0

    .line 1446
    :cond_0
    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    return v0

    .line 1441
    :cond_1
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    return v0
.end method

.method private rightTopCornerBounds()Lcom/metamoji/cm/RectEx;
    .locals 3

    .line 1296
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1308
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1309
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    .line 1305
    :cond_0
    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    .line 1299
    :cond_1
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 1300
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->prevSegment()Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method private static saveCornerTypesToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 2394
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    const-string v1, "0"

    if-eq p1, v0, :cond_1

    .line 2395
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 2397
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 2399
    :goto_0
    sget-object p1, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    const-string v0, "1"

    if-eq p2, p1, :cond_2

    .line 2400
    invoke-static {v0, p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 2402
    :cond_2
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 2404
    :goto_1
    sget-object p1, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    const-string p2, "2"

    if-eq p3, p1, :cond_3

    .line 2405
    invoke-static {p2, p3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 2407
    :cond_3
    invoke-static {p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 2409
    :goto_2
    sget-object p1, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    const-string p2, "3"

    if-eq p4, p1, :cond_4

    .line 2410
    invoke-static {p2, p4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 2412
    :cond_4
    invoke-static {p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveExtraHandleHorizontalMovabilityToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2442
    :cond_0
    const-string/jumbo v0, "z"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2443
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2445
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveExtraHandleVerticalMovabilityToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2453
    :cond_0
    const-string v0, "c"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2454
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2456
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveFlexibleCornerPositionToModel(Lcom/metamoji/df/model/IModel;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2420
    :cond_0
    const-string v0, "f"

    if-eqz p1, :cond_1

    .line 2421
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    return-void

    .line 2423
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreserveCornerAspectRatioToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2431
    :cond_0
    const-string v0, "a"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2432
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2434
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreservedCornerSizeRatioToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 2508
    const-string v1, "r"

    if-eqz v0, :cond_1

    .line 2509
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2511
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreservedFixedCornerHeightToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 2497
    const-string v1, "g"

    if-ltz v0, :cond_1

    .line 2498
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2500
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreservedFixedCornerWidthToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 2486
    const-string v1, "d"

    if-ltz v0, :cond_1

    .line 2487
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2489
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreservedFlexibleCornerHeightToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 2475
    const-string v1, "h"

    if-ltz v0, :cond_1

    .line 2476
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2478
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreservedFlexibleCornerWidthToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 2464
    const-string/jumbo v1, "w"

    if-ltz v0, :cond_1

    .line 2465
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 2467
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static size(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;
    .locals 2

    .line 2521
    new-instance v0, Lcom/metamoji/cm/SizeF;

    iget v1, p0, Lcom/metamoji/cm/RectEx;->width:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-direct {v0, v1, p0}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method

.method private updatePreservedCornerSizeRatioWithCornerSize(Lcom/metamoji/cm/SizeF;)V
    .locals 2

    .line 1648
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerAspectRatio:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1651
    :cond_0
    iget v0, p1, Lcom/metamoji/cm/SizeF;->height:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v0, p1

    .line 1652
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1653
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    .line 1654
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1655
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->savePreservedCornerSizeRatioToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePreservedCornerSizesWithBaseBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 9

    .line 1569
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-nez v0, :cond_0

    return-void

    .line 1574
    :cond_0
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    .line 1575
    new-instance v1, Lcom/metamoji/cm/RectEx;

    invoke-direct {v1}, Lcom/metamoji/cm/RectEx;-><init>()V

    .line 1584
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 1585
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    .line 1588
    iget v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-eqz v3, :cond_a

    .line 1590
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->leftTopCornerBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1591
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 1592
    :goto_0
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    cmpg-float v6, v6, p1

    if-gez v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    .line 1595
    :goto_1
    iget v7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    and-int/lit8 v8, v7, 0x2

    if-nez v8, :cond_5

    .line 1596
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->rightTopCornerBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1597
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    cmpl-float v2, v7, v2

    if-lez v2, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v5

    .line 1598
    :goto_2
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    cmpg-float p1, v7, p1

    if-gez p1, :cond_4

    goto :goto_5

    :cond_4
    move v4, v5

    goto :goto_5

    :cond_5
    and-int/lit8 v8, v7, 0x4

    if-nez v8, :cond_7

    .line 1600
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->leftBottomCornerBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1601
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    cmpg-float v2, v7, v2

    if-gez v2, :cond_6

    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v5

    .line 1602
    :goto_3
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    cmpl-float p1, v7, p1

    if-lez p1, :cond_4

    goto :goto_5

    :cond_7
    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_9

    .line 1604
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->rightBottomCornerBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1605
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    cmpl-float v2, v7, v2

    if-lez v2, :cond_8

    move v2, v4

    goto :goto_4

    :cond_8
    move v2, v5

    .line 1606
    :goto_4
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    cmpl-float p1, v7, p1

    if-lez p1, :cond_4

    goto :goto_5

    :cond_9
    move v2, v5

    move v4, v2

    :goto_5
    move v5, v3

    goto :goto_8

    .line 1610
    :cond_a
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->leftTopCornerBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1611
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    cmpg-float v2, v3, v2

    if-gez v2, :cond_b

    move v2, v4

    goto :goto_6

    :cond_b
    move v2, v5

    .line 1612
    :goto_6
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    cmpg-float p1, v3, p1

    if-gez p1, :cond_c

    goto :goto_7

    :cond_c
    move v4, v5

    :goto_7
    move v6, v5

    .line 1616
    :goto_8
    new-instance p1, Lcom/metamoji/cm/SizeF;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    invoke-direct {p1, v3}, Lcom/metamoji/cm/SizeF;-><init>(Lcom/metamoji/cm/SizeF;)V

    .line 1617
    new-instance v3, Lcom/metamoji/cm/SizeF;

    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    invoke-direct {v3, v7}, Lcom/metamoji/cm/SizeF;-><init>(Lcom/metamoji/cm/SizeF;)V

    .line 1620
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 1621
    iget-boolean v7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    if-eqz v7, :cond_e

    iget v7, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget v8, v0, Lcom/metamoji/cm/RectEx;->width:F

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_d

    iget v7, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget v8, v0, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_e

    if-eqz v5, :cond_e

    .line 1623
    :cond_d
    iget v5, v0, Lcom/metamoji/cm/RectEx;->width:F

    iput v5, p1, Lcom/metamoji/cm/SizeF;->width:F

    .line 1625
    :cond_e
    iget-boolean v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-eqz v5, :cond_10

    iget v5, p1, Lcom/metamoji/cm/SizeF;->height:F

    iget v7, v0, Lcom/metamoji/cm/RectEx;->height:F

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_f

    iget v5, p1, Lcom/metamoji/cm/SizeF;->height:F

    iget v7, v0, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_10

    if-eqz v6, :cond_10

    .line 1627
    :cond_f
    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    iput v0, p1, Lcom/metamoji/cm/SizeF;->height:F

    .line 1630
    :cond_10
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1631
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    if-eqz v0, :cond_12

    iget v0, v3, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, v1, Lcom/metamoji/cm/RectEx;->width:F

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_11

    iget v0, v3, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, v1, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_12

    if-eqz v2, :cond_12

    .line 1633
    :cond_11
    iget v0, v1, Lcom/metamoji/cm/RectEx;->width:F

    iput v0, v3, Lcom/metamoji/cm/SizeF;->width:F

    .line 1635
    :cond_12
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-eqz v0, :cond_14

    iget v0, v3, Lcom/metamoji/cm/SizeF;->height:F

    iget v2, v1, Lcom/metamoji/cm/RectEx;->height:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_13

    iget v0, v3, Lcom/metamoji/cm/SizeF;->height:F

    iget v2, v1, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_14

    if-eqz v4, :cond_14

    .line 1637
    :cond_13
    iget v0, v1, Lcom/metamoji/cm/RectEx;->height:F

    iput v0, v3, Lcom/metamoji/cm/SizeF;->height:F

    .line 1642
    :cond_14
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->applyPreservedFlexibleCornerSize(Lcom/metamoji/cm/SizeF;)V

    .line 1643
    invoke-direct {p0, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->applyPreservedFixedCornerSize(Lcom/metamoji/cm/SizeF;)V

    return-void
.end method

.method private upperSideLength()F
    .locals 1

    const/4 v0, 0x0

    .line 1386
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/RectEx;->width:F

    return v0
.end method

.method private static variationFromCornerSizeRatio(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;F)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/SizeF;",
            "Lcom/metamoji/cm/SizeF;",
            "F)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 2308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2309
    iget v1, p0, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 2310
    iget v1, p0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v4, "i"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    :cond_0
    iget v1, p0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    .line 2313
    iget p0, p0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "e"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2315
    :cond_1
    iget p0, p1, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float p0, p0, v2

    if-ltz p0, :cond_2

    .line 2316
    iget p0, p1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo v1, "w"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2318
    :cond_2
    iget p0, p1, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float p0, p0, v2

    if-ltz p0, :cond_3

    .line 2319
    iget p0, p1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p1, "h"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    cmpl-float p0, p2, v3

    if-eqz p0, :cond_4

    .line 2322
    const-string p0, "c"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method


# virtual methods
.method protected applyExtraHandlePoint_(Landroid/graphics/PointF;I)Z
    .locals 7

    .line 908
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x1

    .line 913
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->adjustHandlePoint(Landroid/graphics/PointF;Z)Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeFromHandlePoint(Landroid/graphics/PointF;)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    .line 916
    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->applyPreservedFlexibleCornerSize(Lcom/metamoji/cm/SizeF;)V

    .line 919
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->flexibleCornerSize()Lcom/metamoji/cm/SizeF;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeEqualToSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 921
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->fixedCornerSize()Lcom/metamoji/cm/SizeF;

    move-result-object v3

    .line 922
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    .line 920
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->applyFlexibleCornerSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/RectEx;ZZ)V

    .line 927
    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->updatePreservedCornerSizeRatioWithCornerSize(Lcom/metamoji/cm/SizeF;)V

    return p2

    :cond_1
    move-object v1, p0

    return v0
.end method

.method protected applySegmentBounds_(Lcom/metamoji/cm/RectEx;F)V
    .locals 7

    .line 480
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 485
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-nez v0, :cond_1

    .line 486
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->applySegmentBounds_(Lcom/metamoji/cm/RectEx;F)V

    return-void

    .line 491
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->flexibleCornerSize()Lcom/metamoji/cm/SizeF;

    move-result-object v2

    .line 492
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->fixedCornerSize()Lcom/metamoji/cm/SizeF;

    move-result-object v3

    .line 493
    new-instance v0, Lcom/metamoji/cm/SizeF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, v1}, Lcom/metamoji/cm/SizeF;-><init>(Lcom/metamoji/cm/SizeF;)V

    .line 494
    new-instance v1, Lcom/metamoji/cm/SizeF;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    invoke-direct {v1, v4}, Lcom/metamoji/cm/SizeF;-><init>(Lcom/metamoji/cm/SizeF;)V

    .line 495
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->checkFlexibleCornerSizesForBaseBounds(Lcom/metamoji/cm/RectEx;FLcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)V

    .line 499
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->checkFixedCornerSizesForBaseBounds(Lcom/metamoji/cm/RectEx;FLcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)V

    .line 505
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->applyPreservedFlexibleCornerSize(Lcom/metamoji/cm/SizeF;)V

    .line 506
    invoke-direct {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->applyPreservedFixedCornerSize(Lcom/metamoji/cm/SizeF;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 509
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->applyFlexibleCornerSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/RectEx;ZZ)V

    return-void
.end method

.method protected applySegments_()V
    .locals 1

    .line 525
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->updatePreservedCornerSizesWithBaseBounds(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method protected cancelEvaluationOfExtraHandleAtIndex_(I)V
    .locals 0

    .line 885
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->cancelEvaluationOfExtraHandleAtIndex_(I)V

    return-void
.end method

.method protected checkEqualityOfExtraHandleVariation_(Ljava/util/Map;Ljava/util/Map;I)Z
    .locals 6
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

    .line 726
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeRatioFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/SizeF;

    move-result-object p3

    .line 727
    iget v0, p3, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-gez v0, :cond_0

    .line 728
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 731
    :cond_0
    iget v0, p3, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v0, v0, v1

    const/4 v4, 0x1

    if-gez v0, :cond_1

    .line 732
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 735
    :cond_1
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeRatioFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 736
    iget v5, v0, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v5, v5, v1

    if-gez v5, :cond_2

    const/4 p1, 0x2

    .line 737
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 740
    :cond_2
    iget v5, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v1, v5, v1

    if-gez v1, :cond_3

    const/4 p1, 0x3

    .line 741
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 744
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->preservedCornerSizeFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/SizeF;

    move-result-object v1

    .line 745
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->preservedCornerSizeFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    .line 746
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->contentScaleFromVariation(Ljava/util/Map;)F

    move-result p1

    .line 747
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->contentScaleFromVariation(Ljava/util/Map;)F

    move-result p2

    const/4 v5, 0x5

    .line 748
    invoke-static {p3, v0, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 749
    invoke-static {v1, v2, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 750
    invoke-static {p1, p2, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p1

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return v3
.end method

.method protected checkMovementOfExtraHandleAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 0

    .line 762
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x5

    .line 765
    invoke-static {p2, p3, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected containsPoint_(Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected destroy_()V
    .locals 0

    .line 1045
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->destroy_()V

    return-void
.end method

.method protected editExtraHandleWithVariationAlways_()Z
    .locals 1

    .line 897
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

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

.method protected editOriginally_()Z
    .locals 1

    .line 458
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 776
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 781
    :cond_0
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 782
    iget v3, v1, Landroid/graphics/PointF;->y:F

    .line 785
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    .line 786
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    .line 787
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    .line 788
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    .line 789
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    .line 794
    iget-boolean v8, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleHorizontalMovability:Z

    if-eqz v8, :cond_2

    cmpg-float v8, v2, v5

    if-gez v8, :cond_1

    goto :goto_0

    :cond_1
    cmpl-float v8, v2, v6

    if-lez v8, :cond_3

    move v2, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v5

    .line 803
    :cond_3
    :goto_1
    iget-boolean v8, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleVerticalMovability:Z

    if-eqz v8, :cond_5

    cmpg-float v8, v3, v7

    if-gez v8, :cond_4

    goto :goto_2

    :cond_4
    cmpl-float v8, v3, v4

    if-lez v8, :cond_6

    move v3, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v7

    .line 814
    :cond_6
    :goto_3
    iget-boolean v8, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerAspectRatio:Z

    if-nez v8, :cond_7

    .line 815
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    return-object v1

    .line 819
    :cond_7
    new-instance v8, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->leftTopCornerBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V

    .line 821
    iget v9, v8, Lcom/metamoji/cm/RectEx;->width:F

    float-to-double v9, v9

    iget v11, v8, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L    # 1.0E-5

    mul-double/2addr v11, v13

    cmpg-double v9, v9, v11

    const/4 v10, 0x0

    if-gez v9, :cond_8

    iput v10, v8, Lcom/metamoji/cm/RectEx;->width:F

    .line 822
    :cond_8
    iget v9, v8, Lcom/metamoji/cm/RectEx;->height:F

    float-to-double v11, v9

    iget v9, v8, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move-wide v15, v13

    float-to-double v13, v9

    mul-double/2addr v13, v15

    cmpg-double v9, v11, v13

    if-gez v9, :cond_9

    iput v10, v8, Lcom/metamoji/cm/RectEx;->height:F

    :cond_9
    sub-float v9, v6, v5

    sub-float v11, v4, v7

    .line 827
    iget v12, v8, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v12, v12, v10

    if-nez v12, :cond_b

    iget v12, v8, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v12, v12, v10

    if-nez v12, :cond_b

    div-float v8, v11, v9

    .line 829
    iget v10, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_a

    mul-float/2addr v9, v10

    add-float/2addr v9, v7

    :goto_4
    move v11, v6

    goto :goto_7

    :cond_a
    div-float/2addr v11, v10

    add-float/2addr v11, v5

    :goto_5
    move v9, v4

    goto :goto_7

    .line 836
    :cond_b
    iget v12, v8, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v12, v12, v10

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v12, :cond_c

    iget v12, v8, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v9, v12

    goto :goto_6

    :cond_c
    move v9, v13

    .line 837
    :goto_6
    iget v12, v8, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v10, v12, v10

    if-eqz v10, :cond_d

    iget v10, v8, Lcom/metamoji/cm/RectEx;->height:F

    div-float v13, v11, v10

    :cond_d
    cmpl-float v10, v9, v13

    if-lez v10, :cond_e

    .line 839
    iget v8, v8, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v8, v13

    add-float v11, v5, v8

    goto :goto_5

    .line 841
    :cond_e
    iget v8, v8, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v8, v9

    add-float v9, v7, v8

    goto :goto_4

    .line 846
    :goto_7
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v8

    const/4 v10, 0x0

    .line 847
    aput v11, v8, v10

    const/4 v11, 0x5

    .line 848
    invoke-static {v8, v5, v6, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v6

    const/4 v12, 0x0

    if-nez v6, :cond_f

    .line 849
    invoke-static {v10, v12}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 851
    :cond_f
    aget v6, v8, v10

    .line 852
    aput v9, v8, v10

    .line 853
    invoke-static {v8, v7, v4, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x1

    .line 854
    invoke-static {v4, v12}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 856
    :cond_10
    aget v4, v8, v10

    .line 859
    iget-boolean v8, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleHorizontalMovability:Z

    if-eqz v8, :cond_11

    iget-boolean v8, v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleVerticalMovability:Z

    if-eqz v8, :cond_11

    .line 861
    invoke-static {v5, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v6, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getNearestPointToSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 862
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 863
    iget v3, v1, Landroid/graphics/PointF;->y:F

    goto :goto_8

    :cond_11
    cmpl-float v1, v2, v6

    if-lez v1, :cond_12

    move v2, v6

    :cond_12
    cmpl-float v1, v3, v4

    if-lez v1, :cond_13

    move v3, v4

    .line 874
    :cond_13
    :goto_8
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    return-object v1
.end method

.method protected extraHandleCount_()I
    .locals 2

    .line 541
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 544
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleHorizontalMovability:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleVerticalMovability:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected extraHandleEnablementAtIndex_(I)Z
    .locals 1

    .line 616
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 619
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleHorizontalMovability:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleVerticalMovability:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public extraHandleHorizontalMovability()Z
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 210
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 213
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleHorizontalMovability:Z

    return v0
.end method

.method protected extraHandlePointAtIndex_(I)Landroid/graphics/PointF;
    .locals 2

    .line 555
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 556
    invoke-static {p1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 558
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->leftTopCornerBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 559
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleHorizontalMovability:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 560
    :goto_0
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleVerticalMovability:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    .line 561
    :goto_1
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandlePointAtIndex_(ILjava/util/Map;)Landroid/graphics/PointF;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 573
    invoke-static {p1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 577
    :cond_0
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeRatioFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/SizeF;

    move-result-object p1

    .line 578
    iget v0, p1, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_6

    iget v0, p1, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto :goto_1

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 585
    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->size(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeFromCornerSizeRatio(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object p1

    .line 588
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-eqz v1, :cond_3

    .line 590
    :cond_2
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->preservedCornerSizeFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/SizeF;

    move-result-object v1

    .line 591
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->contentScaleFromVariation(Ljava/util/Map;)F

    move-result p2

    .line 595
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->contentScale()F

    move-result v2

    div-float/2addr v2, p2

    .line 594
    invoke-direct {p0, v0, v2, p1, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->checkFlexibleCornerSizesForBaseBounds(Lcom/metamoji/cm/RectEx;FLcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)V

    .line 601
    :cond_3
    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->origin(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p2

    .line 602
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleHorizontalMovability:Z

    if-eqz v0, :cond_4

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v0, v1

    goto :goto_0

    :cond_4
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 603
    :goto_0
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleVerticalMovability:Z

    iget p2, p2, Landroid/graphics/PointF;->y:F

    if-eqz v1, :cond_5

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr p2, p1

    .line 605
    :cond_5
    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 579
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->origin(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 630
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 633
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->contentScale()F

    move-result p1

    .line 634
    :goto_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->flexibleCornerSize()Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 635
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->size(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v1

    .line 634
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeRatioFromCornerSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->variationFromCornerSizeRatio(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;F)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(ILandroid/graphics/PointF;)Ljava/util/Map;
    .locals 2
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

    .line 648
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 651
    invoke-direct {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->adjustHandlePoint(Landroid/graphics/PointF;Z)Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeFromHandlePoint(Landroid/graphics/PointF;)Lcom/metamoji/cm/SizeF;

    move-result-object p1

    .line 652
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->size(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeRatioFromCornerSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object p2

    .line 654
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_1

    .line 655
    iput v1, p1, Lcom/metamoji/cm/SizeF;->width:F

    .line 657
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-nez v0, :cond_2

    .line 658
    iput v1, p1, Lcom/metamoji/cm/SizeF;->height:F

    .line 660
    :cond_2
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->contentScale()F

    move-result v0

    .line 661
    :goto_1
    invoke-static {p2, p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->variationFromCornerSizeRatio(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;F)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public extraHandleVerticalMovability()Z
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 218
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 221
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleVerticalMovability:Z

    return v0
.end method

.method public flexibleCornerPosition()I
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 165
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 168
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    return v0
.end method

.method protected highlightPathWithExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/Path;
    .locals 8

    .line 997
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    const/4 p2, 0x1

    .line 1006
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->adjustHandlePoint(Landroid/graphics/PointF;Z)Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeFromHandlePoint(Landroid/graphics/PointF;)Lcom/metamoji/cm/SizeF;

    move-result-object v6

    .line 1007
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->fixedCornerSize()Lcom/metamoji/cm/SizeF;

    move-result-object v7

    .line 1000
    invoke-static/range {v0 .. v7}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->createPathWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method protected highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;
    .locals 8

    .line 943
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 948
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-nez v0, :cond_1

    .line 949
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1

    .line 953
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->flexibleCornerSize()Lcom/metamoji/cm/SizeF;

    move-result-object v6

    .line 954
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->fixedCornerSize()Lcom/metamoji/cm/SizeF;

    move-result-object v7

    .line 955
    new-instance v0, Lcom/metamoji/cm/SizeF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, v1}, Lcom/metamoji/cm/SizeF;-><init>(Lcom/metamoji/cm/SizeF;)V

    .line 956
    new-instance v1, Lcom/metamoji/cm/SizeF;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    invoke-direct {v1, v2}, Lcom/metamoji/cm/SizeF;-><init>(Lcom/metamoji/cm/SizeF;)V

    .line 957
    invoke-direct {p0, p1, p2, v6, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->checkFlexibleCornerSizesForBaseBounds(Lcom/metamoji/cm/RectEx;FLcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)V

    .line 961
    invoke-direct {p0, p1, p2, v7, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->checkFixedCornerSizesForBaseBounds(Lcom/metamoji/cm/RectEx;FLcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)V

    .line 967
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iget v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->createPathWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method protected highlightRectWithExtraHandlePoint_(Landroid/graphics/PointF;I)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 986
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected initWithTranslate_(FFFFZZF)Z
    .locals 3

    .line 316
    sget-object p1, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 317
    sget-object p1, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 318
    sget-object p1, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 319
    sget-object p1, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    const/4 p1, 0x0

    .line 320
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    .line 321
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p2, p3, p3}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 322
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {p2, p3, p3}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 323
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    .line 324
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    const/4 p2, 0x1

    .line 325
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerAspectRatio:Z

    .line 326
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleHorizontalMovability:Z

    .line 327
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleVerticalMovability:Z

    const/4 p3, 0x0

    .line 328
    iput p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    .line 329
    iput p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_fixedCornerSizeRatio:F

    .line 332
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result p4

    if-nez p4, :cond_0

    return p1

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 339
    sget-object p4, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 340
    const-string p5, "0"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p6

    invoke-static {p5, p4, p6}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p4

    check-cast p4, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 341
    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result p5

    const/4 p6, 0x0

    const/4 p7, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p5, :cond_1

    if-eq p5, p2, :cond_1

    if-eq p5, v1, :cond_1

    if-eq p5, v0, :cond_1

    if-eq p5, p7, :cond_1

    .line 350
    invoke-static {p1, p6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_1
    iput-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 353
    :goto_0
    sget-object p4, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 354
    const-string p5, "1"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {p5, p4, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p4

    check-cast p4, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 355
    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result p5

    if-eqz p5, :cond_2

    if-eq p5, p2, :cond_2

    if-eq p5, v1, :cond_2

    if-eq p5, v0, :cond_2

    if-eq p5, p7, :cond_2

    .line 364
    invoke-static {p2, p6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 361
    :cond_2
    iput-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 367
    :goto_1
    sget-object p4, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 368
    const-string p5, "2"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {p5, p4, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p4

    check-cast p4, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 369
    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result p5

    if-eqz p5, :cond_3

    if-eq p5, p2, :cond_3

    if-eq p5, v1, :cond_3

    if-eq p5, v0, :cond_3

    if-eq p5, p7, :cond_3

    .line 378
    invoke-static {v1, p6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 375
    :cond_3
    iput-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 381
    :goto_2
    sget-object p4, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 382
    const-string p5, "3"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {p5, p4, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p4

    check-cast p4, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 383
    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->ordinal()I

    move-result p5

    if-eqz p5, :cond_4

    if-eq p5, p2, :cond_4

    if-eq p5, v1, :cond_4

    if-eq p5, v0, :cond_4

    if-eq p5, p7, :cond_4

    .line 392
    invoke-static {v0, p6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_3

    .line 389
    :cond_4
    iput-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 398
    :goto_3
    const-string p4, "f"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    invoke-static {p4, p1, p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result p4

    if-ltz p4, :cond_5

    .line 400
    iput p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    goto :goto_4

    .line 402
    :cond_5
    invoke-static {p7, p6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 406
    :goto_4
    iget-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerAspectRatio:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    const-string p6, "a"

    invoke-static {p6, p4, p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerAspectRatio:Z

    .line 409
    iget-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleHorizontalMovability:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    const-string/jumbo p6, "z"

    invoke-static {p6, p4, p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleHorizontalMovability:Z

    .line 410
    iget-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleVerticalMovability:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    const-string p6, "c"

    invoke-static {p6, p4, p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_handleVerticalMovability:Z

    .line 413
    iget-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    iget p5, p4, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p6

    const-string/jumbo p7, "w"

    invoke-static {p7, p5, p6}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p5

    iput p5, p4, Lcom/metamoji/cm/SizeF;->width:F

    .line 414
    iget-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    iget p5, p4, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p6

    const-string p7, "h"

    invoke-static {p7, p5, p6}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p5

    iput p5, p4, Lcom/metamoji/cm/SizeF;->height:F

    .line 415
    iget-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iget p5, p4, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p6

    const-string p7, "d"

    invoke-static {p7, p5, p6}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p5

    iput p5, p4, Lcom/metamoji/cm/SizeF;->width:F

    .line 416
    iget-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iget p5, p4, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p6

    const-string p7, "g"

    invoke-static {p7, p5, p6}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p5

    iput p5, p4, Lcom/metamoji/cm/SizeF;->height:F

    .line 419
    iget p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    const-string p6, "r"

    invoke-static {p6, p4, p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p4

    iput p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedCornerSizeRatio:F

    .line 423
    :cond_6
    iget-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    iget p4, p4, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float p4, p4, p3

    if-gez p4, :cond_8

    iget-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iget p4, p4, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float p4, p4, p3

    if-ltz p4, :cond_7

    goto :goto_5

    :cond_7
    move p4, p1

    goto :goto_6

    :cond_8
    :goto_5
    move p4, p2

    :goto_6
    iput-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    .line 424
    iget-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFlexibleCornerSize:Lcom/metamoji/cm/SizeF;

    iget p4, p4, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float p4, p4, p3

    if-gez p4, :cond_a

    iget-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preservedFixedCornerSize:Lcom/metamoji/cm/SizeF;

    iget p4, p4, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float p4, p4, p3

    if-ltz p4, :cond_9

    goto :goto_7

    :cond_9
    move p2, p1

    :cond_a
    :goto_7
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    .line 427
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->updatePreservedCornerSizesWithBaseBounds(Lcom/metamoji/cm/RectEx;)V

    .line 430
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->fixedCornerSize()Lcom/metamoji/cm/SizeF;

    move-result-object p2

    .line 431
    iget p4, p2, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float p4, p4, p3

    if-lez p4, :cond_b

    iget p4, p2, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float p3, p4, p3

    if-lez p3, :cond_b

    .line 432
    iget p3, p2, Lcom/metamoji/cm/SizeF;->height:F

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr p3, p2

    iput p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_fixedCornerSizeRatio:F

    :cond_b
    return p1
.end method

.method protected isAbleToFill_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public leftBottomCornerType()Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    return-object v0
.end method

.method public leftTopCornerType()Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_leftTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    return-object v0
.end method

.method public preserveCornerAspectRatio()Z
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 199
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerAspectRatio:Z

    return v0
.end method

.method public preserveCornerHeight()Z
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 185
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 188
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    return v0
.end method

.method public preserveCornerWidth()Z
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 177
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    return v0
.end method

.method protected replacementPath_()Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public rightBottomCornerType()Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightBottomCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    return-object v0
.end method

.method public rightTopCornerType()Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_rightTopCornerType:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    return-object v0
.end method

.method protected setExtraHandleVariation_(Ljava/util/Map;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)V"
        }
    .end annotation

    .line 674
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    move-object v1, p0

    goto :goto_0

    .line 679
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeRatioFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/SizeF;

    move-result-object p2

    .line 680
    iget v0, p2, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_5

    iget v0, p2, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_1

    .line 686
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    .line 687
    invoke-static {v4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->size(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeFromCornerSizeRatio(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    .line 690
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerWidth:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerHeight:Z

    if-eqz p2, :cond_4

    .line 692
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->preservedCornerSizeFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/SizeF;

    move-result-object p2

    .line 693
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->contentScaleFromVariation(Ljava/util/Map;)F

    move-result p1

    .line 697
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->contentScale()F

    move-result v0

    div-float/2addr v0, p1

    .line 696
    invoke-direct {p0, v4, v0, v2, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->checkFlexibleCornerSizesForBaseBounds(Lcom/metamoji/cm/RectEx;FLcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)V

    .line 702
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->applyPreservedFlexibleCornerSize(Lcom/metamoji/cm/SizeF;)V

    .line 706
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->flexibleCornerSize()Lcom/metamoji/cm/SizeF;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeEqualToSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 708
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->fixedCornerSize()Lcom/metamoji/cm/SizeF;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    .line 707
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->applyFlexibleCornerSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/RectEx;ZZ)V

    .line 714
    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->updatePreservedCornerSizeRatioWithCornerSize(Lcom/metamoji/cm/SizeF;)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    move-object v1, p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 681
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public setFlexibleCornerSizeRatio(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)V
    .locals 7

    .line 229
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 234
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 237
    :cond_1
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, p1}, Lcom/metamoji/cm/SizeF;-><init>(Lcom/metamoji/cm/SizeF;)V

    .line 238
    new-instance p1, Lcom/metamoji/cm/SizeF;

    invoke-direct {p1, p2}, Lcom/metamoji/cm/SizeF;-><init>(Lcom/metamoji/cm/SizeF;)V

    .line 239
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object p2

    .line 240
    iget v3, v0, Lcom/metamoji/cm/SizeF;->width:F

    aput v3, p2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    .line 241
    invoke-static {p2, v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x2

    .line 242
    invoke-static {v6, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 244
    :cond_2
    aget v6, p2, v2

    iput v6, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 245
    iget v6, v0, Lcom/metamoji/cm/SizeF;->height:F

    aput v6, p2, v2

    .line 246
    invoke-static {p2, v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x3

    .line 247
    invoke-static {v6, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 249
    :cond_3
    aget v6, p2, v2

    iput v6, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 250
    iget v6, p1, Lcom/metamoji/cm/SizeF;->width:F

    aput v6, p2, v2

    .line 251
    invoke-static {p2, v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x4

    .line 252
    invoke-static {v6, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 254
    :cond_4
    aget v6, p2, v2

    iput v6, p1, Lcom/metamoji/cm/SizeF;->width:F

    .line 255
    iget v6, p1, Lcom/metamoji/cm/SizeF;->height:F

    aput v6, p2, v2

    .line 256
    invoke-static {p2, v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x5

    .line 257
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 259
    :cond_5
    aget p2, p2, v2

    iput p2, p1, Lcom/metamoji/cm/SizeF;->height:F

    .line 262
    iget p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    const/high16 v1, -0x40800000    # -1.0f

    if-nez p2, :cond_6

    .line 263
    invoke-virtual {v0, v1, v1}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 265
    :cond_6
    iget p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_flexibleCornerPosition:I

    const/16 v2, 0xf

    if-ne p2, v2, :cond_7

    .line 266
    invoke-virtual {p1, v1, v1}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 270
    :cond_7
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->m_preserveCornerAspectRatio:Z

    if-eqz p2, :cond_9

    iget p2, v0, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_8

    iget p2, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float p2, p2, v3

    if-nez p2, :cond_9

    .line 271
    :cond_8
    sget-object p2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeZero:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v0, p2}, Lcom/metamoji/cm/SizeF;->set(Lcom/metamoji/cm/SizeF;)V

    .line 275
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    .line 276
    invoke-static {v4}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->size(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object p2

    .line 277
    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeFromCornerSizeRatio(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    .line 278
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->cornerSizeFromCornerSizeRatio(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    .line 281
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->applyFlexibleCornerSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/RectEx;ZZ)V

    .line 288
    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->applyPreservedFlexibleCornerSize(Lcom/metamoji/cm/SizeF;)V

    .line 289
    invoke-direct {p0, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->applyPreservedFixedCornerSize(Lcom/metamoji/cm/SizeF;)V

    .line 292
    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->updatePreservedCornerSizeRatioWithCornerSize(Lcom/metamoji/cm/SizeF;)V

    return-void
.end method

.method protected shapeType_()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
    .locals 1

    .line 445
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->RECTANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    return-object v0
.end method
