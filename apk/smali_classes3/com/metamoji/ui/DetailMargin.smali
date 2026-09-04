.class public Lcom/metamoji/ui/DetailMargin;
.super Landroid/widget/FrameLayout;
.source "DetailMargin.java"


# instance fields
.field private _downX:F

.field private _dwindow:Lcom/metamoji/ui/DetailWindow;

.field private _handle:Landroid/view/View;

.field private _maxX:F

.field private _minX:F

.field private _ptWork:Landroid/graphics/PointF;

.field private _viewport:Lcom/metamoji/df/sprite/Viewport;

.field private _x:F

.field private _x0:F

.field private _y:F


# direct methods
.method static bridge synthetic -$$Nest$monMove(Lcom/metamoji/ui/DetailMargin;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailMargin;->onMove(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateHandlePosition(Lcom/metamoji/ui/DetailMargin;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/DetailMargin;->updateHandlePosition()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/metamoji/ui/DetailMargin;->_x:F

    .line 22
    iput p1, p0, Lcom/metamoji/ui/DetailMargin;->_y:F

    .line 24
    iput p1, p0, Lcom/metamoji/ui/DetailMargin;->_minX:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 25
    iput p1, p0, Lcom/metamoji/ui/DetailMargin;->_maxX:F

    .line 91
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/DetailMargin;->_ptWork:Landroid/graphics/PointF;

    return-void
.end method

.method private applyRange(F)F
    .locals 2

    .line 82
    iget v0, p0, Lcom/metamoji/ui/DetailMargin;->_minX:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 85
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/DetailMargin;->_maxX:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method private onMove(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v2

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/DetailMargin;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getZoomScale()F

    move-result v0

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v2, p0, Lcom/metamoji/ui/DetailMargin;->_downX:F

    sub-float/2addr p1, v2

    div-float/2addr p1, v0

    .line 158
    iget v0, p0, Lcom/metamoji/ui/DetailMargin;->_x0:F

    add-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/metamoji/ui/DetailMargin;->applyRange(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/DetailMargin;->_x:F

    .line 159
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailMargin;->updatePosition()V

    .line 160
    iget-object p1, p0, Lcom/metamoji/ui/DetailMargin;->_dwindow:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailWindow;->onMarginPositionChanged()V

    return v1

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/DetailMargin;->_handle:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    return v1

    .line 150
    :cond_2
    iget v0, p0, Lcom/metamoji/ui/DetailMargin;->_x:F

    iput v0, p0, Lcom/metamoji/ui/DetailMargin;->_x0:F

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/DetailMargin;->_downX:F

    .line 152
    iget-object p1, p0, Lcom/metamoji/ui/DetailMargin;->_handle:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    return v1
.end method

.method private updateHandlePosition()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/metamoji/ui/DetailMargin;->_handle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/DetailMargin;->_handle:Landroid/view/View;

    iget v2, p0, Lcom/metamoji/ui/DetailMargin;->_y:F

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public getPosition()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/metamoji/ui/DetailMargin;->_x:F

    return v0
.end method

.method public init(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/df/sprite/Viewport;Z)V
    .locals 1

    .line 36
    iput-object p1, p0, Lcom/metamoji/ui/DetailMargin;->_dwindow:Lcom/metamoji/ui/DetailWindow;

    .line 37
    iput-object p2, p0, Lcom/metamoji/ui/DetailMargin;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DetailMargin;->setAlpha(F)V

    .line 40
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DetailMargin;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailMargin;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$layout;->dwindow_margin:I

    invoke-static {p1, p2, p0}, Lcom/metamoji/ui/DetailMargin;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget p1, Lcom/metamoji/noteanytime/R$id;->dwindow_margin:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DetailMargin;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/DetailMargin;->_handle:Landroid/view/View;

    if-eqz p3, :cond_0

    .line 48
    new-instance p2, Lcom/metamoji/ui/DetailMargin$1;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/DetailMargin$1;-><init>(Lcom/metamoji/ui/DetailMargin;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->dwindow_margin_line:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DetailMargin;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ClipDrawable;

    const/16 p2, 0x1388

    .line 61
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 132
    :cond_0
    new-instance v0, Lcom/metamoji/ui/DetailMargin$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/DetailMargin$2;-><init>(Lcom/metamoji/ui/DetailMargin;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DetailMargin;->post(Ljava/lang/Runnable;)Z

    .line 141
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public setHandlePosition(F)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/metamoji/ui/DetailMargin;->_y:F

    .line 116
    invoke-direct {p0}, Lcom/metamoji/ui/DetailMargin;->updateHandlePosition()V

    return-void
.end method

.method public setPosition(F)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/metamoji/ui/DetailMargin;->applyRange(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/DetailMargin;->_x:F

    .line 70
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailMargin;->updatePosition()V

    return-void
.end method

.method public setRange(FF)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/metamoji/ui/DetailMargin;->_minX:F

    .line 75
    iput p2, p0, Lcom/metamoji/ui/DetailMargin;->_maxX:F

    return-void
.end method

.method public updatePosition()V
    .locals 3

    .line 94
    invoke-virtual {p0}, Lcom/metamoji/ui/DetailMargin;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/DetailMargin;->_ptWork:Landroid/graphics/PointF;

    iget v2, p0, Lcom/metamoji/ui/DetailMargin;->_x:F

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 101
    iget-object v1, p0, Lcom/metamoji/ui/DetailMargin;->_ptWork:Landroid/graphics/PointF;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 103
    iget-object v1, p0, Lcom/metamoji/ui/DetailMargin;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v2, p0, Lcom/metamoji/ui/DetailMargin;->_ptWork:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Stage;->spriteToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/DetailMargin;->_ptWork:Landroid/graphics/PointF;

    .line 107
    iget-object v2, p0, Lcom/metamoji/ui/DetailMargin;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v2, v1}, Lcom/metamoji/df/sprite/Viewport;->stageToViewport(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/DetailMargin;->_ptWork:Landroid/graphics/PointF;

    .line 110
    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/DetailMargin;->setTranslationX(F)V

    :cond_1
    :goto_0
    return-void
.end method
