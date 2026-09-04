.class public Lcom/metamoji/mazec/stroke/HwStroke;
.super Ljava/lang/Object;
.source "HwStroke.java"


# static fields
.field public static final STROKE_POINT_MAX:I = 0x2710

.field private static mCurStrokeOrder:J


# instance fields
.field private mBounds:Landroid/graphics/RectF;

.field private mGranularityType:I

.field private mIsReduced:Z

.field private mLineReduceDelta:F

.field private mLineReduceOriginalPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeTouch;",
            ">;"
        }
    .end annotation
.end field

.field private mLineReducePenAttr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mLineReduceSegmentAttr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mPenInfo:Lcom/metamoji/mazec/stroke/StrokePenInfo;

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokeOrder:J

.field private mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

.field private mXCenterOfGravity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/metamoji/mazec/stroke/HwStroke;->mCurStrokeOrder:J

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/mazec/stroke/StrokeStyle;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/stroke/HwStroke;-><init>(Lcom/metamoji/mazec/stroke/StrokeStyle;I)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/mazec/stroke/StrokeStyle;I)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 58
    iput-wide v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeOrder:J

    const/high16 v0, -0x40800000    # -1.0f

    .line 68
    iput v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mXCenterOfGravity:F

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceSegmentAttr:Ljava/util/List;

    .line 77
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceOriginalPoints:Ljava/util/List;

    .line 81
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReducePenAttr:Ljava/util/List;

    const v0, 0x38d1b717    # 1.0E-4f

    .line 86
    iput v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceDelta:F

    .line 103
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mGranularityType:I

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 106
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mIsReduced:Z

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    .line 109
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private static getCurrentStrokeOrder()J
    .locals 4

    .line 258
    sget-wide v0, Lcom/metamoji/mazec/stroke/HwStroke;->mCurStrokeOrder:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/metamoji/mazec/stroke/HwStroke;->mCurStrokeOrder:J

    return-wide v0
.end method


# virtual methods
.method protected addPoint(Landroid/graphics/PointF;)V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_0

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    .line 328
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 329
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 330
    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 331
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 333
    :cond_2
    :goto_0
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 334
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 335
    :cond_3
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 336
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 339
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bounds()Landroid/graphics/RectF;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public boundsWithLineWidth(FLandroid/graphics/RectF;)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 411
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 412
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 413
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 414
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public clone()Lcom/metamoji/mazec/stroke/HwStroke;
    .locals 3

    .line 148
    new-instance v0, Lcom/metamoji/mazec/stroke/HwStroke;

    iget-object v1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

    iget v2, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mGranularityType:I

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/stroke/HwStroke;-><init>(Lcom/metamoji/mazec/stroke/StrokeStyle;I)V

    .line 151
    iget-object v1, v0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    .line 153
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeOrder:J

    iput-wide v1, v0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeOrder:J

    .line 154
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceSegmentAttr:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceSegmentAttr:Ljava/util/List;

    .line 155
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceOriginalPoints:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceOriginalPoints:Ljava/util/List;

    .line 156
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReducePenAttr:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReducePenAttr:Ljava/util/List;

    .line 157
    iget v1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceDelta:F

    iput v1, v0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceDelta:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->clone()Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v0

    return-object v0
.end method

.method public cloneWithNewStrokeOrder()Lcom/metamoji/mazec/stroke/HwStroke;
    .locals 3

    .line 165
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->clone()Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v0

    .line 166
    invoke-static {}, Lcom/metamoji/mazec/stroke/HwStroke;->getCurrentStrokeOrder()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeOrder:J

    return-object v0
.end method

.method public countOfPoints()I
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public endStroke()V
    .locals 2

    .line 347
    invoke-static {}, Lcom/metamoji/mazec/stroke/HwStroke;->getCurrentStrokeOrder()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeOrder:J

    .line 349
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->recalcBounds()V

    return-void
.end method

