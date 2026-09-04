.class public Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;
.super Ljava/lang/Object;
.source "StrokePointSamplerMidPoint.java"

# interfaces
.implements Lcom/metamoji/mazec/stroke/StrokePointSampler;


# static fields
.field private static final MAX_SMOOTHNESS:I = 0x4


# instance fields
.field private mEndSmoothness:I

.field mPrevPoints:[Lcom/metamoji/mazec/stroke/StrokeTouch;

.field mSmoothedPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeTouch;",
            ">;"
        }
    .end annotation
.end field

.field private mSmoothness:I

.field private mWorkEndPoint:[Lcom/metamoji/mazec/stroke/StrokeTouch;

.field private mWorkEndStroke:[Lcom/metamoji/mazec/stroke/StrokeTouch;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 17
    iput v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mSmoothness:I

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mSmoothedPoints:Ljava/util/List;

    const/4 v1, 0x5

    .line 25
    new-array v1, v1, [Lcom/metamoji/mazec/stroke/StrokeTouch;

    iput-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mPrevPoints:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    .line 48
    new-array v1, v0, [Lcom/metamoji/mazec/stroke/StrokeTouch;

    iput-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mWorkEndStroke:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    .line 97
    new-array v0, v0, [Lcom/metamoji/mazec/stroke/StrokeTouch;

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mWorkEndPoint:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    .line 28
    iput p1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mSmoothness:I

    .line 29
    iput p2, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mEndSmoothness:I

    return-void
.end method

.method private addMiddlePoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V
    .locals 9

    const/4 v0, 0x0

    .line 89
    :goto_0
    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mSmoothness:I

    if-ge v0, v1, :cond_0

    .line 91
    new-instance v1, Lcom/metamoji/mazec/stroke/StrokeTouch;

    iget v2, p1, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    iget-object v3, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mPrevPoints:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p1, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    iget-object v5, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mPrevPoints:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    iget-wide v5, p1, Lcom/metamoji/mazec/stroke/StrokeTouch;->time:J

    iget-object v3, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mPrevPoints:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    aget-object v3, v3, v0

    iget-wide v7, v3, Lcom/metamoji/mazec/stroke/StrokeTouch;->time:J

    add-long/2addr v5, v7

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/metamoji/mazec/stroke/StrokeTouch;-><init>(FFJ)V

    .line 92
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mPrevPoints:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    aput-object p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    move-object p1, v1

    goto :goto_0

    .line 94
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->addSmoothedPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    return-void
.end method

.method private addSmoothedPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mSmoothedPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getPointsForEndPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;[Lcom/metamoji/mazec/stroke/StrokeTouch;II[Lcom/metamoji/mazec/stroke/StrokeTouch;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 101
    aget-object v3, p2, p3

    const/4 v4, 0x1

    add-int/lit8 v6, p3, 0x1

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/high16 v11, 0x40000000    # 2.0f

    if-ge v6, v2, :cond_0

    .line 103
    aget-object v12, p2, v6

    add-int/lit8 v13, v8, 0x1

    .line 104
    new-instance v14, Lcom/metamoji/mazec/stroke/StrokeTouch;

    iget v15, v3, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    const-wide/16 v16, 0x2

    iget v9, v12, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    add-float/2addr v15, v9

    div-float/2addr v15, v11

    iget v9, v3, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    iget v10, v12, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    iget-wide v10, v3, Lcom/metamoji/mazec/stroke/StrokeTouch;->time:J

    move/from16 v18, v4

    iget-wide v4, v12, Lcom/metamoji/mazec/stroke/StrokeTouch;->time:J

    add-long/2addr v10, v4

    div-long v10, v10, v16

    invoke-direct {v14, v15, v9, v10, v11}, Lcom/metamoji/mazec/stroke/StrokeTouch;-><init>(FFJ)V

    aput-object v14, p5, v8

    add-int/lit8 v6, v6, 0x1

    move-object v3, v12

    move v8, v13

    move/from16 v4, v18

    goto :goto_0

    :cond_0
    move/from16 v18, v4

    const-wide/16 v16, 0x2

    add-int/lit8 v4, v8, 0x1

    .line 107
    new-instance v5, Lcom/metamoji/mazec/stroke/StrokeTouch;

    iget v6, v3, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    iget v9, v1, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    add-float/2addr v6, v9

    div-float/2addr v6, v11

    iget v9, v3, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    iget v10, v1, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    iget-wide v10, v3, Lcom/metamoji/mazec/stroke/StrokeTouch;->time:J

    iget-wide v12, v1, Lcom/metamoji/mazec/stroke/StrokeTouch;->time:J

    add-long/2addr v10, v12

    div-long v10, v10, v16

    invoke-direct {v5, v6, v9, v10, v11}, Lcom/metamoji/mazec/stroke/StrokeTouch;-><init>(FFJ)V

    aput-object v5, p5, v8

    add-int/lit8 v2, v2, 0x1

    .line 109
    iget v3, v0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mSmoothness:I

    if-ge v2, v3, :cond_1

    .line 110
    iget-object v3, v0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mWorkEndPoint:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    iget-object v5, v0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mPrevPoints:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    add-int/lit8 v8, v8, 0x2

    aget-object v5, v5, v8

    aput-object v5, v3, v7

    move-object/from16 v5, p5

    move/from16 v6, v18

    .line 111
    invoke-static {v5, v7, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v2

    .line 112
    iget-object v2, v0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mWorkEndPoint:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->getPointsForEndPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;[Lcom/metamoji/mazec/stroke/StrokeTouch;II[Lcom/metamoji/mazec/stroke/StrokeTouch;)I

    move-result v1

    return v1

    :cond_1
    return v4
.end method

.method private setStartPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->reset()V

    const/4 v0, 0x0

    .line 81
    :goto_0
    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mSmoothness:I

    if-gt v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mPrevPoints:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->addSmoothedPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mSmoothedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->setStartPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mPrevPoints:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 43
    iget v1, v0, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    iget v2, p1, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v0, v0, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    iget v1, p1, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 44
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->addMiddlePoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    return-void
.end method

.method public endStroke()V
    .locals 9

    .line 51
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mSmoothedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 55
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mSmoothedPoints:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/stroke/StrokeTouch;

    .line 56
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mPrevPoints:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    aget-object v1, v1, v2

    .line 57
    iget v2, v0, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    iget v3, v1, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v0, v0, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    iget v2, v1, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->addSmoothedPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    return-void

    .line 63
    :cond_3
    iget-object v5, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mPrevPoints:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    aget-object v4, v5, v2

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mWorkEndStroke:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    const/4 v6, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->getPointsForEndPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;[Lcom/metamoji/mazec/stroke/StrokeTouch;II[Lcom/metamoji/mazec/stroke/StrokeTouch;)I

    move-result v0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_4

    .line 64
    iget v4, v3, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mEndSmoothness:I

    if-ge v1, v4, :cond_4

    .line 66
    iget-object v4, v3, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mWorkEndStroke:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->addSmoothedPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 69
    :cond_4
    iget-object v0, v3, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mPrevPoints:[Lcom/metamoji/mazec/stroke/StrokeTouch;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->addSmoothedPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    return-void
.end method

.method public getSamplingPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeTouch;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mSmoothedPoints:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerMidPoint;->mSmoothedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
