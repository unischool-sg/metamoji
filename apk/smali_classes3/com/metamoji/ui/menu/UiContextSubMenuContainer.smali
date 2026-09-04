.class public Lcom/metamoji/ui/menu/UiContextSubMenuContainer;
.super Landroid/view/ViewGroup;
.source "UiContextSubMenuContainer.java"


# instance fields
.field _blur:Landroid/graphics/BlurMaskFilter;

.field _isActionMenu:Z

.field _itemMargin:I

.field _maxWidth:I

.field _minWidth:I

.field _mutl:Lcom/metamoji/ui/menu/MenuUtils;

.field _zurashi:I

.field paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/ui/menu/MenuUtils;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->paint:Landroid/graphics/Paint;

    .line 29
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->path:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_itemMargin:I

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_isActionMenu:Z

    .line 33
    iput p1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_maxWidth:I

    .line 34
    iput p1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_minWidth:I

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->setWillNotDraw(Z)V

    .line 40
    iput-object p2, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    .line 42
    iget p1, p2, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SHADOW_OFFSET_Y:F

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_zurashi:I

    .line 43
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    iget-object p2, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget p2, p2, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SHADOW_RADIUS:F

    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p1, p2, v0}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object p1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_blur:Landroid/graphics/BlurMaskFilter;

    .line 44
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->paint:Landroid/graphics/Paint;

    sget p2, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SHADOW_COLOR:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->paint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_blur:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method


# virtual methods
.method public isMenuTypeAction()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_isActionMenu:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_isActionMenu:Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object v1, v1, Lcom/metamoji/ui/menu/MenuUtils;->_paintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 64
    :cond_0
    iget p2, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_itemMargin:I

    .line 66
    iget-boolean p3, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_isActionMenu:Z

    const/4 p4, 0x0

    if-nez p3, :cond_1

    .line 67
    iget-object p3, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object p5, Lcom/metamoji/ui/menu/MenuUtils$Def;->CTX_SUB_M_L:Lcom/metamoji/ui/menu/MenuUtils$Def;

    .line 68
    invoke-virtual {p3, p5}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result p3

    float-to-int p3, p3

    move p5, p3

    move p3, p4

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 71
    iget-object p5, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$Def;->ACT_FRAME_M:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {p5, v0}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result p5

    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v1, Lcom/metamoji/ui/menu/MenuUtils$Def;->ACT_SHADOW_M:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v0

    add-float/2addr p5, v0

    float-to-int p5, p5

    .line 72
    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 p5, p5, 0x2

    sub-int/2addr p3, p5

    move p5, p4

    :goto_0
    move v0, p5

    move v1, p4

    move v2, v1

    :goto_1
    if-ge v1, p1, :cond_3

    .line 79
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-le v3, v2, :cond_2

    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_3
    iget-boolean v1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_isActionMenu:Z

    if-eqz v1, :cond_4

    if-le v2, p3, :cond_4

    goto :goto_2

    :cond_4
    move p3, v2

    :goto_2
    move v1, p4

    :goto_3
    if-ge v1, p1, :cond_6

    .line 90
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    .line 92
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v4, p5, p3

    add-int v5, v0, v3

    .line 93
    invoke-virtual {v2, p5, v0, v4, v5}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v3, p2

    add-int/2addr v0, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 97
    :cond_6
    iget-boolean p2, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_isActionMenu:Z

    if-nez p2, :cond_8

    .line 98
    iget-object p2, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object p3, Lcom/metamoji/ui/menu/MenuUtils$Def;->CTX_SUB_M_L:Lcom/metamoji/ui/menu/MenuUtils$Def;

    .line 99
    invoke-virtual {p2, p3}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    .line 100
    iget-object p2, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->path:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    :goto_4
    if-ge p4, p1, :cond_8

    .line 102
    invoke-virtual {p0, p4}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_7

    instance-of p3, p2, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    if-eqz p3, :cond_7

    .line 104
    check-cast p2, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    .line 105
    invoke-virtual {p2}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->getLeft()I

    move-result p3

    .line 106
    invoke-virtual {p2}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->getTop()I

    move-result p5

    .line 107
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {p2}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->get_realrect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->get_realrect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p2}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->get_style()Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    move-result-object p2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/metamoji/ui/menu/MenuUtils;->newFramePathWithStyle(IILcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;F)Landroid/graphics/Path;

    move-result-object p2

    int-to-float p3, p3

    int-to-float p5, p5

    invoke-virtual {v0, p2, p3, p5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    :cond_7
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 115
    invoke-virtual {p0}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 119
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 120
    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 121
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-le v5, v2, :cond_0

    move v2, v5

    .line 125
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 126
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 128
    iget v4, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_itemMargin:I

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_2
    iget-boolean p1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_isActionMenu:Z

    if-nez p1, :cond_3

    int-to-float p1, v2

    .line 132
    iget-object p2, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$Def;->CTX_SUB_M_L:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    float-to-int v2, p1

    int-to-float p1, v3

    .line 133
    iget-object p2, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v1, Lcom/metamoji/ui/menu/MenuUtils$Def;->CTX_SUB_M_L:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result p2

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_itemMargin:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    add-float/2addr p1, p2

    float-to-int v3, p1

    .line 135
    :cond_3
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/ui/menu/MenuUtils;->set_contextSubMenuGroupSize(II)V

    .line 136
    invoke-virtual {p0, v2, v3}, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->setMeasuredDimension(II)V

    return-void
.end method

.method public setItemMargin(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_itemMargin:I

    return-void
.end method

.method public setMenuTypeAction(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/metamoji/ui/menu/UiContextSubMenuContainer;->_isActionMenu:Z

    return-void
.end method
