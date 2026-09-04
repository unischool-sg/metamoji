.class Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;
.super Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;
.source "DrOvGraphicObject.java"


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/graphics/PointF;IIFLjava/lang/String;FIFIF)V
    .locals 0

    .line 280
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;-><init>()V

    .line 281
    invoke-virtual/range {p0 .. p11}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;->resetTexts([Ljava/lang/String;Landroid/graphics/PointF;IIFLjava/lang/String;FIFIF)V

    return-void
.end method

.method public static getSizeOfTexts([Ljava/lang/String;Ljava/lang/String;FF)Lcom/metamoji/cm/SizeF;
    .locals 4

    .line 349
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    .line 350
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    .line 351
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, p2}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 356
    array-length p1, p0

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object p2, p0, v2

    .line 357
    invoke-virtual {v0, v1, v3, p2}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V

    .line 358
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->getBounds()Landroid/graphics/RectF;

    move-result-object p2

    .line 359
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v3, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_0
    new-instance p0, Lcom/metamoji/cm/SizeF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object p0
.end method


# virtual methods
.method public resetTexts([Ljava/lang/String;Landroid/graphics/PointF;IIFLjava/lang/String;FIFIF)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 295
    array-length v2, v0

    add-int/lit8 v3, v2, -0x1

    .line 298
    new-array v4, v2, [Lcom/metamoji/df/sprite/Sprite;

    .line 299
    new-array v5, v2, [Landroid/graphics/PointF;

    const/4 v6, 0x0

    move v9, v6

    move v10, v9

    const/4 v8, 0x0

    :goto_0
    if-eq v8, v2, :cond_2

    .line 301
    new-instance v11, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v11}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    .line 302
    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v12

    .line 303
    new-instance v13, Lcom/metamoji/df/sprite/PaintSolid;

    move/from16 v14, p8

    invoke-direct {v13, v14}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v12, v13}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    move/from16 v13, p9

    .line 304
    invoke-virtual {v12, v13}, Lcom/metamoji/df/sprite/Graphics;->setTextAlpha(F)V

    move-object/from16 v15, p6

    .line 305
    invoke-virtual {v12, v15}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    move/from16 v7, p7

    .line 306
    invoke-virtual {v12, v7}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 307
    aget-object v0, p1, v8

    invoke-virtual {v12, v6, v6, v0}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V

    .line 308
    invoke-virtual {v12}, Lcom/metamoji/df/sprite/Graphics;->bounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v12

    .line 310
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v12, v10}, Landroid/graphics/PointF;-><init>(FF)V

    cmpl-float v16, v12, v9

    if-lez v16, :cond_0

    move v9, v12

    .line 314
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    if-ne v8, v3, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    move/from16 v12, p11

    :goto_1
    add-float/2addr v0, v12

    add-float/2addr v10, v0

    .line 315
    aput-object v11, v4, v8

    .line 316
    aput-object v6, v5, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    move/from16 v0, p3

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    neg-float v0, v0

    mul-float/2addr v0, v9

    move/from16 v6, p4

    int-to-float v6, v6

    mul-float/2addr v6, v3

    neg-float v6, v6

    mul-float/2addr v6, v10

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v7

    .line 324
    invoke-virtual {v7}, Lcom/metamoji/df/sprite/Sprite;->getNumChildren()I

    move-result v8

    :goto_2
    add-int/lit8 v10, v8, -0x1

    if-lez v8, :cond_3

    .line 325
    invoke-virtual {v7, v10}, Lcom/metamoji/df/sprite/Sprite;->removeChildAt(I)V

    move v8, v10

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-eq v8, v2, :cond_4

    .line 328
    aget-object v10, v5, v8

    iget v10, v10, Landroid/graphics/PointF;->x:F

    .line 330
    aget-object v11, v4, v8

    sub-float v10, v9, v10

    move/from16 v12, p10

    int-to-float v13, v12

    mul-float/2addr v13, v3

    mul-float/2addr v10, v13

    add-float/2addr v10, v0

    invoke-virtual {v11, v10}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 331
    aget-object v10, v4, v8

    aget-object v11, v5, v8

    iget v11, v11, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v6

    invoke-virtual {v10, v11}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 332
    aget-object v10, v4, v8

    invoke-virtual {v7, v10}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 336
    :cond_4
    iget v0, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v7, v0}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 337
    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v0}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    move/from16 v0, p5

    .line 338
    invoke-virtual {v7, v0}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 343
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->setScale(F)V

    .line 344
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setScaleX(F)V

    .line 345
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicText;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setScaleY(F)V

    return-void
.end method
