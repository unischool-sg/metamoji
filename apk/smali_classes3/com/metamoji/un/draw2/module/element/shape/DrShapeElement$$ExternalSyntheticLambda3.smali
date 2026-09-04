.class public final synthetic Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->lambda$updateExtraHandles$3(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V

    return-void
.end method
