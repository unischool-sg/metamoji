.class public Lcom/metamoji/un/draw2/module/element/DrEditContext;
.super Ljava/lang/Object;
.source "DrEditContext.java"


# instance fields
.field private m_angleInDegrees:F

.field private m_angleInRadians:F

.field private m_contentScale:F

.field private m_editType:Lcom/metamoji/un/draw2/module/element/DrEditType;

.field private m_extraHandle:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

.field private final m_extraHandleCenterPoint:Landroid/graphics/PointF;

.field private final m_fixedPoint:Landroid/graphics/PointF;

.field private m_fixedPointX:F

.field private m_fixedPointY:F

.field private m_isResizingX:Z

.field private m_isResizingXY:Z

.field private m_isResizingY:Z

.field private final m_rect:Lcom/metamoji/cm/RectEx;

.field private m_rectAngleInDegrees:F

.field private m_rectAngleInRadians:F

.field private m_rectIsReversingX:Z

.field private m_rectIsReversingY:Z

.field private m_rectScaleHeight:F

.field private m_rectScaleWidth:F

.field private m_rectTranslateX:F

.field private m_rectTranslateY:F

.field private m_resizeX:F

.field private m_resizeY:F

.field private m_scale:F

.field private final m_transform:Landroid/graphics/Matrix;

.field private m_translateX:F

