.class public interface abstract Lcom/metamoji/mazec/ui/HwStrokeListener;
.super Ljava/lang/Object;
.source "HwStrokeListener.java"


# virtual methods
.method public abstract notifyCnvResultUpdated()V
.end method

.method public abstract notifyDrawed(FF)V
.end method

.method public abstract notifyGuidelineUpdated()V
.end method

.method public abstract notifyHwrResultUpdated()V
.end method

.method public abstract notifyRefStrokeUpdated(Z)V
.end method

.method public abstract notifyStrokeCanceled(Lcom/metamoji/mazec/stroke/HwStroke;)V
.end method

.method public abstract notifyStrokeEnded(Lcom/metamoji/mazec/stroke/HwStroke;Landroid/graphics/RectF;)V
.end method

.method public abstract notifyStrokePrepared()V
.end method

.method public abstract notifyStrokeShifted(FFLcom/metamoji/mazec/stroke/HwStrokes;)V
.end method

.method public abstract notifyStrokeStarted()V
.end method

.method public abstract notifyStrokeUpdated(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyStroking(Landroid/graphics/RectF;)V
.end method
