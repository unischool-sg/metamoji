.class public Lcom/metamoji/ui/UiHoverButton;
.super Landroid/view/View;
.source "UiHoverButton.java"


# instance fields
.field _ispush:Z

.field _ispush_inside:Z

.field _layoutheight:F

.field _layoutwidth:F

.field private _paint:Landroid/graphics/Paint;

.field _realrect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/UiHoverButton;->_realrect:Landroid/graphics/Rect;

    const/high16 p1, 0x42200000    # 40.0f

    .line 11
    iput p1, p0, Lcom/metamoji/ui/UiHoverButton;->_layoutwidth:F

    .line 12
    iput p1, p0, Lcom/metamoji/ui/UiHoverButton;->_layoutheight:F

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/metamoji/ui/UiHoverButton;->_ispush:Z

    .line 14
    iput-boolean p1, p0, Lcom/metamoji/ui/UiHoverButton;->_ispush_inside:Z

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/UiHoverButton;->_paint:Landroid/graphics/Paint;

    .line 28
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    iget-object v0, p0, Lcom/metamoji/ui/UiHoverButton;->_paint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiHoverButton;->setClickable(Z)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiHoverButton;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public get_layoutheight()F
    .locals 1

    .line 18
    iget v0, p0, Lcom/metamoji/ui/UiHoverButton;->_layoutheight:F

    return v0
.end method

.method public get_layoutwidth()F
    .locals 1

    .line 17
    iget v0, p0, Lcom/metamoji/ui/UiHoverButton;->_layoutwidth:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 52
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    .line 53
    iget-object v0, p1, Lcom/metamoji/ui/UiHoverButton;->_realrect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 54
    iget-object v0, p1, Lcom/metamoji/ui/UiHoverButton;->_realrect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 55
    iget-object v0, p1, Lcom/metamoji/ui/UiHoverButton;->_realrect:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 56
    iget-object p2, p1, Lcom/metamoji/ui/UiHoverButton;->_realrect:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 47
    iget p1, p0, Lcom/metamoji/ui/UiHoverButton;->_layoutwidth:F

    float-to-int p1, p1

    iget p2, p0, Lcom/metamoji/ui/UiHoverButton;->_layoutheight:F

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiHoverButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    int-to-float p1, p1

    .line 35
    iput p1, p0, Lcom/metamoji/ui/UiHoverButton;->_layoutwidth:F

    int-to-float p1, p2

    .line 36
    iput p1, p0, Lcom/metamoji/ui/UiHoverButton;->_layoutheight:F

    return-void
.end method
