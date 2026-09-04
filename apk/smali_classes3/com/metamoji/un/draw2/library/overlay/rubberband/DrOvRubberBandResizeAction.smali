.class Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;
.super Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;
.source "DrOvRubberBandAction.java"


# instance fields
.field private final m_bounds:Lcom/metamoji/cm/RectEx;

.field private final m_bounds0:Lcom/metamoji/cm/RectEx;

.field private final m_displace:Landroid/graphics/Matrix;

.field private m_invertible:Z

.field private m_keepAspectRatio:Z

.field private m_minScale:Landroid/graphics/PointF;

.field private final m_normalize:Landroid/graphics/Matrix;

.field private final m_offset:Landroid/graphics/PointF;

.field private final m_xy:[F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 181
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;-><init>()V

    .line 182
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_bounds0:Lcom/metamoji/cm/RectEx;

    .line 183
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_bounds:Lcom/metamoji/cm/RectEx;

    .line 184
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_offset:Landroid/graphics/PointF;

    .line 186
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_normalize:Landroid/graphics/Matrix;

    .line 187
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_displace:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    .line 190
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_xy:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static limit_scale(FFFZ)F
    .locals 1

    if-eqz p3, :cond_0

    .line 311
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const/4 v0, 0x0

    invoke-static {p3, p1, p2, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->limit_scale(FFFZ)F

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->copySign(FF)F

    move-result p0

    return p0

    :cond_0
    cmpg-float p3, p0, p1

    if-gez p3, :cond_1

    return p1

    :cond_1
    cmpl-float p1, p0, p2

    if-lez p1, :cond_2

    return p2

    :cond_2
    return p0
.end method


# virtual methods
.method cancel()V
    .locals 2

    .line 303
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->cancel()V

    .line 304
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_bounds0:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setContentBounds(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method prepare()V
    .locals 2

    .line 194
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_RESIZED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_type:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    .line 195
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->prepare()V

    .line 196
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_bounds0:Lcom/metamoji/cm/RectEx;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method start()V
    .locals 10

    .line 201
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->keepAspectRatio()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_keepAspectRatio:Z

    .line 202
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->isReversible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_invertible:Z

    .line 205
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->minScale()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_minScale:Landroid/graphics/PointF;

    .line 206
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_keepAspectRatio:Z

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_minScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_minScale:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_handle:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    iget-object v0, v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_bounds0:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v0, v1

    .line 211
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_handle:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    iget-object v1, v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->origin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_bounds0:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v1, v2

    .line 212
    new-instance v2, Landroid/graphics/PointF;

    neg-float v3, v0

    neg-float v4, v1

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    mul-float/2addr v3, v1

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    div-float v4, v7, v4

    :goto_0
    cmpl-float v6, v3, v5

    if-nez v6, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    div-float v3, v7, v3

    .line 219
    :goto_1
    iget-object v6, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/metamoji/df/sprite/Sprite;->localToParent(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    iput-object v6, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_fixedPoint:Landroid/graphics/PointF;

    .line 221
    iget-object v6, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->angleInRadians()F

    move-result v6

    .line 223
    iget-boolean v8, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_invertible:Z

    if-eqz v8, :cond_3

    .line 227
    iget-object v5, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_handle:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->frame()Landroid/graphics/RectF;

    move-result-object v5

    .line 228
    iget-object v8, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_offset:Landroid/graphics/PointF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    sub-float/2addr v9, v0

    mul-float/2addr v9, v4

    iput v9, v8, Landroid/graphics/PointF;->x:F

    .line 229
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_offset:Landroid/graphics/PointF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v5, v1

    mul-float/2addr v5, v3

    iput v5, v0, Landroid/graphics/PointF;->y:F

    goto :goto_2

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_offset:Landroid/graphics/PointF;

    invoke-virtual {v0, v5, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 235
    :goto_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_normalize:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_offset:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v7

    iget-object v5, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_offset:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v7

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 236
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_normalize:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 237
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_normalize:Landroid/graphics/Matrix;

    neg-float v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 238
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_normalize:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 241
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_displace:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 242
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_displace:Landroid/graphics/Matrix;

    iget v1, v2, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 243
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_displace:Landroid/graphics/Matrix;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-void
.end method

.method update()Z
    .locals 9

    .line 248
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;->update()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_xy:[F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_point:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v0, v1

    .line 254
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_xy:[F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_point:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 255
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_normalize:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_xy:[F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 256
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_xy:[F

    aget v2, v0, v1

    aget v0, v0, v3

    .line 257
    iget-boolean v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_invertible:Z

    if-eqz v4, :cond_2

    .line 259
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_offset:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 263
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v6, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_offset:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->copySign(FF)F

    move-result v2

    .line 265
    :cond_1
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_offset:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 266
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v6, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_offset:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->copySign(FF)F

    move-result v0

    .line 270
    :cond_2
    iget-boolean v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_keepAspectRatio:Z

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    if-eqz v4, :cond_4

    .line 274
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    move v0, v2

    .line 276
    :cond_3
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_minScale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-boolean v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_invertible:Z

    invoke-static {v0, v2, v5, v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->limit_scale(FFFZ)F

    move-result v0

    move v2, v0

    goto :goto_0

    .line 279
    :cond_4
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_minScale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-boolean v6, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_invertible:Z

    invoke-static {v2, v4, v5, v6}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->limit_scale(FFFZ)F

    move-result v2

    .line 280
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_minScale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-boolean v6, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_invertible:Z

    invoke-static {v0, v4, v5, v6}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->limit_scale(FFFZ)F

    move-result v0

    move v8, v2

    move v2, v0

    move v0, v8

    .line 283
    :goto_0
    iget v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_scaleWidth:F

    cmpl-float v4, v4, v0

    if-nez v4, :cond_5

    iget v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_scaleHeight:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_5

    return v1

    .line 286
    :cond_5
    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_scaleWidth:F

    .line 287
    iput v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_scaleHeight:F

    .line 289
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_bounds0:Lcom/metamoji/cm/RectEx;

    iget v4, v4, Lcom/metamoji/cm/RectEx;->width:F

    iget v5, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_scaleWidth:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    .line 290
    iget-object v5, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_bounds0:Lcom/metamoji/cm/RectEx;

    iget v5, v5, Lcom/metamoji/cm/RectEx;->height:F

    iget v6, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_scaleHeight:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    .line 292
    iget-object v6, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_xy:[F

    aput v0, v6, v1

    .line 293
    aput v2, v6, v3

    .line 294
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_displace:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 296
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_xy:[F

    aget v1, v2, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v4, v6

    sub-float/2addr v1, v7

    aget v2, v2, v3

    div-float v6, v5, v6

    sub-float/2addr v2, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/metamoji/cm/RectEx;->set(FFFF)V

    .line 297
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandResizeAction;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setContentBounds(Lcom/metamoji/cm/RectEx;)V

    return v3
.end method
