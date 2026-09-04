.class public Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;
.super Ljava/lang/Object;
.source "DrOvEffectLayer.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;,
        Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$AnimationSupporter;,
        Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$EffectAnimation;
    }
.end annotation


# instance fields
.field private m_ignoreCoordinates:Z

.field private m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

.field private m_uid:I


# direct methods
.method static bridge synthetic -$$Nest$smtoCap(Lcom/metamoji/df/sprite/LineCap;)Landroid/graphics/Paint$Cap;
    .locals 0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->toCap(Lcom/metamoji/df/sprite/LineCap;)Landroid/graphics/Paint$Cap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smtoJoin(Lcom/metamoji/df/sprite/LineJoin;)Landroid/graphics/Paint$Join;
    .locals 0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->toJoin(Lcom/metamoji/df/sprite/LineJoin;)Landroid/graphics/Paint$Join;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->m_ignoreCoordinates:Z

    return-void
.end method

.method private static toCap(Lcom/metamoji/df/sprite/LineCap;)Landroid/graphics/Paint$Cap;
    .locals 1

    .line 262
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$1;->$SwitchMap$com$metamoji$df$sprite$LineCap:[I

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/LineCap;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 265
    :cond_0
    sget-object p0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p0

    .line 264
    :cond_1
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p0

    .line 263
    :cond_2
    sget-object p0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p0
.end method

.method private static toJoin(Lcom/metamoji/df/sprite/LineJoin;)Landroid/graphics/Paint$Join;
    .locals 1

    .line 271
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$1;->$SwitchMap$com$metamoji$df$sprite$LineJoin:[I

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/LineJoin;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 274
    :cond_0
    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p0

    .line 273
    :cond_1
    sget-object p0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p0

    .line 272
    :cond_2
    sget-object p0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p0
.end method


# virtual methods
.method public autoVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->clear()V

    return-void
.end method

.method public ignoreCoordinates()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->m_ignoreCoordinates:Z

    return v0
.end method

.method public internalUpdate()V
    .locals 0

    return-void
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    return-object v0
.end method

.method public repaint()V
    .locals 0

    return-void
.end method

.method public repaintWithRect(Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public setAutoVisible(Z)V
    .locals 0

    return-void
.end method

.method public setIgnoreCoordinates(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->m_ignoreCoordinates:Z

    return-void
.end method

.method public setIsVisible(Z)V
    .locals 0

    return-void
.end method

.method public setOverlay(Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->m_uid:I

    return-void
.end method

.method public shrinkCircle(Landroid/graphics/PointF;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;D)V
    .locals 16

    move-object/from16 v0, p0

    .line 81
    iget-object v1, v0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    if-nez v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 89
    :cond_1
    iget-boolean v2, v0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->m_ignoreCoordinates:Z

    if-nez v2, :cond_2

    .line 91
    iget-object v2, v0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->overlayPointFromCanvasPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 92
    iget-object v3, v0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->zoom()F

    move-result v3

    iget-object v4, v0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->density()F

    move-result v4

    div-float/2addr v3, v4

    mul-float v4, p2, v3

    const/4 v5, 0x0

    move-object/from16 v6, p3

    .line 94
    invoke-virtual {v6, v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithScale(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    goto :goto_1

    :cond_2
    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v4, p2

    move-object v2, v3

    move-object v3, v6

    .line 97
    :goto_1
    new-instance v5, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;-><init>(Landroid/content/Context;)V

    .line 99
    iget v6, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->setPivotX(F)V

    .line 100
    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->setPivotY(F)V

    .line 103
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 104
    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v7, v2, v4, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 107
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->getScaleX()F

    move-result v2

    .line 108
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->getScaleY()F

    move-result v4

    .line 109
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x4

    .line 110
    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x2

    new-array v10, v9, [F

    fill-array-data v10, :array_0

    const-string v11, "alpha"

    invoke-static {v5, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v8, v12

    new-array v10, v9, [F

    fill-array-data v10, :array_1

    .line 111
    const-string/jumbo v13, "rotation"

    invoke-static {v5, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v8, v13

    const/high16 v10, 0x40a00000    # 5.0f

    mul-float v14, v2, v10

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v2, v15

    move/from16 p1, v10

    new-array v10, v9, [F

    aput v14, v10, v12

    aput v2, v10, v13

    .line 112
    const-string/jumbo v2, "scaleX"

    invoke-static {v5, v2, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v8, v9

    mul-float v10, v4, p1

    mul-float/2addr v4, v15

    new-array v2, v9, [F

    aput v10, v2, v12

    aput v4, v2, v13

    .line 113
    const-string/jumbo v4, "scaleY"

    invoke-static {v5, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v8, v4

    .line 110
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide v12, 0x407c200000000000L    # 450.0

    mul-double v12, v12, p4

    double-to-long v12, v12

    .line 114
    invoke-virtual {v7, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 115
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 117
    new-array v2, v9, [F

    fill-array-data v2, :array_2

    invoke-static {v5, v11, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide v8, 0x4081300000000000L    # 550.0

    mul-double v8, v8, p4

    double-to-long v8, v8

    .line 118
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 121
    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 124
    invoke-virtual {v5, v6, v3, v4}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->setup(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Landroid/animation/AnimatorSet;)V

    .line 128
    invoke-virtual {v5, v1}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->start(Landroid/view/ViewGroup;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x42340000    # 45.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public sprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public type()Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;
    .locals 1

    .line 35
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->EFFECT:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    return-object v0
.end method

.method public uid()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->m_uid:I

    return v0
.end method
