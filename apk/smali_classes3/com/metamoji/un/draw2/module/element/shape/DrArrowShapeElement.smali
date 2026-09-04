.class public Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;
.super Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;
.source "DrArrowShapeElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;
    }
.end annotation


# static fields
.field private static final MODEL_PROPERTY_ARROW_SHAPE_TYPE:Ljava/lang/String; = "a"

.field private static final MODEL_PROPERTY_PRESERVED_ARROW_HEAD_LENGTH:Ljava/lang/String; = "l"

.field private static final VARIATION_KEY_CONTENT_SCALE:Ljava/lang/String; = "c"

.field private static final VARIATION_KEY_EXTRA_HANDLE_POSITION_X:Ljava/lang/String; = "x"

.field private static final VARIATION_KEY_EXTRA_HANDLE_POSITION_Y:Ljava/lang/String; = "y"

.field private static final VARIATION_KEY_PRESERVED_ARROW_HEAD_LENGTH:Ljava/lang/String; = "l"


# instance fields
.field private m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

.field private m_preserveArrowHeadLength:Z

.field private m_preservedArrowHeadLength:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;-><init>()V

    return-void
.end method

.method private adjustHandlePoint(Landroid/graphics/PointF;Z)Landroid/graphics/PointF;
    .locals 2

    .line 856
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 857
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    .line 858
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handleRangeFromArrowShapeType(Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    const/4 v1, 0x5

    .line 857
    invoke-static {p1, v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 860
    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private applyHandlePosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;ZZ)V
    .locals 3

    .line 787
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    invoke-static {p2, v0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->createSegmentPointsWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Landroid/graphics/PointF;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    .line 790
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p2

    add-int/lit8 v0, p2, -0x1

    .line 791
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    .line 792
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 797
    :cond_0
    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 798
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 v0, 0x2

    :goto_0
    if-ge v0, p2, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 802
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    .line 803
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 808
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->updateSegments()V

    :cond_2
    if-eqz p4, :cond_3

    .line 813
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->updateExtraHandles()V

    :cond_3
    return-void
.end method

.method private applyPreservedArrowHeadLength(F)V
    .locals 1

    .line 819
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    if-nez v0, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    .line 822
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preservedArrowHeadLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 823
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preservedArrowHeadLength:F

    .line 824
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 825
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preservedArrowHeadLength:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->savePreservedArrowHeadLengthToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_1
    return-void
.end method

.method private constructWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Landroid/graphics/PointF;Z)V
    .locals 2

    .line 731
    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    .line 732
    iput-boolean p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    .line 735
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    invoke-static {p2, p4}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->saveArrowShapeTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;)V

    .line 740
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    invoke-static {p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->createSegmentPointsWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Landroid/graphics/PointF;)Lcom/metamoji/cm/PointArray;

    move-result-object p2

    .line 741
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p3

    const/4 p4, 0x0

    if-lez p3, :cond_3

    .line 744
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 745
    invoke-static {p4, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p4

    const/4 v1, 0x1

    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 746
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->addSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    const/4 p4, 0x2

    :goto_0
    if-ge p4, p3, :cond_1

    .line 750
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 751
    invoke-static {p4, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 752
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->addSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 760
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->updateSegments()V

    .line 763
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->updateExtraHandles()V

    .line 766
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    if-eqz p2, :cond_2

    .line 767
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePoint()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->applyPreservedArrowHeadLength(F)V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 755
    invoke-static {p4, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

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

    .line 1138
    const-string v0, "c"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_1

    .line 1140
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 1142
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    :cond_0
    return p0

    :cond_1
    return v0
.end method

.method private static createPathWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 3

    .line 948
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->createSpecialPathWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 954
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->createSegmentPointsWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Landroid/graphics/PointF;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    .line 957
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    const/4 p0, 0x0

    .line 959
    invoke-static {p2, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 960
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-object p0

    .line 964
    :cond_1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 978
    invoke-static {p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p2

    .line 979
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 p2, 0x1

    :goto_0
    if-ge p2, p1, :cond_2

    .line 981
    invoke-static {p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    .line 982
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static createSegmentPointsWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Landroid/graphics/PointF;)Lcom/metamoji/cm/PointArray;
    .locals 7

    .line 870
    invoke-static {p2, p1, p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePointFromHandlePosition(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p2

    .line 871
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 872
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 873
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 874
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    .line 876
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->ordinal()I

    move-result p1

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p1, :cond_3

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 936
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 937
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object p0

    return-object p0

    :cond_0
    add-float p1, v0, v1

    .line 923
    iget v3, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v3

    const/4 v3, 0x7

    .line 924
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithCapacity(I)Lcom/metamoji/cm/PointArray;

    move-result-object v3

    .line 925
    invoke-static {p2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 926
    iget v4, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 927
    invoke-static {v1, p0, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 928
    invoke-static {v0, p0, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 929
    invoke-static {p1, v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 930
    iget p0, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, p0, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 931
    invoke-static {p2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return-object v3

    :cond_1
    const/4 p1, 0x6

    .line 912
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithCapacity(I)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    .line 913
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 914
    iget v3, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 915
    invoke-static {v1, p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 916
    invoke-static {v0, p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 917
    iget p0, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 918
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return-object p1

    :cond_2
    add-float p1, v2, p0

    div-float v3, p1, v3

    add-float v4, v0, v1

    .line 894
    iget v5, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    .line 895
    iget v5, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v5

    const/16 v5, 0xb

    .line 896
    invoke-static {v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithCapacity(I)Lcom/metamoji/cm/PointArray;

    move-result-object v5

    .line 897
    invoke-static {p2, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 898
    iget v6, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v2, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 899
    invoke-static {v1, v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 900
    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1, p0, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 901
    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1, p1, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 902
    invoke-static {v4, p1, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 903
    invoke-static {v4, p0, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 904
    invoke-static {v0, v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 905
    invoke-static {v4, v2, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 906
    iget p0, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v4, p0, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 907
    invoke-static {p2, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return-object v5

    :cond_3
    add-float p1, v2, p0

    div-float v3, p1, v3

    .line 879
    iget v4, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v4

    const/16 v4, 0x8

    .line 880
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithCapacity(I)Lcom/metamoji/cm/PointArray;

    move-result-object v4

    .line 881
    invoke-static {p2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 882
    iget v5, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 883
    invoke-static {v1, v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 884
    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1, p0, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 885
    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0, p1, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 886
    invoke-static {v0, p1, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 887
    iget p0, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p0, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 888
    invoke-static {p2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return-object v4
.end method

.method private static createSpecialPathWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private handlePoint()Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x0

    .line 773
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private static handlePointFromHandlePosition(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;
    .locals 2

    .line 1036
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handleRangeFromArrowShapeType(Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 1037
    iget p2, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    iget v0, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private handlePosition()Landroid/graphics/PointF;
    .locals 3

    .line 778
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePoint()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePositionFromHandlePoint(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private static handlePositionFromHandlePoint(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;
    .locals 10

    .line 1041
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handleRangeFromArrowShapeType(Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 1042
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result p2

    .line 1043
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 1044
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 1045
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    .line 1046
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v2

    .line 1047
    iget v3, p0, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x5

    .line 1048
    invoke-static {v2, p2, v0, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 1049
    invoke-static {v4, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1051
    :cond_0
    aget v5, v2, v4

    .line 1052
    iget p0, p0, Landroid/graphics/PointF;->y:F

    aput p0, v2, v4

    .line 1053
    invoke-static {v2, v1, p1, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 1054
    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1056
    :cond_1
    aget p0, v2, v4

    cmpl-float v7, p2, v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v7, :cond_3

    sub-float/2addr v5, p2

    sub-float/2addr v0, p2

    div-float/2addr v5, v0

    .line 1061
    aput v5, v2, v4

    .line 1062
    invoke-static {v2, v9, v8, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x2

    .line 1063
    invoke-static {p2, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1065
    :cond_2
    aget p2, v2, v4

    goto :goto_0

    :cond_3
    move p2, v9

    :goto_0
    cmpl-float v0, v1, p1

    if-eqz v0, :cond_5

    sub-float/2addr p0, v1

    sub-float/2addr p1, v1

    div-float/2addr p0, p1

    .line 1069
    aput p0, v2, v4

    .line 1070
    invoke-static {v2, v9, v8, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x3

    .line 1071
    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1073
    :cond_4
    aget v9, v2, v4

    .line 1075
    :cond_5
    invoke-static {p2, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private static handlePositionFromVariation(Ljava/util/Map;)Landroid/graphics/PointF;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 1099
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    .line 1101
    const-string/jumbo v1, "x"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    if-eqz v1, :cond_1

    .line 1103
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 1104
    aput v1, v0, v6

    .line 1105
    invoke-static {v0, v5, v4, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1106
    invoke-static {v6, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1108
    :cond_0
    aget v1, v0, v6

    goto :goto_0

    :cond_1
    move v1, v7

    .line 1111
    :goto_0
    const-string/jumbo v8, "y"

    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1113
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 1114
    aput p0, v0, v6

    .line 1115
    invoke-static {v0, v5, v4, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 1116
    invoke-static {p0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1118
    :cond_2
    aget v7, v0, v6

    .line 1120
    :cond_3
    invoke-static {v1, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private static handlePositionXFromArrowHeadLength(FLcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)F
    .locals 2

    .line 1020
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handleRangeFromArrowShapeType(Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 1021
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result p2

    .line 1022
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 1023
    iget p1, p1, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    sub-float p0, v0, p0

    :goto_0
    cmpl-float p1, p2, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sub-float/2addr p0, p2

    sub-float/2addr v0, p2

    div-float/2addr p0, v0

    goto :goto_1

    :cond_1
    move p0, v1

    .line 1025
    :goto_1
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object p1

    const/4 p2, 0x0

    .line 1026
    aput p0, p1, p2

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v0, 0x5

    .line 1027
    invoke-static {p1, v1, p0, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    .line 1028
    invoke-static {p2, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1030
    :cond_2
    aget p0, p1, p2

    return p0
.end method

.method private static handleRangeFromArrowShapeType(Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 4

    .line 996
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    .line 997
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->ordinal()I

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    const/4 v2, 0x0

    .line 1011
    invoke-static {p0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1012
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    iget v2, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v3, v1

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p1, v1

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/metamoji/cm/RectEx;->set(FFFF)V

    return-object v0

    .line 1008
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    iget v2, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v3, v1

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/metamoji/cm/RectEx;->set(FFFF)V

    return-object v0

    .line 1005
    :cond_1
    invoke-virtual {v0, p1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    return-object v0

    .line 1002
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    iget v2, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v3, v1

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p1, v1

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/metamoji/cm/RectEx;->set(FFFF)V

    return-object v0

    .line 999
    :cond_3
    iget p0, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v2, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->width:F

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p1, v1

    invoke-virtual {v0, p0, v2, v3, p1}, Lcom/metamoji/cm/RectEx;->set(FFFF)V

    return-object v0
.end method

.method public static newArrowShapeElementWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Landroid/graphics/PointF;ZLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;
    .locals 7

    .line 678
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFiniteRect(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 679
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 682
    :cond_0
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/metamoji/cm/RectEx;->height:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    goto :goto_1

    .line 686
    :cond_1
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 687
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    .line 688
    iget v4, p2, Landroid/graphics/PointF;->x:F

    aput v4, v0, v1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    .line 689
    invoke-static {v0, v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x2

    .line 690
    invoke-static {v6, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 692
    :cond_2
    aget v6, v0, v1

    iput v6, p2, Landroid/graphics/PointF;->x:F

    .line 693
    iget v6, p2, Landroid/graphics/PointF;->y:F

    aput v6, v0, v1

    .line 694
    invoke-static {v0, v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    .line 695
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 697
    :cond_3
    aget v0, v0, v1

    iput v0, p2, Landroid/graphics/PointF;->y:F

    if-eqz p5, :cond_4

    .line 700
    invoke-static {p5}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->newEmptyArrowShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p5

    goto :goto_0

    :cond_4
    move-object p5, v2

    .line 703
    :goto_0
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;-><init>()V

    invoke-virtual {v0, p5, p6, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p5

    check-cast p5, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;

    .line 706
    invoke-virtual {p5, p4}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 709
    invoke-direct {p5, p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->constructWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Landroid/graphics/PointF;Z)V

    if-eqz p7, :cond_5

    .line 716
    invoke-virtual {p5, p7}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    :cond_5
    return-object p5

    :cond_6
    :goto_1
    const/4 p0, 0x1

    .line 683
    invoke-static {p0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2
.end method

.method public static newEmptyArrowShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 656
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->newEmptySegmentalShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 658
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ARROW_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 660
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method private static preservedArrowHeadLengthFromVariation(Ljava/util/Map;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)F"
        }
    .end annotation

    .line 1125
    const-string v0, "l"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p0, :cond_1

    .line 1127
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 1129
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    :cond_0
    return p0

    :cond_1
    return v0
.end method

.method private static saveArrowShapeTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1154
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->STANDARD_SINGLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    const-string v1, "a"

    if-eq p1, v0, :cond_1

    .line 1155
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1157
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreservedArrowHeadLengthToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 1165
    const-string v1, "l"

    if-ltz v0, :cond_1

    .line 1166
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1168
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private updatePreservedArrowHeadLengthWithBaseBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 3

    .line 832
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    if-nez v0, :cond_0

    return-void

    .line 837
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePoint()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 840
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handleRangeFromArrowShapeType(Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    iget p1, p1, Lcom/metamoji/cm/RectEx;->width:F

    .line 843
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preservedArrowHeadLength:F

    cmpl-float v2, v0, v1

    if-gtz v2, :cond_2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 851
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->applyPreservedArrowHeadLength(F)V

    return-void
.end method

.method private static variationFromHandlePosition(Landroid/graphics/PointF;FF)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "FF)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1082
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1083
    iget v1, p0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 1084
    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v4, "x"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    :cond_0
    iget v1, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    .line 1087
    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo v1, "y"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    cmpl-float p0, p1, v2

    if-ltz p0, :cond_2

    .line 1090
    const-string p0, "l"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    cmpl-float p0, p2, v3

    if-eqz p0, :cond_3

    .line 1093
    const-string p0, "c"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method


# virtual methods
.method protected applyExtraHandlePoint_(Landroid/graphics/PointF;I)Z
    .locals 3

    .line 523
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x1

    .line 528
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->adjustHandlePoint(Landroid/graphics/PointF;Z)Landroid/graphics/PointF;

    move-result-object p1

    .line 531
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    .line 533
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    .line 531
    invoke-static {p1, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePositionFromHandlePoint(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v1

    .line 536
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    if-eqz v2, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->applyPreservedArrowHeadLength(F)V

    .line 541
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePosition()Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 542
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-direct {p0, v1, p1, p2, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->applyHandlePosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;ZZ)V

    return p2

    :cond_2
    return v0
.end method

.method protected applySegmentBounds_(Lcom/metamoji/cm/RectEx;F)V
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    if-nez v0, :cond_1

    .line 229
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->applySegmentBounds_(Lcom/metamoji/cm/RectEx;F)V

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    .line 235
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preservedArrowHeadLength:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preservedArrowHeadLength:F

    .line 236
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->applyPreservedArrowHeadLength(F)V

    .line 240
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePosition()Landroid/graphics/PointF;

    move-result-object p2

    .line 243
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preservedArrowHeadLength:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePositionXFromArrowHeadLength(FLcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)F

    move-result v0

    iput v0, p2, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, p2, p1, v0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->applyHandlePosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;ZZ)V

    return-void
.end method

.method protected applySegments_()V
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->updatePreservedArrowHeadLengthWithBaseBounds(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method public arrowShapeType()Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    return-object v0
.end method

.method protected cancelEvaluationOfExtraHandleAtIndex_(I)V
    .locals 0

    .line 500
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

    .line 436
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePositionFromVariation(Ljava/util/Map;)Landroid/graphics/PointF;

    move-result-object p3

    .line 437
    iget v0, p3, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-gez v0, :cond_0

    .line 438
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 441
    :cond_0
    iget v0, p3, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    const/4 v4, 0x1

    if-gez v0, :cond_1

    .line 442
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 445
    :cond_1
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePositionFromVariation(Ljava/util/Map;)Landroid/graphics/PointF;

    move-result-object v0

    .line 446
    iget v5, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v5, v1

    if-gez v5, :cond_2

    const/4 p1, 0x2

    .line 447
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 450
    :cond_2
    iget v5, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v5, v1

    if-gez v1, :cond_3

    const/4 p1, 0x3

    .line 451
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 454
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->preservedArrowHeadLengthFromVariation(Ljava/util/Map;)F

    move-result v1

    .line 455
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->preservedArrowHeadLengthFromVariation(Ljava/util/Map;)F

    move-result v2

    .line 456
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->contentScaleFromVariation(Ljava/util/Map;)F

    move-result p1

    .line 457
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->contentScaleFromVariation(Ljava/util/Map;)F

    move-result p2

    const/4 v5, 0x5

    .line 458
    invoke-static {p3, v0, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 459
    invoke-static {v1, v2, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 460
    invoke-static {p1, p2, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p1

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return v3
.end method

.method protected checkMovementOfExtraHandleAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 0

    .line 472
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x5

    .line 475
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

    .line 644
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->destroy_()V

    return-void
.end method

.method protected editExtraHandleWithVariationAlways_()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    return v0
.end method

.method protected editOriginally_()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    return v0
.end method

.method protected evaluateExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 0

    .line 486
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 p2, 0x0

    .line 489
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->adjustHandlePoint(Landroid/graphics/PointF;Z)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleCount_()I
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected extraHandleEnablementAtIndex_(I)Z
    .locals 0

    .line 344
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected extraHandlePointAtIndex_(I)Landroid/graphics/PointF;
    .locals 0

    .line 290
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 291
    invoke-static {p1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandlePointAtIndex_(ILjava/util/Map;)Landroid/graphics/PointF;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 305
    invoke-static {p1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 309
    :cond_0
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePositionFromVariation(Ljava/util/Map;)Landroid/graphics/PointF;

    move-result-object p1

    .line 310
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_4

    iget v0, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    if-eqz v0, :cond_3

    .line 319
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->preservedArrowHeadLengthFromVariation(Ljava/util/Map;)F

    move-result v0

    .line 320
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->contentScaleFromVariation(Ljava/util/Map;)F

    move-result p2

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->contentScale()F

    move-result v1

    div-float/2addr v1, p2

    mul-float/2addr v0, v1

    .line 328
    :cond_2
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    .line 330
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    .line 328
    invoke-static {v0, p2, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePositionXFromArrowHeadLength(FLcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 333
    :cond_3
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePointFromHandlePosition(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 311
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 313
    iget p2, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget p1, p1, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

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

    .line 358
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 361
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->contentScale()F

    move-result p1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 362
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePosition()Landroid/graphics/PointF;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preservedArrowHeadLength:F

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->variationFromHandlePosition(Landroid/graphics/PointF;FF)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(ILandroid/graphics/PointF;)Ljava/util/Map;
    .locals 1
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

    .line 373
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 376
    invoke-direct {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->adjustHandlePoint(Landroid/graphics/PointF;Z)Landroid/graphics/PointF;

    move-result-object p1

    .line 377
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePositionFromHandlePoint(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p2

    .line 378
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    .line 379
    :goto_0
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->contentScale()F

    move-result p1

    goto :goto_1

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 380
    :goto_1
    invoke-static {p2, v0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->variationFromHandlePosition(Landroid/graphics/PointF;FF)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected highlightPathWithExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/Path;
    .locals 3

    .line 599
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    const/4 v1, 0x1

    .line 604
    invoke-direct {p0, p1, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->adjustHandlePoint(Landroid/graphics/PointF;Z)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    .line 606
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    .line 604
    invoke-static {p1, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePositionFromHandlePoint(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p1

    .line 602
    invoke-static {p2, v0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->createPathWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method protected highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;
    .locals 2

    .line 558
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 563
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    if-nez v0, :cond_1

    .line 564
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1

    .line 568
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 571
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preservedArrowHeadLength:F

    mul-float/2addr v1, p2

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    invoke-static {v1, p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePositionXFromArrowHeadLength(FLcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)F

    move-result p2

    iput p2, v0, Landroid/graphics/PointF;->x:F

    .line 576
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    invoke-static {p1, p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->createPathWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method protected highlightRectWithExtraHandlePoint_(Landroid/graphics/PointF;I)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 588
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected initWithTranslate_(FFFFZZF)Z
    .locals 0

    .line 143
    sget-object p1, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->STANDARD_SINGLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    const/high16 p1, -0x40800000    # -1.0f

    .line 144
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preservedArrowHeadLength:F

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    .line 148
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result p2

    if-nez p2, :cond_0

    return p1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    .line 155
    sget-object p2, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->STANDARD_SINGLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p4

    const-string p5, "a"

    invoke-static {p5, p2, p4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    .line 156
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->ordinal()I

    move-result p4

    if-eqz p4, :cond_1

    if-eq p4, p3, :cond_1

    const/4 p5, 0x2

    if-eq p4, p5, :cond_1

    const/4 p5, 0x3

    if-eq p4, p5, :cond_1

    const/4 p2, 0x0

    .line 164
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_1
    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    .line 169
    :goto_0
    iget p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preservedArrowHeadLength:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p4

    const-string p5, "l"

    invoke-static {p5, p2, p4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p2

    iput p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preservedArrowHeadLength:F

    .line 173
    :cond_2
    iget p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preservedArrowHeadLength:F

    const/4 p4, 0x0

    cmpl-float p2, p2, p4

    if-ltz p2, :cond_3

    goto :goto_1

    :cond_3
    move p3, p1

    :goto_1
    iput-boolean p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->updatePreservedArrowHeadLengthWithBaseBounds(Lcom/metamoji/cm/RectEx;)V

    return p1
.end method

.method protected isAbleToFill_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public preserveArrowHeadLength()Z
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 85
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    return v0
.end method

.method protected replacementPath_()Landroid/graphics/Path;
    .locals 3

    .line 621
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePosition()Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->createSpecialPathWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public setExtraHandlePosition(Landroid/graphics/PointF;)V
    .locals 8

    .line 89
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 94
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 97
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 98
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    .line 99
    iget v4, p1, Landroid/graphics/PointF;->x:F

    aput v4, v0, v2

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    .line 100
    invoke-static {v0, v4, v5, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x2

    .line 101
    invoke-static {v7, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 103
    :cond_2
    aget v7, v0, v2

    iput v7, p1, Landroid/graphics/PointF;->x:F

    .line 104
    iget v7, p1, Landroid/graphics/PointF;->y:F

    aput v7, v0, v2

    .line 105
    invoke-static {v0, v4, v5, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x3

    .line 106
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 108
    :cond_3
    aget v0, v0, v2

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 111
    invoke-direct {p0, p1, v0, v3, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->applyHandlePosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;ZZ)V

    .line 117
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    if-eqz p1, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->applyPreservedArrowHeadLength(F)V

    :cond_4
    return-void
.end method

.method protected setExtraHandleVariation_(Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)V"
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentCount()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePositionFromVariation(Ljava/util/Map;)Landroid/graphics/PointF;

    move-result-object p2

    .line 397
    iget v0, p2, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_5

    iget v0, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto :goto_1

    .line 403
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_preserveArrowHeadLength:Z

    if-eqz v0, :cond_3

    .line 405
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->preservedArrowHeadLengthFromVariation(Ljava/util/Map;)F

    move-result v0

    .line 406
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->contentScaleFromVariation(Ljava/util/Map;)F

    move-result p1

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->contentScale()F

    move-result v1

    div-float/2addr v1, p1

    mul-float/2addr v0, v1

    .line 414
    :cond_2
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->applyPreservedArrowHeadLength(F)V

    .line 417
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->m_arrowShapeType:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    .line 419
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    .line 417
    invoke-static {v0, p1, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePositionXFromArrowHeadLength(FLcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;Lcom/metamoji/cm/RectEx;)F

    move-result p1

    iput p1, p2, Landroid/graphics/PointF;->x:F

    .line 423
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->handlePosition()Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 424
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;->applyHandlePosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;ZZ)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 398
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method protected shapeType_()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
    .locals 1

    .line 188
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ARROW_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    return-object v0
.end method
