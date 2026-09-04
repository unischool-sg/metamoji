.class Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;
.super Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;
.source "DrOvGraphicObject.java"


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;FLcom/metamoji/cm/RectEx;F)V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;-><init>()V

    .line 226
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;->resetImage(Landroid/graphics/Bitmap;FLcom/metamoji/cm/RectEx;F)V

    return-void
.end method


# virtual methods
.method public resetImage(Landroid/graphics/Bitmap;FLcom/metamoji/cm/RectEx;F)V
    .locals 6

    .line 233
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, p2}, Lcom/metamoji/df/sprite/Sprite;->setAlpha(F)V

    .line 234
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p2

    .line 235
    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 237
    iget v0, p3, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    if-lez v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3, v4}, Lcom/metamoji/df/sprite/Sprite;->setScaleX(F)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3, v5}, Lcom/metamoji/df/sprite/Sprite;->setScaleX(F)V

    neg-float v0, v0

    .line 244
    :goto_0
    iget v3, p3, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v3, v1

    cmpl-float v1, v3, v2

    if-lez v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, v4}, Lcom/metamoji/df/sprite/Sprite;->setScaleY(F)V

    goto :goto_1

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, v5}, Lcom/metamoji/df/sprite/Sprite;->setScaleY(F)V

    neg-float v3, v3

    .line 253
    :goto_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 254
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p3

    invoke-virtual {v1, p3}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 255
    iget-object p3, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicImage;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p3, p4}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    .line 256
    new-instance p3, Landroid/graphics/RectF;

    neg-float p4, v0

    neg-float v1, v3

    invoke-direct {p3, p4, v1, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p4, 0x0

    .line 257
    invoke-virtual {p2, p1, p4, p3}, Lcom/metamoji/df/sprite/Graphics;->drawImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method
