.class public Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;
.super Ljava/lang/Object;
.source "DrOvRubberBandHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;,
        Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;
    }
.end annotation


# instance fields
.field action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

.field private final m_center:Landroid/graphics/PointF;

.field private final m_centerPoint:Landroid/graphics/PointF;

.field private final m_frame:Landroid/graphics/RectF;

.field private m_image:Landroid/graphics/Bitmap;

.field private m_isEnabled:Z

.field private m_isVisible:Z

.field private m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

.field private m_position:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

.field private final m_size:Lcom/metamoji/cm/SizeF;

.field private final m_source:Landroid/graphics/Rect;

.field private m_uid:I

.field final offset:Landroid/graphics/PointF;

.field final origin:Landroid/graphics/PointF;

.field rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_centerPoint:Landroid/graphics/PointF;

    .line 72
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_size:Lcom/metamoji/cm/SizeF;

    .line 74
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_center:Landroid/graphics/PointF;

    .line 77
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_source:Landroid/graphics/Rect;

    .line 80
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->origin:Landroid/graphics/PointF;

    .line 81
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->offset:Landroid/graphics/PointF;

    const/4 v3, 0x0

    .line 82
    iput-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    .line 83
    iput-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    .line 113
    iput-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_position:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

    .line 211
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    if-eqz p1, :cond_0

    .line 98
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_image:Landroid/graphics/Bitmap;

    .line 99
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 101
    iget p1, v0, Lcom/metamoji/cm/SizeF;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v0, v2

    invoke-virtual {v1, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_isVisible:Z

    .line 103
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_isEnabled:Z

    .line 104
    sget-object p1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;->NONE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_position:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

    return-void

    .line 95
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method


# virtual methods
.method public bounds()Landroid/graphics/RectF;
    .locals 3

    .line 143
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 144
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public centerPoint()Landroid/graphics/PointF;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_centerPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method drawInContext(Lcom/metamoji/df/sprite/Graphics;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_image:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_source:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/df/sprite/Graphics;->drawImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method frame()Landroid/graphics/RectF;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    return-object v0
.end method

.method hitTest(Landroid/graphics/PointF;F[F)Z
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    neg-float p2, p2

    invoke-static {v0, p2, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsPoint(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 236
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v1

    float-to-double v1, p2

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public image()Landroid/graphics/Bitmap;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_isEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_isVisible:Z

    return v0
.end method

.method public owner()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    return-object v0
.end method

.method public position()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_position:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

    return-object v0
.end method

.method public rubberband()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    return-object v0
.end method

.method public setCenterPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_centerPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 134
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->updateHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public setIsEnabled(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_isEnabled:Z

    if-nez p1, :cond_0

    .line 182
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_isVisible:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 183
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    :cond_0
    return-void
.end method

.method public setIsVisible(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(ZZ)V

    return-void
.end method

.method setIsVisible(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_isVisible:Z

    if-eq p1, v0, :cond_1

    .line 164
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_isVisible:Z

    .line 165
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p1, p0, p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->updateHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOwner(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_owner:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    return-void
.end method

.method public setPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_position:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

    return-void
.end method

.method public setRubberband(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_uid:I

    return-void
.end method

.method public uid()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_uid:I

    return v0
.end method

.method updateExtraHandleFrameForScale(F)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->offset:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->rubberband:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_centerPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Sprite;->parentToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 252
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->offset:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_center:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 253
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->offset:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_center:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 254
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 255
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method updateGeometry(FFFF)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->action:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->EXTRA_HANDLE_MOVED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    if-ne v0, v1, :cond_0

    div-float/2addr p3, p4

    .line 222
    invoke-virtual {p0, p3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->updateExtraHandleFrameForScale(F)V

    return-void

    :cond_0
    div-float p4, p3, p4

    .line 226
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->origin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, p1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->offset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr p1, v2

    mul-float/2addr p1, p3

    add-float/2addr v1, p1

    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_center:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p1, p4

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 227
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->offset:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, v1

    mul-float/2addr p2, p3

    add-float/2addr v0, p2

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_center:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, p4

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 228
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_size:Lcom/metamoji/cm/SizeF;

    iget p3, p3, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 229
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_frame:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget-object p3, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->m_size:Lcom/metamoji/cm/SizeF;

    iget p3, p3, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method
