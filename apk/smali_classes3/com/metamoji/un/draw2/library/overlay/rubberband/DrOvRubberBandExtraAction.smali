.class Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;
.super Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;
.source "DrOvRubberBandAction.java"


# instance fields
.field private final m_center:Landroid/graphics/PointF;

.field private m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 408
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;-><init>()V

    .line 409
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_center:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 2

    .line 457
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->cancel()V

    .line 458
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_handle:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_center:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setCenterPoint(Landroid/graphics/PointF;)V

    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    return-void
.end method

.method prepare()V
    .locals 2

    .line 414
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->EXTRA_HANDLE_MOVED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_type:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    .line 415
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->prepare()V

    .line 416
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_center:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_handle:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method start()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->owner()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    return-void
.end method

.method update()Z
    .locals 7

    .line 426
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->update()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 430
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_translateX:F

    .line 431
    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_translateY:F

    .line 433
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_point:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_start:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_translateX:F

    .line 434
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_point:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_start:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_translateY:F

    .line 437
    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_center:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_translateX:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_center:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_translateY:F

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 438
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;

    if-eqz v4, :cond_1

    .line 440
    iget-object v5, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_handle:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    invoke-interface {v4, v5, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;->getPermittedPointForExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 442
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_center:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_translateX:F

    .line 443
    iget v4, v3, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_center:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_translateY:F

    .line 446
    :cond_1
    iget v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_translateX:F

    cmpl-float v0, v4, v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_translateY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    return v1

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;->m_handle:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setCenterPoint(Landroid/graphics/PointF;)V

    const/4 v0, 0x1

    return v0
.end method
