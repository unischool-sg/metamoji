.class public Lcom/metamoji/ui/menu/UiMenuVersionView;
.super Landroid/view/View;
.source "UiMenuVersionView.java"


# static fields
.field static M_L:I = 0xc

.field static M_R:I = 0xc

.field static S_M:I = 0x4


# instance fields
.field _context:Landroid/content/Context;

.field _label:Ljava/lang/String;

.field _labelH:F

.field private _layoutheight:I

.field private _layoutwidth:I

.field _offset:F

.field _paint:Landroid/graphics/Paint;

.field _paintForVersion:Landroid/graphics/Paint;

.field private _realrect:Landroid/graphics/Rect;

.field _version:Ljava/lang/String;

.field _versionH:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_realrect:Landroid/graphics/Rect;

    .line 21
    sget p1, Lcom/metamoji/noteanytime/R$string;->SystemOption_Version:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_label:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getProductVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_version:Ljava/lang/String;

    const/high16 p1, 0x41700000    # 15.0f

    .line 29
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_labelH:F

    const/high16 p1, 0x41400000    # 12.0f

    .line 30
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_versionH:F

    const/high16 p1, 0x41000000    # 8.0f

    .line 31
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_offset:F

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 34
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_paint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_labelH:F

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_paintForVersion:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_paintForVersion:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_paintForVersion:Landroid/graphics/Paint;

    iget v0, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_versionH:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 44
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_layoutheight:I

    .line 45
    sget p1, Lcom/metamoji/ui/menu/UiMenuVersionView;->M_L:I

    sget v0, Lcom/metamoji/ui/menu/UiMenuVersionView;->M_R:I

    add-int/2addr p1, v0

    sget v0, Lcom/metamoji/ui/menu/UiMenuVersionView;->S_M:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    iget-object v0, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_paintForVersion:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_layoutwidth:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 71
    sget v0, Lcom/metamoji/ui/menu/UiMenuVersionView;->M_L:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_realrect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_labelH:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 73
    iget-object v3, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_label:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 76
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_realrect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_versionH:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 77
    iget-object v1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_realrect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_paintForVersion:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    sget v2, Lcom/metamoji/ui/menu/UiMenuVersionView;->M_R:I

    int-to-float v2, v2

    .line 78
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    sub-float/2addr v1, v2

    .line 79
    iget-object v2, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_version:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_paintForVersion:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 91
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    .line 94
    iget-object v0, p1, Lcom/metamoji/ui/menu/UiMenuVersionView;->_realrect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 95
    iget-object v0, p1, Lcom/metamoji/ui/menu/UiMenuVersionView;->_realrect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 96
    iget-object v0, p1, Lcom/metamoji/ui/menu/UiMenuVersionView;->_realrect:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 97
    iget-object p2, p1, Lcom/metamoji/ui/menu/UiMenuVersionView;->_realrect:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 85
    iget p1, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_layoutwidth:I

    iget p2, p0, Lcom/metamoji/ui/menu/UiMenuVersionView;->_layoutheight:I

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/menu/UiMenuVersionView;->setMeasuredDimension(II)V

    return-void
.end method
