.class public Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;
.super Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;
.source "DrBalloonShapeElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;,
        Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;
    }
.end annotation


# static fields
.field private static final BASE_SHAPE_BOUNDS:Lcom/metamoji/cm/RectEx;

.field private static final BASE_SHAPE_CENTER:Landroid/graphics/PointF;

.field private static final BASE_SHAPE_RADIUS:F = 50.0f

.field private static final EXTRA_DATA_NAME_PREFIX_TAIL_BASE_POSITION_X:Ljava/lang/String; = "Ex!"

.field private static final EXTRA_DATA_NAME_PREFIX_TAIL_BASE_POSITION_Y:Ljava/lang/String; = "Ey!"

.field private static final EXTRA_DATA_NAME_PREFIX_TAIL_WIDTH_BASE_ANGLE:Ljava/lang/String; = "Ea!"

.field private static final MODEL_PROPERTY_BALLOON_TYPE:Ljava/lang/String; = "b"

.field private static final MODEL_PROPERTY_PRESERVE_PROPERTIES:Ljava/lang/String; = "r"

.field private static final MODEL_PROPERTY_TAIL_BASE_POSITION_X:Ljava/lang/String; = "x"

.field private static final MODEL_PROPERTY_TAIL_BASE_POSITION_Y:Ljava/lang/String; = "y"

.field private static final MODEL_PROPERTY_TAIL_POSITION_HANDLE_ENABLEMENT:Ljava/lang/String; = "o"

.field private static final MODEL_PROPERTY_TAIL_WIDTH_BASE_ANGLE:Ljava/lang/String; = "a"

.field private static final MODEL_PROPERTY_TAIL_WIDTH_HANDLE_ENABLEMENT:Ljava/lang/String; = "w"

.field private static final VARIATION_KEY_TAIL_BASE_POSITION_X:Ljava/lang/String; = "x"

.field private static final VARIATION_KEY_TAIL_BASE_POSITION_Y:Ljava/lang/String; = "y"

.field private static final VARIATION_KEY_TAIL_WIDTH_BASE_ANGLE:Ljava/lang/String; = "a"


# instance fields
.field private final MAX_TAIL_WIDTH_BASE_ANGLE:F

.field private m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

.field private m_extraDataNameForTailBasePositionX:Ljava/lang/String;

.field private m_extraDataNameForTailBasePositionY:Ljava/lang/String;

.field private m_extraDataNameForTailWidthBaseAngle:Ljava/lang/String;

.field private final m_invert:Landroid/graphics/Matrix;

.field private m_preserveProperties:Z

.field private final m_tailBasePosition:Landroid/graphics/PointF;

.field private m_tailPositionHandleEnablement:Z

.field private m_tailWidthBaseAngle:F

.field private m_tailWidthHandleEnablement:Z

.field private final m_transform:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    new-instance v0, Lcom/metamoji/cm/RectEx;

    const/high16 v1, -0x3db80000    # -50.0f

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->BASE_SHAPE_BOUNDS:Lcom/metamoji/cm/RectEx;

    .line 87
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->BASE_SHAPE_CENTER:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;-><init>()V

    const/high16 v0, 0x41b40000    # 22.5f

    .line 94
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->MAX_TAIL_WIDTH_BASE_ANGLE:F

    .line 102
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    .line 104
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    .line 105
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_invert:Landroid/graphics/Matrix;

    return-void
.end method

