.class public Lcom/metamoji/df/sprite/Stage;
.super Ljava/lang/Object;
.source "Stage.java"

# interfaces
.implements Lcom/metamoji/df/sprite/SpriteOwner;


# static fields
.field private static final ENABLED_INVERSE_MATRIX:I = 0x20

.field private static final ENABLED_MATRIX:I = 0x10

.field private static final ENABLED_QUEUEING_RECT:I = 0x40

.field private static final FROZEN:I = 0x4

.field private static final IGNORE_DRAW:I = 0x8

.field private static final QUEUEING:I = 0x2

.field private static final VISIBLE:I = 0x1


# instance fields
.field private flags:I

.field private inverseMatrix:Landroid/graphics/Matrix;

.field private layer:Lcom/metamoji/df/sprite/Layer;

.field private matrix:Landroid/graphics/Matrix;

.field private queueingRect:Landroid/graphics/RectF;

.field private sprite:Lcom/metamoji/df/sprite/Sprite;

.field private zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lcom/metamoji/df/sprite/Stage;->zoom:F

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Stage;->queueingRect:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Stage;->matrix:Landroid/graphics/Matrix;

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Stage;->inverseMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private IS_ENABLED_INVERSE_MATRIX()Z
    .locals 1

    .line 46
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_ENABLED_MATRIX()Z
    .locals 1

    .line 44
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_ENABLED_QUEUEING_RECT()Z
    .locals 1

    .line 48
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_FROZEN()Z
    .locals 1

    .line 40
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_IGNORE_DRAW()Z
    .locals 1

    .line 42
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_QUEUEING()Z
    .locals 1

    .line 38
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_VISIBLE()Z
    .locals 2

    .line 36
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private SET_ENABLED_INVERSE_MATRIX(Z)I
    .locals 1

    .line 47
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x20

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x21

    goto :goto_0
.end method

.method private SET_ENABLED_MATRIX(Z)I
    .locals 1

    .line 45
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x10

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x11

    goto :goto_0
.end method

.method private SET_ENABLED_QUEUEING_RECT(Z)I
    .locals 1

    .line 49
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x40

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x41

    goto :goto_0
.end method

.method private SET_FROZEN(Z)I
    .locals 1

    .line 41
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x4

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x5

    goto :goto_0
.end method

.method private SET_IGNORE_DRAW(Z)I
    .locals 1

    .line 43
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x8

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x9

    goto :goto_0
.end method

.method private SET_QUEUEING(Z)I
    .locals 1

    .line 39
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x2

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x3

    goto :goto_0
.end method

.method private SET_VISIBLE(Z)I
    .locals 1

    .line 37
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x1

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Stage;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x2

    goto :goto_0
.end method

.method private buildStageMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 168
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->zoom:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-void
.end method

