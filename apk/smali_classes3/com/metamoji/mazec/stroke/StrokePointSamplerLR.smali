.class public Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;
.super Ljava/lang/Object;
.source "StrokePointSamplerLR.java"

# interfaces
.implements Lcom/metamoji/mazec/stroke/StrokePointSampler;


# instance fields
.field private mIsFountain:Z

.field private mLastPoint:Lcom/metamoji/mazec/stroke/StrokeTouch;

.field private mLineReducer:Lcom/metamoji/ci/LineReducer;


# direct methods
.method public constructor <init>(Lcom/metamoji/ci/LineReducer;Z)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    .line 23
    iput-boolean p2, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mIsFountain:Z

    .line 24
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->reset()V

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V
    .locals 6

    .line 34
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mLastPoint:Lcom/metamoji/mazec/stroke/StrokeTouch;

    if-eqz v0, :cond_1

    .line 35
    iget-boolean v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mIsFountain:Z

    .line 39
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeTouch;->getPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mLastPoint:Lcom/metamoji/mazec/stroke/StrokeTouch;

    iget-wide v4, v1, Lcom/metamoji/mazec/stroke/StrokeTouch;->time:J

    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/metamoji/ci/LineReducer;->addPoint(Landroid/graphics/PointF;JZ)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeTouch;->getPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/ci/LineReducer;->addPoint(Landroid/graphics/PointF;Z)V

    .line 42
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mLastPoint:Lcom/metamoji/mazec/stroke/StrokeTouch;

    return-void
.end method

.method public endStroke()V
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mLastPoint:Lcom/metamoji/mazec/stroke/StrokeTouch;

    if-eqz v0, :cond_1

    .line 48
    iget-boolean v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mIsFountain:Z

    .line 51
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeTouch;->getPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mLastPoint:Lcom/metamoji/mazec/stroke/StrokeTouch;

    iget-wide v4, v1, Lcom/metamoji/mazec/stroke/StrokeTouch;->time:J

    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/metamoji/ci/LineReducer;->addPoint(Landroid/graphics/PointF;JZ)V

    return-void

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeTouch;->getPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/ci/LineReducer;->addPoint(Landroid/graphics/PointF;Z)V

    :cond_1
    return-void
.end method

.method public getSamplingPoints()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeTouch;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v0, v0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mLastPoint:Lcom/metamoji/mazec/stroke/StrokeTouch;

    if-eqz v1, :cond_0

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v0, v0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 69
    new-instance v3, Lcom/metamoji/mazec/stroke/StrokeTouch;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/metamoji/mazec/stroke/StrokeTouch;-><init>(FFJ)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mLastPoint:Lcom/metamoji/mazec/stroke/StrokeTouch;

    .line 29
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerLR;->mLineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {v0}, Lcom/metamoji/ci/LineReducer;->initSequential()V

    return-void
.end method