.method private static adjustTailWidthBaseAngleWithBalloonType(Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Landroid/graphics/PointF;F)F
    .locals 3

    .line 1575
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->checkInnerTailBasePosition(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1580
    :cond_0
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1585
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 1598
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p2

    .line 1588
    :cond_2
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->BASE_SHAPE_CENTER:Landroid/graphics/PointF;

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    const/high16 p1, 0x42480000    # 50.0f

    div-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p0

    cmpg-float p1, p0, p2

    if-gez p1, :cond_3

    return p0

    :cond_3
    :goto_0
    return p2
.end method

.method private applyTailBasePosition(Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Lcom/metamoji/cm/RectEx;ZZ)V
    .locals 1

    .line 1239
    iget-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    invoke-static {p3, p1, p2, p4, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->createSegmentsWithBalloonType(Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Landroid/graphics/PointF;FLandroid/graphics/Matrix;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1244
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result p3

    const/4 p4, 0x0

    if-eq p2, p3, :cond_0

    .line 1245
    invoke-static {p4, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1246
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1247
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->destroy()V

    goto :goto_0

    .line 1253
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p4, p2, :cond_1

    .line 1254
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1255
    invoke-virtual {p0, p4}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->copyToSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    .line 1256
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->destroy()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    .line 1261
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->updateSegments()V

    :cond_2
    if-eqz p6, :cond_3

    .line 1266
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->updateExtraHandles()V

    :cond_3
    return-void
.end method

.method private static checkInnerTailBasePosition(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;)Z
    .locals 2

    .line 1546
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 1556
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 1548
    :cond_0
    sget-object p1, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->BASE_SHAPE_CENTER:Landroid/graphics/PointF;

    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    const/high16 p1, 0x42480000    # 50.0f

    cmpg-float v1, p0, p1

    if-lez v1, :cond_2

    const/4 v1, 0x5

    .line 1549
    invoke-static {p0, p1, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static checkInnerTailPosition(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Lcom/metamoji/cm/RectEx;)Z
    .locals 0

    .line 1566
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->getTransformToBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformInvert(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p2

    .line 1565
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->checkInnerTailBasePosition(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;)Z

    move-result p0

    return p0
.end method

.method private checkTailBasePosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;ZZZZLandroid/graphics/PointF;)F
    .locals 4

    .line 1141
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailPositionHandlePoint()Landroid/graphics/PointF;

    move-result-object v0

    .line 1144
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->transform()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p5, :cond_1

    .line 1148
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->angleInDegrees()F

    move-result p5

    invoke-static {p5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkAxisSwitchingZoneForAngleInDegrees(F)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 1149
    iget p5, p7, Landroid/graphics/PointF;->y:F

    mul-float/2addr p5, v2

    iget v3, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p5, v3

    iput p5, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 1151
    :cond_0
    iget p5, p7, Landroid/graphics/PointF;->x:F

    mul-float/2addr p5, v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p5, v3

    iput p5, v1, Landroid/graphics/PointF;->x:F

    :cond_1
    :goto_0
    if-eqz p6, :cond_3

    .line 1155
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->angleInDegrees()F

    move-result p5

    invoke-static {p5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkAxisSwitchingZoneForAngleInDegrees(F)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 1156
    iget p5, p7, Landroid/graphics/PointF;->x:F

    mul-float/2addr p5, v2

    iget p6, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p5, p6

    iput p5, v1, Landroid/graphics/PointF;->x:F

    goto :goto_1

    .line 1158
    :cond_2
    iget p5, p7, Landroid/graphics/PointF;->y:F

    mul-float/2addr p5, v2

    iget p6, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p5, p6

    iput p5, v1, Landroid/graphics/PointF;->y:F

    .line 1165
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->angleInRadians()F

    move-result p5

    .line 1164
    invoke-static {p2, p5, p3, p4}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->transformForSegmentBounds(Lcom/metamoji/cm/RectEx;FZZ)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformInvert(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p3

    .line 1163
    invoke-static {v1, p3, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 1171
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->getTransformToBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformInvert(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p3

    .line 1174
    invoke-static {v1, p3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 1177
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    const/4 p3, 0x0

    const/4 p4, 0x5

    invoke-static {p1, p3, p4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    sget-object p5, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->BASE_SHAPE_CENTER:Landroid/graphics/PointF;

    .line 1178
    invoke-static {p1, p5, p4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1179
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsEmpty(Lcom/metamoji/cm/RectEx;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1180
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsEmpty(Lcom/metamoji/cm/RectEx;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 1186
    :cond_4
    iget p1, p2, Lcom/metamoji/cm/RectEx;->width:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p6

    iget p6, p6, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr p1, p6

    .line 1187
    iget p2, p2, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p6

    iget p6, p6, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p2, p6

    const/high16 p6, 0x3f800000    # 1.0f

    .line 1188
    invoke-static {p1, p6, p4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p7

    if-eqz p7, :cond_5

    .line 1189
    invoke-static {p2, p6, p4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 1191
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    return p1

    .line 1195
    :cond_5
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMakeScale(FF)Landroid/graphics/Matrix;

    move-result-object p4

    .line 1198
    iget-object p6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    invoke-static {p6, p4, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    const/high16 p6, 0x42480000    # 50.0f

    .line 1201
    invoke-static {p6, p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p3

    invoke-static {p3, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p3

    mul-float/2addr p1, p6

    mul-float/2addr p2, p6

    .line 1208
    iget p6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    sub-float p6, p3, p6

    float-to-double p6, p6

    invoke-static {p5, p1, p2, p6, p7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnEllipseWithCenterInDegrees(Landroid/graphics/PointF;FFD)Landroid/graphics/PointF;

    move-result-object p6

    .line 1212
    iget p7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    add-float/2addr p3, p7

    float-to-double v0, p3

    invoke-static {p5, p1, p2, v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnEllipseWithCenterInDegrees(Landroid/graphics/PointF;FFD)Landroid/graphics/PointF;

    move-result-object p1

    .line 1219
    invoke-virtual {p4, p4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1222
    invoke-static {p6, p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    .line 1223
    invoke-static {p1, p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1227
    invoke-static {p2, p5, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41b40000    # 22.5f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    .line 1182
    :cond_6
    :goto_2
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    return p1
.end method

.method private constructWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Landroid/graphics/PointF;FZZZ)V
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->getTransformToBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)V

    .line 1078
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_invert:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1081
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_invert:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    invoke-static {p3, p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    const/high16 p1, 0x41b40000    # 22.5f

    mul-float/2addr p4, p1

    .line 1084
    iput p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    .line 1087
    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    .line 1088
    iput-boolean p5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    .line 1089
    iput-boolean p6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    .line 1090
    iput-boolean p7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_preserveProperties:Z

    .line 1093
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1094
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->saveBalloonTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;)V

    .line 1095
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->saveTailBasePositionXToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1096
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->saveTailBasePositionYToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1097
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->saveTailWidthBaseAngleToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1098
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->saveTailPositionHandleEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1099
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->saveTailWidthHandleEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1100
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_preserveProperties:Z

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->savePreservePropertiesToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1104
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    iget-object p4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    .line 1108
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    .line 1104
    invoke-static {p1, p2, p3, p4, p5}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->createSegmentsWithBalloonType(Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Landroid/graphics/PointF;FLandroid/graphics/Matrix;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1109
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1110
    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->addSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    goto :goto_0

    .line 1114
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->updateSegments()V

    .line 1117
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->updateExtraHandles()V

    return-void
.end method

.method private static createPathWithBalloonType(Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Landroid/graphics/PointF;FLandroid/graphics/Matrix;)Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    .line 1493
    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->createSegmentsWithBalloonType(Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Landroid/graphics/PointF;FLandroid/graphics/Matrix;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1500
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 1514
    new-instance p2, Landroid/graphics/PointF;

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {p2, p3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1515
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1516
    invoke-virtual {p3, p1, p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->addToPath(Landroid/graphics/Path;Landroid/graphics/PointF;)V

    .line 1517
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->destroy()V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static createSegmentsWithBalloonType(Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Landroid/graphics/PointF;FLandroid/graphics/Matrix;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;",
            "Landroid/graphics/PointF;",
            "F",
            "Landroid/graphics/Matrix;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;"
        }
    .end annotation

    .line 1401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1404
    invoke-static/range {p4 .. p4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    const/4 v2, 0x0

    .line 1405
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsVisible(Z)V

    const/high16 v3, -0x3db80000    # -50.0f

    .line 1406
    invoke-static {v3, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v4, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1407
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;->ordinal()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 1473
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1413
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailAngleFromBasePosition(Landroid/graphics/PointF;)F

    move-result v6

    .line 1416
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->checkInnerTailBasePosition(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1418
    invoke-static/range {p4 .. p4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v3

    .line 1419
    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 1420
    sget-object v4, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->BASE_SHAPE_CENTER:Landroid/graphics/PointF;

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v8, 0x1

    move v7, v6

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setCircleArcInDegrees(Landroid/graphics/PointF;FFFZ)V

    .line 1423
    invoke-static/range {p4 .. p4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p0

    .line 1424
    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 1425
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1426
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    invoke-static/range {p4 .. p4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p0

    .line 1430
    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 1431
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 1432
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1435
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1438
    :cond_1
    invoke-static/range {p0 .. p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->adjustTailWidthBaseAngleWithBalloonType(Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Landroid/graphics/PointF;F)F

    move-result p0

    .line 1443
    invoke-static/range {p4 .. p4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v7

    .line 1444
    invoke-virtual {v7, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 1445
    sget-object v8, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->BASE_SHAPE_CENTER:Landroid/graphics/PointF;

    add-float v10, v6, p0

    sub-float v11, v6, p0

    const/4 v12, 0x1

    const/high16 v9, 0x42480000    # 50.0f

    invoke-virtual/range {v7 .. v12}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setCircleArcInDegrees(Landroid/graphics/PointF;FFFZ)V

    .line 1452
    invoke-static/range {p4 .. p4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p0

    .line 1453
    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 1454
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1455
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1458
    invoke-static/range {p4 .. p4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p0

    .line 1459
    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setIsBoundable(Z)V

    .line 1460
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 1461
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1478
    :goto_0
    invoke-static/range {p3 .. p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 1479
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-object/from16 v1, p3

    .line 1480
    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->applyTransform(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private extraDataNameForTailBasePositionX()Ljava/lang/String;
    .locals 3

    .line 1338
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailBasePositionX:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1339
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1340
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ex!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailBasePositionX:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1344
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1348
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1349
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailBasePositionX:Ljava/lang/String;

    .line 1352
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailBasePositionX:Ljava/lang/String;

    return-object v0
.end method

.method private extraDataNameForTailBasePositionY()Ljava/lang/String;
    .locals 3

    .line 1356
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailBasePositionY:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1357
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1358
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1360
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ey!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailBasePositionY:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1362
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1366
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1367
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailBasePositionY:Ljava/lang/String;

    .line 1370
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailBasePositionY:Ljava/lang/String;

    return-object v0
.end method

.method private extraDataNameForTailWidthBaseAngle()Ljava/lang/String;
    .locals 3

    .line 1374
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailWidthBaseAngle:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1375
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1376
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1378
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ea!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailWidthBaseAngle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1380
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1384
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1385
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailWidthBaseAngle:Ljava/lang/String;

    .line 1388
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailWidthBaseAngle:Ljava/lang/String;

    return-object v0
.end method

.method private static getTransformToBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;
    .locals 1

    .line 1525
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1526
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->getTransformToBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method private static getTransformToBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)V
    .locals 3

    .line 1531
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1532
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->BASE_SHAPE_BOUNDS:Lcom/metamoji/cm/RectEx;

    iget v2, v1, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v0, v2

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p0, v1

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    return-void
.end method

.method private static handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 1618
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;->TAIL_POSITION:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 1611
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;->TAIL_WIDTH:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    .line 1613
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;->TAIL_POSITION:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;

    return-object p0

    .line 1624
    :cond_3
    :goto_0
    sget-object p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;->NONE:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;

    return-object p0
.end method

.method public static newBalloonShapeElementWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Landroid/graphics/PointF;FZZZLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;
    .locals 9

    move-object/from16 v8, p10

    .line 1020
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFiniteRect(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1021
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v3

    .line 1024
    :cond_0
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    const/4 v5, 0x1

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/metamoji/cm/RectEx;->height:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    goto :goto_1

    .line 1028
    :cond_1
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 1029
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v3

    .line 1032
    :cond_2
    new-array v0, v5, [F

    aput p3, v0, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    .line 1033
    invoke-static {v0, v4, v5, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x3

    .line 1034
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1036
    :cond_3
    aget v4, v0, v2

    if-eqz p8, :cond_4

    .line 1039
    invoke-static/range {p8 .. p8}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->newEmptyBalloonShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v3

    .line 1042
    :goto_0
    new-instance v2, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;-><init>()V

    move-object/from16 v5, p9

    invoke-virtual {v2, v0, v5, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;

    move-object/from16 v2, p7

    .line 1045
    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    .line 1048
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->constructWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Landroid/graphics/PointF;FZZZ)V

    if-eqz v8, :cond_5

    .line 1058
    invoke-virtual {v0, v8}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    :cond_5
    return-object v0

    .line 1025
    :cond_6
    :goto_1
    invoke-static {v5, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v3
.end method

.method public static newEmptyBalloonShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 995
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->newEmptySegmentalShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 997
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->BALLOON_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 999
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method private static saveBalloonTypeToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1670
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;->ELLIPSE:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    const-string v1, "b"

    if-eq p1, v0, :cond_1

    .line 1671
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1673
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePreservePropertiesToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1736
    :cond_0
    const-string v0, "r"

    if-nez p1, :cond_1

    .line 1737
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1739
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveTailBasePositionXToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 1681
    const-string/jumbo v1, "x"

    if-eqz v0, :cond_1

    .line 1682
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1684
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveTailBasePositionYToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 1692
    const-string/jumbo v1, "y"

    if-eqz v0, :cond_1

    .line 1693
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1695
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveTailPositionHandleEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1714
    :cond_0
    const-string v0, "o"

    if-nez p1, :cond_1

    .line 1715
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1717
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveTailWidthBaseAngleToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 1703
    const-string v1, "a"

    if-eqz v0, :cond_1

    .line 1704
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1706
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveTailWidthHandleEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1725
    :cond_0
    const-string/jumbo v0, "w"

    if-nez p1, :cond_1

    .line 1726
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1728
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static tailAngleFromBasePosition(Landroid/graphics/PointF;)F
    .locals 2

    const/high16 v0, 0x42480000    # 50.0f

    const/4 v1, 0x0

    .line 1537
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    cmpg-float v0, p0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p0, v0

    :cond_0
    return p0
.end method

.method private static tailBasePositionFromVariation(Ljava/util/Map;)Landroid/graphics/PointF;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 1643
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero()Landroid/graphics/PointF;

    move-result-object v0

    .line 1644
    const-string/jumbo v1, "x"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1646
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 1648
    :cond_0
    const-string/jumbo v1, "y"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1650
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    iput p0, v0, Landroid/graphics/PointF;->y:F

    :cond_1
    return-object v0
.end method

.method private tailPositionHandlePoint()Landroid/graphics/PointF;
    .locals 2

    .line 1123
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private tailWidthBaseAngleFromTailWidthHandlePoint(Landroid/graphics/PointF;)F
    .locals 3

    .line 1298
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_invert:Landroid/graphics/Matrix;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1301
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->BASE_SHAPE_CENTER:Landroid/graphics/PointF;

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1302
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    return p1

    .line 1306
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    return v1

    :cond_1
    const/high16 v1, 0x41b40000    # 22.5f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    move p1, v1

    .line 1319
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->checkInnerTailBasePosition(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1320
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result v0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    return v0

    :cond_3
    return p1
.end method

.method private static tailWidthBaseAngleFromVariation(Ljava/util/Map;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)F"
        }
    .end annotation

    .line 1657
    const-string v0, "a"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1659
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private tailWidthHandlePoint()Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x2

    .line 1127
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private tailWidthHandlePointFromTailWidthBaseAngle(F)Landroid/graphics/PointF;
    .locals 3

    .line 1330
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->BASE_SHAPE_CENTER:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    .line 1332
    invoke-static {v1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailAngleFromBasePosition(Landroid/graphics/PointF;)F

    move-result v1

    add-float/2addr v1, p1

    float-to-double v1, v1

    const/high16 p1, 0x42480000    # 50.0f

    .line 1330
    invoke-static {v0, p1, v1, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnCircleWithCenterInDegrees(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private updateTailBasePosition(Landroid/graphics/PointF;)V
    .locals 2

    .line 1272
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 1274
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1275
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->saveTailBasePositionXToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 1280
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1281
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->saveTailBasePositionYToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_1
    return-void
.end method

.method private updateTailWidthBaseAngle(F)V
    .locals 1

    .line 1287
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1288
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    .line 1289
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1290
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->saveTailWidthBaseAngleToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_0
    return-void
.end method

.method private static variationFromTailBasePosition(Landroid/graphics/PointF;F)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "F)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1630
    iget v1, p0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 1631
    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v3, "x"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    :cond_0
    iget v1, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 1634
    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo v1, "y"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    cmpl-float p0, p1, v2

    if-eqz p0, :cond_2

    .line 1637
    const-string p0, "a"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected applyExtraHandlePoint_(Landroid/graphics/PointF;I)Z
    .locals 8

    .line 801
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 808
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    invoke-static {p2, v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 p1, 0x0

    .line 820
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 815
    :cond_1
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    .line 816
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailWidthBaseAngleFromTailWidthHandlePoint(Landroid/graphics/PointF;)F

    move-result p1

    goto :goto_0

    .line 810
    :cond_2
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_invert:Landroid/graphics/Matrix;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    .line 811
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    .line 825
    :goto_0
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->updateTailBasePosition(Landroid/graphics/PointF;)V

    .line 826
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->updateTailWidthBaseAngle(F)V

    .line 829
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->applyTailBasePosition(Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Lcom/metamoji/cm/RectEx;ZZ)V

    return v0
.end method

.method protected applySegmentBounds_(Lcom/metamoji/cm/RectEx;F)V
    .locals 10

    .line 297
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 302
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_preserveProperties:Z

    if-nez v1, :cond_1

    .line 303
    invoke-super/range {p0 .. p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->applySegmentBounds_(Lcom/metamoji/cm/RectEx;F)V

    return-void

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v8

    .line 309
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->extraDataAcceptability()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailBasePositionX()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v8, v1, v4, v3, v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 311
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailBasePositionY()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v8, v1, v4, v3, v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 312
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailWidthBaseAngle()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v8, v1, v4, v3, v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 316
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->canRegisterReplacementsOfModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailBasePositionX()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v1, v4, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 318
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailBasePositionY()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v1, v4, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 319
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailWidthBaseAngle()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v1, v4, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 323
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailBasePositionX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    const-class v3, Ljava/lang/Number;

    invoke-static {v1, v3}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 324
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailBasePositionY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3, v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Ljava/lang/Number;

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 325
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailWidthBaseAngle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4, v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Ljava/lang/Number;

    invoke-static {v4, v5}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 328
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    .line 329
    iget v6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    if-nez v4, :cond_4

    goto :goto_0

    .line 368
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v5, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 369
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v6

    :cond_5
    move-object v1, v5

    goto/16 :goto_3

    :cond_6
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-nez v1, :cond_5

    .line 332
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v4, 0x5

    invoke-static {v1, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 333
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v1, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-nez v1, :cond_5

    .line 336
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->editContext()Lcom/metamoji/un/draw2/module/element/DrEditContext;

    move-result-object v1

    if-nez v1, :cond_8

    .line 338
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editContextOfInteraction()Lcom/metamoji/un/draw2/module/element/DrEditContext;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 340
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->angleInDegrees()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationForRectInDegrees(Lcom/metamoji/cm/RectEx;F)V

    goto :goto_1

    .line 343
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->editContext()Lcom/metamoji/un/draw2/module/element/DrEditContext;

    move-result-object v1

    .line 349
    :cond_9
    :goto_1
    sget-object v3, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    if-eqz v1, :cond_a

    .line 351
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingX()Z

    move-result v3

    .line 352
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingY()Z

    move-result v4

    .line 353
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v1

    move-object v7, v1

    move v6, v4

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    .line 355
    invoke-static {v9, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move-object v7, v3

    move v3, v9

    move v6, v3

    .line 361
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->isReversingX()Z

    move-result v1

    .line 362
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->isReversingY()Z

    move-result v4

    move v0, v3

    move v3, v1

    move-object v1, v5

    move v5, v0

    move-object v0, p0

    move-object v2, p1

    .line 359
    invoke-direct/range {v0 .. v7}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->checkTailBasePosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;ZZZZLandroid/graphics/PointF;)F

    move-result v6

    .line 373
    :goto_3
    invoke-direct {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->updateTailBasePosition(Landroid/graphics/PointF;)V

    .line 374
    invoke-direct {p0, v6}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->updateTailWidthBaseAngle(F)V

    .line 377
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->getTransformToBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)V

    .line 378
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_invert:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 381
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->applyTailBasePosition(Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Lcom/metamoji/cm/RectEx;ZZ)V

    .line 389
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->extraDataAcceptability()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 390
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailBasePositionX()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v8, v1, v2, v9, v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 391
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailBasePositionY()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v8, v1, v2, v9, v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 392
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailWidthBaseAngle()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v8, v1, v2, v9, v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 396
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->canRegisterReplacementsOfModel()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 397
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailBasePositionX()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v9}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 398
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailBasePositionY()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v9}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 399
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailWidthBaseAngle()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v9}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_c
    :goto_4
    return-void
.end method

.method protected applySegments_()V
    .locals 0

    .line 412
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    return-void
.end method

.method public balloonType()Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    return-object v0
.end method

.method protected cancelEvaluationOfExtraHandleAtIndex_(I)V
    .locals 0

    .line 778
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->cancelEvaluationOfExtraHandleAtIndex_(I)V

    return-void
.end method

.method protected checkEqualityOfExtraHandleVariation_(Ljava/util/Map;Ljava/util/Map;I)Z
    .locals 2
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

    .line 712
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    invoke-static {p3, v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;->ordinal()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 722
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p2

    .line 718
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailWidthBaseAngleFromVariation(Ljava/util/Map;)F

    move-result p1

    .line 719
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailWidthBaseAngleFromVariation(Ljava/util/Map;)F

    move-result p2

    .line 718
    invoke-static {p1, p2, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p1

    return p1

    .line 714
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailBasePositionFromVariation(Ljava/util/Map;)Landroid/graphics/PointF;

    move-result-object p1

    .line 715
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailBasePositionFromVariation(Ljava/util/Map;)Landroid/graphics/PointF;

    move-result-object p2

    .line 714
    invoke-static {p1, p2, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    return p1
.end method

.method protected checkMovementOfExtraHandleAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 0

    .line 736
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x5

    .line 739
    invoke-static {p2, p3, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected containsPoint_(Landroid/graphics/PointF;)Z
    .locals 3

    .line 963
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->checkInnerTailBasePosition(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x3

    .line 968
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    .line 969
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailPositionHandlePoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->endPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkInnerPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method protected destroy_()V
    .locals 1

    const/4 v0, 0x0

    .line 980
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailBasePositionX:Ljava/lang/String;

    .line 981
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailBasePositionY:Ljava/lang/String;

    .line 982
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailWidthBaseAngle:Ljava/lang/String;

    .line 983
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->destroy_()V

    return-void
.end method

.method protected editExtraHandleWithVariationAlways_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected editOriginally_()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_preserveProperties:Z

    return v0
.end method

.method protected evaluateExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 2

    .line 750
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 755
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    invoke-static {p2, v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 765
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 766
    invoke-static {p1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 762
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailWidthBaseAngleFromTailWidthHandlePoint(Landroid/graphics/PointF;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailWidthHandlePointFromTailWidthBaseAngle(F)Landroid/graphics/PointF;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method protected extraHandleCount_()I
    .locals 2

    .line 431
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 435
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    .line 438
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method protected extraHandleEnablementAtIndex_(I)Z
    .locals 3

    .line 538
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 541
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    invoke-static {p1, v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p1, 0x0

    .line 548
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 546
    :cond_1
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->checkInnerTailBasePosition(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1

    .line 543
    :cond_3
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    return p1
.end method

.method protected extraHandlePointAtIndex_(I)Landroid/graphics/PointF;
    .locals 3

    .line 452
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    .line 453
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 457
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    invoke-static {p1, v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 463
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 464
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 461
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailWidthHandlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 459
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailPositionHandlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandlePointAtIndex_(ILjava/util/Map;)Landroid/graphics/PointF;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    .line 477
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 481
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    invoke-static {p1, v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 486
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 520
    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 525
    :goto_0
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 526
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 489
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->BASE_SHAPE_CENTER:Landroid/graphics/PointF;

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 490
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailWidthHandlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 494
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailAngleFromBasePosition(Landroid/graphics/PointF;)F

    move-result p1

    .line 497
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->checkInnerTailBasePosition(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;)Z

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    if-eqz v1, :cond_4

    float-to-double p1, p1

    .line 498
    invoke-static {v0, v2, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnCircleWithCenterInDegrees(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 505
    :cond_4
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    .line 507
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailWidthBaseAngleFromVariation(Ljava/util/Map;)F

    move-result p2

    .line 505
    invoke-static {v1, v3, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->adjustTailWidthBaseAngleWithBalloonType(Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Landroid/graphics/PointF;F)F

    move-result p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 510
    invoke-static {v0, v2, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnCircleWithCenterInDegrees(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 483
    :cond_5
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailBasePositionFromVariation(Ljava/util/Map;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 566
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    .line 570
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    invoke-static {p1, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;->ordinal()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p1, 0x0

    .line 594
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 588
    :cond_1
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    .line 589
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 590
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    goto :goto_0

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    .line 573
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 584
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 599
    :cond_4
    :goto_0
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->variationFromTailBasePosition(Landroid/graphics/PointF;F)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(ILandroid/graphics/PointF;)Ljava/util/Map;
    .locals 4
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

    .line 610
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 615
    :cond_0
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero()Landroid/graphics/PointF;

    move-result-object v0

    .line 619
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    invoke-static {p1, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;->ordinal()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p1, 0x0

    .line 635
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 628
    :cond_1
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailWidthBaseAngleFromTailWidthHandlePoint(Landroid/graphics/PointF;)F

    move-result p1

    .line 629
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 630
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 621
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_invert:Landroid/graphics/Matrix;

    invoke-static {p2, p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 622
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 623
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 640
    :cond_4
    :goto_0
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->variationFromTailBasePosition(Landroid/graphics/PointF;F)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected highlightPathWithExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/Path;
    .locals 3

    .line 908
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 915
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    invoke-static {p2, v0, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x0

    .line 927
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 922
    :cond_1
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    .line 923
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailWidthBaseAngleFromTailWidthHandlePoint(Landroid/graphics/PointF;)F

    move-result p1

    goto :goto_0

    .line 917
    :cond_2
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_invert:Landroid/graphics/Matrix;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    .line 918
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    .line 932
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0, p2, p1, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->createPathWithBalloonType(Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Landroid/graphics/PointF;FLandroid/graphics/Matrix;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method protected highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;
    .locals 9

    .line 842
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 847
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_preserveProperties:Z

    if-nez v0, :cond_1

    .line 848
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 853
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v1

    if-nez p2, :cond_5

    .line 854
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    iget p2, p2, Lcom/metamoji/cm/RectEx;->width:F

    iget v1, p1, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v3, 0x5

    invoke-static {p2, v1, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 855
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    iget p2, p2, Lcom/metamoji/cm/RectEx;->height:F

    iget v1, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {p2, v1, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p2

    if-nez p2, :cond_5

    .line 857
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->isReversingX()Z

    move-result p2

    .line 858
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->isReversingY()Z

    move-result v0

    .line 861
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->highlightContext()Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->editContext()Lcom/metamoji/un/draw2/module/element/DrEditContext;

    move-result-object v1

    .line 862
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingX()Z

    move-result v6

    .line 863
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingY()Z

    move-result v7

    if-eqz v6, :cond_3

    xor-int/lit8 p2, p2, 0x1

    :cond_3
    move v4, p2

    if-eqz v7, :cond_4

    xor-int/lit8 v0, v0, 0x1

    :cond_4
    move v5, v0

    .line 878
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v8

    move-object v1, p0

    move-object v3, p1

    .line 872
    invoke-direct/range {v1 .. v8}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->checkTailBasePosition(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;ZZZZLandroid/graphics/PointF;)F

    move-result v0

    goto :goto_0

    :cond_5
    move-object v1, p0

    move-object v3, p1

    .line 882
    :goto_0
    iget-object p1, v1, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    .line 885
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->getTransformToBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p2

    .line 882
    invoke-static {p1, v2, v0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->createPathWithBalloonType(Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Landroid/graphics/PointF;FLandroid/graphics/Matrix;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method protected highlightRectWithExtraHandlePoint_(Landroid/graphics/PointF;I)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 897
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected initWithTranslate_(FFFFZZF)Z
    .locals 0

    .line 194
    sget-object p1, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;->ELLIPSE:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    .line 196
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    .line 197
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_preserveProperties:Z

    .line 198
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    sget-object p3, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    invoke-virtual {p2, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 p2, 0x0

    .line 199
    iput p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    .line 200
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 201
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_invert:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 204
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 211
    sget-object p2, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;->ELLIPSE:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    .line 212
    const-string p4, "b"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p5

    invoke-static {p4, p2, p5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    .line 213
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;->ordinal()I

    move-result p4

    if-eqz p4, :cond_1

    if-eq p4, p1, :cond_1

    const/4 p1, 0x0

    .line 219
    invoke-static {p3, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    .line 224
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p4

    const-string/jumbo p5, "x"

    invoke-static {p5, p2, p4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 227
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p4

    const-string/jumbo p5, "y"

    invoke-static {p5, p2, p4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 230
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    const-string p4, "a"

    invoke-static {p4, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    .line 233
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    const-string p4, "o"

    invoke-static {p4, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    .line 236
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    const-string/jumbo p4, "w"

    invoke-static {p4, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    .line 239
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_preserveProperties:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    const-string p4, "r"

    invoke-static {p4, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_preserveProperties:Z

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->getTransformToBounds(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)V

    .line 244
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_transform:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_invert:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return p3
.end method

.method protected isAbleToFill_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public preserveProperties()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_preserveProperties:Z

    return v0
.end method

.method protected replacementPath_()Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected setExtraHandleVariation_(Ljava/util/Map;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)V"
        }
    .end annotation

    .line 651
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    move-object v4, p0

    goto/16 :goto_2

    .line 658
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    invoke-static {p2, v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->handleTypeFromHandleIndex(IZZ)Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonShapeHandleType;->ordinal()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 p1, 0x0

    .line 678
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 669
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailWidthBaseAngleFromVariation(Ljava/util/Map;)F

    move-result p2

    .line 670
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 671
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailBasePositionFromVariation(Ljava/util/Map;)Landroid/graphics/PointF;

    move-result-object p1

    goto :goto_1

    .line 673
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    goto :goto_1

    .line 660
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailBasePositionFromVariation(Ljava/util/Map;)Landroid/graphics/PointF;

    move-result-object p2

    .line 661
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 662
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->tailWidthBaseAngleFromVariation(Ljava/util/Map;)F

    move-result p1

    goto :goto_0

    .line 664
    :cond_4
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    :goto_0
    move-object v11, p2

    move p2, p1

    move-object p1, v11

    .line 683
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->canRegisterReplacementsOfModel()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 684
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailBasePositionX()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 685
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailBasePositionY()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 686
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailWidthBaseAngle()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 690
    :cond_5
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->updateTailBasePosition(Landroid/graphics/PointF;)V

    .line 691
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->updateTailWidthBaseAngle(F)V

    .line 694
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget v6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_balloonType:Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->applyTailBasePosition(Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement$DrBalloonType;Lcom/metamoji/cm/RectEx;ZZ)V

    .line 697
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->canRegisterReplacementsOfModel()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 698
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailBasePositionX()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v4, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 699
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailBasePositionY()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v4, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailBasePosition:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 700
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->extraDataNameForTailWidthBaseAngle()Ljava/lang/String;

    move-result-object p1

    iget p2, v4, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthBaseAngle:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    .line 156
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 157
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ex!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailBasePositionX:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ey!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailBasePositionY:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ea!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailWidthBaseAngle:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 165
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 168
    :cond_1
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailBasePositionX:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailBasePositionY:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_extraDataNameForTailWidthBaseAngle:Ljava/lang/String;

    return-void
.end method

.method protected shapeType_()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
    .locals 1

    .line 262
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->BALLOON_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    return-object v0
.end method

.method public tailPositionHandleEnablement()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailPositionHandleEnablement:Z

    return v0
.end method

.method public tailWidthHandleEnablement()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrBalloonShapeElement;->m_tailWidthHandleEnablement:Z

    return v0
.end method
