.class public interface abstract Lcom/metamoji/mazec/stroke/StrokePointSampler;
.super Ljava/lang/Object;
.source "StrokePointSampler.java"


# virtual methods
.method public abstract addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V
.end method

.method public abstract endStroke()V
.end method

.method public abstract getSamplingPoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeTouch;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