.method private clearStageMatrix()V
    .locals 1

    .line 195
    monitor-enter p0

    const/4 v0, 0x0

    .line 196
    :try_start_0
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Stage;->SET_ENABLED_MATRIX(Z)I

    .line 197
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Stage;->SET_ENABLED_INVERSE_MATRIX(Z)I

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private spriteToStage(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 234
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 235
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Stage;->getStageMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object p1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/metamoji/df/sprite/Stage;->layer:Lcom/metamoji/df/sprite/Layer;

    .line 72
    iget-object v1, p0, Lcom/metamoji/df/sprite/Stage;->sprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getOwner()Lcom/metamoji/df/sprite/SpriteOwner;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/metamoji/df/sprite/Stage;->sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Sprite;->setOwner(Lcom/metamoji/df/sprite/SpriteOwner;)V

    .line 74
    iput-object v0, p0, Lcom/metamoji/df/sprite/Stage;->sprite:Lcom/metamoji/df/sprite/Sprite;

    :cond_0
    return-void
.end method

.method public getHeight()F
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/metamoji/df/sprite/Stage;->sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/metamoji/df/sprite/Stage;->zoom:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getLayer()Lcom/metamoji/df/sprite/Layer;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/metamoji/df/sprite/Stage;->layer:Lcom/metamoji/df/sprite/Layer;

    return-object v0
.end method

.method public getSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/metamoji/df/sprite/Stage;->sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public getStageInverseMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_ENABLED_INVERSE_MATRIX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Stage;->getStageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/df/sprite/Stage;->inverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v0, 0x1

    .line 188
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Stage;->SET_ENABLED_INVERSE_MATRIX(Z)I

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Stage;->inverseMatrix:Landroid/graphics/Matrix;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 191
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_ENABLED_MATRIX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/metamoji/df/sprite/Stage;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Stage;->buildStageMatrix(Landroid/graphics/Matrix;)V

    const/4 v0, 0x1

    .line 178
    invoke-direct {p0, v0}, Lcom/metamoji/df/sprite/Stage;->SET_ENABLED_MATRIX(Z)I

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Stage;->matrix:Landroid/graphics/Matrix;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 181
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getViewport()Lcom/metamoji/df/sprite/Viewport;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/metamoji/df/sprite/Stage;->layer:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()F
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/metamoji/df/sprite/Stage;->sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/metamoji/df/sprite/Stage;->zoom:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getZoom()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->zoom:F

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/metamoji/df/sprite/Stage;->sprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/Stage;->invalidateSpriteRect(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/RectF;)V
    .locals 2

    .line 289
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_FROZEN()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_QUEUEING()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_ENABLED_QUEUEING_RECT()Z

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/metamoji/df/sprite/Stage;->queueingRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 294
    invoke-static {v1, p1}, Lcom/metamoji/df/sprite/Geometry;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/Stage;->queueingRect:Landroid/graphics/RectF;

    return-void

    .line 296
    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 p1, 0x1

    .line 297
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Stage;->SET_ENABLED_QUEUEING_RECT(Z)I

    return-void

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/metamoji/df/sprite/Stage;->layer:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_3

    .line 302
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Layer;->invalidateStageRect(Landroid/graphics/RectF;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public invalidateSpriteRect(Landroid/graphics/RectF;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 350
    sget-object v0, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->withdraw()Landroid/graphics/RectF;

    move-result-object v0

    .line 351
    invoke-direct {p0, v0, p1}, Lcom/metamoji/df/sprite/Stage;->spriteToStage(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Stage;->invalidate(Landroid/graphics/RectF;)V

    .line 352
    sget-object p1, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->deposit(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public isFrozen()Z
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_FROZEN()Z

    move-result v0

    return v0
.end method

.method public isIgnoreDraw()Z
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_IGNORE_DRAW()Z

    move-result v0

    return v0
.end method

.method public isQueueing()Z
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_QUEUEING()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_VISIBLE()Z

    move-result v0

    return v0
.end method

.method public paint(Lcom/metamoji/df/sprite/Context;)V
    .locals 6

    .line 243
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_IGNORE_DRAW()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_VISIBLE()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->save()V

    .line 250
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Stage;->getStageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/Context;->concat(Landroid/graphics/Matrix;)V

    .line 252
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getDirtyRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 253
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 254
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 255
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 256
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 258
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Stage;->getStageInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 259
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Stage;->paintContent(Lcom/metamoji/df/sprite/Context;)V

    .line 261
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 262
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 263
    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 264
    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 265
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->restore()V

    return-void
.end method

.method protected paintContent(Lcom/metamoji/df/sprite/Context;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/metamoji/df/sprite/Stage;->sprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->paint(Lcom/metamoji/df/sprite/Context;)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setFrozen(Z)V
    .locals 1

    .line 145
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_FROZEN()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 146
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Stage;->SET_FROZEN(Z)I

    :cond_0
    return-void
.end method

.method public setIgnoreDraw(Z)V
    .locals 1

    .line 158
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_IGNORE_DRAW()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Stage;->SET_IGNORE_DRAW(Z)I

    :cond_0
    return-void
.end method

.method public setLayer(Lcom/metamoji/df/sprite/Layer;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/metamoji/df/sprite/Stage;->layer:Lcom/metamoji/df/sprite/Layer;

    return-void
.end method

.method public setQueueing(Z)V
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_QUEUEING()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 127
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Stage;->SET_QUEUEING(Z)I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 129
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Stage;->SET_ENABLED_QUEUEING_RECT(Z)I

    return-void

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/Stage;->queueingRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Stage;->invalidate(Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method public setSprite(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/metamoji/df/sprite/Stage;->sprite:Lcom/metamoji/df/sprite/Sprite;

    if-eq v0, p1, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Stage;->invalidate()V

    .line 94
    iget-object v0, p0, Lcom/metamoji/df/sprite/Stage;->sprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setOwner(Lcom/metamoji/df/sprite/SpriteOwner;)V

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/Stage;->sprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Sprite;->setOwner(Lcom/metamoji/df/sprite/SpriteOwner;)V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Stage;->invalidate()V

    :cond_2
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_VISIBLE()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 84
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Stage;->SET_VISIBLE(Z)I

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Stage;->invalidate()V

    :cond_0
    return-void
.end method

.method public setZoom(F)V
    .locals 1

    .line 109
    iget v0, p0, Lcom/metamoji/df/sprite/Stage;->zoom:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Stage;->invalidate()V

    .line 111
    iput p1, p0, Lcom/metamoji/df/sprite/Stage;->zoom:F

    .line 112
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->clearStageMatrix()V

    .line 113
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Stage;->invalidate()V

    :cond_0
    return-void
.end method

.method public spriteToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Stage;->getStageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public spriteToStage(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Stage;->getStageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Stage;->getStageInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public stageToSprite(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Stage;->getStageInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public toStage()Lcom/metamoji/df/sprite/Stage;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Stage"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    iget v1, p0, Lcom/metamoji/df/sprite/Stage;->zoom:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " zoom="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/df/sprite/Stage;->zoom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " sprite="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/df/sprite/Stage;->sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_VISIBLE()Z

    move-result v1

    if-nez v1, :cond_1

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " visible="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_VISIBLE()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_QUEUEING()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " queueing="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_QUEUEING()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_FROZEN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " frozen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_FROZEN()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_IGNORE_DRAW()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ignoreDraw="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;->IS_IGNORE_DRAW()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transship(Lcom/metamoji/df/sprite/Sprite;F)V
    .locals 0

    .line 315
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Stage;->setSprite(Lcom/metamoji/df/sprite/Sprite;)V

    .line 316
    invoke-virtual {p0, p2}, Lcom/metamoji/df/sprite/Stage;->setZoom(F)V

    return-void
.end method

.method zoomedSize(F)Landroid/graphics/PointF;
    .locals 3

    .line 339
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Stage;->sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/metamoji/df/sprite/Stage;->sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
