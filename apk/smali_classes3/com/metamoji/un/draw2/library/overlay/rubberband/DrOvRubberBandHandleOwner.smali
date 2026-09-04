.class public interface abstract Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;
.super Ljava/lang/Object;
.source "DrOvRubberBandHandleOwner.java"


# virtual methods
.method public abstract applyUnknownVariation(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract cancelEvaluationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V
.end method

.method public abstract checkMovementOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
.end method

.method public abstract checkVariationsEqualityOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Ljava/util/Map;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract editWithHandleVariationAlways()Z
.end method

.method public abstract evaluateCenterPointOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method public abstract getCenterPointOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Ljava/util/Map;)Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation
.end method

.method public abstract getDisplayAngleForHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)F
.end method

.method public abstract getHandleAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;
.end method

.method public abstract getHandleCount()I
.end method

.method public abstract getIndexOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)I
.end method

.method public abstract getVariationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getVariationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract handlesEnablement()Z
.end method

.method public abstract setHandlesEnablement(Z)V
.end method

.method public abstract setVariationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation
.end method
