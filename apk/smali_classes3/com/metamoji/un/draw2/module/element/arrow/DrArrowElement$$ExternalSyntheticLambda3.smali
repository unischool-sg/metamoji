.class public final synthetic Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

.field public final synthetic f$1:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda3;->f$1:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    iput p3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda3;->f$1:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    iget v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda3;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->$r8$lambda$LcFdHTqRhbsxGFPAWIvYjbPp7II(Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;I)V

    return-void
.end method