.method public getCoords([S[S)V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 300
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 301
    iget v3, v2, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    int-to-short v3, v3

    aput-short v3, p1, v1

    .line 302
    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    int-to-short v2, v2

    aput-short v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getLineReduceDelta()D
    .locals 2

    .line 631
    iget v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceDelta:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getLineReduceOriginalPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeTouch;",
            ">;"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceOriginalPoints:Ljava/util/List;

    return-object v0
.end method

.method public getLineReducePenAttr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReducePenAttr:Ljava/util/List;

    return-object v0
.end method

.method public getLineReduceSegmentAttr()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceSegmentAttr:Ljava/util/List;

    if-nez v0, :cond_0

    .line 597
    const-string v0, "Mazec"

    const-string v1, "No segment attr."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceSegmentAttr:Ljava/util/List;

    return-object v0
.end method

.method public getPenInfo()Lcom/metamoji/mazec/stroke/StrokePenInfo;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPenInfo:Lcom/metamoji/mazec/stroke/StrokePenInfo;

    return-object v0
.end method

.method public getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

    return-object v0
.end method

.method public granularityType()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mGranularityType:I

    return v0
.end method

.method public isEqual(Lcom/metamoji/mazec/stroke/HwStroke;)Z
    .locals 4

    .line 249
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeOrder:J

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->strokeOrder()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public nearestPointOfStroke(FFLandroid/graphics/PointF;)F
    .locals 9

    .line 540
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    .line 543
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 545
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 546
    iget v6, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, p1

    iget v7, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, p1

    mul-float/2addr v6, v7

    iget v7, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, p2

    iget v8, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, p2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    cmpg-float v7, v6, v2

    if-gez v7, :cond_0

    move-object v3, v5

    move v2, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 554
    iget p1, v3, Landroid/graphics/PointF;->x:F

    iput p1, p3, Landroid/graphics/PointF;->x:F

    .line 555
    iget p1, v3, Landroid/graphics/PointF;->y:F

    iput p1, p3, Landroid/graphics/PointF;->y:F

    float-to-double p1, v2

    .line 556
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1

    :cond_2
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public points()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public recalcBounds()V
    .locals 8

    .line 508
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    return-void

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 515
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 516
    iget v3, v1, Landroid/graphics/PointF;->y:F

    .line 517
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 518
    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v0, :cond_5

    .line 521
    iget-object v6, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 522
    iget v7, v6, Landroid/graphics/PointF;->x:F

    cmpg-float v7, v7, v2

    if-gez v7, :cond_1

    .line 523
    iget v2, v6, Landroid/graphics/PointF;->x:F

    .line 524
    :cond_1
    iget v7, v6, Landroid/graphics/PointF;->y:F

    cmpg-float v7, v7, v3

    if-gez v7, :cond_2

    .line 525
    iget v3, v6, Landroid/graphics/PointF;->y:F

    .line 526
    :cond_2
    iget v7, v6, Landroid/graphics/PointF;->x:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_3

    .line 527
    iget v4, v6, Landroid/graphics/PointF;->x:F

    .line 528
    :cond_3
    iget v7, v6, Landroid/graphics/PointF;->y:F

    cmpl-float v7, v7, v1

    if-lez v7, :cond_4

    .line 529
    iget v1, v6, Landroid/graphics/PointF;->y:F

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 531
    :cond_5
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    add-float/2addr v1, v5

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    return-void
.end method

.method public reduced()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mIsReduced:Z

    return v0
.end method

.method public setBounds(Landroid/graphics/RectF;)V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setGranularityType(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mGranularityType:I

    return-void
.end method

.method public setLineReduceDelta(F)V
    .locals 0

    .line 634
    iput p1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceDelta:F

    return-void
.end method

.method public setLineReduceOriginalPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeTouch;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 646
    :cond_0
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceOriginalPoints:Ljava/util/List;

    return-void
.end method

.method public setLineReducePenAttr(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReducePenAttr:Ljava/util/List;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 623
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReducePenAttr:Ljava/util/List;

    return-void
.end method

.method public setLineReduceSegmentAttr(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceSegmentAttr:Ljava/util/List;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 606
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceSegmentAttr:Ljava/util/List;

    return-void
.end method

.method public setPenInfo(Lcom/metamoji/mazec/stroke/StrokePenInfo;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPenInfo:Lcom/metamoji/mazec/stroke/StrokePenInfo;

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 439
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 441
    invoke-static {}, Lcom/metamoji/mazec/stroke/HwStroke;->getCurrentStrokeOrder()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeOrder:J

    .line 454
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->recalcBounds()V

    return-void
.end method

.method public setPointsBeforeReduced(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeTouch;",
            ">;)V"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    invoke-static {p1}, Lcom/metamoji/mazec/stroke/StrokeTouch;->convertToPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/stroke/HwStroke;->setPoints(Ljava/util/List;)V

    return-void

    .line 462
    :cond_1
    :goto_0
    new-instance v1, Lcom/metamoji/ci/LineReducer;

    invoke-direct {v1}, Lcom/metamoji/ci/LineReducer;-><init>()V

    .line 463
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    .line 464
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    if-ne v0, v3, :cond_2

    .line 466
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    :cond_2
    if-ne v0, v2, :cond_3

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    goto :goto_1

    :cond_3
    const-wide v4, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    .line 468
    :goto_1
    iput-wide v4, v1, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    .line 469
    invoke-virtual {v1}, Lcom/metamoji/ci/LineReducer;->initSequential()V

    if-ne v0, v3, :cond_4

    .line 471
    invoke-static {p1}, Lcom/metamoji/mazec/stroke/StrokeTouch;->convertToPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/metamoji/mazec/stroke/StrokeTouch;->convertToTimes(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ci/LineReducer;->reducePoints(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 473
    :cond_4
    invoke-static {p1}, Lcom/metamoji/mazec/stroke/StrokeTouch;->convertToPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/ci/LineReducer;->reducePoints(Ljava/util/List;)Ljava/util/List;

    .line 475
    :goto_2
    iget-object v0, v1, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/stroke/HwStroke;->setPoints(Ljava/util/List;)V

    .line 476
    iget-object v0, v1, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/stroke/HwStroke;->setLineReduceSegmentAttr(Ljava/util/List;)V

    .line 477
    iget-object v0, v1, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/stroke/HwStroke;->setLineReducePenAttr(Ljava/util/List;)V

    .line 478
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/stroke/HwStroke;->setLineReduceOriginalPoints(Ljava/util/List;)V

    return-void
.end method

.method protected setStartPoint(Landroid/graphics/PointF;)V
    .locals 5

    .line 311
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 315
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setStrokeOrder(J)V
    .locals 0

    .line 274
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeOrder:J

    return-void
.end method

.method public setStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeStyle:Lcom/metamoji/mazec/stroke/StrokeStyle;

    return-void
.end method

.method public strokeOrder()J
    .locals 2

    .line 266
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeOrder:J

    return-wide v0
.end method

.method public transform(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/HwStroke;
    .locals 11

    if-nez p1, :cond_0

    return-object p0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStroke;->clone()Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    mul-int/lit8 v3, v1, 0x2

    .line 192
    new-array v4, v3, [F

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v1, :cond_1

    .line 194
    iget-object v8, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    add-int/lit8 v9, v7, 0x1

    .line 195
    iget v10, v8, Landroid/graphics/PointF;->x:F

    aput v10, v4, v7

    add-int/lit8 v7, v7, 0x2

    .line 196
    iget v8, v8, Landroid/graphics/PointF;->y:F

    aput v8, v4, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    move v1, v5

    :goto_1
    if-ge v1, v3, :cond_2

    .line 204
    new-instance v6, Landroid/graphics/PointF;

    add-int/lit8 v7, v1, 0x1

    aget v8, v4, v1

    add-int/lit8 v1, v1, 0x2

    aget v7, v4, v7

    invoke-direct {v6, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    :cond_2
    iput-object v2, v0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    .line 209
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceOriginalPoints:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 211
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    mul-int/lit8 v3, v1, 0x2

    .line 215
    new-array v3, v3, [F

    move v4, v5

    move v6, v4

    :goto_2
    if-ge v4, v1, :cond_3

    .line 217
    iget-object v7, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceOriginalPoints:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/mazec/stroke/StrokeTouch;

    add-int/lit8 v8, v6, 0x1

    .line 218
    iget v9, v7, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    aput v9, v3, v6

    add-int/lit8 v6, v6, 0x2

    .line 219
    iget v7, v7, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    aput v7, v3, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 223
    :cond_3
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    move v4, v5

    :goto_3
    if-ge v5, v1, :cond_4

    .line 227
    new-instance v6, Lcom/metamoji/mazec/stroke/StrokeTouch;

    add-int/lit8 v7, v4, 0x1

    aget v8, v3, v4

    add-int/lit8 v4, v4, 0x2

    aget v7, v3, v7

    iget-object v9, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceOriginalPoints:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/mazec/stroke/StrokeTouch;

    iget-wide v9, v9, Lcom/metamoji/mazec/stroke/StrokeTouch;->time:J

    invoke-direct {v6, v8, v7, v9, v10}, Lcom/metamoji/mazec/stroke/StrokeTouch;-><init>(FFJ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 229
    :cond_4
    iput-object v2, v0, Lcom/metamoji/mazec/stroke/HwStroke;->mLineReduceOriginalPoints:Ljava/util/List;

    .line 235
    :cond_5
    iget-object v1, v0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 238
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeOrder:J

    iput-wide v1, v0, Lcom/metamoji/mazec/stroke/HwStroke;->mStrokeOrder:J

    return-object v0
.end method

.method public xCenterOfGravity()F
    .locals 10

    .line 567
    iget v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mXCenterOfGravity:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 575
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 577
    iget v0, v1, Landroid/graphics/PointF;->x:F

    return v0

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_2

    .line 581
    iget-object v5, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 582
    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, v5, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    iget v8, v5, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 583
    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v1

    mul-float/2addr v7, v6

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v7, v1

    add-float/2addr v3, v7

    add-float/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    move-object v1, v5

    goto :goto_0

    :cond_2
    div-float/2addr v3, v4

    .line 588
    iput v3, p0, Lcom/metamoji/mazec/stroke/HwStroke;->mXCenterOfGravity:F

    return v3
.end method
