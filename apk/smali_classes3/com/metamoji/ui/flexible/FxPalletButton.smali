.class public Lcom/metamoji/ui/flexible/FxPalletButton;
.super Landroid/view/View;
.source "FxPalletButton.java"


# instance fields
.field _fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field _ispush:Z

.field _ispush_inside:Z

.field _layoutheight:F

.field _layoutwidth:F

.field private _paint:Landroid/graphics/Paint;

.field _realrect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_realrect:Landroid/graphics/Rect;

    const/high16 p1, 0x42200000    # 40.0f

    .line 15
    iput p1, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_layoutwidth:F

    .line 16
    iput p1, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_layoutheight:F

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_ispush:Z

    .line 18
    iput-boolean p1, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_ispush_inside:Z

    .line 32
    iput-object p2, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 34
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_paint:Landroid/graphics/Paint;

    .line 35
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object p2, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_paint:Landroid/graphics/Paint;

    const v0, -0xffff01

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x1

    .line 37
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/flexible/FxPalletButton;->setClickable(Z)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/flexible/FxPalletButton;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public get_fxid()Lcom/metamoji/ui/flexible/FxManagerDef$FxId;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object v0
.end method

.method public get_layoutheight()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_layoutheight:F

    return v0
.end method

.method public get_layoutwidth()F
    .locals 1

    .line 22
    iget v0, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_layoutwidth:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 59
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    .line 60
    iget-object v0, p1, Lcom/metamoji/ui/flexible/FxPalletButton;->_realrect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 61
    iget-object v0, p1, Lcom/metamoji/ui/flexible/FxPalletButton;->_realrect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 62
    iget-object v0, p1, Lcom/metamoji/ui/flexible/FxPalletButton;->_realrect:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 63
    iget-object p2, p1, Lcom/metamoji/ui/flexible/FxPalletButton;->_realrect:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 54
    iget p1, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_layoutwidth:F

    float-to-int p1, p1

    iget p2, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_layoutheight:F

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/flexible/FxPalletButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    int-to-float p1, p1

    .line 42
    iput p1, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_layoutwidth:F

    int-to-float p1, p2

    .line 43
    iput p1, p0, Lcom/metamoji/ui/flexible/FxPalletButton;->_layoutheight:F

    return-void
.end method
