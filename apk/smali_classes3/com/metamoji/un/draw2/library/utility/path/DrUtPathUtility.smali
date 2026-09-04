.class public Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;
.super Ljava/lang/Object;
.source "DrUtPathUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;
    }
.end annotation


# static fields
.field static final MAX_ARC_DIVISION_ANGLE:D = 0.6283185307179586

.field static final MAX_ARC_DIVISION_COUNT:I = 0xa


# instance fields
.field private m_addedPathType:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

.field private final m_basePoint:Landroid/graphics/PointF;

.field private m_bezierPath:Landroid/graphics/Path;

.field private m_bezierPoints:Lcom/metamoji/cm/PointArray;

.field private final m_lastControlPoint:Landroid/graphics/PointF;

.field private final m_lastEndPoint:Landroid/graphics/PointF;

.field private final m_lastStartPoint:Landroid/graphics/PointF;

.field private m_optimizeForAcuteAngle:Z

.field private m_pathRects:Ljava/lang/Object;

.field private m_startPointMoved:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastStartPoint:Landroid/graphics/PointF;

    .line 41
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastControlPoint:Landroid/graphics/PointF;

    .line 42
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    .line 43
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_basePoint:Landroid/graphics/PointF;

    return-void
.end method

.method static addArcSegmentOfAngleRange(Lcom/metamoji/cm/PointArray;DDLandroid/graphics/Matrix;)V
    .locals 10

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, p3, v0

    .line 1881
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    double-to-float v2, v4

    add-double/2addr v0, p1

    add-double/2addr p1, p3

    .line 1884
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v4

    float-to-double p3, v2

    .line 1885
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, p3

    double-to-float v2, v2

    const/4 v9, 0x0

    aput v2, v4, v9

    .line 1886
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr p3, v0

    double-to-float p3, p3

    const/4 p4, 0x1

    aput p3, v4, p4

    .line 1887
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p3, v0

    const/4 v0, 0x2

    aput p3, v4, v0

    .line 1888
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/4 p2, 0x3

    aput p1, v4, p2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x0

    move-object v6, v4

    move-object v3, p5

    .line 1889
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 1890
    aget p1, v4, v9

    aget p3, v4, p4

    invoke-static {p1, p3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    .line 1891
    aget p1, v4, v0

    aget p2, v4, p2

    invoke-static {p1, p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    return-void
.end method

.method public static addCircleArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FDDZ)V
    .locals 0

    .line 1969
    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    .line 1970
    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p5

    .line 1966
    invoke-static/range {p0 .. p7}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addCircleArcPointsToArrayInRadians(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FDDZ)V

    return-void
.end method

.method public static addCircleArcPointsToArrayInRadians(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FDDZ)V
    .locals 6

    move-wide v0, p5

    .line 1923
    new-instance p5, Landroid/graphics/Matrix;

    invoke-direct {p5}, Landroid/graphics/Matrix;-><init>()V

    .line 1924
    invoke-virtual {p5, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1925
    iget p6, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p5, p6, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sub-double/2addr v0, p3

    const-wide/16 v2, 0x0

    cmpl-double p6, v0, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    if-nez p6, :cond_1

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    const-wide v4, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    goto :goto_0

    :cond_1
    rem-double/2addr v0, v4

    if-eqz p7, :cond_2

    cmpg-double p6, v0, v2

    if-gez p6, :cond_3

    add-double/2addr v4, v0

    goto :goto_0

    :cond_2
    cmpl-double p6, v0, v2

    if-lez p6, :cond_3

    sub-double v4, v0, v4

    goto :goto_0

    :cond_3
    move-wide v4, v0

    .line 1949
    :goto_0
    new-instance p6, Landroid/graphics/PointF;

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p7, v0

    mul-float/2addr p7, p2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr p7, v0

    .line 1950
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr p2, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, p1

    invoke-direct {p6, p7, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1951
    invoke-static {p6, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1953
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide p6, 0x3fe41b2f769cf0e0L    # 0.6283185307179586

    div-double/2addr p1, p6

    double-to-int p1, p1

    add-int/lit8 p6, p1, 0x1

    int-to-double p1, p6

    div-double/2addr v4, p1

    const/4 p1, 0x0

    move p7, p1

    move-wide p1, p3

    :goto_1
    if-ge p7, p6, :cond_4

    move-wide p3, v4

    .line 1956
    invoke-static/range {p0 .. p5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addArcSegmentOfAngleRange(Lcom/metamoji/cm/PointArray;DDLandroid/graphics/Matrix;)V

    add-double/2addr p1, p3

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static addCirclePointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;F)V
    .locals 0

    .line 1903
    invoke-static {p0, p1, p2, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addEllipsePointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FF)V

    return-void
.end method

.method public static addCloudPointsToArray(Lcom/metamoji/cm/PointArray;Lcom/metamoji/cm/RectEx;)V
    .locals 5

    const/high16 v0, 0x42c80000    # 100.0f

    const/high16 v1, 0x42a00000    # 80.0f

    const/high16 v2, -0x3db80000    # -50.0f

    .line 2076
    invoke-static {v2, v2, v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->transformFromRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    const v0, 0x42421893

    const v1, -0x3eaf9ad4

    .line 2077
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, 0x4248c241

    const v4, -0x3eefdaba    # -9.0091f

    .line 2078
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, 0x4247e704

    const v4, -0x3f758937    # -4.327f

    .line 2079
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, 0x423dfb99

    const v4, 0x414ffbe7    # 12.999f

    .line 2080
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, 0x41f8d289

    const v4, 0x415c0275

    .line 2081
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, 0x41f43fb1

    const v4, 0x415b7cee    # 13.718f

    .line 2082
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, 0x41efc467

    const v4, 0x415a5cfb

    .line 2083
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, 0x41d4af1b

    const v4, 0x41eb92d7

    .line 2084
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, 0x41344d01

    const/high16 v4, 0x41f00000    # 30.0f

    .line 2085
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, 0x3f7f0d84    # 0.9963f

    const v4, 0x41e7a95f

    .line 2086
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3f98f766    # -3.6099f

    const v4, 0x419de1b1

    .line 2087
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3f3449ba    # -6.366f

    const v4, 0x41a67cb9

    .line 2088
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3ee88db9

    const v4, 0x41a550e5

    .line 2089
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3e94fb7f

    const v4, 0x41a240b8

    .line 2090
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3e6cea7f    # -18.3855f

    const v4, 0x4186f1aa    # 16.868f

    .line 2091
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3e5825e3

    const/high16 v4, 0x41900000    # 18.0f

    .line 2092
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3e406873    # -23.949f

    const v4, 0x418eeb85    # 17.865f

    .line 2093
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3df4cccd    # -34.8f

    const v4, 0x41829a6b

    .line 2094
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3def0b78    # -36.2388f

    const v4, 0x409cf27c

    .line 2095
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3dec25c9

    const v4, 0x409e84b6    # 4.9537f

    .line 2096
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3de92dfa

    const v4, 0x409d4d6a    # 4.9157f

    .line 2097
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3db9b2e5

    const v4, 0x4044c155    # 3.0743f

    .line 2098
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3ee44745

    .line 2099
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3dbaac8b

    const v4, -0x3e76fa78

    .line 2100
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3dd105bc    # -43.7444f

    const v4, -0x3e58dc5d

    .line 2101
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3dd0767a

    const v4, -0x3e4f1aa0    # -22.112f

    .line 2102
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3dd0b9f5

    const v4, -0x3e44f27c

    .line 2103
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3dd7fd08

    const v4, -0x3defbb99

    .line 2104
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3e0ffe91    # -30.0007f

    const v4, -0x3ded87c8

    .line 2105
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3e137007

    const v4, -0x3deda1cb    # -36.592f

    .line 2106
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3e16d0b1

    const v4, -0x3dedd917

    .line 2107
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3e3b6bba

    const v4, -0x3db9126f

    .line 2108
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v3, -0x3ecef2e5

    .line 2109
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v2, -0x3f292d77    # -6.7132f

    const v3, -0x3db91d2f

    .line 2110
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v2, -0x3fb4ce70    # -3.1749f

    const v3, -0x3dc1d567

    .line 2111
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v2, 0x3e553261    # 0.2082f

    const v3, -0x3dba9ff3

    .line 2112
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v2, 0x4087096c

    const v3, -0x3dbb4e3c

    .line 2113
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v2, 0x4107154d

    const v3, -0x3dbc6f69

    .line 2114
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v2, 0x413b83e4

    const v3, -0x3dc5e29c

    .line 2115
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v2, 0x41850a3d    # 16.63f

    const v3, -0x3db81014

    .line 2116
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v2, 0x41b70f28

    const v3, -0x3db8f9c1

    .line 2117
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v2, 0x421285f0

    const v3, -0x3dbff296

    .line 2118
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v2, 0x42200f42

    const v3, -0x3df77d08

    .line 2119
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v2, 0x424678a1

    const v3, -0x3e1155d0

    .line 2120
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v2, 0x4246b780

    const v3, -0x3e6d6426

    .line 2121
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const v2, 0x42460b29

    const v3, -0x3e8800d2

    .line 2122
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 2123
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return-void
.end method

.method public static addEllipseArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FFDDZ)V
    .locals 0

    .line 2066
    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p4

    .line 2067
    invoke-static {p6, p7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p6

    .line 2062
    invoke-static/range {p0 .. p8}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addEllipseArcPointsToArrayInRadians(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FFDDZ)V

    return-void
.end method

.method public static addEllipseArcPointsToArrayInRadians(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FFDDZ)V
    .locals 9

    .line 2019
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2020
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2021
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    float-to-double v1, p2

    .line 2025
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    float-to-double v5, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 2026
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v1, v7

    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v1, v3

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    const v5, 0x40c90fdb

    if-nez v4, :cond_1

    if-eqz p8, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    const v1, -0x3f36f025

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    add-float/2addr v1, v5

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    sub-float/2addr v1, v5

    .line 2044
    :cond_3
    :goto_0
    new-instance v2, Landroid/graphics/PointF;

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr p2, v6

    iget v6, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, v6

    .line 2045
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr p3, v4

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p3, p1

    invoke-direct {v2, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2046
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 2048
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    const-wide v4, 0x3fe41b2f769cf0e0L    # 0.6283185307179586

    div-double/2addr p1, v4

    double-to-int p1, p1

    add-int/lit8 v2, p1, 0x1

    int-to-float p1, v2

    div-float/2addr v1, p1

    const/4 p1, 0x0

    move v4, v3

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_4

    float-to-double p2, v4

    float-to-double v5, v1

    move-object p1, p0

    move-object p6, v0

    move-wide p4, v5

    .line 2051
    invoke-static/range {p1 .. p6}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addArcSegmentOfAngleRange(Lcom/metamoji/cm/PointArray;DDLandroid/graphics/Matrix;)V

    move-object p1, p6

    add-float/2addr v4, v1

    add-int/lit8 v3, v3, 0x1

    move-object v0, p1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static addEllipsePointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FF)V
    .locals 6

    .line 1985
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1986
    invoke-virtual {v5, p2, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1987
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1989
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p2, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, v1

    const/4 v1, 0x0

    mul-float/2addr p3, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p3, p1

    invoke-direct {v0, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1991
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0xa

    if-ge p1, p2, :cond_0

    int-to-float p2, p1

    const p3, 0x3f20d97c

    mul-float/2addr p2, p3

    float-to-double v1, p2

    const-wide v3, 0x3fe41b2f80000000L    # 0.6283185482025146

    move-object v0, p0

    .line 1995
    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addArcSegmentOfAngleRange(Lcom/metamoji/cm/PointArray;DDLandroid/graphics/Matrix;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static checkIntersectionOfLineWithPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;[Z)Z
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 461
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 462
    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    .line 463
    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v10, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    .line 464
    iget v11, v2, Landroid/graphics/PointF;->y:F

    iget v12, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    const-wide/16 v13, 0x0

    const/4 v15, 0x6

    .line 465
    invoke-static {v5, v6, v13, v14, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-eqz v16, :cond_2

    .line 466
    invoke-static {v7, v8, v13, v14, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 468
    aput-boolean v18, p5, v18

    return v18

    .line 470
    :cond_0
    invoke-static {v9, v10, v13, v14, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 472
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    aput-boolean v0, p5, v18

    return v18

    .line 474
    :cond_1
    invoke-static {v11, v12, v13, v14, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 476
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, v4, Landroid/graphics/PointF;->x:F

    .line 477
    iget v0, v2, Landroid/graphics/PointF;->y:F

    iput v0, v4, Landroid/graphics/PointF;->y:F

    .line 478
    aput-boolean v18, p5, v18

    return v17

    .line 481
    :cond_2
    invoke-static {v7, v8, v13, v14, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 482
    invoke-static {v9, v10, v13, v14, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 484
    iget v1, v2, Landroid/graphics/PointF;->x:F

    iput v1, v4, Landroid/graphics/PointF;->x:F

    .line 485
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v4, Landroid/graphics/PointF;->y:F

    .line 486
    aput-boolean v18, p5, v18

    return v17

    .line 488
    :cond_3
    invoke-static {v11, v12, v13, v14, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 490
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    aput-boolean v0, p5, v18

    return v18

    .line 493
    :cond_4
    invoke-static {v9, v10, v13, v14, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-static {v11, v12, v13, v14, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 495
    aput-boolean v18, p5, v18

    return v18

    :cond_5
    mul-double v19, v5, v11

    mul-double v21, v7, v9

    move-wide/from16 v23, v5

    sub-double v5, v19, v21

    .line 499
    invoke-static {v5, v6, v13, v14, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 501
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    sub-float/2addr v4, v0

    float-to-double v0, v4

    mul-double/2addr v0, v9

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v4, v2

    float-to-double v2, v4

    mul-double v2, v2, v23

    invoke-static {v0, v1, v2, v3, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v0

    aput-boolean v0, p5, v18

    return v18

    .line 506
    :cond_6
    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v2, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v9, v1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v11, v1

    sub-double/2addr v9, v11

    div-double/2addr v9, v5

    .line 507
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    mul-double v5, v9, v23

    add-double/2addr v1, v5

    double-to-float v1, v1

    iput v1, v4, Landroid/graphics/PointF;->x:F

    .line 508
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    mul-double/2addr v9, v7

    add-double/2addr v0, v9

    double-to-float v0, v0

    iput v0, v4, Landroid/graphics/PointF;->y:F

    .line 509
    aput-boolean v18, p5, v18

    return v17
.end method

.method public static checkIntersectionOfQuadCurveAndSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;[Landroid/graphics/PointF;)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1038
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    .line 1039
    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    sub-float v10, v5, v6

    sub-float v11, v7, v6

    add-float v12, v10, v11

    sub-float v13, v8, v1

    sub-float v14, v9, v1

    add-float v15, v13, v14

    mul-float v16, v11, v13

    mul-float v17, v10, v14

    sub-float v16, v16, v17

    const/16 v17, 0x0

    cmpl-float v18, v16, v17

    const/16 v19, 0x0

    if-nez v18, :cond_2

    mul-float v16, v10, v11

    mul-float v18, v13, v14

    add-float v16, v16, v18

    cmpl-float v16, v16, v17

    if-lez v16, :cond_1

    .line 1051
    new-instance v0, Landroid/graphics/PointF;

    mul-float v2, v5, v7

    mul-float/2addr v6, v6

    sub-float/2addr v2, v6

    div-float/2addr v2, v12

    mul-float v6, v8, v9

    mul-float/2addr v1, v1

    sub-float/2addr v6, v1

    div-float/2addr v6, v15

    invoke-direct {v0, v2, v6}, Landroid/graphics/PointF;-><init>(FF)V

    mul-float/2addr v10, v10

    mul-float/2addr v13, v13

    add-float/2addr v10, v13

    mul-float/2addr v11, v11

    mul-float/2addr v14, v14

    add-float/2addr v11, v14

    cmpl-float v1, v10, v11

    if-lez v1, :cond_0

    .line 1053
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 1058
    :goto_0
    aget-object v2, p5, v19

    invoke-static {v0, v1, v3, v4, v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkIntersectionOfSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    return v0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    div-float v2, v0, v16

    neg-float v10, v2

    mul-float v20, v10, v15

    sub-float v11, v9, v8

    mul-float v21, v2, v11

    mul-float v22, v2, v12

    sub-float v11, v7, v5

    mul-float v23, v10, v11

    mul-float/2addr v6, v15

    mul-float/2addr v1, v12

    sub-float/2addr v6, v1

    mul-float v24, v2, v6

    mul-float/2addr v5, v9

    mul-float/2addr v8, v7

    sub-float/2addr v5, v8

    mul-float v25, v10, v5

    .line 1063
    invoke-static/range {v20 .. v25}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMake(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v1

    .line 1070
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v2

    .line 1071
    iget v5, v3, Landroid/graphics/PointF;->x:F

    aput v5, v2, v19

    .line 1072
    iget v5, v3, Landroid/graphics/PointF;->y:F

    const/4 v11, 0x1

    aput v5, v2, v11

    .line 1073
    iget v5, v4, Landroid/graphics/PointF;->x:F

    const/4 v12, 0x2

    aput v5, v2, v12

    .line 1074
    iget v5, v4, Landroid/graphics/PointF;->y:F

    const/4 v13, 0x3

    aput v5, v2, v13

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v7, 0x0

    move-object v8, v2

    move-object v5, v1

    move-object v6, v2

    .line 1075
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 1078
    aget v5, v2, v19

    aget v6, v2, v12

    sub-float v7, v5, v6

    .line 1079
    aget v8, v2, v11

    aget v9, v2, v13

    sub-float v10, v8, v9

    cmpl-float v12, v7, v17

    const/high16 v13, 0x40000000    # 2.0f

    if-nez v12, :cond_4

    mul-float v3, v5, v5

    sub-float v3, v0, v3

    div-float/2addr v3, v13

    .line 1083
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_3

    sub-float v0, v3, v8

    sub-float v4, v3, v9

    mul-float/2addr v0, v4

    cmpg-float v0, v0, v17

    if-gtz v0, :cond_3

    .line 1084
    invoke-virtual {v1, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1086
    aput v3, v2, v11

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v4, v2

    .line 1087
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 1088
    new-instance v0, Landroid/graphics/PointF;

    aget v1, v2, v19

    aget v2, v2, v11

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v0, p5, v19

    return v11

    :cond_3
    return v19

    :cond_4
    mul-float v1, v7, v7

    mul-float/2addr v13, v7

    mul-float/2addr v9, v5

    mul-float/2addr v8, v6

    sub-float/2addr v9, v8

    mul-float/2addr v9, v13

    sub-float v2, v1, v9

    mul-float v6, v10, v10

    add-float/2addr v2, v6

    cmpg-float v6, v2, v17

    if-gez v6, :cond_5

    return v19

    :cond_5
    cmpl-float v6, v2, v17

    if-nez v6, :cond_7

    mul-float/2addr v5, v7

    add-float/2addr v5, v10

    div-float/2addr v5, v1

    add-float/2addr v7, v10

    div-float/2addr v7, v13

    cmpg-float v1, v17, v5

    if-gtz v1, :cond_6

    cmpg-float v1, v5, v0

    if-gtz v1, :cond_6

    cmpg-float v1, v17, v7

    if-gtz v1, :cond_6

    cmpg-float v1, v7, v0

    if-gtz v1, :cond_6

    .line 1104
    new-instance v1, Landroid/graphics/PointF;

    sub-float/2addr v0, v5

    iget v2, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v0

    iget v6, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v5

    add-float/2addr v2, v6

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v3

    iget v3, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v3

    add-float/2addr v0, v5

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, p5, v19

    return v11

    :cond_6
    return v19

    :cond_7
    float-to-double v8, v2

    .line 1114
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float/2addr v5, v7

    add-float/2addr v5, v10

    sub-float v6, v5, v2

    div-float/2addr v6, v1

    add-float/2addr v7, v10

    sub-float v8, v7, v2

    div-float/2addr v8, v13

    cmpg-float v9, v17, v6

    if-gtz v9, :cond_8

    cmpg-float v9, v6, v0

    if-gtz v9, :cond_8

    cmpg-float v9, v17, v8

    if-gtz v9, :cond_8

    cmpg-float v8, v8, v0

    if-gtz v8, :cond_8

    .line 1120
    new-instance v8, Landroid/graphics/PointF;

    sub-float v9, v0, v6

    iget v10, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v10, v9

    iget v12, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v12, v6

    add-float/2addr v10, v12

    iget v12, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v9, v12

    iget v12, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v12

    add-float/2addr v9, v6

    invoke-direct {v8, v10, v9}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v8, p5, v19

    move/from16 v19, v11

    :cond_8
    add-float/2addr v5, v2

    div-float/2addr v5, v1

    add-float/2addr v7, v2

    div-float/2addr v7, v13

    cmpg-float v1, v17, v5

    if-gtz v1, :cond_9

    cmpg-float v1, v5, v0

    if-gtz v1, :cond_9

    cmpg-float v1, v17, v7

    if-gtz v1, :cond_9

    cmpg-float v1, v7, v0

    if-gtz v1, :cond_9

    .line 1131
    new-instance v1, Landroid/graphics/PointF;

    sub-float/2addr v0, v5

    iget v2, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v0

    iget v6, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v5

    add-float/2addr v2, v6

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v3

    iget v3, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v3

    add-float/2addr v0, v5

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, p5, v19

    add-int/lit8 v19, v19, 0x1

    :cond_9
    return v19
.end method

.method public static checkIntersectionOfSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 11

    .line 533
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 534
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    .line 535
    iget v4, p2, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    .line 536
    iget v5, p2, Landroid/graphics/PointF;->y:F

    iget v6, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    mul-float v6, v0, v3

    mul-float v7, v1, v2

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    cmpl-float v8, v6, v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_5

    cmpl-float v0, v0, v7

    if-nez v0, :cond_3

    cmpl-float v0, v2, v7

    if-nez v0, :cond_3

    cmpl-float p1, v1, v7

    if-nez p1, :cond_1

    cmpl-float p1, v3, v7

    if-nez p1, :cond_1

    cmpl-float p1, v4, v7

    if-nez p1, :cond_0

    cmpl-float p1, v5, v7

    if-nez p1, :cond_0

    .line 543
    invoke-virtual {p4, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return v9

    :cond_0
    return v10

    .line 549
    :cond_1
    iget p1, p3, Landroid/graphics/PointF;->x:F

    iget p2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    .line 550
    iget p2, p3, Landroid/graphics/PointF;->y:F

    iget p3, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    mul-float p3, v4, p2

    mul-float v0, v5, p1

    sub-float/2addr p3, v0

    cmpl-float p3, p3, v7

    if-nez p3, :cond_2

    mul-float/2addr v4, p1

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    cmpg-float p1, v4, v7

    if-gtz p1, :cond_2

    .line 552
    invoke-virtual {p4, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return v9

    :cond_2
    return v10

    :cond_3
    cmpl-float p0, v1, v7

    if-nez p0, :cond_4

    cmpl-float p0, v3, v7

    if-nez p0, :cond_4

    .line 559
    iget p0, p2, Landroid/graphics/PointF;->x:F

    iget p3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, p3

    .line 560
    iget p3, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p1

    mul-float p1, v4, p3

    mul-float v0, v5, p0

    sub-float/2addr p1, v0

    cmpl-float p1, p1, v7

    if-nez p1, :cond_4

    mul-float/2addr v4, p0

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    cmpg-float p0, v4, v7

    if-gtz p0, :cond_4

    .line 562
    invoke-virtual {p4, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return v9

    :cond_4
    return v10

    :cond_5
    mul-float/2addr v3, v4

    mul-float/2addr v1, v5

    sub-float/2addr v3, v1

    div-float/2addr v3, v6

    mul-float/2addr v5, v0

    mul-float/2addr v4, v2

    sub-float/2addr v5, v4

    div-float/2addr v5, v6

    cmpg-float p1, v7, v3

    if-gtz p1, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p2, v3, p1

    if-gtz p2, :cond_6

    cmpg-float p2, v7, v5

    if-gtz p2, :cond_6

    cmpg-float p1, v5, p1

    if-gtz p1, :cond_6

    .line 577
    iget p1, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v3

    add-float/2addr p1, v0

    iput p1, p4, Landroid/graphics/PointF;->x:F

    .line 578
    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v2

    add-float/2addr p0, v3

    iput p0, p4, Landroid/graphics/PointF;->y:F

    return v9

    :cond_6
    return v10
.end method

.method public static checkIntersectionOfTwoCirclesWithSameRadius(FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    cmpg-float v5, p0, v4

    const/4 v6, 0x0

    if-gtz v5, :cond_0

    const/4 v0, 0x0

    .line 2287
    invoke-static {v6, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v6

    :cond_0
    const/4 v5, 0x6

    .line 2290
    invoke-static {v0, v1, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v5

    if-eqz v5, :cond_1

    return v6

    .line 2295
    :cond_1
    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v7

    .line 2296
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v7

    mul-float v7, p0, p0

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v8, v7

    mul-float v9, v5, v5

    mul-float v10, v1, v1

    add-float/2addr v10, v9

    const/4 v11, 0x7

    .line 2302
    invoke-static {v8, v10, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    if-eqz v11, :cond_2

    .line 2303
    iget v3, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v12

    add-float/2addr v3, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v12

    add-float/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x1

    return v0

    :cond_2
    cmpg-float v11, v8, v10

    if-gez v11, :cond_3

    return v6

    :cond_3
    cmpl-float v4, v1, v4

    if-eqz v4, :cond_4

    .line 2313
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v6, v4

    div-float/2addr v8, v10

    float-to-double v8, v8

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v4, v6

    add-float v6, v5, v4

    mul-float/2addr v6, v12

    sub-float v4, v5, v4

    mul-float/2addr v4, v12

    .line 2316
    iget v7, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v6

    iget v8, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v10, v12

    mul-float/2addr v6, v5

    sub-float v6, v10, v6

    div-float/2addr v6, v1

    add-float/2addr v8, v6

    invoke-virtual {v2, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 2317
    iget v2, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v4

    sub-float/2addr v10, v5

    div-float/2addr v10, v1

    add-float/2addr v0, v10

    invoke-virtual {v3, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 2319
    :cond_4
    iget v1, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v12

    add-float/2addr v1, v5

    float-to-double v4, v7

    float-to-double v6, v9

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    .line 2320
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 2321
    iget v5, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v4

    invoke-virtual {v2, v1, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 2322
    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    invoke-virtual {v3, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method public static checkIntersectionParametersOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/graphics/PointF;Landroid/graphics/PointF;F[F)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1163
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v2, v9

    iget v3, v7, Landroid/graphics/PointF;->x:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    iget v3, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v9

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v9

    iget v4, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v10

    add-float/2addr v3, v4

    iget v4, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v9

    add-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v11, 0x2

    .line 1165
    new-array v6, v11, [F

    fill-array-data v6, :array_0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 1166
    invoke-static/range {v0 .. v6}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkIntersectionParametersOfSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/graphics/PointF;Landroid/graphics/PointF;F[F)I

    move-result v12

    move-object v0, v1

    const/4 v13, 0x0

    .line 1167
    aget v1, v6, v13

    aput v1, p7, v13

    const/4 v14, 0x1

    .line 1168
    aget v1, v6, v14

    aput v1, p7, v14

    move-object v1, v8

    .line 1169
    invoke-static/range {v0 .. v6}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkIntersectionParametersOfSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/graphics/PointF;Landroid/graphics/PointF;F[F)I

    move-result v0

    .line 1170
    aget v1, v6, v13

    aput v1, p7, v11

    .line 1171
    aget v1, v6, v14

    const/4 v2, 0x3

    aput v1, p7, v2

    add-int v1, v12, v0

    if-nez v1, :cond_0

    return v13

    .line 1178
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    .line 1179
    invoke-static/range {p1 .. p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v4

    add-float v5, v3, v4

    cmpl-float v5, v5, p6

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    if-lez v5, :cond_8

    sub-float v4, v3, v4

    .line 1183
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v8, 0x3a83126f    # 0.001f

    mul-float v8, v8, p6

    cmpl-float v5, v5, v8

    if-lez v5, :cond_8

    div-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1

    move v5, v14

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    :goto_0
    if-ne v12, v14, :cond_5

    .line 1204
    aget v8, p7, v13

    cmpl-float v15, v8, v4

    if-nez v15, :cond_2

    aget v15, p7, v14

    cmpl-float v15, v15, v6

    if-nez v15, :cond_2

    .line 1207
    aput v10, p7, v14

    goto :goto_2

    :cond_2
    mul-float v15, v3, v3

    mul-float v16, v3, v7

    mul-float v16, v16, v10

    sub-float v9, v9, v16

    cmpl-float v16, v8, v4

    move/from16 p3, v2

    if-eqz v16, :cond_3

    int-to-float v2, v5

    mul-float/2addr v8, v9

    add-float/2addr v8, v15

    move/from16 p0, v6

    move/from16 p1, v7

    float-to-double v6, v8

    .line 1212
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v2, v6

    sub-float v2, v3, v2

    aput v2, p7, v13

    goto :goto_1

    :cond_3
    move/from16 p0, v6

    move/from16 p1, v7

    .line 1214
    :goto_1
    aget v2, p7, v14

    cmpl-float v6, v2, p0

    if-eqz v6, :cond_4

    int-to-float v6, v5

    mul-float/2addr v9, v2

    add-float/2addr v15, v9

    float-to-double v7, v15

    .line 1215
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr v6, v2

    sub-float v2, v3, v6

    aput v2, p7, v14

    goto :goto_3

    .line 1217
    :cond_4
    aput v10, p7, v14

    goto :goto_3

    :cond_5
    :goto_2
    move/from16 p3, v2

    move/from16 p0, v6

    move/from16 p1, v7

    :goto_3
    if-ne v0, v14, :cond_a

    .line 1221
    aget v2, p7, v11

    cmpl-float v6, v2, v4

    if-nez v6, :cond_6

    aget v6, p7, p3

    cmpl-float v6, v6, p0

    if-nez v6, :cond_6

    .line 1222
    aput v10, p7, v11

    goto :goto_5

    :cond_6
    sub-float v6, v3, v10

    mul-float/2addr v6, v6

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float v8, v3, p1

    sub-float/2addr v7, v8

    mul-float/2addr v7, v10

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_7

    int-to-float v4, v5

    mul-float/2addr v2, v7

    add-float/2addr v2, v6

    float-to-double v8, v2

    .line 1228
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float/2addr v4, v2

    sub-float v2, v3, v4

    aput v2, p7, v11

    goto :goto_4

    .line 1230
    :cond_7
    aput v10, p7, v11

    .line 1231
    :goto_4
    aget v2, p7, p3

    cmpl-float v4, v2, p0

    if-eqz v4, :cond_a

    int-to-float v4, v5

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    float-to-double v5, v6

    .line 1232
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    aput v3, p7, p3

    goto :goto_5

    :cond_8
    move/from16 p3, v2

    move/from16 p0, v6

    move/from16 p1, v7

    if-eqz v12, :cond_9

    .line 1238
    aget v2, p7, v13

    div-float v2, v2, p1

    aput v2, p7, v13

    .line 1239
    aget v2, p7, v14

    div-float v2, v2, p1

    aput v2, p7, v14

    :cond_9
    if-eqz v0, :cond_a

    .line 1242
    aget v2, p7, v11

    add-float v2, v2, p0

    div-float v2, v2, p1

    aput v2, p7, v11

    .line 1243
    aget v2, p7, p3

    add-float v2, v2, p0

    div-float v2, v2, p1

    aput v2, p7, p3

    :cond_a
    :goto_5
    if-ne v1, v11, :cond_b

    .line 1247
    aget v2, p7, v14

    aget v3, p7, v11

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b

    .line 1248
    aget v0, p7, p3

    aput v0, p7, v14

    return v14

    :cond_b
    if-nez v12, :cond_c

    if-ne v0, v14, :cond_c

    .line 1254
    aget v0, p7, v11

    aput v0, p7, v13

    .line 1255
    aget v0, p7, p3

    aput v0, p7, v14

    :cond_c
    return v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static checkIntersectionParametersOfSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/graphics/PointF;Landroid/graphics/PointF;F[F)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    add-float v4, p2, p5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 600
    new-instance v5, Landroid/graphics/PointF;

    iget v6, v1, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v7

    invoke-direct {v5, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 601
    invoke-static {v5, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->dotProductOfVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    const v6, 0x3a83126f    # 0.001f

    mul-float/2addr v6, v4

    mul-float/2addr v6, v6

    cmpg-float v6, v1, v6

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-gez v6, :cond_1

    .line 606
    invoke-static {v2, v3, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    .line 608
    aput v10, p6, v9

    .line 609
    aput v8, p6, v7

    return v7

    :cond_0
    return v9

    :cond_1
    div-float v1, v8, v1

    .line 616
    iget v6, v5, Landroid/graphics/PointF;->x:F

    mul-float v11, v6, v1

    .line 617
    iget v6, v5, Landroid/graphics/PointF;->y:F

    mul-float v13, v6, v1

    neg-float v12, v13

    .line 619
    invoke-static {v0, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->dotProductOfVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v6

    neg-float v6, v6

    mul-float v15, v6, v1

    .line 620
    invoke-static {v0, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->crossProductOfVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    mul-float v16, v0, v1

    move v14, v11

    .line 618
    invoke-static/range {v11 .. v16}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMake(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 621
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    .line 622
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    float-to-double v3, v4

    float-to-double v5, v1

    .line 623
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v1, v3

    .line 627
    iget v3, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->signbit(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->signbit(F)I

    move-result v4

    if-ne v3, v4, :cond_f

    .line 629
    iget v3, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v10

    if-gez v3, :cond_2

    .line 630
    iget v3, v2, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 631
    iget v3, v0, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 634
    :cond_2
    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    .line 635
    iget v3, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_3

    return v9

    :cond_3
    mul-float/2addr v1, v1

    .line 638
    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 639
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v3, v1

    .line 640
    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v1

    cmpg-float v1, v0, v10

    if-ltz v1, :cond_5

    cmpl-float v1, v3, v8

    if-lez v1, :cond_4

    goto :goto_0

    .line 644
    :cond_4
    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p6, v9

    .line 645
    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, p6, v7

    return v7

    :cond_5
    :goto_0
    return v9

    .line 650
    :cond_6
    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    move-object/from16 v17, v2

    move-object v2, v0

    move-object/from16 v0, v17

    .line 656
    :cond_7
    iget v3, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_8

    return v9

    :cond_8
    mul-float v3, v1, v1

    .line 660
    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    sub-float v4, v3, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 661
    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v4

    .line 662
    iget v6, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v4

    .line 664
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v4

    .line 665
    iget v11, v0, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    div-float/2addr v11, v4

    .line 666
    iget v12, v0, Landroid/graphics/PointF;->y:F

    iget v13, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    div-float/2addr v12, v4

    .line 667
    iget v4, v2, Landroid/graphics/PointF;->y:F

    mul-float v13, v11, v1

    sub-float/2addr v4, v13

    cmpg-float v14, v4, v10

    if-gez v14, :cond_c

    .line 670
    iget v14, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v13

    cmpg-float v13, v14, v10

    if-gez v13, :cond_a

    .line 672
    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v4

    sub-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 673
    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 674
    iget v0, v0, Landroid/graphics/PointF;->x:F

    goto :goto_1

    .line 676
    :cond_9
    iget v0, v0, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 680
    :cond_a
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v3, v0

    if-gez v0, :cond_b

    .line 681
    iget v0, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v12

    mul-float/2addr v4, v11

    div-float/2addr v4, v12

    sub-float/2addr v1, v4

    :goto_1
    add-float v6, v0, v1

    goto :goto_3

    .line 683
    :cond_b
    iget v0, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v12

    mul-float/2addr v4, v11

    div-float/2addr v4, v12

    sub-float/2addr v1, v4

    :goto_2
    sub-float v5, v0, v1

    :cond_c
    :goto_3
    cmpg-float v0, v6, v10

    if-ltz v0, :cond_e

    cmpl-float v0, v5, v8

    if-lez v0, :cond_d

    goto :goto_4

    .line 690
    :cond_d
    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p6, v9

    .line 691
    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, p6, v7

    return v7

    :cond_e
    :goto_4
    return v9

    .line 696
    :cond_f
    iget v3, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v10

    if-lez v3, :cond_10

    .line 697
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_11

    .line 698
    iget v3, v2, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 699
    iget v3, v0, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    goto :goto_5

    .line 706
    :cond_10
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12

    .line 710
    iget v3, v0, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 711
    iget v3, v2, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    :cond_11
    move-object/from16 v17, v2

    move-object v2, v0

    move-object/from16 v0, v17

    .line 718
    :cond_12
    :goto_5
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    .line 719
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    .line 720
    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v3

    .line 721
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v6

    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget v11, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v11

    div-float/2addr v3, v6

    .line 723
    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v1

    add-float/2addr v6, v4

    cmpg-float v6, v6, v10

    if-gez v6, :cond_13

    .line 724
    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v6, v2

    div-float v2, v1, v5

    goto :goto_6

    .line 726
    :cond_13
    iget v6, v2, Landroid/graphics/PointF;->x:F

    mul-float v11, v1, v1

    iget v12, v2, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v12, v2

    sub-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v2, v11

    :goto_6
    sub-float/2addr v6, v2

    cmpl-float v2, v6, v8

    if-lez v2, :cond_14

    return v9

    .line 730
    :cond_14
    iget v2, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    cmpl-float v2, v2, v10

    if-lez v2, :cond_15

    .line 731
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    div-float/2addr v1, v5

    add-float/2addr v2, v1

    goto :goto_7

    .line 733
    :cond_15
    iget v2, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v1

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v2, v0

    :goto_7
    cmpg-float v0, v2, v10

    if-gez v0, :cond_16

    return v9

    .line 737
    :cond_16
    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p6, v9

    .line 738
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, p6, v7

    return v7
.end method

.method public static checkLineParameters(Landroid/graphics/PointF;Landroid/graphics/PointF;)[F
    .locals 4

    .line 336
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    .line 337
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 338
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    iget p0, p0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, p1

    sub-float/2addr v2, p0

    const/4 p0, 0x3

    .line 339
    new-array p0, p0, [F

    const/4 p1, 0x0

    aput v0, p0, p1

    const/4 p1, 0x1

    aput v1, p0, p1

    const/4 p1, 0x2

    aput v2, p0, p1

    return-object p0
.end method

.method public static checkSubPointsOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    .line 1731
    invoke-virtual {p5, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1732
    invoke-virtual {p6, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1733
    invoke-virtual {p7, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p1, p4, p0

    if-eqz p1, :cond_0

    sub-float p1, p0, p4

    .line 1737
    iget p2, p6, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, p1

    iget v0, p7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, p4

    add-float/2addr p2, v0

    iput p2, p7, Landroid/graphics/PointF;->x:F

    .line 1738
    iget p2, p6, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, p1

    iget v0, p7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p4

    add-float/2addr p2, v0

    iput p2, p7, Landroid/graphics/PointF;->y:F

    .line 1739
    iget p2, p5, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, p1

    iget v0, p6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, p4

    add-float/2addr p2, v0

    iput p2, p6, Landroid/graphics/PointF;->x:F

    .line 1740
    iget p2, p5, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, p1

    iget v0, p6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p4

    add-float/2addr p2, v0

    iput p2, p6, Landroid/graphics/PointF;->y:F

    .line 1741
    iget p2, p6, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, p1

    iget v0, p7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, p4

    add-float/2addr p2, v0

    iput p2, p7, Landroid/graphics/PointF;->x:F

    .line 1742
    iget p2, p6, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, p2

    iget p2, p7, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, p4

    add-float/2addr p1, p2

    iput p1, p7, Landroid/graphics/PointF;->y:F

    :cond_0
    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-eqz p1, :cond_1

    div-float/2addr p3, p4

    sub-float/2addr p0, p3

    .line 1746
    iget p1, p5, Landroid/graphics/PointF;->x:F

    mul-float/2addr p1, p0

    iget p2, p6, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p5, Landroid/graphics/PointF;->x:F

    .line 1747
    iget p1, p5, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, p0

    iget p2, p6, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p5, Landroid/graphics/PointF;->y:F

    .line 1748
    iget p1, p6, Landroid/graphics/PointF;->x:F

    mul-float/2addr p1, p0

    iget p2, p7, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p6, Landroid/graphics/PointF;->x:F

    .line 1749
    iget p1, p6, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, p0

    iget p2, p7, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p6, Landroid/graphics/PointF;->y:F

    .line 1750
    iget p1, p5, Landroid/graphics/PointF;->x:F

    mul-float/2addr p1, p0

    iget p2, p6, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p5, Landroid/graphics/PointF;->x:F

    .line 1751
    iget p1, p5, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, p1

    iget p1, p6, Landroid/graphics/PointF;->y:F

    mul-float/2addr p3, p1

    add-float/2addr p0, p3

    iput p0, p5, Landroid/graphics/PointF;->y:F

    :cond_1
    return-void
.end method

.method public static constructPathFromBezierPoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    .line 2168
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 2172
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->checkRectArray(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2173
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2176
    :cond_1
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x2

    .line 2180
    rem-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 2181
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2184
    :cond_3
    new-instance v1, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;-><init>()V

    .line 2185
    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setBezierPath(Landroid/graphics/Path;)V

    .line 2186
    invoke-virtual {v1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setPathRects(Ljava/lang/Object;)V

    .line 2187
    invoke-virtual {v1, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setOptimizeForAcuteAngle(Z)V

    .line 2188
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->beginConstructionAtPoint(Landroid/graphics/PointF;)V

    :goto_0
    if-ge v2, v3, :cond_4

    add-int/lit8 p1, v2, 0x1

    .line 2191
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p2

    add-int/lit8 v2, v2, 0x2

    .line 2192
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    .line 2193
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    .line 2169
    :cond_5
    :goto_2
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static constructPathFromBezierPoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;[DZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 2204
    aput-wide v3, p3, v2

    const/4 v5, 0x1

    .line 2205
    aput-wide v3, p3, v5

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    .line 2206
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 2210
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->checkRectArray(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2211
    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2214
    :cond_1
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    return-void

    :cond_2
    add-int/lit8 v8, v7, -0x1

    const/4 v9, 0x2

    .line 2218
    rem-int/2addr v8, v9

    if-eqz v8, :cond_3

    .line 2219
    invoke-static {v9, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2222
    :cond_3
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v6

    .line 2223
    new-instance v8, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-direct {v8}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;-><init>()V

    move-object/from16 v9, p1

    .line 2224
    invoke-virtual {v8, v9}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setBezierPath(Landroid/graphics/Path;)V

    .line 2225
    invoke-virtual {v8, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setPathRects(Ljava/lang/Object;)V

    move/from16 v1, p4

    .line 2226
    invoke-virtual {v8, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setOptimizeForAcuteAngle(Z)V

    .line 2227
    invoke-virtual {v8, v6}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->beginConstructionAtPoint(Landroid/graphics/PointF;)V

    const/4 v1, 0x0

    move-wide v9, v3

    move v11, v5

    :goto_0
    if-ge v11, v7, :cond_4

    add-int/lit8 v12, v11, 0x1

    .line 2233
    invoke-static {v11, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v13

    add-int/lit8 v11, v11, 0x2

    .line 2234
    invoke-static {v12, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v12

    .line 2235
    invoke-virtual {v8, v12, v13}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 2236
    invoke-static {v6, v13, v12}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v6

    .line 2237
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x4066800000000000L    # 180.0

    sub-double/2addr v15, v13

    add-double/2addr v3, v15

    sub-float v1, v6, v1

    .line 2238
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v13, v1

    add-double/2addr v9, v13

    move v1, v6

    move-object v6, v12

    goto :goto_0

    .line 2242
    :cond_4
    aput-wide v3, p3, v2

    .line 2243
    aput-wide v9, p3, v5

    return-void

    .line 2207
    :cond_5
    :goto_1
    invoke-static {v2, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static constructPathFromLinePoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    .line 2135
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 2139
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->checkRectArray(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2140
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2143
    :cond_1
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    goto :goto_1

    .line 2147
    :cond_2
    new-instance v3, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-direct {v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;-><init>()V

    .line 2148
    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setBezierPath(Landroid/graphics/Path;)V

    .line 2149
    invoke-virtual {v3, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setPathRects(Ljava/lang/Object;)V

    .line 2150
    invoke-virtual {v3, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setOptimizeForAcuteAngle(Z)V

    .line 2151
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->beginConstructionAtPoint(Landroid/graphics/PointF;)V

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2153
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addLineToPoint(Landroid/graphics/PointF;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    .line 2136
    :cond_4
    :goto_2
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static getApexParameterOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 5

    .line 1672
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 1673
    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 1674
    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    .line 1675
    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, v4

    sub-float/2addr p0, p1

    iget p1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, p1

    mul-float p1, v2, v2

    mul-float p2, p0, p0

    add-float/2addr p1, p2

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_0

    mul-float/2addr v0, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    div-float/2addr v0, p1

    return v0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public static getApexPointOnQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 1688
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getApexParameterOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 1689
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointOnQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static getApproximateSegmentsOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/PointArray;
    .locals 2

    .line 1702
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getApexParameterOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 1706
    :cond_1
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointOnQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    const/4 v0, 0x3

    .line 1707
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithCapacity(I)Lcom/metamoji/cm/PointArray;

    move-result-object v0

    .line 1708
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1709
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1710
    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return-object v0
.end method

.method public static getCenterOfSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 888
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, p1

    div-float/2addr p0, v2

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static getControlPointOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 1651
    invoke-static {p3, v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    float-to-double v2, p3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1653
    invoke-static {v2, v3, v4, v5, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    float-to-double v0, v0

    mul-double v4, v0, v0

    mul-float/2addr p3, p3

    float-to-double v6, p3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v8

    mul-double/2addr v0, v2

    .line 1660
    iget p3, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, p3

    iget p3, p0, Landroid/graphics/PointF;->x:F

    float-to-double v8, p3

    mul-double/2addr v8, v4

    sub-double/2addr v2, v8

    iget p3, p2, Landroid/graphics/PointF;->x:F

    float-to-double v8, p3

    mul-double/2addr v8, v6

    sub-double/2addr v2, v8

    div-double/2addr v2, v0

    double-to-float p3, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, p1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-double p0, p0

    mul-double/2addr v4, p0

    sub-double/2addr v2, v4

    iget p0, p2, Landroid/graphics/PointF;->y:F

    float-to-double p0, p0

    mul-double/2addr v6, p0

    sub-double/2addr v2, v6

    div-double/2addr v2, v0

    double-to-float p0, v2

    invoke-static {p3, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 302
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static getDistanceBetweenQuadCurveAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 937
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getApexParameterOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 941
    :cond_1
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointOnQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    .line 942
    invoke-static {p0, p1, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    .line 943
    invoke-static {p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 942
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static getDistanceBetweenQuadCurveAndSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 1277
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getApexParameterOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 1281
    :cond_1
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointOnQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    .line 1283
    invoke-static {p0, p1, p3, p4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    .line 1284
    invoke-static {p1, p2, p3, p4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 1282
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 6

    .line 309
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 310
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    .line 312
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    return p0

    .line 316
    :cond_0
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget v4, p2, Landroid/graphics/PointF;->y:F

    iget v5, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    div-float/2addr v3, v4

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    .line 318
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    return p0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    .line 321
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    return p0

    .line 324
    :cond_2
    iget p1, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v3

    add-float/2addr p1, v0

    iget v0, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    .line 325
    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v3

    add-float/2addr p0, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p2

    float-to-double p1, p1

    float-to-double v0, p0

    .line 326
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 9

    .line 752
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 753
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 754
    new-instance v2, Landroid/graphics/PointF;

    iget v3, p3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget v4, p3, Landroid/graphics/PointF;->y:F

    iget v5, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 755
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->crossProductOfVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->crossProductOfVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 757
    new-instance v2, Landroid/graphics/PointF;

    iget v3, p3, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget v4, p3, Landroid/graphics/PointF;->y:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 758
    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/graphics/PointF;->y:F

    iget v6, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 759
    new-instance v4, Landroid/graphics/PointF;

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget v7, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 760
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->crossProductOfVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->crossProductOfVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v4

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v5, v1, v4

    if-gez v5, :cond_0

    cmpg-float v5, v3, v4

    if-gez v5, :cond_0

    return v4

    :cond_0
    cmpl-float v1, v1, v4

    if-nez v1, :cond_d

    cmpl-float v1, v3, v4

    if-nez v1, :cond_c

    .line 769
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    iget v1, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    iget v1, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    .line 770
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    return p0

    .line 774
    :cond_1
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_6

    iget v1, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    goto :goto_3

    .line 793
    :cond_2
    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 794
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 795
    iget p1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 797
    :cond_3
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 798
    iget p0, p0, Landroid/graphics/PointF;->y:F

    move v8, p1

    move p1, p0

    move p0, v8

    .line 800
    :goto_0
    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v3, p3, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    .line 801
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 802
    iget p3, p3, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 804
    :cond_4
    iget p3, p3, Landroid/graphics/PointF;->y:F

    .line 805
    iget p2, p2, Landroid/graphics/PointF;->y:F

    move v8, p3

    move p3, p2

    move p2, v8

    .line 807
    :goto_1
    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    :goto_2
    div-float/2addr v1, v0

    goto :goto_6

    :cond_5
    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    div-float v1, v0, v1

    goto :goto_6

    .line 776
    :cond_6
    :goto_3
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_7

    .line 777
    iget p0, p0, Landroid/graphics/PointF;->x:F

    .line 778
    iget p1, p1, Landroid/graphics/PointF;->x:F

    goto :goto_4

    .line 780
    :cond_7
    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 781
    iget p0, p0, Landroid/graphics/PointF;->x:F

    move v8, p1

    move p1, p0

    move p0, v8

    .line 783
    :goto_4
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v3, p3, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_8

    .line 784
    iget p2, p2, Landroid/graphics/PointF;->x:F

    .line 785
    iget p3, p3, Landroid/graphics/PointF;->x:F

    goto :goto_5

    .line 787
    :cond_8
    iget p3, p3, Landroid/graphics/PointF;->x:F

    .line 788
    iget p2, p2, Landroid/graphics/PointF;->x:F

    move v8, p3

    move p3, p2

    move p2, v8

    .line 790
    :goto_5
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_9

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :cond_9
    iget v0, v2, Landroid/graphics/PointF;->y:F

    iget v1, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v1

    move v1, v0

    :goto_6
    cmpg-float v0, p1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v0, :cond_a

    sub-float/2addr p2, p1

    mul-float/2addr v1, v1

    add-float/2addr v1, v2

    float-to-double p0, v1

    .line 810
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr p2, p0

    return p2

    :cond_a
    cmpg-float p1, p3, p0

    if-gez p1, :cond_b

    sub-float/2addr p0, p3

    mul-float/2addr v1, v1

    add-float/2addr v1, v2

    float-to-double p1, v1

    .line 813
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float/2addr p0, p1

    return p0

    :cond_b
    return v4

    .line 820
    :cond_c
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_e

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_e

    .line 821
    invoke-static {p2, p3, p0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    return p0

    :cond_d
    cmpl-float v0, v3, v4

    if-nez v0, :cond_e

    .line 826
    iget v0, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_e

    iget v0, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_e

    .line 827
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    return p0

    .line 832
    :cond_e
    invoke-static {p2, p3, p0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 833
    invoke-static {p2, p3, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 832
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 834
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 835
    invoke-static {p0, p1, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static getDivisionOfSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;
    .locals 4

    .line 903
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 904
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    invoke-virtual {v0, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-nez v2, :cond_1

    .line 909
    invoke-virtual {v0, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-object v0

    :cond_1
    cmpl-float v2, p3, v1

    if-nez v2, :cond_2

    .line 913
    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-object v0

    :cond_2
    add-float v2, p2, p3

    cmpl-float v1, v2, v1

    if-nez v1, :cond_4

    cmpg-float p2, p2, p3

    if-gez p2, :cond_3

    goto :goto_0

    :cond_3
    move-object p0, p1

    .line 918
    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-object v0

    .line 921
    :cond_4
    iget v1, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, p3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 922
    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p3, p0

    iget p0, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, p0

    add-float/2addr p3, p2

    div-float/2addr p3, v2

    iput p3, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public static getExactDistanceBetweenQuadCurveAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x5

    .line 953
    invoke-static {v0, v1, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 954
    invoke-static {v2, v1, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 955
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 957
    :cond_0
    invoke-static {v0, v2, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 959
    :cond_1
    invoke-static {v2, v1, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 960
    invoke-static {v0, v2, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 961
    :cond_2
    invoke-static {v0, v2, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_3

    .line 962
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    div-float/2addr v2, v6

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 964
    :cond_3
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v7

    iget v7, v2, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v5, v7

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    iget v8, v2, Landroid/graphics/PointF;->x:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    invoke-static {v5, v7, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_7

    .line 965
    invoke-static {v0, v2, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointParameterOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    .line 966
    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v11

    if-nez v11, :cond_6

    cmpg-double v9, v4, v9

    if-gez v9, :cond_4

    .line 968
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    div-float/2addr v2, v6

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_4
    cmpg-double v4, v4, v7

    if-gtz v4, :cond_5

    .line 970
    invoke-static {v0, v2, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 972
    :cond_5
    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v4

    div-float/2addr v0, v6

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 975
    :cond_6
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v7

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    .line 976
    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    div-float/2addr v5, v6

    iget v7, v2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v1

    div-float/2addr v7, v6

    invoke-static {v5, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    .line 977
    invoke-static {v0, v4, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 978
    invoke-static {v4, v1, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v4

    .line 977
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 979
    invoke-static {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 977
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 982
    :cond_7
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 983
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 984
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 985
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 986
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/PointF;->y:F

    .line 987
    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/PointF;->x:F

    .line 988
    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/PointF;->y:F

    .line 989
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 990
    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 991
    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-double v3, v3

    iget v5, v1, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v11

    sub-double/2addr v3, v5

    iget v5, v2, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    add-double/2addr v3, v5

    .line 992
    iget v5, v0, Landroid/graphics/PointF;->y:F

    float-to-double v5, v5

    iget v13, v1, Landroid/graphics/PointF;->y:F

    float-to-double v13, v13

    mul-double/2addr v13, v11

    sub-double/2addr v5, v13

    iget v13, v2, Landroid/graphics/PointF;->y:F

    float-to-double v13, v13

    add-double/2addr v5, v13

    .line 993
    iget v13, v1, Landroid/graphics/PointF;->x:F

    iget v14, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    .line 994
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v15, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v15

    move-wide/from16 p0, v11

    float-to-double v11, v1

    .line 995
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v7, v1

    .line 996
    iget v1, v0, Landroid/graphics/PointF;->y:F

    float-to-double v9, v1

    const/4 v1, 0x3

    .line 997
    new-array v1, v1, [D

    mul-double v18, v3, v3

    mul-double v20, v5, v5

    add-double v18, v18, v20

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    mul-double v22, v3, v20

    mul-double v22, v22, v13

    mul-double v20, v20, v5

    mul-double v20, v20, v11

    add-double v20, v22, v20

    mul-double v22, v3, v7

    mul-double v24, v5, v9

    add-double v22, v22, v24

    mul-double v27, v13, p0

    mul-double v24, v27, v13

    add-double v22, v22, v24

    mul-double v29, v11, p0

    mul-double v24, v29, v11

    add-double v22, v22, v24

    mul-double/2addr v13, v7

    mul-double/2addr v11, v9

    add-double v24, v13, v11

    move-object/from16 v26, v1

    .line 998
    invoke-static/range {v18 .. v26}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->solveCubicEquationWithCoefficients(DDDD[D)I

    move-result v1

    const/4 v11, 0x0

    .line 999
    aget-wide v11, v26, v11

    const/16 p0, 0x1

    aget-wide v13, v26, p0

    const/4 v15, 0x2

    move-wide/from16 v18, v3

    aget-wide v3, v26, v15

    .line 1000
    iget v15, v0, Landroid/graphics/PointF;->x:F

    move-wide/from16 v20, v5

    iget v5, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v15, v5

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v0

    add-float/2addr v15, v5

    float-to-double v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v15, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v15

    iget v15, v2, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v15, v2

    add-float/2addr v0, v15

    move-wide/from16 v22, v7

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    const/4 v0, 0x6

    const/4 v2, 0x2

    if-le v1, v2, :cond_9

    const-wide/16 v7, 0x0

    .line 1001
    invoke-static {v3, v4, v7, v8, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v2

    if-nez v2, :cond_8

    move-wide/from16 v16, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v7, v8, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v2

    if-nez v2, :cond_8

    cmpl-double v2, v3, v16

    if-lez v2, :cond_9

    cmpg-double v2, v3, v7

    if-gez v2, :cond_9

    :cond_8
    mul-double v7, v18, v3

    mul-double/2addr v7, v3

    mul-double v24, v27, v3

    add-double v7, v7, v24

    add-double v7, v7, v22

    mul-double v24, v20, v3

    mul-double v24, v24, v3

    mul-double v3, v3, v29

    add-double v24, v24, v3

    add-double v24, v24, v9

    mul-double/2addr v7, v7

    mul-double v24, v24, v24

    add-double v7, v7, v24

    .line 1004
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    :cond_9
    move/from16 v2, p0

    if-le v1, v2, :cond_b

    const-wide/16 v7, 0x0

    .line 1006
    invoke-static {v13, v14, v7, v8, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v2

    if-nez v2, :cond_a

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v13, v14, v2, v3, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v4

    if-nez v4, :cond_a

    cmpl-double v4, v13, v7

    if-lez v4, :cond_b

    cmpg-double v4, v13, v2

    if-gez v4, :cond_b

    :cond_a
    mul-double v3, v18, v13

    mul-double/2addr v3, v13

    mul-double v7, v27, v13

    add-double/2addr v3, v7

    add-double v3, v3, v22

    mul-double v7, v20, v13

    mul-double/2addr v7, v13

    mul-double v13, v13, v29

    add-double/2addr v7, v13

    add-double/2addr v7, v9

    mul-double/2addr v3, v3

    mul-double/2addr v7, v7

    add-double/2addr v3, v7

    .line 1009
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    :cond_b
    if-lez v1, :cond_d

    const-wide/16 v7, 0x0

    .line 1011
    invoke-static {v11, v12, v7, v8, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v1

    if-nez v1, :cond_c

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12, v2, v3, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v0

    if-nez v0, :cond_c

    cmpl-double v0, v11, v7

    if-lez v0, :cond_d

    cmpg-double v0, v11, v2

    if-gez v0, :cond_d

    :cond_c
    mul-double v3, v18, v11

    mul-double/2addr v3, v11

    mul-double v27, v27, v11

    add-double v3, v3, v27

    add-double v3, v3, v22

    mul-double v0, v20, v11

    mul-double/2addr v0, v11

    mul-double v29, v29, v11

    add-double v0, v0, v29

    add-double/2addr v0, v9

    mul-double/2addr v3, v3

    mul-double/2addr v0, v0

    add-double/2addr v3, v0

    .line 1014
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0

    :cond_d
    return-wide v5
.end method

.method public static getExactDistanceBetweenQuadCurveAndSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x5

    .line 1295
    invoke-static {v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1296
    invoke-static/range {p0 .. p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getExactDistanceBetweenQuadCurveAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v0

    return-wide v0

    .line 1297
    :cond_0
    invoke-static {v0, v1, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1298
    invoke-static {v2, v1, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1299
    invoke-static {v3, v4, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 1301
    :cond_1
    invoke-static {v0, v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 1303
    :cond_2
    invoke-static {v2, v1, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1304
    invoke-static {v0, v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 1305
    :cond_3
    invoke-static {v0, v2, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v6, :cond_4

    .line 1306
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v5

    div-float/2addr v2, v7

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v1

    div-float/2addr v5, v7

    invoke-static {v2, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1, v3, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 1308
    :cond_4
    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v8

    iget v8, v2, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    mul-float/2addr v6, v8

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    invoke-static {v6, v8, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    if-eqz v5, :cond_8

    .line 1309
    invoke-static {v0, v2, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointParameterOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v5

    .line 1310
    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v12

    if-nez v12, :cond_7

    cmpg-double v10, v5, v10

    if-gez v10, :cond_5

    .line 1312
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v5

    div-float/2addr v2, v7

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v1

    div-float/2addr v5, v7

    invoke-static {v2, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1, v0, v3, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_5
    cmpg-double v5, v5, v8

    if-gtz v5, :cond_6

    .line 1314
    invoke-static {v0, v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 1316
    :cond_6
    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v5

    div-float/2addr v0, v7

    iget v5, v2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v1

    div-float/2addr v5, v7

    invoke-static {v0, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 1319
    :cond_7
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v8

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 1320
    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v8

    div-float/2addr v6, v7

    iget v8, v2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v1

    div-float/2addr v8, v7

    invoke-static {v6, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    .line 1321
    invoke-static {v0, v5, v3, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 1322
    invoke-static {v5, v1, v3, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v5

    .line 1321
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1323
    invoke-static {v1, v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 1321
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 1327
    :cond_8
    iget v5, v4, Landroid/graphics/PointF;->y:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 1328
    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v12, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v12

    float-to-double v12, v7

    .line 1329
    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v14, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v14

    iget v14, v3, Landroid/graphics/PointF;->x:F

    iget v15, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v14, v15

    sub-float/2addr v7, v14

    float-to-double v14, v7

    .line 1330
    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-double v8, v7

    iget v7, v1, Landroid/graphics/PointF;->x:F

    float-to-double v10, v7

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v18

    sub-double/2addr v8, v10

    iget v7, v2, Landroid/graphics/PointF;->x:F

    float-to-double v10, v7

    add-double/2addr v8, v10

    .line 1331
    iget v7, v0, Landroid/graphics/PointF;->y:F

    float-to-double v10, v7

    iget v7, v1, Landroid/graphics/PointF;->y:F

    move-wide/from16 v20, v5

    float-to-double v5, v7

    mul-double v5, v5, v18

    sub-double/2addr v10, v5

    iget v5, v2, Landroid/graphics/PointF;->y:F

    float-to-double v5, v5

    add-double/2addr v10, v5

    .line 1332
    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 1333
    iget v7, v1, Landroid/graphics/PointF;->y:F

    move-wide/from16 v22, v5

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v5

    float-to-double v5, v7

    .line 1334
    iget v7, v0, Landroid/graphics/PointF;->x:F

    move-wide/from16 v24, v5

    float-to-double v5, v7

    .line 1335
    iget v7, v0, Landroid/graphics/PointF;->y:F

    move-wide/from16 v26, v5

    float-to-double v5, v7

    mul-double v28, v20, v8

    mul-double v30, v12, v10

    add-double v32, v28, v30

    mul-double v28, v20, v22

    mul-double v30, v12, v24

    move-wide/from16 v39, v5

    add-double v5, v28, v30

    mul-double v20, v20, v26

    mul-double v12, v12, v39

    add-double v20, v20, v12

    add-double v36, v20, v14

    const/4 v7, 0x2

    .line 1339
    new-array v12, v7, [D

    mul-double v34, v5, v18

    move-object/from16 v38, v12

    .line 1340
    invoke-static/range {v32 .. v38}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->solveQuadraticEquationWithCoefficients(DDD[D)I

    move-result v12

    move-wide/from16 v13, v32

    const/4 v15, 0x0

    move-wide/from16 v20, v8

    .line 1341
    aget-wide v7, v38, v15

    const/16 v28, 0x1

    move-wide/from16 v29, v10

    aget-wide v9, v38, v28

    const/4 v11, 0x6

    if-lez v12, :cond_13

    const-wide/16 v5, 0x0

    .line 1344
    invoke-static {v7, v8, v5, v6, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1345
    invoke-static {v3, v4, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointParameterOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v7

    goto :goto_0

    :cond_9
    move-wide/from16 v16, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 1346
    invoke-static {v7, v8, v5, v6, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1347
    invoke-static {v3, v4, v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointParameterOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v7

    goto :goto_0

    :cond_a
    cmpl-double v13, v7, v16

    if-lez v13, :cond_b

    cmpg-double v13, v7, v5

    if-gez v13, :cond_b

    mul-double v5, v20, v7

    mul-double/2addr v5, v7

    mul-double v32, v22, v18

    mul-double v32, v32, v7

    add-double v5, v5, v32

    add-double v5, v5, v26

    double-to-float v5, v5

    mul-double v32, v29, v7

    mul-double v32, v32, v7

    mul-double v34, v24, v18

    mul-double v34, v34, v7

    add-double v32, v32, v34

    add-double v6, v32, v39

    double-to-float v6, v6

    .line 1349
    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointParameterOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v7

    goto :goto_0

    :cond_b
    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    .line 1351
    :goto_0
    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v5

    if-nez v5, :cond_d

    const-wide/16 v5, 0x0

    .line 1352
    invoke-static {v7, v8, v5, v6, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v13

    if-nez v13, :cond_c

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8, v14, v15, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v13

    if-nez v13, :cond_c

    cmpl-double v13, v7, v5

    if-lez v13, :cond_e

    cmpg-double v7, v7, v14

    if-gez v7, :cond_e

    :cond_c
    return-wide v5

    :cond_d
    const-wide/16 v5, 0x0

    :cond_e
    const/4 v7, 0x2

    if-ne v12, v7, :cond_1a

    .line 1359
    invoke-static {v9, v10, v5, v6, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1360
    invoke-static {v3, v4, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointParameterOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v14

    goto :goto_1

    :cond_f
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 1361
    invoke-static {v9, v10, v14, v15, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1362
    invoke-static {v3, v4, v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointParameterOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v7

    move-wide v14, v7

    goto :goto_1

    :cond_10
    cmpl-double v7, v9, v5

    if-lez v7, :cond_11

    cmpg-double v5, v9, v14

    if-gez v5, :cond_11

    mul-double v5, v20, v9

    mul-double/2addr v5, v9

    mul-double v7, v22, v18

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    add-double v5, v5, v26

    double-to-float v5, v5

    mul-double v6, v29, v9

    mul-double/2addr v6, v9

    mul-double v12, v24, v18

    mul-double/2addr v12, v9

    add-double/2addr v6, v12

    add-double v6, v6, v39

    double-to-float v6, v6

    .line 1364
    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointParameterOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v14

    goto :goto_1

    :cond_11
    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    .line 1366
    :goto_1
    invoke-static {v14, v15}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v5

    if-nez v5, :cond_1a

    const-wide/16 v5, 0x0

    .line 1367
    invoke-static {v14, v15, v5, v6, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v7

    if-nez v7, :cond_12

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15, v7, v8, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v9

    if-nez v9, :cond_12

    cmpl-double v9, v14, v5

    if-lez v9, :cond_1a

    cmpg-double v7, v14, v7

    if-gez v7, :cond_1a

    :cond_12
    return-wide v5

    :cond_13
    move-wide/from16 v32, v5

    const-wide/16 v5, 0x0

    .line 1374
    invoke-static {v13, v14, v5, v6, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v0, 0x0

    .line 1375
    invoke-static {v15, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    return-wide v0

    :cond_14
    move-wide/from16 v7, v32

    neg-double v7, v7

    div-double/2addr v7, v13

    .line 1379
    sget-object v9, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    .line 1381
    invoke-static {v7, v8, v5, v6, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v10

    if-eqz v10, :cond_15

    move-object v9, v0

    :goto_2
    move/from16 v15, v28

    goto :goto_3

    :cond_15
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 1384
    invoke-static {v7, v8, v12, v13, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v10

    if-eqz v10, :cond_16

    move-object v9, v2

    goto :goto_2

    :cond_16
    cmpl-double v10, v7, v5

    if-lez v10, :cond_17

    cmpg-double v5, v7, v12

    if-gez v5, :cond_17

    mul-double v5, v20, v7

    mul-double/2addr v5, v7

    mul-double v9, v22, v18

    mul-double/2addr v9, v7

    add-double/2addr v5, v9

    add-double v5, v5, v26

    double-to-float v5, v5

    mul-double v9, v29, v7

    mul-double/2addr v9, v7

    mul-double v12, v24, v18

    mul-double/2addr v12, v7

    add-double/2addr v9, v12

    add-double v9, v9, v39

    double-to-float v6, v9

    .line 1388
    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v9

    goto :goto_2

    :cond_17
    :goto_3
    if-eqz v15, :cond_1a

    .line 1392
    invoke-static {v3, v4, v9}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getFootOfPerpendicularLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    .line 1393
    invoke-static {v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointParameterOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v6

    .line 1394
    invoke-static {v6, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v8

    if-nez v8, :cond_1a

    const-wide/16 v12, 0x0

    .line 1395
    invoke-static {v6, v7, v12, v13, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 1396
    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_18
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 1397
    invoke-static {v6, v7, v14, v15, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1398
    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_19
    cmpl-double v8, v6, v12

    if-lez v8, :cond_1a

    cmpg-double v6, v6, v14

    if-gez v6, :cond_1a

    .line 1400
    invoke-static {v9, v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 1405
    :cond_1a
    invoke-static/range {p0 .. p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getExactDistanceBetweenQuadCurveAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v5

    .line 1406
    invoke-static {v0, v1, v2, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getExactDistanceBetweenQuadCurveAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v0

    .line 1405
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getExactQuadCurveLength(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;DD)D
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1474
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    mul-float/2addr v3, v5

    float-to-double v3, v3

    .line 1475
    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v2

    mul-float/2addr v6, v5

    float-to-double v6, v6

    .line 1476
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v8

    mul-float/2addr v2, v5

    float-to-double v8, v2

    .line 1477
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, v5

    float-to-double v0, v1

    mul-double v10, v3, v3

    mul-double v12, v6, v6

    add-double/2addr v10, v12

    mul-double/2addr v3, v8

    mul-double/2addr v6, v0

    add-double/2addr v3, v6

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    mul-double/2addr v8, v8

    mul-double/2addr v0, v0

    add-double/2addr v8, v0

    mul-double v0, v3, v3

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    mul-double v14, v10, v12

    mul-double/2addr v14, v8

    sub-double/2addr v0, v14

    const-wide/16 v14, 0x0

    cmpl-double v2, v0, v14

    if-nez v2, :cond_1

    cmpl-double v0, v10, v14

    if-nez v0, :cond_0

    .line 1484
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double v2, p5, p3

    mul-double/2addr v0, v2

    return-wide v0

    :cond_0
    mul-double/2addr v5, v10

    mul-double v0, v5, p3

    add-double/2addr v0, v3

    mul-double v5, v5, p5

    add-double/2addr v5, v3

    .line 1488
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v2, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    mul-double/2addr v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    div-double/2addr v2, v0

    return-wide v2

    :cond_1
    mul-double v14, v10, p3

    add-double/2addr v14, v3

    mul-double v14, v14, p3

    add-double/2addr v14, v8

    mul-double/2addr v14, v10

    .line 1491
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    mul-double/2addr v14, v5

    mul-double v16, v10, v5

    mul-double v18, v16, p3

    add-double v14, v14, v18

    add-double/2addr v14, v3

    mul-double v18, v10, p5

    add-double v18, v18, v3

    mul-double v18, v18, p5

    add-double v18, v18, v8

    mul-double v18, v18, v10

    .line 1492
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    mul-double v16, v16, p5

    add-double v7, v7, v16

    add-double/2addr v7, v3

    mul-double v2, v14, v14

    mul-double v4, v7, v7

    sub-double v16, v4, v2

    div-double/2addr v7, v14

    .line 1495
    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double/2addr v6, v12

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v4, v8, v4

    div-double/2addr v8, v2

    sub-double/2addr v4, v8

    mul-double/2addr v4, v0

    add-double/2addr v6, v4

    mul-double/2addr v0, v6

    sub-double v16, v16, v0

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    mul-double/2addr v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    div-double v16, v16, v0

    return-wide v16
.end method

.method public static getFootOfPerpendicularLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    .line 396
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    .line 397
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    return-object p0

    .line 401
    :cond_0
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    iget p0, p0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, p1

    sub-float/2addr v2, p0

    .line 402
    iget p0, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr p0, v0

    iget p1, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, v1

    add-float/2addr p0, p1

    add-float/2addr p0, v2

    mul-float p1, v0, v0

    mul-float v2, v1, v1

    add-float/2addr p1, v2

    div-float/2addr p0, p1

    .line 403
    iget p1, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, p0

    sub-float/2addr p1, v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, p0

    sub-float/2addr p2, v1

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static getLineSegmentBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 856
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getLineSegmentBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static getLineSegmentBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 5

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 861
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 862
    iget v0, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p2

    .line 863
    iget v1, p1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 865
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p2

    .line 866
    iget v1, p0, Landroid/graphics/PointF;->x:F

    :goto_0
    add-float/2addr v1, p2

    .line 869
    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 870
    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p2

    .line 871
    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    goto :goto_1

    .line 873
    :cond_1
    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    .line 874
    iget p0, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, p2

    move v4, p1

    move p1, p0

    move p0, v4

    :goto_1
    sub-float/2addr v1, v0

    sub-float/2addr p1, p0

    .line 877
    invoke-virtual {p3, v0, p0, v1, p1}, Lcom/metamoji/cm/RectEx;->set(FFFF)V

    return-object p3
.end method

.method public static getNearestPointToSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    .line 410
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getFootOfPerpendicularLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 411
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 412
    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 413
    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 414
    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 415
    iget p1, p2, Landroid/graphics/PointF;->x:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    .line 416
    iget p1, p2, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    .line 417
    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 418
    iput v1, p2, Landroid/graphics/PointF;->y:F

    return-object p2

    .line 419
    :cond_0
    iget p1, p2, Landroid/graphics/PointF;->y:F

    cmpl-float p1, p1, p0

    if-ltz p1, :cond_3

    .line 420
    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 421
    iput p0, p2, Landroid/graphics/PointF;->y:F

    return-object p2

    .line 423
    :cond_1
    iget p1, p2, Landroid/graphics/PointF;->x:F

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_3

    .line 424
    iget p1, p2, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_2

    .line 425
    iput v2, p2, Landroid/graphics/PointF;->x:F

    .line 426
    iput v1, p2, Landroid/graphics/PointF;->y:F

    return-object p2

    .line 427
    :cond_2
    iget p1, p2, Landroid/graphics/PointF;->y:F

    cmpl-float p1, p1, p0

    if-ltz p1, :cond_3

    .line 428
    iput v2, p2, Landroid/graphics/PointF;->x:F

    .line 429
    iput p0, p2, Landroid/graphics/PointF;->y:F

    :cond_3
    return-object p2
.end method

.method public static getParameterPointOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 2

    .line 377
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 378
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    return-object p1

    .line 387
    :cond_2
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    iget v1, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    mul-float/2addr p1, p2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static getPathRectsFromBezierPoints(Lcom/metamoji/cm/PointArray;F)Ljava/lang/Object;
    .locals 6

    .line 2253
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2254
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 2257
    :cond_0
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->newRectArray()Ljava/lang/Object;

    move-result-object v0

    .line 2258
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    goto :goto_1

    .line 2262
    :cond_1
    rem-int/lit8 v4, v3, 0x2

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 2263
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 2266
    :cond_2
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    :goto_0
    if-ge v5, v3, :cond_3

    add-int/lit8 v2, v5, 0x1

    .line 2269
    invoke-static {v5, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    add-int/lit8 v5, v5, 0x2

    .line 2270
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 2271
    invoke-static {v1, v4, v2, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->addRect(Lcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getPointOnQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    mul-float v1, v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    mul-float/2addr v0, p3

    mul-float/2addr p3, p3

    .line 1640
    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v1

    iget v4, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v4, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, p0

    iget p0, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p0

    add-float/2addr v1, v0

    iget p0, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr p3, p0

    add-float/2addr v1, p3

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public static getPointParameterOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 6

    const/4 v0, 0x5

    .line 348
    invoke-static {p0, p1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    if-eqz v1, :cond_0

    return-wide v2

    .line 351
    :cond_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v4, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v4, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v2

    .line 355
    :cond_1
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    :goto_0
    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    float-to-double p0, p2

    return-wide p0

    .line 356
    :cond_2
    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v4, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 357
    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v4, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_3

    return-wide v2

    .line 360
    :cond_3
    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v0, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v0

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 362
    :cond_4
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v4, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    div-float/2addr v1, v4

    float-to-double v4, v1

    .line 363
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    float-to-double p0, p2

    .line 364
    invoke-static {v4, v5, p0, p1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result p0

    if-eqz p0, :cond_5

    return-wide v4

    :cond_5
    return-wide v2
.end method

.method public static getQuadCurveBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 1608
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static getQuadCurveBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 7

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p3, v0

    .line 1612
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v1

    .line 1614
    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3, v4, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->rangeOfQuadratic(FFF[F)V

    const/4 v2, 0x0

    .line 1615
    aget v3, v1, v2

    sub-float v4, v3, v0

    const/4 v5, 0x1

    .line 1616
    aget v6, v1, v5

    sub-float/2addr v6, v3

    add-float/2addr v6, p3

    .line 1618
    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p0, p1, p2, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->rangeOfQuadratic(FFF[F)V

    .line 1619
    aget p0, v1, v2

    sub-float p1, p0, v0

    .line 1620
    aget p2, v1, v5

    sub-float/2addr p2, p0

    add-float/2addr p2, p3

    .line 1622
    invoke-virtual {p4, v4, p1, v6, p2}, Lcom/metamoji/cm/RectEx;->set(FFFF)V

    return-object p4
.end method

.method public static getQuadCurveLength(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;DD)D
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1420
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    iget v5, v2, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    add-double/2addr v5, v3

    iget v7, v1, Landroid/graphics/PointF;->x:F

    float-to-double v7, v7

    sub-double/2addr v5, v7

    .line 1421
    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    iget v9, v2, Landroid/graphics/PointF;->y:F

    float-to-double v9, v9

    add-double/2addr v9, v7

    iget v11, v1, Landroid/graphics/PointF;->y:F

    float-to-double v11, v11

    sub-double/2addr v9, v11

    .line 1422
    iget v11, v2, Landroid/graphics/PointF;->x:F

    iget v12, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    .line 1423
    iget v13, v2, Landroid/graphics/PointF;->y:F

    iget v14, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    mul-double v15, v5, v5

    mul-double v17, v9, v9

    add-double v15, v15, v17

    const-wide v17, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v17, v15, v17

    if-gez v17, :cond_0

    sub-double v0, p5, p3

    .line 1426
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0

    :cond_0
    mul-double/2addr v3, v5

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    div-double/2addr v3, v15

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v7, v3, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v7, v9, v7

    mul-double/2addr v11, v11

    mul-double/2addr v13, v13

    add-double/2addr v11, v13

    div-double/2addr v11, v15

    const-wide/16 v13, 0x0

    cmpg-double v13, v13, v3

    if-gez v13, :cond_1

    cmpg-double v13, v3, v9

    if-ltz v13, :cond_2

    :cond_1
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    :cond_2
    sub-double v13, v9, v3

    mul-double v15, v3, v3

    mul-double v17, v13, v13

    mul-double v19, v13, v5

    mul-double v21, v19, v3

    move-wide/from16 v23, v5

    .line 1436
    iget v5, v0, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    mul-double v5, v5, v17

    move-wide/from16 v25, v9

    iget v9, v1, Landroid/graphics/PointF;->x:F

    float-to-double v9, v9

    mul-double v9, v9, v21

    add-double/2addr v5, v9

    iget v9, v2, Landroid/graphics/PointF;->x:F

    float-to-double v9, v9

    mul-double/2addr v9, v15

    add-double/2addr v5, v9

    .line 1437
    iget v9, v0, Landroid/graphics/PointF;->y:F

    float-to-double v9, v9

    mul-double v9, v9, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-wide/from16 v27, v3

    float-to-double v3, v1

    mul-double v21, v21, v3

    add-double v9, v9, v21

    iget v1, v2, Landroid/graphics/PointF;->y:F

    float-to-double v3, v1

    mul-double/2addr v3, v15

    add-double/2addr v9, v3

    .line 1439
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v3, v1

    sub-double/2addr v3, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    sub-double/2addr v0, v9

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 1440
    iget v3, v2, Landroid/graphics/PointF;->x:F

    float-to-double v3, v3

    sub-double/2addr v3, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v5, v2

    sub-double/2addr v5, v9

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    sub-double v5, v23, v27

    mul-double/2addr v5, v7

    sub-double v4, v13, v5

    add-double/2addr v4, v11

    mul-double v19, v19, v7

    sub-double v17, v17, v19

    add-double v17, v17, v11

    div-double v4, v4, v17

    sub-double v9, v23, v13

    mul-double/2addr v9, v7

    add-double v9, v27, v9

    add-double/2addr v9, v11

    mul-double v13, v27, v23

    mul-double/2addr v13, v7

    add-double/2addr v15, v13

    add-double/2addr v15, v11

    div-double/2addr v9, v15

    cmpg-double v6, p3, v27

    if-gez v6, :cond_3

    div-double v6, p3, v27

    sub-double v11, v25, v6

    mul-double/2addr v11, v4

    add-double/2addr v11, v6

    mul-double/2addr v6, v11

    mul-double/2addr v6, v0

    goto :goto_0

    :cond_3
    sub-double v6, v25, p3

    div-double v6, v6, v27

    sub-double v11, v25, v6

    mul-double/2addr v11, v9

    add-double/2addr v11, v6

    mul-double/2addr v6, v11

    sub-double v6, v25, v6

    mul-double/2addr v6, v2

    add-double/2addr v6, v0

    :goto_0
    cmpg-double v8, p5, v27

    if-gez v8, :cond_4

    div-double v2, p5, v27

    sub-double v9, v25, v2

    mul-double/2addr v9, v4

    add-double/2addr v9, v2

    mul-double/2addr v2, v9

    mul-double/2addr v2, v0

    goto :goto_1

    :cond_4
    sub-double v4, v25, p5

    div-double v4, v4, v27

    sub-double v11, v25, v4

    mul-double/2addr v11, v9

    add-double/2addr v11, v4

    mul-double/2addr v4, v11

    sub-double v9, v25, v4

    mul-double/2addr v9, v2

    add-double v2, v0, v9

    :goto_1
    sub-double/2addr v2, v6

    return-wide v2
.end method

.method public static getQuadCurveLengthRatio(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)D
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    float-to-double v4, v3

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v8, v4, v6

    if-ltz v8, :cond_5

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v3

    float-to-double v8, v8

    cmpg-double v3, v8, v6

    if-gez v3, :cond_0

    goto/16 :goto_0

    .line 1514
    :cond_0
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v6

    float-to-double v6, v3

    iget v3, v2, Landroid/graphics/PointF;->x:F

    float-to-double v10, v3

    add-double/2addr v10, v6

    iget v3, v1, Landroid/graphics/PointF;->x:F

    float-to-double v12, v3

    sub-double/2addr v10, v12

    .line 1515
    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v12, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v12

    float-to-double v12, v3

    iget v3, v2, Landroid/graphics/PointF;->y:F

    float-to-double v14, v3

    add-double/2addr v14, v12

    iget v3, v1, Landroid/graphics/PointF;->y:F

    move-wide/from16 v16, v4

    float-to-double v3, v3

    sub-double/2addr v14, v3

    .line 1516
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    .line 1517
    iget v5, v2, Landroid/graphics/PointF;->y:F

    move-wide/from16 v18, v3

    iget v3, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v3

    float-to-double v3, v5

    mul-double v20, v10, v10

    mul-double v22, v14, v14

    add-double v20, v20, v22

    const-wide v22, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v5, v20, v22

    if-gez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    mul-double/2addr v6, v10

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    div-double v6, v6, v20

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v12, v6, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v12, v14, v12

    mul-double v18, v18, v18

    mul-double/2addr v3, v3

    add-double v18, v18, v3

    div-double v18, v18, v20

    const-wide/16 v3, 0x0

    cmpg-double v3, v3, v6

    if-gez v3, :cond_2

    cmpg-double v3, v6, v14

    if-ltz v3, :cond_3

    :cond_2
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    :cond_3
    sub-double v3, v14, v6

    mul-double v20, v6, v6

    mul-double v22, v3, v3

    mul-double v24, v3, v10

    mul-double v26, v24, v6

    .line 1530
    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-wide/from16 v28, v10

    float-to-double v10, v5

    mul-double v10, v10, v22

    iget v5, v1, Landroid/graphics/PointF;->x:F

    move-wide/from16 v30, v14

    float-to-double v14, v5

    mul-double v14, v14, v26

    add-double/2addr v10, v14

    iget v5, v2, Landroid/graphics/PointF;->x:F

    float-to-double v14, v5

    mul-double v14, v14, v20

    add-double/2addr v10, v14

    .line 1531
    iget v5, v0, Landroid/graphics/PointF;->y:F

    float-to-double v14, v5

    mul-double v14, v14, v22

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-wide/from16 v32, v3

    float-to-double v3, v1

    mul-double v26, v26, v3

    add-double v14, v14, v26

    iget v1, v2, Landroid/graphics/PointF;->y:F

    float-to-double v3, v1

    mul-double v3, v3, v20

    add-double/2addr v14, v3

    .line 1533
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v3, v1

    sub-double/2addr v3, v10

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    sub-double/2addr v0, v14

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 1534
    iget v3, v2, Landroid/graphics/PointF;->x:F

    float-to-double v3, v3

    sub-double/2addr v3, v10

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v10, v2

    sub-double/2addr v10, v14

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    cmpg-double v4, v16, v6

    if-gez v4, :cond_4

    sub-double v10, v28, v6

    mul-double/2addr v10, v12

    sub-double v4, v32, v10

    add-double v4, v4, v18

    mul-double v24, v24, v12

    sub-double v22, v22, v24

    add-double v22, v22, v18

    div-double v4, v4, v22

    div-double v6, v16, v6

    sub-double v14, v30, v6

    mul-double/2addr v14, v4

    add-double/2addr v14, v6

    mul-double/2addr v6, v14

    mul-double/2addr v6, v0

    add-double/2addr v0, v2

    div-double/2addr v6, v0

    return-wide v6

    :cond_4
    sub-double v10, v28, v32

    mul-double/2addr v10, v12

    add-double/2addr v10, v6

    add-double v10, v10, v18

    mul-double v6, v6, v28

    mul-double/2addr v6, v12

    add-double v20, v20, v6

    add-double v20, v20, v18

    div-double v10, v10, v20

    div-double v8, v8, v32

    sub-double v14, v30, v8

    mul-double/2addr v14, v10

    add-double/2addr v14, v8

    mul-double/2addr v8, v14

    mul-double/2addr v8, v2

    add-double/2addr v0, v2

    div-double/2addr v8, v0

    sub-double v14, v30, v8

    return-wide v14

    :cond_5
    :goto_0
    move-wide/from16 v16, v4

    :goto_1
    return-wide v16
.end method

.method public static getQuadCurveParameter(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;D)F
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v7, v3, v5

    if-ltz v7, :cond_5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v9, v7, v3

    cmpg-double v5, v9, v5

    if-gez v5, :cond_0

    goto/16 :goto_0

    .line 1562
    :cond_0
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    iget v11, v2, Landroid/graphics/PointF;->x:F

    float-to-double v11, v11

    add-double/2addr v11, v5

    iget v13, v1, Landroid/graphics/PointF;->x:F

    float-to-double v13, v13

    sub-double/2addr v11, v13

    .line 1563
    iget v13, v0, Landroid/graphics/PointF;->y:F

    iget v14, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    iget v15, v2, Landroid/graphics/PointF;->y:F

    move-wide/from16 v16, v7

    float-to-double v7, v15

    add-double/2addr v7, v13

    iget v15, v1, Landroid/graphics/PointF;->y:F

    move-wide/from16 v18, v5

    float-to-double v5, v15

    sub-double/2addr v7, v5

    .line 1564
    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 1565
    iget v15, v2, Landroid/graphics/PointF;->y:F

    move-wide/from16 v20, v5

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v15, v5

    float-to-double v5, v15

    mul-double v22, v11, v11

    mul-double v24, v7, v7

    add-double v22, v22, v24

    const-wide v24, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v15, v22, v24

    if-gez v15, :cond_1

    double-to-float v0, v3

    return v0

    :cond_1
    mul-double v11, v11, v18

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    div-double v11, v11, v22

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v13, v11, v7

    sub-double v13, v16, v13

    mul-double v18, v20, v20

    mul-double/2addr v5, v5

    add-double v18, v18, v5

    div-double v18, v18, v22

    const-wide/16 v5, 0x0

    cmpg-double v5, v5, v11

    if-gez v5, :cond_2

    cmpg-double v5, v11, v16

    if-ltz v5, :cond_3

    :cond_2
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    :cond_3
    sub-double v5, v16, v11

    mul-double v20, v11, v11

    mul-double v22, v5, v5

    mul-double v24, v5, v7

    mul-double v26, v24, v11

    .line 1578
    iget v15, v0, Landroid/graphics/PointF;->x:F

    move-wide/from16 v28, v7

    float-to-double v7, v15

    mul-double v7, v7, v22

    iget v15, v1, Landroid/graphics/PointF;->x:F

    move-wide/from16 v30, v5

    float-to-double v5, v15

    mul-double v5, v5, v26

    add-double/2addr v7, v5

    iget v5, v2, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    mul-double v5, v5, v20

    add-double/2addr v7, v5

    .line 1579
    iget v5, v0, Landroid/graphics/PointF;->y:F

    float-to-double v5, v5

    mul-double v5, v5, v22

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move-wide/from16 v32, v5

    float-to-double v5, v1

    mul-double v26, v26, v5

    add-double v5, v32, v26

    iget v1, v2, Landroid/graphics/PointF;->y:F

    move-wide/from16 v26, v5

    float-to-double v5, v1

    mul-double v5, v5, v20

    add-double v5, v26, v5

    .line 1581
    iget v1, v0, Landroid/graphics/PointF;->x:F

    move-wide/from16 v26, v5

    float-to-double v5, v1

    sub-double/2addr v5, v7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v0, v0

    sub-double v0, v0, v26

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 1582
    iget v5, v2, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    sub-double/2addr v5, v7

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v7, v2

    sub-double v7, v7, v26

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    div-double v7, v5, v0

    add-double v7, v7, v16

    mul-double v2, v3, v7

    cmpg-double v4, v2, v16

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    if-gez v4, :cond_4

    sub-double v0, v28, v11

    mul-double/2addr v0, v13

    sub-double v5, v30, v0

    add-double v5, v5, v18

    mul-double v24, v24, v13

    sub-double v22, v22, v24

    add-double v22, v22, v18

    div-double v5, v5, v22

    sub-double v0, v16, v5

    mul-double v9, v2, v28

    mul-double v13, v5, v5

    mul-double/2addr v0, v7

    mul-double/2addr v0, v2

    add-double/2addr v13, v0

    .line 1588
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v5, v0

    div-double/2addr v9, v5

    mul-double/2addr v9, v11

    double-to-float v0, v9

    return v0

    :cond_4
    div-double/2addr v0, v5

    add-double v0, v0, v16

    mul-double/2addr v9, v0

    sub-double v0, v28, v30

    mul-double/2addr v0, v13

    add-double/2addr v0, v11

    add-double v0, v0, v18

    mul-double v11, v11, v28

    mul-double/2addr v11, v13

    add-double v20, v20, v11

    add-double v20, v20, v18

    div-double v0, v0, v20

    sub-double v2, v16, v0

    mul-double v4, v9, v28

    mul-double v11, v0, v0

    mul-double/2addr v2, v7

    mul-double/2addr v2, v9

    add-double/2addr v11, v2

    .line 1594
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    div-double/2addr v4, v0

    mul-double v4, v4, v30

    sub-double v7, v16, v4

    double-to-float v0, v7

    return v0

    :cond_5
    :goto_0
    double-to-float v0, v3

    return v0
.end method

.method public static getSegmentLength(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 0

    .line 845
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    return p0
.end method

.method public static getSubPointArrayOfQuadCurvesWithPointArray(Lcom/metamoji/cm/PointArray;FFZ)Lcom/metamoji/cm/PointArray;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1765
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    const/4 v6, 0x0

    if-ltz v5, :cond_b

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_b

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    float-to-double v7, v1

    .line 1772
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v3, v7

    int-to-float v5, v3

    cmpl-float v7, v1, v5

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    float-to-double v8, v2

    .line 1774
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-float v9, v8

    cmpl-float v10, v2, v9

    if-eqz v10, :cond_2

    move v6, v4

    :cond_2
    sub-int v10, v8, v3

    sub-int/2addr v10, v4

    add-int/2addr v10, v7

    add-int/2addr v10, v6

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v4

    .line 1778
    invoke-static {v10}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithCapacity(I)Lcom/metamoji/cm/PointArray;

    move-result-object v4

    mul-int/lit8 v10, v3, 0x2

    .line 1781
    new-instance v16, Landroid/graphics/PointF;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/PointF;-><init>()V

    new-instance v17, Landroid/graphics/PointF;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/PointF;-><init>()V

    new-instance v18, Landroid/graphics/PointF;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/PointF;-><init>()V

    if-ne v3, v8, :cond_4

    .line 1786
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v11

    add-int/lit8 v3, v10, 0x1

    .line 1787
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v12

    add-int/lit8 v10, v10, 0x2

    .line 1788
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v13

    sub-float v14, v1, v5

    sub-float v15, v2, v5

    .line 1786
    invoke-static/range {v11 .. v18}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkSubPointsOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v11, v16

    move-object/from16 v3, v17

    move-object/from16 v12, v18

    if-eqz p3, :cond_3

    .line 1795
    invoke-static {v11, v3, v12}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getTransitPointOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v17

    move-object/from16 v3, v17

    .line 1797
    :cond_3
    invoke-static {v11, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1798
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1799
    invoke-static {v12, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return-object v4

    :cond_4
    move-object/from16 v11, v16

    move-object/from16 v3, v17

    move-object/from16 v12, v18

    if-eqz v7, :cond_6

    move-object/from16 v16, v11

    .line 1805
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v11

    add-int/lit8 v7, v10, 0x1

    .line 1806
    invoke-static {v7, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v7

    add-int/lit8 v10, v10, 0x2

    .line 1807
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v13

    sub-float v14, v1, v5

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v17, v3

    move-object/from16 v18, v12

    move-object v12, v7

    .line 1805
    invoke-static/range {v11 .. v18}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkSubPointsOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v11, v16

    move-object/from16 v12, v18

    if-eqz p3, :cond_5

    .line 1814
    invoke-static {v11, v3, v12}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getTransitPointOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v17

    move-object/from16 v3, v17

    .line 1816
    :cond_5
    invoke-static {v11, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1817
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1818
    invoke-static {v12, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    goto :goto_1

    .line 1821
    :cond_6
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1822
    invoke-static {v1, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    move-object v12, v1

    :goto_1
    mul-int/lit8 v1, v8, 0x2

    if-ge v10, v1, :cond_8

    add-int/lit8 v1, v10, 0x1

    .line 1827
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    add-int/lit8 v10, v10, 0x2

    .line 1828
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    if-eqz p3, :cond_7

    .line 1830
    invoke-static {v12, v1, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getTransitPointOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1832
    :cond_7
    invoke-static {v1, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1833
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    move-object v11, v12

    move-object v12, v3

    move-object v3, v1

    goto :goto_1

    :cond_8
    if-eqz v6, :cond_a

    .line 1839
    new-instance v1, Landroid/graphics/PointF;

    iget v5, v11, Landroid/graphics/PointF;->x:F

    iget v6, v11, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1840
    new-instance v5, Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1841
    new-instance v13, Landroid/graphics/PointF;

    iget v3, v12, Landroid/graphics/PointF;->x:F

    iget v6, v12, Landroid/graphics/PointF;->y:F

    invoke-direct {v13, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    add-int/lit8 v3, v10, 0x1

    .line 1844
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v14

    add-int/lit8 v10, v10, 0x2

    .line 1845
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v15

    const/16 v16, 0x0

    sub-float v17, v2, v9

    move-object/from16 v20, v13

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    .line 1843
    invoke-static/range {v13 .. v20}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkSubPointsOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, v18

    if-eqz p3, :cond_9

    .line 1852
    invoke-static {v0, v5, v13}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getTransitPointOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    .line 1854
    :cond_9
    invoke-static {v5, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1855
    invoke-static {v13, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    :cond_a
    return-object v4

    :cond_b
    :goto_2
    const/4 v0, 0x0

    .line 1767
    invoke-static {v6, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0
.end method

.method public static getSymmetricPointForLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5

    .line 440
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    .line 441
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v3, :cond_0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 443
    iget p1, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr p1, v4

    iget v0, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, v4

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p2

    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 445
    :cond_0
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    iget p0, p0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, p1

    sub-float/2addr v2, p0

    .line 446
    iget p0, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr p0, v0

    iget p1, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, v1

    add-float/2addr p0, p1

    add-float/2addr p0, v2

    mul-float p1, v0, v0

    mul-float v2, v1, v1

    add-float/2addr p1, v2

    div-float/2addr p0, p1

    .line 447
    iget p1, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v4

    mul-float/2addr v0, p0

    sub-float/2addr p1, v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v4

    mul-float/2addr v1, p0

    sub-float/2addr p2, v1

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private static getTransitPointOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 2371
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getApexParameterOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_1

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2375
    :cond_1
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointOnQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private static rangeOfQuadratic(FFF[F)V
    .locals 11

    .line 2340
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 2341
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    mul-int v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_1

    add-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2344
    aput p0, p3, v4

    .line 2345
    aput p2, p3, v3

    return-void

    .line 2347
    :cond_0
    aput p2, p3, v4

    .line 2348
    aput p0, p3, v3

    return-void

    :cond_1
    float-to-double v1, p0

    float-to-double v5, p2

    add-double v7, v1, v5

    sub-double/2addr v1, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr p1, v5

    float-to-double v5, p1

    add-double v9, v7, v5

    mul-double/2addr v1, v1

    sub-double/2addr v7, v5

    div-double/2addr v1, v7

    sub-double/2addr v9, v1

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    div-double/2addr v9, v1

    const/4 p1, -0x1

    if-ne v0, p1, :cond_3

    cmpg-float p1, p0, p2

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    move p0, p2

    .line 2357
    :goto_0
    aput p0, p3, v4

    double-to-float p0, v9

    .line 2358
    aput p0, p3, v3

    return-void

    :cond_3
    double-to-float p1, v9

    .line 2360
    aput p1, p3, v4

    cmpl-float p1, p0, p2

    if-lez p1, :cond_4

    goto :goto_1

    :cond_4
    move p0, p2

    .line 2361
    :goto_1
    aput p0, p3, v3

    return-void
.end method

.method private static signbit(F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addLineToPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 147
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 148
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0, p1, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 6

    .line 155
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 161
    :cond_0
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_startPointMoved:Z

    .line 162
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_optimizeForAcuteAngle:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_basePoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-static {v0, v1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkAcutenessOfAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_startPointMoved:Z

    .line 167
    :cond_1
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v1

    .line 169
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v2

    .line 170
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    if-eqz v1, :cond_2

    .line 175
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->SINGLE_LINE_SEGMENT:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_addedPathType:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    .line 178
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_pathRects:Ljava/lang/Object;

    if-eqz v1, :cond_a

    .line 179
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/metamoji/cm/RectEx;->set(FFFF)V

    goto :goto_2

    .line 183
    :cond_2
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->DOUBLE_LINE_SEGMENTS:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_addedPathType:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    .line 184
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-static {v1, p2, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getApexPointOnQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 187
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_pathRects:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-static {v1, p2, v4, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getLineSegmentBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_basePoint:Landroid/graphics/PointF;

    invoke-virtual {v1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_8

    if-eqz v2, :cond_5

    goto :goto_1

    .line 209
    :cond_5
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_optimizeForAcuteAngle:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-static {v1, p2, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkAcutenessOfAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 211
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->DOUBLE_LINE_SEGMENTS:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_addedPathType:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    .line 212
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-static {v1, p2, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getApexPointOnQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 215
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_pathRects:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 216
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-static {v1, p2, v4, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getLineSegmentBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 217
    invoke-static {p2, p1, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getLineSegmentBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v0, v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    goto :goto_0

    .line 221
    :cond_6
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->QUAD_CURVE:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_addedPathType:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    .line 224
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_pathRects:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 225
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-static {v1, p2, p1, v4, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 230
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_basePoint:Landroid/graphics/PointF;

    invoke-virtual {v1, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_2

    .line 198
    :cond_8
    :goto_1
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->SINGLE_LINE_SEGMENT:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_addedPathType:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    .line 201
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_pathRects:Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 202
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-static {v1, p1, v4, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getLineSegmentBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 206
    :cond_9
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_basePoint:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 235
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    if-eqz v1, :cond_b

    .line 236
    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 237
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 241
    :cond_b
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPath:Landroid/graphics/Path;

    if-eqz v1, :cond_10

    .line 243
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_startPointMoved:Z

    if-eqz v2, :cond_c

    .line 244
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 248
    :cond_c
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_addedPathType:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    goto :goto_3

    .line 262
    :cond_d
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPath:Landroid/graphics/Path;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 263
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPath:Landroid/graphics/Path;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 264
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPath:Landroid/graphics/Path;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 259
    :cond_e
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPath:Landroid/graphics/Path;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 250
    :cond_f
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPath:Landroid/graphics/Path;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 272
    :cond_10
    :goto_3
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_pathRects:Ljava/lang/Object;

    if-eqz v1, :cond_11

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 273
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_pathRects:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->addRect(Lcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    .line 277
    :cond_11
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastStartPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 278
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastControlPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 279
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void

    :cond_12
    :goto_4
    const/4 p1, 0x0

    .line 156
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public addedPathType()Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_addedPathType:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    return-object v0
.end method

.method public beginConstructionAtPoint(Landroid/graphics/PointF;)V
    .locals 2

    .line 114
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 115
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 118
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->NONE:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_addedPathType:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    .line 119
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_startPointMoved:Z

    .line 120
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 121
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastControlPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 122
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 123
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_basePoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 124
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    if-eqz v0, :cond_1

    .line 125
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPath:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    .line 128
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_2
    return-void
.end method

.method public bezierPath()Landroid/graphics/Path;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public bezierPoints()Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    return-object v0
.end method

.method public clearConstruction()V
    .locals 2

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 284
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPath:Landroid/graphics/Path;

    .line 285
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_pathRects:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_optimizeForAcuteAngle:Z

    .line 287
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->NONE:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_addedPathType:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    .line 288
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_startPointMoved:Z

    .line 289
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastStartPoint:Landroid/graphics/PointF;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 290
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastControlPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 291
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 292
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_basePoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public lastControlPoint()Landroid/graphics/PointF;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastControlPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public lastEndPoint()Landroid/graphics/PointF;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public lastStartPoint()Landroid/graphics/PointF;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastStartPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public moveToPoint(Landroid/graphics/PointF;)V
    .locals 2

    .line 133
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 134
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 138
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastControlPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 139
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_lastEndPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 140
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_basePoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 141
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    .line 142
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_1
    return-void
.end method

.method public optimizeForAcuteAngle()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_optimizeForAcuteAngle:Z

    return v0
.end method

.method public pathRects()Ljava/lang/Object;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_pathRects:Ljava/lang/Object;

    return-object v0
.end method

.method public setBezierPath(Landroid/graphics/Path;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPath:Landroid/graphics/Path;

    return-void
.end method

.method public setBezierPoints(Lcom/metamoji/cm/PointArray;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 53
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    return-void

    .line 56
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 57
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 60
    :cond_1
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    return-void
.end method

.method public setOptimizeForAcuteAngle(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_optimizeForAcuteAngle:Z

    return-void
.end method

.method public setPathRects(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 75
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_pathRects:Ljava/lang/Object;

    return-void

    .line 78
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->checkRectArray(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 79
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 82
    :cond_1
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_pathRects:Ljava/lang/Object;

    return-void
.end method

.method public startPointMoved()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->m_startPointMoved:Z

    return v0
.end method
