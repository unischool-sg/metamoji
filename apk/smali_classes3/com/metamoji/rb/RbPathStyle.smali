.class public Lcom/metamoji/rb/RbPathStyle;
.super Ljava/lang/Object;
.source "RbPathStyle.java"


# instance fields
.field private _fillAlpha:F

.field private _fillColor:Ljava/lang/Integer;

.field private _lineAlpha:F

.field private _lineCap:Lcom/metamoji/df/sprite/LineCap;

.field private _lineColor:I

.field private _lineDash:[F

.field private _lineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x40892492

    .line 46
    iput v0, p0, Lcom/metamoji/rb/RbPathStyle;->_lineWidth:F

    .line 47
    sget-object v0, Lcom/metamoji/df/sprite/LineCap;->BUTT:Lcom/metamoji/df/sprite/LineCap;

    iput-object v0, p0, Lcom/metamoji/rb/RbPathStyle;->_lineCap:Lcom/metamoji/df/sprite/LineCap;

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/metamoji/rb/RbPathStyle;->_lineDash:[F

    .line 49
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->rubberBandFrameLineColor()I

    move-result v0

    iput v0, p0, Lcom/metamoji/rb/RbPathStyle;->_lineColor:I

    .line 50
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/rb/RbPathStyle;->_lineAlpha:F

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/metamoji/rb/RbPathStyle;->_fillColor:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/metamoji/rb/RbPathStyle;->_fillAlpha:F

    return-void

    nop

    :array_0
    .array-data 4
        0x41092492
        0x40b6db6e
    .end array-data
.end method


# virtual methods
.method public applyToGraphics(Lcom/metamoji/df/sprite/Graphics;F)V
    .locals 4

    .line 61
    iget v0, p0, Lcom/metamoji/rb/RbPathStyle;->_lineWidth:F

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 62
    iget-object v0, p0, Lcom/metamoji/rb/RbPathStyle;->_lineCap:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    .line 66
    iget-object v1, p0, Lcom/metamoji/rb/RbPathStyle;->_lineDash:[F

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineDash([F)V

    goto :goto_1

    .line 66
    :cond_0
    array-length v0, v1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/metamoji/rb/RbPathStyle;->_lineDash:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 68
    aget v2, v2, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setLineDash([F)V

    .line 72
    :goto_1
    new-instance p2, Lcom/metamoji/df/sprite/PaintSolid;

    iget v0, p0, Lcom/metamoji/rb/RbPathStyle;->_lineColor:I

    invoke-direct {p2, v0}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 73
    iget p2, p0, Lcom/metamoji/rb/RbPathStyle;->_lineAlpha:F

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Graphics;->setLineAlpha(F)V

    .line 74
    iget-object p2, p0, Lcom/metamoji/rb/RbPathStyle;->_fillColor:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    .line 75
    new-instance p2, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v0, p0, Lcom/metamoji/rb/RbPathStyle;->_fillColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 76
    iget p2, p0, Lcom/metamoji/rb/RbPathStyle;->_fillAlpha:F

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    :cond_2
    return-void
.end method

.method public fillAlpha()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/metamoji/rb/RbPathStyle;->_fillAlpha:F

    return v0
.end method

.method public fillColor()Ljava/lang/Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/rb/RbPathStyle;->_fillColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public lineAlpha()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/metamoji/rb/RbPathStyle;->_lineAlpha:F

    return v0
.end method

.method public lineCap()Lcom/metamoji/df/sprite/LineCap;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/rb/RbPathStyle;->_lineCap:Lcom/metamoji/df/sprite/LineCap;

    return-object v0
.end method

.method public lineColor()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/metamoji/rb/RbPathStyle;->_lineColor:I

    return v0
.end method

.method public lineDash()[F
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/rb/RbPathStyle;->_lineDash:[F

    return-object v0
.end method

.method public lineWidth()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/metamoji/rb/RbPathStyle;->_lineWidth:F

    return v0
.end method

.method public setFillAlpha(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/metamoji/rb/RbPathStyle;->_fillAlpha:F

    return-void
.end method

.method public setFillColor(Ljava/lang/Integer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/metamoji/rb/RbPathStyle;->_fillColor:Ljava/lang/Integer;

    return-void
.end method

.method public setLineAlpha(F)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/metamoji/rb/RbPathStyle;->_lineAlpha:F

    return-void
.end method

.method public setLineCap(Lcom/metamoji/df/sprite/LineCap;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/metamoji/rb/RbPathStyle;->_lineCap:Lcom/metamoji/df/sprite/LineCap;

    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/metamoji/rb/RbPathStyle;->_lineColor:I

    return-void
.end method

.method public setLineDash([F)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/rb/RbPathStyle;->_lineDash:[F

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/metamoji/rb/RbPathStyle;->_lineWidth:F

    return-void
.end method
