.class public Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;
.super Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;
.source "DrOvMaskLayer.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;


# instance fields
.field private final m_clippingBounds:Lcom/metamoji/cm/RectEx;

.field private m_optimizeStyleForZoom:Z

.field private m_scaledStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;-><init>()V

    .line 24
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_clippingBounds:Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method private updateContent()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    if-nez v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_optimizeStyleForZoom:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_ignoreCoordinates:Z

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->zoom()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithScale(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_scaledStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    goto :goto_1

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_scaledStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    goto :goto_1

    .line 117
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_scaledStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 126
    :goto_1
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->clear()V

    .line 129
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_clippingBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_scaledStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-nez v0, :cond_3

    goto :goto_2

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 137
    :cond_4
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 140
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_clippingBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v2}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 143
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 144
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_ignoreCoordinates:Z

    if-nez v0, :cond_5

    .line 145
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->matrixFromOverlayToCanvas()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 147
    :cond_5
    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 149
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    .line 150
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_scaledStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->applyTo(Lcom/metamoji/df/sprite/Graphics;)V

    .line 151
    sget-object v2, Lcom/metamoji/df/sprite/FillRule;->WINDING:Lcom/metamoji/df/sprite/FillRule;

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Graphics;->setFillRule(Lcom/metamoji/df/sprite/FillRule;)V

    .line 152
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->drawBezierPath(Landroid/graphics/Path;)V

    const/4 v0, 0x1

    .line 154
    invoke-super {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->setHasVisibleContents(Z)V

    return-void

    :cond_6
    :goto_2
    const/4 v0, 0x0

    .line 130
    invoke-super {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->setHasVisibleContents(Z)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_clippingBounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    const/4 v0, 0x0

    .line 91
    invoke-super {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->setHasVisibleContents(Z)V

    .line 92
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->clear()V

    return-void
.end method

.method public clippingBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_clippingBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 98
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_scaledStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 99
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_clippingBounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 100
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->destroy()V

    return-void
.end method

.method public internalUpdate()V
    .locals 0

    .line 108
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->internalUpdate()V

    .line 109
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->updateContent()V

    return-void
.end method

.method public optimizeStyleForZoom()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_optimizeStyleForZoom:Z

    return v0
.end method

.method public setClippingBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 1

    .line 40
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsEmpty(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_clippingBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 44
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->updateContent()V

    return-void
.end method

.method public setOptimizeStyleForZoom(Z)V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_optimizeStyleForZoom:Z

    if-eq p1, v0, :cond_0

    .line 74
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_optimizeStyleForZoom:Z

    .line 75
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->updateContent()V

    :cond_0
    return-void
.end method

.method public setStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eq p1, v0, :cond_0

    .line 57
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 58
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->updateContent()V

    :cond_0
    return-void
.end method

.method public style()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/mask/DrOvMaskLayer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-object v0
.end method

.method public type()Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;
    .locals 1

    .line 84
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->MASK:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    return-object v0
.end method
