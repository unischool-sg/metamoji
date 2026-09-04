.class public Lcom/metamoji/ui/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field public static final ARROWINDEX_TYPE_BOTH_SIDES:I = 0x3

.field public static final ARROWINDEX_TYPE_END_SIDE:I = 0x2

.field public static final ARROWINDEX_TYPE_NONE:I = 0x0

.field public static final ARROWINDEX_TYPE_START_SIDE:I = 0x1

.field public static final ARROWINDEX_TYPE_UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawArrow(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Lcom/metamoji/nt/share/NtPenStyle;F[F)V
    .locals 10

    .line 288
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, p2}, Lcom/metamoji/cm/RectEx;-><init>(Landroid/graphics/RectF;)V

    .line 289
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 290
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 291
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 292
    new-instance v4, Landroid/graphics/PointF;

    iget p2, v0, Lcom/metamoji/cm/RectEx;->x:F

    const/high16 v5, 0x40a00000    # 5.0f

    add-float/2addr p2, v5

    iget v6, v0, Lcom/metamoji/cm/RectEx;->y:F

    iget v7, v0, Lcom/metamoji/cm/RectEx;->height:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-direct {v4, p2, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move p2, v5

    .line 293
    new-instance v5, Landroid/graphics/PointF;

    iget v6, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget v7, v0, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v6, v7

    sub-float/2addr v6, p2

    iget p2, v0, Lcom/metamoji/cm/RectEx;->y:F

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v0, v8

    add-float/2addr p2, v0

    invoke-direct {v5, v6, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 295
    iget-object v6, p3, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    iget-object v7, p3, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    const/high16 v9, 0x40800000    # 4.0f

    move v8, p4

    invoke-static/range {v1 .. v9}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->constructLineArrowPath(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/String;Ljava/lang/String;FF)V

    .line 297
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    invoke-virtual {p3}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    iget p2, p3, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 300
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x0

    if-eqz p5, :cond_0

    .line 302
    new-instance p4, Landroid/graphics/DashPathEffect;

    invoke-direct {p4, p5, p2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 305
    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 307
    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 308
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x0

    .line 309
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 311
    iget-object p2, p3, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    const-string p4, "both"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 312
    invoke-virtual {p0, v2, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 313
    invoke-virtual {p0, v3, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 315
    :cond_1
    iget-object p2, p3, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    const-string/jumbo p4, "start"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 316
    invoke-virtual {p0, v2, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 318
    :cond_2
    iget-object p2, p3, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    const-string p3, "end"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 319
    invoke-virtual {p0, v3, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public static drawFlowChartArrow(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;Landroid/graphics/RectF;Lcom/metamoji/nt/share/NtPenStyle;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 325
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    const v5, 0x3e19999a    # 0.15f

    mul-float/2addr v4, v5

    .line 326
    new-instance v9, Lcom/metamoji/cm/RectEx;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v4

    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v4, v8

    sub-float/2addr v7, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v2, v4

    invoke-direct {v9, v5, v6, v7, v2}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 328
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 329
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 330
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 332
    iget v2, v3, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    div-float/2addr v2, v8

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v10, v2, v4

    if-gtz v10, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/high16 v10, 0x40a00000    # 5.0f

    cmpl-float v11, v2, v10

    if-lez v11, :cond_1

    move v2, v10

    :cond_1
    :goto_0
    const/high16 v10, 0x40800000    # 4.0f

    div-float v14, v10, v2

    .line 342
    iget-object v10, v3, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    const/4 v15, 0x0

    if-eqz v10, :cond_3

    const/4 v10, 0x2

    .line 343
    new-array v10, v10, [F

    cmpg-float v4, v2, v4

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-gtz v4, :cond_2

    .line 345
    aput v8, v10, v12

    .line 346
    aput v8, v10, v11

    goto :goto_1

    :cond_2
    const/high16 v4, 0x41000000    # 8.0f

    .line 349
    aput v4, v10, v12

    .line 350
    aput v4, v10, v11

    .line 352
    :goto_1
    aget v4, v10, v12

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v4

    aput v4, v10, v12

    .line 353
    aget v4, v10, v11

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v4

    aput v4, v10, v11

    move-object v4, v10

    goto :goto_2

    :cond_3
    move-object v4, v15

    .line 355
    :goto_2
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v12

    .line 358
    const-string v11, "default"

    sget-object v13, Lcom/metamoji/df/sprite/LineCap;->ROUND:Lcom/metamoji/df/sprite/LineCap;

    const-string v10, "end"

    move-object/from16 v8, p2

    invoke-static/range {v5 .. v14}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->constructFlowchartArrowPath(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;Lcom/metamoji/cm/RectEx;Ljava/lang/String;Ljava/lang/String;FLcom/metamoji/df/sprite/LineCap;F)V

    .line 361
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 362
    invoke-virtual {v3}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 363
    iget v2, v3, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 364
    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x0

    if-eqz v4, :cond_4

    .line 366
    new-instance v3, Landroid/graphics/DashPathEffect;

    invoke-direct {v3, v4, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 370
    :cond_4
    invoke-virtual {v0, v5, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 372
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 373
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 374
    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 376
    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static eraserLineAlpha()D
    .locals 2

    const-wide v0, 0x3fe999999999999aL    # 0.8

    return-wide v0
.end method

.method public static eraserLineColor()I
    .locals 4

    .line 259
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->eraserLineColorR()I

    move-result v0

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->eraserLineColorG()I

    move-result v1

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->eraserLineColorB()I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static eraserLineColorB()I
    .locals 1

    const/16 v0, 0xc4

    return v0
.end method

.method public static eraserLineColorG()I
    .locals 1

    const/16 v0, 0xbb

    return v0
.end method

.method public static eraserLineColorR()I
    .locals 1

    const/16 v0, 0xbb

    return v0
.end method

.method public static getArrowIndex(Lcom/metamoji/nt/share/NtPenStyle;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p0, :cond_4

    .line 384
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->isArrowType()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    const-string v1, "none"

    iget-object v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 390
    :cond_1
    const-string/jumbo v1, "start"

    iget-object v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 393
    :cond_2
    const-string v1, "end"

    iget-object v2, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x2

    return p0

    .line 396
    :cond_3
    const-string v1, "both"

    iget-object p0, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static getArrowStyle(I)Lcom/metamoji/nt/share/NtPenStyle;
    .locals 3

    .line 407
    new-instance v0, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {v0}, Lcom/metamoji/nt/share/NtPenStyle;-><init>()V

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    .line 408
    const-string v2, "default"

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return-object v0

    .line 421
    :cond_0
    const-string p0, "both"

    iput-object p0, v0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 422
    iput-object v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    return-object v0

    .line 417
    :cond_1
    const-string p0, "end"

    iput-object p0, v0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 418
    iput-object v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    return-object v0

    .line 413
    :cond_2
    const-string/jumbo p0, "start"

    iput-object p0, v0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 414
    iput-object v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    return-object v0

    .line 410
    :cond_3
    const-string p0, "none"

    iput-object p0, v0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    return-object v0
.end method

.method public static groupFrameLineAlpha()D
    .locals 2

    const-wide v0, 0x3fe999999999999aL    # 0.8

    return-wide v0
.end method

.method public static groupFrameLineColor()I
    .locals 4

    .line 139
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->groupFrameLineColorR()I

    move-result v0

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->groupFrameLineColorG()I

    move-result v1

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->groupFrameLineColorB()I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static groupFrameLineColorARGB()I
    .locals 4

    .line 168
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->groupFrameLineAlpha()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 169
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->groupFrameLineColorR()I

    move-result v1

    .line 170
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->groupFrameLineColorG()I

    move-result v2

    .line 171
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->groupFrameLineColorB()I

    move-result v3

    .line 168
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static groupFrameLineColorB()I
    .locals 1

    const/16 v0, 0xf4

    return v0
.end method

.method public static groupFrameLineColorG()I
    .locals 1

    const/16 v0, 0xa4

    return v0
.end method

.method public static groupFrameLineColorR()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public static isLineArrow(I)Z
    .locals 1

    .line 432
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->LINE_ARROW:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v0

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->LINE_ARROW:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x63

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isShapeFlowChartArrow(Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;)Z
    .locals 2

    .line 437
    sget-object v0, Lcom/metamoji/ui/UIUtils$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$example$DrUtShapeExampleType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static lassoFillAlpha()D
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    return-wide v0
.end method

.method public static lassoFillColor()I
    .locals 4

    .line 70
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoFillColorR()I

    move-result v0

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoFillColorG()I

    move-result v1

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoFillColorB()I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static lassoFillColorB()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public static lassoFillColorG()I
    .locals 1

    const/16 v0, 0xf7

    return v0
.end method

.method public static lassoFillColorR()I
    .locals 1

    const/16 v0, 0xdd

    return v0
.end method

.method public static lassoLineAlpha()D
    .locals 2

    const-wide v0, 0x3fe999999999999aL    # 0.8

    return-wide v0
.end method

.method public static lassoLineColor()I
    .locals 4

    .line 41
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoLineColorR()I

    move-result v0

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoLineColorG()I

    move-result v1

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoLineColorB()I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static lassoLineColorB()I
    .locals 1

    const/16 v0, 0xeb

    return v0
.end method

.method public static lassoLineColorG()I
    .locals 1

    const/16 v0, 0xcf

    return v0
.end method

.method public static lassoLineColorR()I
    .locals 1

    const/16 v0, 0x7a

    return v0
.end method

.method public static rubberBandFrameLineAlpha()D
    .locals 2

    const-wide v0, 0x3fe999999999999aL    # 0.8

    return-wide v0
.end method

.method public static rubberBandFrameLineColor()I
    .locals 4

    .line 99
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->rubberBandFrameLineColorR()I

    move-result v0

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->rubberBandFrameLineColorG()I

    move-result v1

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->rubberBandFrameLineColorB()I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static rubberBandFrameLineColorARGB()I
    .locals 4

    .line 128
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->rubberBandFrameLineAlpha()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 129
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->rubberBandFrameLineColorR()I

    move-result v1

    .line 130
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->rubberBandFrameLineColorG()I

    move-result v2

    .line 131
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->rubberBandFrameLineColorB()I

    move-result v3

    .line 128
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static rubberBandFrameLineColorB()I
    .locals 1

    const/16 v0, 0xeb

    return v0
.end method

.method public static rubberBandFrameLineColorG()I
    .locals 1

    const/16 v0, 0xcf

    return v0
.end method

.method public static rubberBandFrameLineColorR()I
    .locals 1

    const/16 v0, 0x7a

    return v0
.end method

.method public static unitFrameFillAlpha()D
    .locals 2

    const-wide v0, 0x3fb47ae147ae147bL    # 0.08

    return-wide v0
.end method

.method public static unitFrameFillColor()I
    .locals 4

    .line 219
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillColorR()I

    move-result v0

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillColorG()I

    move-result v1

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillColorB()I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static unitFrameFillColorARGB()I
    .locals 4

    .line 248
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillAlpha()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 249
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillColorR()I

    move-result v1

    .line 250
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillColorG()I

    move-result v2

    .line 251
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillColorB()I

    move-result v3

    .line 248
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static unitFrameFillColorB()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static unitFrameFillColorG()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static unitFrameFillColorR()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public static unitFrameLineAlpha()D
    .locals 2

    const-wide v0, 0x3fe999999999999aL    # 0.8

    return-wide v0
.end method

.method public static unitFrameLineColor()I
    .locals 4

    .line 179
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameLineColorR()I

    move-result v0

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameLineColorG()I

    move-result v1

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameLineColorB()I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static unitFrameLineColorARGB()I
    .locals 4

    .line 208
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameLineAlpha()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 209
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameLineColorR()I

    move-result v1

    .line 210
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameLineColorG()I

    move-result v2

    .line 211
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameLineColorB()I

    move-result v3

    .line 208
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static unitFrameLineColorB()I
    .locals 1

    const/16 v0, 0xcb

    return v0
.end method

.method public static unitFrameLineColorG()I
    .locals 1

    const/16 v0, 0xb2

    return v0
.end method

.method public static unitFrameLineColorR()I
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method
