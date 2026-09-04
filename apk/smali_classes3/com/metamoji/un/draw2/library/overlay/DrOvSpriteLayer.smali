.class public abstract Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;
.super Ljava/lang/Object;
.source "DrOvSpriteLayer.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;


# instance fields
.field protected m_autoVisible:Z

.field private m_hasVisibleContents:Z

.field protected m_ignoreCoordinates:Z

.field protected m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

.field protected final m_sprite:Lcom/metamoji/df/sprite/Sprite;

.field private m_uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_ignoreCoordinates:Z

    .line 23
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_autoVisible:Z

    .line 25
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_hasVisibleContents:Z

    return-void
.end method


# virtual methods
.method public autoVisible()Z
    .locals 1

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_autoVisible:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->removeChildren()V

    .line 121
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    return-void
.end method

.method protected hasVisibleContents()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_hasVisibleContents:Z

    return v0
.end method

.method public ignoreCoordinates()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_ignoreCoordinates:Z

    return v0
.end method

.method public internalUpdate()V
    .locals 4

    .line 126
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_ignoreCoordinates:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    sget-object v2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->canvasPointFromOverlayPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 130
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 131
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->zoom()F

    move-result v0

    div-float/2addr v1, v0

    .line 132
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setScaleX(F)V

    .line 133
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setScaleY(F)V

    .line 134
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->angleInRadians()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 139
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 140
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setScaleX(F)V

    .line 141
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setScaleY(F)V

    .line 142
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->isVisible()Z

    move-result v0

    return v0
.end method

.method public overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;
    .locals 1

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public repaint()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V

    return-void
.end method

.method public repaintWithRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->invalidate(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setAutoVisible(Z)V
    .locals 1

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_autoVisible:Z

    if-eq v0, p1, :cond_0

    .line 84
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_autoVisible:Z

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_hasVisibleContents:Z

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected setHasVisibleContents(Z)V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_hasVisibleContents:Z

    if-eq v0, p1, :cond_0

    .line 157
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_hasVisibleContents:Z

    .line 158
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_autoVisible:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public setIgnoreCoordinates(Z)V
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_ignoreCoordinates:Z

    if-eq v0, p1, :cond_0

    .line 56
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_ignoreCoordinates:Z

    .line 57
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->internalUpdate()V

    :cond_0
    return-void
.end method

.method public setIsVisible(Z)V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_autoVisible:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public setOverlay(Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V
    .locals 1

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    if-eq v0, p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->internalUpdate()V

    .line 45
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setUid(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_uid:I

    return-void
.end method

.method public sprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public uid()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvSpriteLayer;->m_uid:I

    return v0
.end method
