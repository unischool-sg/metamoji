.class public interface abstract Lcom/metamoji/mazecclient/strokedraw/IStrokeDraw;
.super Ljava/lang/Object;
.source "IStrokeDraw.java"


# virtual methods
.method public abstract addPoints(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearPoints()V
.end method

.method public abstract draw(Lcom/metamoji/df/sprite/Context;)V
.end method

.method public abstract getPoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setGradationParams(Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;)V
.end method

.method public abstract setLineWidth(F)V
.end method
