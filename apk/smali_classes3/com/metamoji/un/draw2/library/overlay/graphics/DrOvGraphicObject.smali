.class abstract Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;
.super Ljava/lang/Object;
.source "DrOvGraphicObject.java"


# instance fields
.field m_blur:F

.field m_offsetX:F

.field m_offsetY:F

.field m_scale:F

.field final m_sprite:Lcom/metamoji/df/sprite/Sprite;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_scale:F

    .line 55
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-void
.end method


# virtual methods
.method scale()F
    .locals 1

    .line 69
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_scale:F

    return v0
.end method

.method setScale(F)V
    .locals 2

    .line 72
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_scale:F

    .line 73
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getDropShadow()Lcom/metamoji/df/sprite/DropShadow;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_offsetX:F

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_scale:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/metamoji/df/sprite/DropShadow;->x:F

    .line 77
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_offsetY:F

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_scale:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/metamoji/df/sprite/DropShadow;->y:F

    .line 78
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_blur:F

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_scale:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/metamoji/df/sprite/DropShadow;->blur:F

    :cond_0
    return-void
.end method

.method setShadowColor(Ljava/lang/Integer;FLandroid/graphics/PointF;F)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_offsetX:F

    .line 88
    iget p3, p3, Landroid/graphics/PointF;->y:F

    iput p3, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_offsetY:F

    .line 89
    iput p4, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_blur:F

    .line 90
    new-instance p3, Lcom/metamoji/df/sprite/DropShadow;

    invoke-direct {p3}, Lcom/metamoji/df/sprite/DropShadow;-><init>()V

    .line 91
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p3, Lcom/metamoji/df/sprite/DropShadow;->color:I

    .line 92
    iput p2, p3, Lcom/metamoji/df/sprite/DropShadow;->alpha:F

    .line 94
    iget p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_offsetX:F

    iget p2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_scale:F

    mul-float/2addr p1, p2

    iput p1, p3, Lcom/metamoji/df/sprite/DropShadow;->x:F

    .line 95
    iget p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_offsetY:F

    iget p2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_scale:F

    mul-float/2addr p1, p2

    iput p1, p3, Lcom/metamoji/df/sprite/DropShadow;->y:F

    .line 96
    iget p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_blur:F

    iget p2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_scale:F

    mul-float/2addr p1, p2

    iput p1, p3, Lcom/metamoji/df/sprite/DropShadow;->blur:F

    .line 97
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, p3}, Lcom/metamoji/df/sprite/Sprite;->setDropShadow(Lcom/metamoji/df/sprite/DropShadow;)V

    return-void

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Sprite;->setDropShadow(Lcom/metamoji/df/sprite/DropShadow;)V

    return-void
.end method

.method setVisible(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    return-void
.end method

.method sprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method update()V
    .locals 0

    return-void
.end method

.method visible()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->isVisible()Z

    move-result v0

    return v0
.end method
