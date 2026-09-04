.class public Lcom/metamoji/ui/flexible/FxButton;
.super Landroid/view/View;
.source "FxButton.java"


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

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/flexible/FxButton;->_realrect:Landroid/graphics/Rect;

    const/high16 p1, 0x42200000    # 40.0f

    .line 24
    iput p1, p0, Lcom/metamoji/ui/flexible/FxButton;->_layoutwidth:F

    .line 25
    iput p1, p0, Lcom/metamoji/ui/flexible/FxButton;->_layoutheight:F

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/metamoji/ui/flexible/FxButton;->_ispush:Z

    .line 27
    iput-boolean p1, p0, Lcom/metamoji/ui/flexible/FxButton;->_ispush_inside:Z

    .line 41
    iput-object p2, p0, Lcom/metamoji/ui/flexible/FxButton;->_fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 43
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/metamoji/ui/flexible/FxButton;->_paint:Landroid/graphics/Paint;

    .line 44
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object p2, p0, Lcom/metamoji/ui/flexible/FxButton;->_paint:Landroid/graphics/Paint;

    const v0, -0xffff01

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x1

    .line 46
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/flexible/FxButton;->setClickable(Z)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/flexible/FxButton;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public get_fxid()Lcom/metamoji/ui/flexible/FxManagerDef$FxId;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxButton;->_fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object v0
.end method

.method public get_layoutheight()F
    .locals 1

    .line 32
    iget v0, p0, Lcom/metamoji/ui/flexible/FxButton;->_layoutheight:F

    return v0
.end method

.method public get_layoutwidth()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/metamoji/ui/flexible/FxButton;->_layoutwidth:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 62
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    .line 63
    iget-object v0, p1, Lcom/metamoji/ui/flexible/FxButton;->_realrect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 64
    iget-object v0, p1, Lcom/metamoji/ui/flexible/FxButton;->_realrect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 65
    iget-object v0, p1, Lcom/metamoji/ui/flexible/FxButton;->_realrect:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 66
    iget-object p2, p1, Lcom/metamoji/ui/flexible/FxButton;->_realrect:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 57
    iget p1, p0, Lcom/metamoji/ui/flexible/FxButton;->_layoutwidth:F

    float-to-int p1, p1

    iget p2, p0, Lcom/metamoji/ui/flexible/FxButton;->_layoutheight:F

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/flexible/FxButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public setButtonImage(IIIZ)V
    .locals 5

    if-eqz p4, :cond_0

    const/16 v0, 0xff

    const/16 v1, 0xf0

    .line 81
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/ui/HoverCm;->makeMaskImage(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 85
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 87
    invoke-static {p2, p3, p1, p4}, Lcom/metamoji/ui/HoverCm;->selectImage(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 88
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 89
    invoke-static {p4}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 90
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p4, v3, p2, p3}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v4, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 91
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->makeDisableImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 93
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const p3, 0x101009e

    const p4, 0x10100a1

    const v0, -0x10100a7

    .line 94
    filled-new-array {p3, p4, v0}, [I

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v3, 0x10100a7

    .line 95
    filled-new-array {p3, p4, v3}, [I

    move-result-object p4

    invoke-virtual {p1, p4, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p4, -0x10100a1

    .line 96
    filled-new-array {p3, p4, v0}, [I

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 97
    filled-new-array {p3, p4, v3}, [I

    move-result-object p3

    invoke-virtual {p1, p3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p3, -0x101009e

    .line 98
    filled-new-array {p3, p4, v0}, [I

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/flexible/FxButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    int-to-float p1, p1

    .line 51
    iput p1, p0, Lcom/metamoji/ui/flexible/FxButton;->_layoutwidth:F

    int-to-float p1, p2

    .line 52
    iput p1, p0, Lcom/metamoji/ui/flexible/FxButton;->_layoutheight:F

    return-void
.end method
