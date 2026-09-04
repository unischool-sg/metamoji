.class Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;
.super Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;
.source "DrOvRubberBandAction.java"


# instance fields
.field private final m_bounds:Lcom/metamoji/cm/RectEx;

.field private final m_bounds0:Lcom/metamoji/cm/RectEx;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;-><init>()V

    .line 150
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_bounds:Lcom/metamoji/cm/RectEx;

    .line 151
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_bounds0:Lcom/metamoji/cm/RectEx;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 2

    .line 175
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->cancel()V

    .line 176
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_bounds0:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setContentBounds(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method prepare()V
    .locals 2

    .line 155
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_MOVED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_type:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    .line 156
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->prepare()V

    .line 157
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_bounds0:Lcom/metamoji/cm/RectEx;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method update()Z
    .locals 3

    .line 162
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->update()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_point:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_translateX:F

    .line 166
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_point:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_translateY:F

    .line 167
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_bounds0:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 168
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_translateX:F

    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_translateY:F

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/RectEx;->offset(FF)V

    .line 169
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setContentBounds(Lcom/metamoji/cm/RectEx;)V

    const/4 v0, 0x1

    return v0
.end method
