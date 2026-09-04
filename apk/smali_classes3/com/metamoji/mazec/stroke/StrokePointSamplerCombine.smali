.class public Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;
.super Ljava/lang/Object;
.source "StrokePointSamplerCombine.java"

# interfaces
.implements Lcom/metamoji/mazec/stroke/StrokePointSampler;


# instance fields
.field private mHeadSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

.field private mPointCount:I

.field private mTailSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;


# direct methods
.method public constructor <init>(Lcom/metamoji/mazec/stroke/StrokePointSampler;Lcom/metamoji/mazec/stroke/StrokePointSampler;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mPointCount:I

    .line 18
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mHeadSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    .line 19
    iput-object p2, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mTailSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V
    .locals 4

    .line 30
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mPointCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mPointCount:I

    .line 31
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mHeadSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v0}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->getSamplingPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mHeadSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v1, p1}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    .line 33
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mHeadSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {p1}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->getSamplingPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mHeadSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v1}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->getSamplingPoints()Ljava/util/List;

    move-result-object v1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 38
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mTailSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/stroke/StrokeTouch;

    invoke-interface {v2, v3}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endStroke()V
    .locals 10

    .line 45
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mHeadSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v0}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->getSamplingPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 47
    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mPointCount:I

    if-ne v2, v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mHeadSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v1}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->getSamplingPoints()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/StrokeTouch;

    .line 49
    new-instance v2, Lcom/metamoji/mazec/stroke/StrokeTouch;

    iget v3, v1, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    iget v5, v1, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    add-float/2addr v5, v4

    iget-wide v6, v1, Lcom/metamoji/mazec/stroke/StrokeTouch;->time:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/metamoji/mazec/stroke/StrokeTouch;-><init>(FFJ)V

    .line 50
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mHeadSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v1, v2}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mHeadSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v1}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->endStroke()V

    .line 53
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mHeadSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v1}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->getSamplingPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 55
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mHeadSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v2}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->getSamplingPoints()Ljava/util/List;

    move-result-object v2

    :goto_0
    if-ge v0, v1, :cond_1

    .line 57
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mTailSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/stroke/StrokeTouch;

    invoke-interface {v3, v4}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mTailSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v0}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->endStroke()V

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

    .line 65
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mTailSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v0}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->getSamplingPoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mHeadSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v0}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->reset()V

    .line 24
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mTailSampler:Lcom/metamoji/mazec/stroke/StrokePointSampler;

    invoke-interface {v0}, Lcom/metamoji/mazec/stroke/StrokePointSampler;->reset()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/metamoji/mazec/stroke/StrokePointSamplerCombine;->mPointCount:I

    return-void
.end method
