.class public Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;
.super Ljava/lang/Object;
.source "DrOvRubberBandAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;
    }
.end annotation


# instance fields
.field m_deltaAngle:F

.field m_fixedPoint:Landroid/graphics/PointF;

.field m_handle:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

.field final m_point:Landroid/graphics/PointF;

.field m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

.field m_scaleHeight:F

.field m_scaleWidth:F

.field final m_start:Landroid/graphics/PointF;

.field m_thresholdExceeded:Z

.field m_thresholdSquared:F

.field m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

.field m_translateX:F

.field m_translateY:F

.field m_type:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->CANCELED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_type:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    .line 37
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_start:Landroid/graphics/PointF;

    .line 38
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_point:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_translateX:F

    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_translateY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    iput v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_scaleWidth:F

    iput v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_scaleHeight:F

    .line 44
    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_deltaAngle:F

    return-void
.end method

.method static actionForType(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->ordinal()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_0
    new-instance p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;

    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandExtraAction;-><init>()V

    return-object p0

    .line 99
    :cond_1
    new-instance p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;

    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;-><init>()V

    return-object p0

    .line 97
    :cond_2
    new-instance p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;

    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;-><init>()V

    return-object p0

    .line 95
    :cond_3
    new-instance p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;

    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandMoveAction;-><init>()V

    return-object p0
.end method


# virtual methods
.method public angleInRadians()F
    .locals 1

    .line 87
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_deltaAngle:F

    return v0
.end method

.method cancel()V
    .locals 1

    .line 143
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->CANCELED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_type:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    return-void
.end method

.method public fixedPoint()Landroid/graphics/PointF;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_fixedPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method prepare()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_start:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    return-object v0
.end method

.method public rubberBandHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_handle:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    return-object v0
.end method

.method public scaleHeight()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_scaleHeight:F

    return v0
.end method

.method public scaleWidth()F
    .locals 1

    .line 84
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_scaleWidth:F

    return v0
.end method

.method setRubberBand(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    return-void
.end method

.method setRubberBandHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_handle:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    return-void
.end method

.method setThreshold(F)V
    .locals 0

    mul-float/2addr p1, p1

    .line 114
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_thresholdSquared:F

    return-void
.end method

.method setTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    return-void
.end method

.method setType(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_type:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    return-void
.end method

.method start()V
    .locals 0

    return-void
.end method

.method threshold()F
    .locals 2

    .line 111
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_thresholdSquared:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public touch()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    return-object v0
.end method

.method public translateX()F
    .locals 1

    .line 82
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_translateX:F

    return v0
.end method

.method public translateY()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_translateY:F

    return v0
.end method

.method public type()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_type:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    return-object v0
.end method

.method update()Z
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_point:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 131
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_thresholdExceeded:Z

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_point:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 133
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_point:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_start:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    .line 134
    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_thresholdSquared:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_thresholdExceeded:Z

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->start()V

    .line 139
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->m_thresholdExceeded:Z

    return v0
.end method
