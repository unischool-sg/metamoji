.class public Lcom/metamoji/ui/DetailFrame;
.super Landroid/widget/FrameLayout;
.source "DetailFrame.java"


# static fields
.field private static final CALC_HEIGHT_FROM_WIDTH:I = 0x8

.field private static final FIX_HEIGHT:I = 0x1

.field private static final FIX_WIDTH:I = 0x0

.field private static final KEY_HEIGHT:Ljava/lang/String; = "Height"

.field private static final KEY_LEFT:Ljava/lang/String; = "Left"

.field private static final KEY_RATIO:Ljava/lang/String; = "Ratio"

.field private static final KEY_TOP:Ljava/lang/String; = "Top"

.field private static final NEED_MOVE:I = 0x1

.field private static final NEED_NOTIFY:I = 0x4

.field private static final NEED_RESIZE:I = 0x2


# instance fields
.field private _baseX:F

.field private _baseY:F

.field private _border:Landroid/view/View;

.field private _downX:F

.field private _downY:F

.field private _dwindow:Lcom/metamoji/ui/DetailWindow;

.field private _maxWidth:F

.field private _minWidth:F

.field private _ratio:F

.field private _rect:Landroid/graphics/RectF;

.field private _rect0:Landroid/graphics/RectF;

.field private _updateFlags:I

.field private _viewport:Lcom/metamoji/df/sprite/Viewport;


