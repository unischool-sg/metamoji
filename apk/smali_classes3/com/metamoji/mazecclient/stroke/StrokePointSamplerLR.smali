.class public Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;
.super Ljava/lang/Object;
.source "StrokePointSamplerLR.java"


# instance fields
.field private _lineReducer:Lcom/metamoji/ci/LineReducer;


# direct methods
.method public constructor <init>(DZZ)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p3, Lcom/metamoji/ci/LineReducer;

    invoke-direct {p3}, Lcom/metamoji/ci/LineReducer;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p3, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p3, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    if-eqz p4, :cond_0

    .line 22
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p3, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    .line 26
    :cond_0
    iput-wide p1, p3, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    .line 27
    invoke-virtual {p3}, Lcom/metamoji/ci/LineReducer;->initSequential()V

    .line 28
    iput-object p3, p0, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->_lineReducer:Lcom/metamoji/ci/LineReducer;

    return-void
.end method


# virtual methods
.method public addPoint(Landroid/graphics/PointF;JZ)V
    .locals 0

    .line 51
    iget-object p2, p0, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->_lineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {p2, p1, p4}, Lcom/metamoji/ci/LineReducer;->addPoint(Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public addPoint(Landroid/graphics/PointF;Z)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->_lineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ci/LineReducer;->addPoint(Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public getDelta()D
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->_lineReducer:Lcom/metamoji/ci/LineReducer;

    iget-wide v0, v0, Lcom/metamoji/ci/LineReducer;->deltaOfInputTime:D

    return-wide v0
.end method

.method public getPenAttrs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->_lineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v0, v0, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    return-object v0
.end method

.method public getSamplingPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->_lineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v0, v0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    return-object v0
.end method

.method public getSegmentAttrs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->_lineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v0, v0, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    return-object v0
.end method

.method public reducePoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->_lineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {v0, p1}, Lcom/metamoji/ci/LineReducer;->reducePoints(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public reset()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->_lineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {v0}, Lcom/metamoji/ci/LineReducer;->initSequential()V

    return-void
.end method
