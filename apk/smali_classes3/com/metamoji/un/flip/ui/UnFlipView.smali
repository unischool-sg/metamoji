.class public Lcom/metamoji/un/flip/ui/UnFlipView;
.super Landroid/view/View;
.source "UnFlipView.java"


# instance fields
.field public FlipColor:I

.field public KnobRect:Landroid/graphics/RectF;

.field animationDelegate_:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/un/flip/ui/IUnFlipViewAnimationDelegate;",
            ">;"
        }
    .end annotation
.end field

.field public flippable:Z


# direct methods
.method static bridge synthetic -$$Nest$manimationCompleted(Lcom/metamoji/un/flip/ui/UnFlipView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/flip/ui/UnFlipView;->animationCompleted()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->animationDelegate_:Ljava/lang/ref/WeakReference;

    const/high16 p1, -0x1000000

    .line 23
    iput p1, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->FlipColor:I

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->KnobRect:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->flippable:Z

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/metamoji/un/flip/ui/UnFlipView;->setWillNotDraw(Z)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/metamoji/un/flip/ui/UnFlipView;->setBackgroundColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->animationDelegate_:Ljava/lang/ref/WeakReference;

    const/high16 p1, -0x1000000

    .line 23
    iput p1, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->FlipColor:I

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->KnobRect:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->flippable:Z

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/metamoji/un/flip/ui/UnFlipView;->setWillNotDraw(Z)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/metamoji/un/flip/ui/UnFlipView;->setBackgroundColor(I)V

    return-void
.end method

.method private animationCompleted()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->animationDelegate_:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/flip/ui/IUnFlipViewAnimationDelegate;

    invoke-interface {v0, p0}, Lcom/metamoji/un/flip/ui/IUnFlipViewAnimationDelegate;->animationDidStop(Lcom/metamoji/un/flip/ui/UnFlipView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 50
    iget v2, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->FlipColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 54
    iget-object v3, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->KnobRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 55
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 57
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->KnobRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 59
    iget-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->KnobRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 60
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 61
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 63
    iget-boolean v0, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->flippable:Z

    if-eqz v0, :cond_1

    .line 64
    iget v0, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->FlipColor:I

    invoke-static {v0}, Lcom/metamoji/un/flip/UnFlipUnitUtil;->stringFromColor(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "ff000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    iget v1, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->FlipColor:I

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/metamoji/un/flip/UnFlipUnitUtil;->lighterColorForColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/metamoji/un/flip/UnFlipUnitUtil;->darkerColorForColor(I)I

    move-result v0

    .line 67
    :goto_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 68
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 72
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 73
    iget-object v2, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->KnobRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 74
    iget-object v2, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->KnobRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 75
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public flipBack()V
    .locals 3

    const/4 v0, 0x2

    .line 104
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    new-instance v1, Lcom/metamoji/un/flip/ui/UnFlipView$2;

    invoke-direct {v1, p0}, Lcom/metamoji/un/flip/ui/UnFlipView$2;-><init>(Lcom/metamoji/un/flip/ui/UnFlipView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public flipOver()V
    .locals 3

    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 93
    new-instance v1, Lcom/metamoji/un/flip/ui/UnFlipView$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/flip/ui/UnFlipView$1;-><init>(Lcom/metamoji/un/flip/ui/UnFlipView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setAnimationDelegate(Lcom/metamoji/un/flip/ui/IUnFlipViewAnimationDelegate;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->animationDelegate_:Ljava/lang/ref/WeakReference;

    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/un/flip/ui/UnFlipView;->animationDelegate_:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public updateFrame(Landroid/graphics/RectF;)V
    .locals 2

    .line 82
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v0}, Lcom/metamoji/un/flip/ui/UnFlipView;->setTranslationX(F)V

    .line 83
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0}, Lcom/metamoji/un/flip/ui/UnFlipView;->setTranslationY(F)V

    .line 84
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 86
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    invoke-virtual {p0, v0}, Lcom/metamoji/un/flip/ui/UnFlipView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
