.class public Lcom/metamoji/mazec/ui/HwStrokeAdapter;
.super Ljava/lang/Object;
.source "HwStrokeAdapter.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/HwStrokeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyCnvResultUpdated()V
    .locals 0

    return-void
.end method

.method public notifyDrawed(FF)V
    .locals 0

    return-void
.end method

.method public notifyGuidelineUpdated()V
    .locals 0

    return-void
.end method

.method public notifyHwrResultUpdated()V
    .locals 0

    return-void
.end method

.method public notifyRefStrokeUpdated(Z)V
    .locals 0

    return-void
.end method

.method public notifyStrokeCanceled(Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 0

    return-void
.end method

.method public notifyStrokeEnded(Lcom/metamoji/mazec/stroke/HwStroke;Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public notifyStrokePrepared()V
    .locals 0

    return-void
.end method

.method public notifyStrokeShifted(FFLcom/metamoji/mazec/stroke/HwStrokes;)V
    .locals 0

    return-void
.end method

.method public notifyStrokeStarted()V
    .locals 0

    return-void
.end method

.method public notifyStrokeUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public notifyStroking(Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method