.field private m_translateY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPoint:Landroid/graphics/PointF;

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_transform:Landroid/graphics/Matrix;

    .line 39
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_extraHandleCenterPoint:Landroid/graphics/PointF;

    .line 40
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method private initEditExtraHandleContext(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V
    .locals 1

    .line 335
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrEditType;->EDIT_EXTRA_HANDLE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_editType:Lcom/metamoji/un/draw2/module/element/DrEditType;

    .line 336
    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_extraHandle:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 337
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_extraHandleCenterPoint:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method private initResizeContext(FFLandroid/graphics/PointF;)V
    .locals 4

    .line 261
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrEditType;->RESIZE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_editType:Lcom/metamoji/un/draw2/module/element/DrEditType;

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_5

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 267
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointX:F

    .line 268
    iget p3, p3, Landroid/graphics/PointF;->y:F

    iput p3, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointY:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_1

    cmpl-float v1, p2, v0

    if-nez v1, :cond_1

    .line 270
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_isResizingXY:Z

    return-void

    .line 273
    :cond_1
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeX:F

    .line 274
    iput p2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeY:F

    .line 275
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_transform:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointX:F

    invoke-virtual {v1, p1, p2, v3, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 276
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeX:F

    cmpl-float p2, p1, v0

    .line 284
    iget p3, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeY:F

    if-eqz p2, :cond_3

    cmpl-float p2, p3, v0

    if-eqz p2, :cond_2

    cmpl-float p1, p1, p3

    if-nez p1, :cond_4

    .line 279
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_isResizingXY:Z

    return-void

    .line 282
    :cond_2
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_isResizingX:Z

    return-void

    :cond_3
    cmpl-float p1, p3, v0

    if-eqz p1, :cond_4

    .line 285
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_isResizingY:Z

    :cond_4
    return-void

    :cond_5
    :goto_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 263
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method private initRotateContextWithAngleInDegrees(FLandroid/graphics/PointF;)V
    .locals 2

    .line 307
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrEditType;->ROTATE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_editType:Lcom/metamoji/un/draw2/module/element/DrEditType;

    .line 308
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 309
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointX:F

    .line 310
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointY:F

    .line 311
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_angleInDegrees:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->radianFromDegree(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_angleInRadians:F

    .line 317
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_transform:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_angleInDegrees:F

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointX:F

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointY:F

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    return-void
.end method

.method private initRotateContextWithAngleInRadians(FLandroid/graphics/PointF;)V
    .locals 2

    .line 321
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrEditType;->ROTATE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_editType:Lcom/metamoji/un/draw2/module/element/DrEditType;

    .line 322
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 323
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointX:F

    .line 324
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointY:F

    .line 325
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_angleInDegrees:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->radianFromDegree(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_angleInRadians:F

    .line 331
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_transform:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_angleInDegrees:F

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointX:F

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointY:F

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    return-void
.end method

.method private initScaleContext(FLandroid/graphics/PointF;)V
    .locals 2

    .line 290
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrEditType;->SCALE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_editType:Lcom/metamoji/un/draw2/module/element/DrEditType;

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 292
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 296
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointX:F

    .line 297
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointY:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_1

    return-void

    .line 301
    :cond_1
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_scale:F

    .line 302
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_contentScale:F

    .line 303
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_transform:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_scale:F

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointX:F

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointY:F

    invoke-virtual {p1, p2, p2, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-void
.end method

.method private initTranslateContext(FF)V
    .locals 2

    .line 252
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrEditType;->TRANSLATE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_editType:Lcom/metamoji/un/draw2/module/element/DrEditType;

    .line 253
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_translateX:F

    .line 254
    iput p2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_translateY:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 256
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method

.method private reset()V
    .locals 3

    .line 230
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrEditType;->NONE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_editType:Lcom/metamoji/un/draw2/module/element/DrEditType;

    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_translateX:F

    .line 232
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_translateY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 233
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeX:F

    .line 234
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeY:F

    .line 235
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_scale:F

    .line 236
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_angleInDegrees:F

    .line 237
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_angleInRadians:F

    .line 238
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPoint:Landroid/graphics/PointF;

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 239
    iput v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointX:F

    .line 240
    iput v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointY:F

    .line 241
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_contentScale:F

    .line 242
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_isResizingX:Z

    .line 244
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_isResizingY:Z

    .line 245
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_isResizingXY:Z

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_extraHandle:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 247
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_extraHandleCenterPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 248
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->clearVariation()V

    return-void
.end method

.method private updateVariationByResize()V
    .locals 10

    .line 346
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 352
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 353
    iget v3, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointX:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeX:F

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    .line 354
    iget v4, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointY:F

    sub-float v4, v2, v4

    iget v5, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeY:F

    sub-float/2addr v5, v1

    mul-float/2addr v4, v5

    .line 357
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 358
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 359
    iget v5, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectAngleInDegrees:F

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkAxisSwitchingZoneForAngleInDegrees(F)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    .line 361
    iget v5, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeY:F

    iget v9, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeX:F

    invoke-virtual {v1, v5, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 362
    iget v5, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeY:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectIsReversingX:Z

    .line 363
    iget v5, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeX:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectIsReversingY:Z

    goto :goto_4

    .line 366
    :cond_3
    iget v5, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeX:F

    iget v9, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeY:F

    invoke-virtual {v1, v5, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 367
    iget v5, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeX:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    move v5, v7

    :goto_2
    iput-boolean v5, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectIsReversingX:Z

    .line 368
    iget v5, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeY:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_5

    goto :goto_3

    :cond_5
    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectIsReversingY:Z

    :goto_4
    neg-float v0, v0

    neg-float v2, v2

    .line 371
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 374
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectApplyAffineTransform(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 377
    invoke-virtual {v0, v3, v4}, Lcom/metamoji/cm/RectEx;->offset(FF)V

    .line 380
    iget v1, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectTranslateX:F

    .line 381
    iget v1, v0, Lcom/metamoji/cm/RectEx;->y:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectTranslateY:F

    .line 382
    iget v1, v0, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectScaleWidth:F

    .line 383
    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectScaleHeight:F

    return-void
.end method

.method private updateVariationByRotate()V
    .locals 4

    .line 419
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_angleInDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    .line 430
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectTranslateX:F

    .line 431
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectTranslateY:F

    return-void
.end method

.method private updateVariationByScale()V
    .locals 6

    .line 387
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 393
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 394
    iget v3, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointX:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_scale:F

    sub-float v5, v4, v1

    mul-float/2addr v3, v5

    .line 395
    iget v5, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointY:F

    sub-float v5, v2, v5

    sub-float/2addr v4, v1

    mul-float/2addr v5, v4

    .line 398
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 399
    iget v4, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_scale:F

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 402
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectApplyAffineTransform(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 405
    invoke-virtual {v0, v3, v5}, Lcom/metamoji/cm/RectEx;->offset(FF)V

    .line 408
    iget v1, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectTranslateX:F

    .line 409
    iget v1, v0, Lcom/metamoji/cm/RectEx;->y:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectTranslateY:F

    .line 410
    iget v1, v0, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectScaleWidth:F

    .line 411
    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectScaleHeight:F

    .line 414
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_scale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectIsReversingX:Z

    .line 415
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectIsReversingY:Z

    return-void
.end method

.method private updateVariationByTranslate()V
    .locals 1

    .line 341
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_translateX:F

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectTranslateX:F

    .line 342
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_translateY:F

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectTranslateY:F

    return-void
.end method


# virtual methods
.method public angleInDegrees()F
    .locals 1

    .line 116
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_angleInDegrees:F

    return v0
.end method

.method public angleInRadians()F
    .locals 1

    .line 117
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_angleInRadians:F

    return v0
.end method

.method public clearVariation()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectTranslateX:F

    .line 197
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectTranslateY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 198
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectScaleWidth:F

    .line 199
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectScaleHeight:F

    .line 200
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectAngleInDegrees:F

    .line 201
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectAngleInRadians:F

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectIsReversingX:Z

    .line 203
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectIsReversingY:Z

    return-void
.end method

.method public contentScale()F
    .locals 1

    .line 121
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_contentScale:F

    return v0
.end method

.method public editType()Lcom/metamoji/un/draw2/module/element/DrEditType;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_editType:Lcom/metamoji/un/draw2/module/element/DrEditType;

    return-object v0
.end method

.method public extraHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_extraHandle:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    return-object v0
.end method

.method public extraHandleCenterPoint()Landroid/graphics/PointF;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_extraHandleCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public fixedPoint()Landroid/graphics/PointF;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public fixedPointX()F
    .locals 1

    .line 119
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointX:F

    return v0
.end method

.method public fixedPointY()F
    .locals 1

    .line 120
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_fixedPointY:F

    return v0
.end method

.method public isResizingX()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_isResizingX:Z

    return v0
.end method

.method public isResizingXY()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_isResizingXY:Z

    return v0
.end method

.method public isResizingY()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_isResizingY:Z

    return v0
.end method

.method public isReverse()Z
    .locals 5

    .line 210
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrEditContext$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_editType:Lcom/metamoji/un/draw2/module/element/DrEditType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return v3

    .line 216
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_scale:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    return v2

    :cond_1
    return v3

    .line 214
    :cond_2
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeX:F

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeY:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_0
    return v2
.end method

.method public rect()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public rectIsReversingX()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectIsReversingX:Z

    return v0
.end method

.method public rectIsReversingY()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectIsReversingY:Z

    return v0
.end method

.method public rectScaleHeight()F
    .locals 1

    .line 145
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectScaleHeight:F

    return v0
.end method

.method public rectScaleWidth()F
    .locals 1

    .line 144
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectScaleWidth:F

    return v0
.end method

.method public rectTranslateX()F
    .locals 1

    .line 142
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectTranslateX:F

    return v0
.end method

.method public rectTranslateY()F
    .locals 1

    .line 143
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectTranslateY:F

    return v0
.end method

.method public resizeX()F
    .locals 1

    .line 113
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeX:F

    return v0
.end method

.method public resizeY()F
    .locals 1

    .line 114
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_resizeY:F

    return v0
.end method

.method public scale()F
    .locals 1

    .line 115
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_scale:F

    return v0
.end method

.method public setEditExtraHandleContext(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->reset()V

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->initEditExtraHandleContext(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V

    return-void
.end method

.method public setResizeContext(FFLandroid/graphics/PointF;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->reset()V

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->initResizeContext(FFLandroid/graphics/PointF;)V

    return-void
.end method

.method public setRotateContextWithAngleInDegrees(FLandroid/graphics/PointF;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->reset()V

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->initRotateContextWithAngleInDegrees(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public setRotateContextWithAngleInRadians(FLandroid/graphics/PointF;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->reset()V

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->initRotateContextWithAngleInRadians(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public setScaleContext(FLandroid/graphics/PointF;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->reset()V

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->initScaleContext(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public setTranslateContext(FF)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->reset()V

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->initTranslateContext(FF)V

    return-void
.end method

.method public transform()Landroid/graphics/Matrix;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_transform:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public translateX()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_translateX:F

    return v0
.end method

.method public translateY()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_translateY:F

    return v0
.end method

.method public updateVariationForRectInDegrees(Lcom/metamoji/cm/RectEx;F)V
    .locals 2

    .line 153
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 154
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    const/4 p1, 0x0

    .line 158
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectTranslateX:F

    .line 159
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectTranslateY:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 160
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectScaleWidth:F

    .line 161
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectScaleHeight:F

    .line 162
    iput p2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectAngleInDegrees:F

    .line 163
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->radianFromDegree(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectAngleInRadians:F

    .line 164
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectIsReversingX:Z

    .line 165
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_rectIsReversingY:Z

    .line 166
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_editType:Lcom/metamoji/un/draw2/module/element/DrEditType;

    sget-object p2, Lcom/metamoji/un/draw2/module/element/DrEditType;->EDIT_EXTRA_HANDLE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    sget-object p1, Lcom/metamoji/un/draw2/module/element/DrEditContext$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/DrEditContext;->m_editType:Lcom/metamoji/un/draw2/module/element/DrEditType;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationByRotate()V

    return-void

    .line 177
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationByScale()V

    return-void

    .line 174
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationByResize()V

    return-void

    .line 171
    :cond_5
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationByTranslate()V

    :cond_6
    :goto_0
    return-void
.end method

.method public updateVariationForRectInRadians(Lcom/metamoji/cm/RectEx;F)V
    .locals 0

    .line 188
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationForRectInDegrees(Lcom/metamoji/cm/RectEx;F)V

    return-void
.end method
