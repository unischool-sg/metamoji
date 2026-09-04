.class Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;
.super Landroid/view/View;
.source "DrOvEffectLayer.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$EffectAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAnimationView"
.end annotation


# instance fields
.field private m_animator:Landroid/animation/AnimatorSet;

.field private m_fillColor:Ljava/lang/Integer;

.field private final m_paint:Landroid/graphics/Paint;

.field private m_path:Landroid/graphics/Path;

.field private m_strokeColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 149
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_paint:Landroid/graphics/Paint;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 151
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->setScaleX(F)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->setScaleY(F)V

    return-void
.end method

.method private applyStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 5

    .line 204
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->-$$Nest$smtoCap(Lcom/metamoji/df/sprite/LineCap;)Landroid/graphics/Paint$Cap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 207
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->-$$Nest$smtoJoin(Lcom/metamoji/df/sprite/LineJoin;)Landroid/graphics/Paint$Join;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 209
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineDashAsArray()[F

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    array-length v3, v0

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_paint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/DashPathEffect;

    invoke-direct {v4, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 216
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->getLineColorARGB()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_strokeColor:Ljava/lang/Integer;

    goto :goto_1

    .line 218
    :cond_1
    iput-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_strokeColor:Ljava/lang/Integer;

    .line 221
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 222
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->getFillColorARGB()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_fillColor:Ljava/lang/Integer;

    return-void

    .line 224
    :cond_2
    iput-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_fillColor:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_fillColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_fillColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_strokeColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 198
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_strokeColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setup(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Landroid/animation/AnimatorSet;)V
    .locals 1

    .line 162
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_path:Landroid/graphics/Path;

    .line 164
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->applyStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 167
    iput-object p3, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_animator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public start(Landroid/view/ViewGroup;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_animator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$AnimationSupporter;

    invoke-direct {v1, p1, p0}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$AnimationSupporter;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer$PathAnimationView;->m_animator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