# direct methods
.method static bridge synthetic -$$Nest$monResize(Lcom/metamoji/ui/DetailFrame;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/DetailFrame;->onResize(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monTouch(Lcom/metamoji/ui/DetailFrame;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailFrame;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Landroid/graphics/RectF;

    const/high16 v0, 0x42480000    # 50.0f

    const/4 v1, 0x0

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-direct {p1, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    const p1, 0x3e99999a    # 0.3f

    .line 22
    iput p1, p0, Lcom/metamoji/ui/DetailFrame;->_ratio:F

    .line 23
    iput v1, p0, Lcom/metamoji/ui/DetailFrame;->_baseX:F

    .line 24
    iput v1, p0, Lcom/metamoji/ui/DetailFrame;->_baseY:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    iput p1, p0, Lcom/metamoji/ui/DetailFrame;->_minWidth:F

    .line 26
    iput v3, p0, Lcom/metamoji/ui/DetailFrame;->_maxWidth:F

    const/4 p1, 0x0

    .line 132
    iput p1, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    .line 200
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/DetailFrame;->_rect0:Landroid/graphics/RectF;

    return-void
.end method

.method private applyRatio(I)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 126
    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/metamoji/ui/DetailFrame;->_ratio:F

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    return-void

    .line 128
    :cond_0
    iget p1, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/metamoji/ui/DetailFrame;->_ratio:F

    mul-float/2addr v1, v2

    add-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private notifyPosition()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_dwindow:Lcom/metamoji/ui/DetailWindow;

    iget-object v1, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/DetailWindow;->onFramePositionChanged(Landroid/graphics/RectF;)V

    return-void
.end method

.method private onResize(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 237
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    return v2

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/DetailFrame;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Viewport;->getZoomScale()F

    move-result p1

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget v0, p0, Lcom/metamoji/ui/DetailFrame;->_downX:F

    sub-float/2addr p2, v0

    div-float/2addr p2, p1

    .line 247
    iget-object p1, p0, Lcom/metamoji/ui/DetailFrame;->_rect0:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    add-float/2addr p1, p2

    .line 248
    iget p2, p0, Lcom/metamoji/ui/DetailFrame;->_minWidth:F

    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    move p1, p2

    .line 251
    :cond_1
    iget p2, p0, Lcom/metamoji/ui/DetailFrame;->_maxWidth:F

    cmpl-float v0, p1, p2

    if-lez v0, :cond_2

    move p1, p2

    .line 254
    :cond_2
    iget-object p2, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 255
    invoke-direct {p0, v2}, Lcom/metamoji/ui/DetailFrame;->applyRatio(I)V

    .line 256
    iget p1, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    or-int/lit8 p1, p1, 0x6

    iput p1, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    .line 257
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailFrame;->updatePosition()Z

    return v1

    .line 261
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 262
    iget-object p1, p0, Lcom/metamoji/ui/DetailFrame;->_dwindow:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailWindow;->requestAdjustPosition()V

    .line 263
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailFrame;->updatePosition()Z

    return v1

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 240
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/DetailFrame;->_downX:F

    .line 241
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    return v1
.end method

.method private onTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getZoomScale()F

    move-result v0

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/metamoji/ui/DetailFrame;->_downX:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v3, p0, Lcom/metamoji/ui/DetailFrame;->_downY:F

    sub-float/2addr p1, v3

    div-float/2addr p1, v0

    .line 217
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/metamoji/ui/DetailFrame;->_rect0:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 218
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 219
    iget p1, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    or-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    .line 220
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailFrame;->updatePosition()Z

    return v1

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/DetailFrame;->_dwindow:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailWindow;->requestAdjustPosition()V

    .line 225
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailFrame;->updatePosition()Z

    return v1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect0:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/DetailFrame;->_downX:F

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/DetailFrame;->_downY:F

    return v1
.end method


# virtual methods
.method public adjustPosition(Landroid/graphics/RectF;)V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 287
    :goto_0
    iget-object v3, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 288
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    move v0, v1

    .line 291
    :cond_1
    iget-object v3, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 292
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    move v0, v1

    .line 295
    :cond_2
    iget-object v3, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 296
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-nez v1, :cond_4

    goto :goto_2

    .line 303
    :cond_4
    iget v0, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    or-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    .line 306
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 307
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 308
    iget v1, p0, Lcom/metamoji/ui/DetailFrame;->_minWidth:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_5

    move v0, v1

    .line 311
    :cond_5
    iget-object v1, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 312
    iget-object v1, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/metamoji/ui/DetailFrame;->_ratio:F

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 313
    iget v0, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    .line 315
    :cond_6
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 316
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v0

    .line 317
    iget v0, p0, Lcom/metamoji/ui/DetailFrame;->_minWidth:F

    iget v1, p0, Lcom/metamoji/ui/DetailFrame;->_ratio:F

    mul-float v2, v0, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_7

    mul-float p1, v0, v1

    .line 320
    :cond_7
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 321
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/metamoji/ui/DetailFrame;->_ratio:F

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 322
    iget p1, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    :cond_8
    :goto_2
    return-void
.end method

.method public calcHeightFromWidth()V
    .locals 1

    .line 154
    iget v0, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    return-void
.end method

.method public getPosition()Landroid/graphics/RectF;
    .locals 2

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public init(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/df/sprite/Viewport;Landroid/os/Bundle;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/metamoji/ui/DetailFrame;->_dwindow:Lcom/metamoji/ui/DetailWindow;

    .line 48
    iput-object p2, p0, Lcom/metamoji/ui/DetailFrame;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    if-eqz p3, :cond_0

    .line 51
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/DetailFrame;->restoreState(Landroid/os/Bundle;)V

    .line 54
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DetailFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailFrame;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$layout;->dwindow_frame:I

    invoke-static {p1, p2, p0}, Lcom/metamoji/ui/DetailFrame;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    sget p1, Lcom/metamoji/noteanytime/R$id;->dwindow_frame_border:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DetailFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/DetailFrame;->_border:Landroid/view/View;

    .line 61
    new-instance p2, Lcom/metamoji/ui/DetailFrame$1;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/DetailFrame$1;-><init>(Lcom/metamoji/ui/DetailFrame;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    iget-object p1, p0, Lcom/metamoji/ui/DetailFrame;->_border:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float p2, p2

    iput p2, p0, Lcom/metamoji/ui/DetailFrame;->_baseX:F

    .line 70
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float p1, p1

    iput p1, p0, Lcom/metamoji/ui/DetailFrame;->_baseY:F

    .line 72
    sget p1, Lcom/metamoji/noteanytime/R$id;->dwindow_size_handle:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DetailFrame;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 73
    new-instance p2, Lcom/metamoji/ui/DetailFrame$2;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/DetailFrame$2;-><init>(Lcom/metamoji/ui/DetailFrame;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public notifyScroll()V
    .locals 1

    .line 142
    iget v0, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    return-void
.end method

.method public notifyZoomChanged()V
    .locals 1

    .line 146
    iget v0, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 3

    .line 89
    const-string v0, "Ratio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/DetailFrame;->_ratio:F

    .line 90
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    const-string v1, "Left"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 91
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    const-string v1, "Top"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 92
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    const-string v2, "Height"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 93
    iget-object p1, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/metamoji/ui/DetailFrame;->_ratio:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    const-string v0, "Ratio"

    iget v1, p0, Lcom/metamoji/ui/DetailFrame;->_ratio:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 83
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const-string v1, "Left"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 84
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const-string v1, "Top"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 85
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const-string v1, "Height"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setPosition(Landroid/graphics/RectF;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 102
    iget p1, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    or-int/lit8 p1, p1, 0x6

    iput p1, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    .line 103
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailFrame;->updatePosition()Z

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/metamoji/ui/DetailFrame;->_ratio:F

    .line 118
    iget p1, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    or-int/lit8 p1, p1, 0x6

    iput p1, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    return-void
.end method

.method public setWidthRange(FF)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/metamoji/ui/DetailFrame;->_minWidth:F

    .line 108
    iput p2, p0, Lcom/metamoji/ui/DetailFrame;->_maxWidth:F

    return-void
.end method

.method public updatePosition()Z
    .locals 6

    .line 162
    iget v0, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 170
    invoke-direct {p0, v1}, Lcom/metamoji/ui/DetailFrame;->applyRatio(I)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-direct {p0, v3}, Lcom/metamoji/ui/DetailFrame;->applyRatio(I)V

    .line 176
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/DetailFrame;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    .line 178
    iget-object v2, p0, Lcom/metamoji/ui/DetailFrame;->_rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Stage;->spriteToStage(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 179
    iget-object v2, p0, Lcom/metamoji/ui/DetailFrame;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Viewport;->stageToViewport(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 182
    iget v2, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 183
    iget-object v2, p0, Lcom/metamoji/ui/DetailFrame;->_border:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 184
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailFrame;->requestLayout()V

    goto :goto_1

    :cond_3
    move v3, v1

    .line 189
    :goto_1
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/metamoji/ui/DetailFrame;->_baseX:F

    sub-float/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/DetailFrame;->setTranslationX(F)V

    .line 190
    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/metamoji/ui/DetailFrame;->_baseY:F

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailFrame;->setTranslationY(F)V

    .line 192
    iget v0, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 193
    invoke-direct {p0}, Lcom/metamoji/ui/DetailFrame;->notifyPosition()V

    .line 196
    :cond_4
    iput v1, p0, Lcom/metamoji/ui/DetailFrame;->_updateFlags:I

    return v3
.end method
