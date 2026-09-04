.class public Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;
.super Lcom/metamoji/mazec/stroke/StrokeDrawer;
.source "StrokeDrawerCIStandard.java"


# static fields
.field private static final CURVEINTERPOLATOR_DELTA:D = 0.75


# instance fields
.field private mCurPath:Landroid/graphics/Path;

.field protected mCurveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

.field private mLineReducer:Lcom/metamoji/ci/LineReducer;

.field protected mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

.field private mSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

.field private mSamplerMidPoint:Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;

.field private mWorkCurrentDrawable:Lcom/metamoji/mazec/stroke/drawable/PathCurve;


# direct methods
.method constructor <init>(Z)V
    .locals 6

    .line 37
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeDrawer;-><init>()V

    .line 268
    new-instance v0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;

    invoke-direct {v0}, Lcom/metamoji/mazec/stroke/drawable/PathCurve;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mWorkCurrentDrawable:Lcom/metamoji/mazec/stroke/drawable/PathCurve;

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 39
    :goto_0
    new-instance v2, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;-><init>(II)V

    iput-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mSamplerMidPoint:Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;

    .line 40
    new-instance v0, Lcom/metamoji/ci/LineReducer;

    invoke-direct {v0}, Lcom/metamoji/ci/LineReducer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 44
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    if-eqz p1, :cond_2

    move-wide v3, v1

    goto :goto_1

    :cond_2
    const-wide v3, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    :goto_1
    iput-wide v3, v0, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    .line 47
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {v0}, Lcom/metamoji/ci/LineReducer;->initSequential()V

    .line 48
    new-instance v0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;

    iget-object v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mSamplerMidPoint:Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;

    new-instance v4, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;

    iget-object v5, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-direct {v4, v5, p1}, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;-><init>(Lcom/metamoji/ci/LineReducer;Z)V

    invoke-direct {v0, v3, v4}, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;-><init>(Lcom/metamoji/mazec/stroke/StrokePointSampler;Lcom/metamoji/mazec/stroke/StrokePointSampler;)V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 50
    new-instance p1, Lcom/metamoji/ci/Q2bInterpolator;

    invoke-direct {p1}, Lcom/metamoji/ci/Q2bInterpolator;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    .line 51
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v1, v1, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    iput-object v1, p1, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    .line 52
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    .line 53
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v1, v1, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    iput-object v1, p1, Lcom/metamoji/ci/Q2bInterpolator;->penAttr:Ljava/util/List;

    .line 54
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    .line 55
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v1, v1, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    iput-object v1, p1, Lcom/metamoji/ci/Q2bInterpolator;->segmentAttr:Ljava/util/List;

    .line 56
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mCurveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    return-void

    .line 58
    :cond_3
    new-instance p1, Lcom/metamoji/ci/CurveInterpolator;

    invoke-direct {p1}, Lcom/metamoji/ci/CurveInterpolator;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mCurveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    .line 60
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mCurveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    iput-wide v1, p1, Lcom/metamoji/ci/CurveInterpolator;->deltaOfInputTime:D

    .line 61
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mCurveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v1, v1, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v2, v2, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/ci/CurveInterpolator;->init(Ljava/util/List;Ljava/util/List;)V

    .line 62
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    return-void
.end method

