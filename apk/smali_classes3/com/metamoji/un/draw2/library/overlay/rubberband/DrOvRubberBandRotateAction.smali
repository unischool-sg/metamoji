.class Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;
.super Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;
.source "DrOvRubberBandAction.java"


# instance fields
.field m_adsorptionAngles:[F

.field m_adsorptionMargin:F

.field m_angle:F

.field m_count:I

.field m_offset:F

.field m_step:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 320
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;-><init>()V

    return-void
.end method

.method private principal_angle(D)F
    .locals 4

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr p1, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    sub-double/2addr p1, v0

    :goto_0
    double-to-float p1, p1

    return p1

    :cond_0
    const-wide v2, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_1

    add-double/2addr p1, v0

    goto :goto_0

    :cond_1
    double-to-float p1, p1

    return p1
.end method


# virtual methods
.method cancel()V
    .locals 2

    .line 394
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->cancel()V

    .line 395
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_angle:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setAngleInRadians(F)V

    return-void
.end method

.method prepare()V
    .locals 4

    .line 330
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_ROTATED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_type:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    .line 331
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->prepare()V

    .line 333
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->angleInRadians()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_angle:F

    .line 336
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 337
    new-instance v1, Landroid/graphics/PointF;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_fixedPoint:Landroid/graphics/PointF;

    .line 339
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_start:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_fixedPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_start:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_fixedPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_offset:F

    return-void
.end method

.method start()V
    .locals 6

    .line 344
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->rotationStep()I

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x3fb999999999999aL    # 0.1

    goto :goto_0

    :cond_0
    int-to-double v0, v0

    .line 346
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_step:F

    .line 350
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->adsorptionAngles()[F

    move-result-object v0

    if-eqz v0, :cond_2

    .line 351
    array-length v1, v0

    if-lez v1, :cond_2

    .line 353
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_adsorptionAngles:[F

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 356
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_adsorptionAngles:[F

    aget v4, v0, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->principal_angle(D)F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->adsorptionMargin()F

    move-result v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->scale()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_adsorptionMargin:F

    :cond_2
    return-void
.end method

.method update()Z
    .locals 10

    .line 365
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->update()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_point:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_fixedPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    .line 369
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_point:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_fixedPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    float-to-double v4, v0

    .line 370
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_offset:F

    float-to-double v8, v0

    sub-double/2addr v6, v8

    invoke-direct {p0, v6, v7}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->principal_angle(D)F

    move-result v0

    .line 371
    iget-object v6, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_adsorptionAngles:[F

    if-eqz v6, :cond_2

    .line 372
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 373
    iget v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_adsorptionMargin:F

    div-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 374
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_adsorptionAngles:[F

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    sub-float v7, v6, v2

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_1

    add-float v7, v6, v2

    cmpg-float v7, v0, v7

    if-gtz v7, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 382
    :cond_2
    :goto_1
    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_step:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 383
    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_count:I

    if-ne v0, v2, :cond_3

    return v1

    .line 386
    :cond_3
    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_count:I

    .line 387
    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_step:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_deltaAngle:F

    .line 388
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_angle:F

    iget v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandRotateAction;->m_deltaAngle:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setAngleInRadians(F)V

    const/4 v0, 0x1

    return v0
.end method
