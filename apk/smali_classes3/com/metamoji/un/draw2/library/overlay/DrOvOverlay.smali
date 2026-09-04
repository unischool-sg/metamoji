.class public Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;
.super Lcom/metamoji/df/sprite/Stage;
.source "DrOvOverlay.java"


# instance fields
.field private m_angleInRadians:F

.field private final m_displayBounds:Lcom/metamoji/cm/RectEx;

.field private final m_fromCanvasToViewport:Landroid/graphics/Matrix;

.field private final m_fromViewportToCanvas:Landroid/graphics/Matrix;

.field private final m_layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;",
            ">;"
        }
    .end annotation
.end field

.field private m_queueing:Z

.field private m_uid:I

.field private m_zoom:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 37
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_layers:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromCanvasToViewport:Landroid/graphics/Matrix;

    .line 29
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromViewportToCanvas:Landroid/graphics/Matrix;

    .line 52
    new-instance v2, Lcom/metamoji/cm/RectEx;

    invoke-direct {v2}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    .line 39
    new-instance v3, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v3}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    invoke-super {p0, v3}, Lcom/metamoji/df/sprite/Stage;->setSprite(Lcom/metamoji/df/sprite/Sprite;)V

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/metamoji/cm/RectEx;->set(FFFF)V

    .line 41
    iput v3, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_angleInRadians:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 42
    iput v2, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_zoom:F

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 44
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_queueing:Z

    return-void
.end method


# virtual methods
.method public addLayer(Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_layers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    instance-of v0, p1, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;

    if-eqz v0, :cond_0

    .line 201
    invoke-super {p0}, Lcom/metamoji/df/sprite/Stage;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 203
    :cond_0
    invoke-interface {p1, p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;->setOverlay(Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V

    return-void
.end method

.method public angleInRadians()F
    .locals 1

    .line 59
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_angleInRadians:F

    return v0
.end method

.method public canvasPointFromOverlayPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromViewportToCanvas:Landroid/graphics/Matrix;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public clearAllLayers()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    .line 267
    invoke-interface {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public density()F
    .locals 1

    .line 318
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public destroy()V
    .locals 0

    .line 312
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->removeAllLayers()V

    return-void
.end method

.method public displayBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public insertLayer(Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;I)Z
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerCount()I

    move-result v0

    if-le p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_layers:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 212
    instance-of v0, p1, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;

    if-eqz v0, :cond_1

    .line 213
    invoke-super {p0}, Lcom/metamoji/df/sprite/Stage;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/metamoji/df/sprite/Sprite;->addChildAt(Lcom/metamoji/df/sprite/Sprite;I)V

    .line 215
    :cond_1
    invoke-interface {p1, p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;->setOverlay(Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V

    const/4 p1, 0x1

    return p1
.end method

.method public isVisible()Z
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/metamoji/df/sprite/Stage;->isVisible()Z

    move-result v0

    return v0
.end method

.method public layerAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_layers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    return-object p1
.end method

.method public layerCount()I
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/metamoji/df/sprite/Stage;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getNumChildren()I

    move-result v0

    return v0
.end method

.method public layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    .line 245
    invoke-interface {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;->uid()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public matrixFromCanvasToOverlay()Landroid/graphics/Matrix;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromCanvasToViewport:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public matrixFromOverlayToCanvas()Landroid/graphics/Matrix;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromViewportToCanvas:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public overlayPointFromCanvasPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromCanvasToViewport:Landroid/graphics/Matrix;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public queueing()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_queueing:Z

    return v0
.end method

.method public removeAllLayers()V
    .locals 3

    .line 232
    invoke-super {p0}, Lcom/metamoji/df/sprite/Stage;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->removeChildren()V

    .line 233
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    const/4 v2, 0x0

    .line 234
    invoke-interface {v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;->setOverlay(Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeLayer(Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_layers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 224
    :cond_0
    instance-of v1, p1, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 228
    invoke-interface {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;->setOverlay(Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V

    return-void
.end method

.method public repaintAllLayers()V
    .locals 0

    .line 256
    invoke-super {p0}, Lcom/metamoji/df/sprite/Stage;->invalidate()V

    return-void
.end method

.method public repaintAllLayersWithRect(Landroid/graphics/RectF;)V
    .locals 0

    .line 259
    invoke-super {p0, p1}, Lcom/metamoji/df/sprite/Stage;->invalidate(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setIsVisible(Z)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/metamoji/df/sprite/Stage;->setVisible(Z)V

    return-void
.end method

.method public setQueueing(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_queueing:Z

    .line 90
    invoke-super {p0, p1}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_uid:I

    return-void
.end method

.method public translate()Landroid/graphics/PointF;
    .locals 3

    .line 69
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public uid()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_uid:I

    return v0
.end method

.method public updateCoordinates(Lcom/metamoji/cm/RectEx;FF)V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/RectEx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_angleInRadians:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_zoom:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 146
    :cond_0
    invoke-super {p0}, Lcom/metamoji/df/sprite/Stage;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    if-nez v0, :cond_1

    .line 152
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainView()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 155
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v1, p1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 160
    iput p2, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_angleInRadians:F

    .line 161
    iput p3, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_zoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p3

    .line 165
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 166
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    .line 167
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromViewportToCanvas:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 169
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromViewportToCanvas:Landroid/graphics/Matrix;

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 170
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromViewportToCanvas:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 173
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    .line 174
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 175
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromViewportToCanvas:Landroid/graphics/Matrix;

    neg-float p1, p1

    neg-float v3, v3

    invoke-virtual {v2, p1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 176
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromViewportToCanvas:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromCanvasToViewport:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 178
    invoke-super {p0, p3}, Lcom/metamoji/df/sprite/Stage;->setZoom(F)V

    .line 180
    sget-object p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Viewport;->stageToViewport(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 181
    sget-object p3, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromCanvasToViewport:Landroid/graphics/Matrix;

    invoke-static {p3, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p3

    .line 182
    invoke-super {p0}, Lcom/metamoji/df/sprite/Stage;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    .line 183
    iget v2, p3, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 184
    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p1

    mul-float/2addr p3, v1

    invoke-virtual {v0, p3}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    neg-float p1, p2

    .line 185
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    .line 187
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_layers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    .line 188
    invoke-interface {p2}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;->internalUpdate()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public updateCoordinatesWithZoom(FLandroid/graphics/PointF;)V
    .locals 5

    .line 117
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_zoom:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/df/sprite/Stage;->setZoom(F)V

    .line 122
    invoke-super {p0}, Lcom/metamoji/df/sprite/Stage;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 123
    invoke-super {p0}, Lcom/metamoji/df/sprite/Stage;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    .line 124
    sget-object v2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 125
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 126
    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 127
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_zoom:F

    .line 128
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/metamoji/cm/RectEx;->set(FFFF)V

    .line 130
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromCanvasToViewport:Landroid/graphics/Matrix;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    neg-float p2, p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 131
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromCanvasToViewport:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 133
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromCanvasToViewport:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_fromViewportToCanvas:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 135
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_layers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    .line 136
    invoke-interface {p2}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;->internalUpdate()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public zoom()F
    .locals 1

    .line 64
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->m_zoom:F

    return v0
.end method