.method private getInterpolatorBezierPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mCurveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, v0, Lcom/metamoji/ci/CurveInterpolator;->bezierPoints:Ljava/util/List;

    return-object v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, v0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRectNeedsDisplay(Ljava/util/List;IILandroid/graphics/RectF;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;II",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    const/high16 v0, 0x7fc00000    # Float.NaN

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-gt p2, p3, :cond_4

    .line 247
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 248
    iget v5, v4, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v0, v5

    if-lez v5, :cond_0

    .line 249
    iget v0, v4, Landroid/graphics/PointF;->x:F

    .line 251
    :cond_0
    iget v5, v4, Landroid/graphics/PointF;->y:F

    cmpg-float v5, v1, v5

    if-lez v5, :cond_1

    .line 252
    iget v1, v4, Landroid/graphics/PointF;->y:F

    .line 254
    :cond_1
    iget v5, v4, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v2, v5

    if-gez v5, :cond_2

    .line 255
    iget v2, v4, Landroid/graphics/PointF;->x:F

    .line 257
    :cond_2
    iget v5, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v3, v5

    if-gez v5, :cond_3

    .line 258
    iget v3, v4, Landroid/graphics/PointF;->y:F

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 262
    :cond_4
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 263
    invoke-virtual {p4}, Landroid/graphics/RectF;->setEmpty()V

    return-void

    .line 265
    :cond_5
    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private updateBezierPath(Landroid/graphics/Path;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;I)V"
        }
    .end annotation

    .line 218
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 222
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    .line 223
    iget p3, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 226
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    .line 227
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 228
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    .line 229
    iget p3, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void

    :cond_2
    :goto_0
    if-ge p3, v0, :cond_4

    if-nez p3, :cond_3

    add-int/lit8 v1, p3, 0x1

    .line 233
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    .line 234
    iget v2, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    move p3, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, p3, 0x1

    .line 236
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    add-int/lit8 p3, p3, 0x2

    .line 237
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 239
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v2, v4, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private updateInterpolator(Z)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mCurveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0, p1}, Lcom/metamoji/ci/CurveInterpolator;->update(Z)V

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0, p1}, Lcom/metamoji/ci/Q2bInterpolator;->update(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)Landroid/graphics/RectF;
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v0}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->getSamplingPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v1, p1}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    .line 77
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {p1}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->getSamplingPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v0, p1, :cond_0

    .line 79
    sget-object p1, Lcom/metamoji/mazec/stroke/StrokeConstants;->RectNull:Landroid/graphics/RectF;

    return-object p1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v1}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->getSamplingPoints()Ljava/util/List;

    move-result-object v1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 83
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/stroke/StrokeTouch;

    .line 85
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v2, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    iget v2, v2, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    invoke-direct {v4, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/metamoji/mazec/stroke/HwStroke;->addPoint(Landroid/graphics/PointF;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->getInterpolatorBezierPoints()Ljava/util/List;

    move-result-object p1

    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->updateInterpolator(Z)V

    .line 90
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->getInterpolatorBezierPoints()Ljava/util/List;

    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 94
    sget-object p1, Lcom/metamoji/mazec/stroke/StrokeConstants;->RectNull:Landroid/graphics/RectF;

    return-object p1

    .line 96
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->getInterpolatorBezierPoints()Ljava/util/List;

    move-result-object v1

    .line 97
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 98
    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->updateCurrrentDrawable(Ljava/util/List;ILandroid/graphics/RectF;Z)V

    return-object v2
.end method

.method public attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 71
    :cond_0
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mCurPath:Landroid/graphics/Path;

    return-void
.end method

.method public canDraw(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z
    .locals 1

    .line 112
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public cancelStroke()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v0}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->reset()V

    .line 168
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {v0}, Lcom/metamoji/ci/LineReducer;->initSequential()V

    .line 169
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mCurveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v1, v1, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v2, v2, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ci/CurveInterpolator;->init(Ljava/util/List;Ljava/util/List;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0}, Lcom/metamoji/ci/Q2bInterpolator;->reset()V

    :cond_1
    return-void
.end method

.method public drawableForStroke(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 4

    .line 180
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 181
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 185
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 186
    new-instance v0, Lcom/metamoji/mazec/stroke/drawable/Dot;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Lcom/metamoji/mazec/stroke/drawable/Dot;-><init>(FF)V

    return-object v0

    .line 188
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->solveCurve(Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 189
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 190
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->getInterpolatorBezierPoints()Ljava/util/List;

    move-result-object v0

    .line 191
    invoke-direct {p0, p1, v0, v3}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->updateBezierPath(Landroid/graphics/Path;Ljava/util/List;I)V

    .line 192
    new-instance v0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;

    invoke-direct {v0, p1}, Lcom/metamoji/mazec/stroke/drawable/PathCurve;-><init>(Landroid/graphics/Path;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public endStroke()Landroid/graphics/RectF;
    .locals 7

    .line 117
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v0}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->getSamplingPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v1}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->endStroke()V

    .line 120
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v1}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->getSamplingPoints()Ljava/util/List;

    move-result-object v1

    .line 121
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 123
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/stroke/StrokeTouch;

    .line 124
    iget-object v4, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    new-instance v5, Landroid/graphics/PointF;

    iget v6, v3, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    iget v3, v3, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    invoke-direct {v5, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v5}, Lcom/metamoji/mazec/stroke/HwStroke;->addPoint(Landroid/graphics/PointF;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->endStroke()V

    .line 127
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->getInterpolatorBezierPoints()Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    .line 129
    invoke-direct {p0, v1}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->updateInterpolator(Z)V

    .line 130
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->getInterpolatorBezierPoints()Ljava/util/List;

    move-result-object v2

    .line 131
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 133
    sget-object v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->RectNull:Landroid/graphics/RectF;

    goto :goto_1

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->getInterpolatorBezierPoints()Ljava/util/List;

    move-result-object v2

    .line 136
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 137
    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->updateCurrrentDrawable(Ljava/util/List;ILandroid/graphics/RectF;Z)V

    move-object v0, v3

    .line 146
    :goto_1
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/stroke/HwStroke;->setGranularityType(I)V

    goto :goto_2

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v2, v2, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/stroke/HwStroke;->setLineReduceSegmentAttr(Ljava/util/List;)V

    .line 150
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v2, v2, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/stroke/HwStroke;->setLineReducePenAttr(Ljava/util/List;)V

    .line 151
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/stroke/HwStroke;->setGranularityType(I)V

    .line 152
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mSamplerMidPoint:Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->getSamplingPoints()Ljava/util/List;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v2, v1}, Lcom/metamoji/mazec/stroke/HwStroke;->setLineReduceOriginalPoints(Ljava/util/List;)V

    .line 155
    :goto_2
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v1}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->reset()V

    .line 156
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {v1}, Lcom/metamoji/ci/LineReducer;->initSequential()V

    .line 157
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mCurveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    if-eqz v1, :cond_3

    .line 158
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v2, v2, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v3, v3, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/ci/CurveInterpolator;->init(Ljava/util/List;Ljava/util/List;)V

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    if-eqz v1, :cond_4

    .line 161
    invoke-virtual {v1}, Lcom/metamoji/ci/Q2bInterpolator;->reset()V

    :cond_4
    return-object v0
.end method

.method public getCurrentDrawable()Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mWorkCurrentDrawable:Lcom/metamoji/mazec/stroke/drawable/PathCurve;

    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mCurPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->set(Landroid/graphics/Path;)V

    .line 272
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mWorkCurrentDrawable:Lcom/metamoji/mazec/stroke/drawable/PathCurve;

    return-object v0
.end method

.method protected solveCurve(Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 3

    .line 196
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mCurveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->getLineReduceSegmentAttr()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ci/CurveInterpolator;->init(Ljava/util/List;Ljava/util/List;)V

    .line 199
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mCurveInterpolator:Lcom/metamoji/ci/CurveInterpolator;

    invoke-virtual {v1}, Lcom/metamoji/ci/CurveInterpolator;->solve()V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->getLineReduceSegmentAttr()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/ci/Q2bInterpolator;->segmentAttr:Ljava/util/List;

    .line 203
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    iput-object v0, v1, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    .line 204
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->getLineReducePenAttr()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ci/Q2bInterpolator;->penAttr:Ljava/util/List;

    .line 205
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mQ2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    invoke-virtual {p1}, Lcom/metamoji/ci/Q2bInterpolator;->solve()V

    :cond_1
    return-void
.end method

.method protected updateCurrrentDrawable(Ljava/util/List;ILandroid/graphics/RectF;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;I",
            "Landroid/graphics/RectF;",
            "Z)V"
        }
    .end annotation

    .line 210
    iget-object p4, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->mCurPath:Landroid/graphics/Path;

    invoke-direct {p0, p4, p1, p2}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->updateBezierPath(Landroid/graphics/Path;Ljava/util/List;I)V

    if-eqz p3, :cond_1

    const/4 p4, 0x2

    if-ge p2, p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p4

    .line 212
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;->getRectNeedsDisplay(Ljava/util/List;IILandroid/graphics/RectF;)V

    :cond_1
    return-void
.end method
