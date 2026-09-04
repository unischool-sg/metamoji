.class public Lcom/metamoji/ui/menu/UiContextMenuViewGroup;
.super Landroid/view/ViewGroup;
.source "UiContextMenuViewGroup.java"


# instance fields
.field _margin_d:I

.field _margin_l:I

.field _margin_r:I

.field _margin_u:I

.field _mutl:Lcom/metamoji/ui/menu/MenuUtils;

.field _point:Landroid/graphics/Point;

.field private m_backPath:Landroid/graphics/Path;

.field private m_paintBack:Landroid/graphics/Paint;

.field size:Lcom/metamoji/cm/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/ui/menu/MenuUtils;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_point:Landroid/graphics/Point;

    .line 28
    new-instance p1, Lcom/metamoji/cm/Size;

    invoke-direct {p1}, Lcom/metamoji/cm/Size;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->size:Lcom/metamoji/cm/Size;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->setWillNotDraw(Z)V

    .line 41
    iput-object p2, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    .line 42
    iget p1, p2, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SHADOW_MARGIN:F

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_l:I

    .line 43
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget p1, p1, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SHADOW_MARGIN:F

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_r:I

    .line 44
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget p1, p1, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_H:F

    iget-object p2, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget p2, p2, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_SPACE:F

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget p2, p2, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SHADOW_MARGIN:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_u:I

    .line 45
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget p1, p1, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SHADOW_MARGIN:F

    iget-object p2, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget p2, p2, Lcom/metamoji/ui/menu/MenuUtils;->CTX_SHADOW_OFFSET_Y:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_d:I

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_paintBack:Landroid/graphics/Paint;

    .line 48
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_paintBack:Landroid/graphics/Paint;

    sget p2, Lcom/metamoji/ui/menu/MenuUtils;->CTX_BACK_COLOR:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public GetBodyPoint()Landroid/graphics/Point;
    .locals 4

    .line 156
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_point:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_l:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_point:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_u:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public GetPoint()Landroid/graphics/Point;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_point:Landroid/graphics/Point;

    return-object v0
.end method

.method public SetEtc()V
    .locals 14

    .line 111
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    invoke-virtual {v0}, Lcom/metamoji/ui/menu/MenuUtils;->get_arrowRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 114
    iget-object v1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v2, Lcom/metamoji/ui/menu/MenuUtils$Def;->CTX_R:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v1

    .line 115
    iget v2, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_l:I

    int-to-float v2, v2

    .line 116
    iget v3, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_u:I

    int-to-float v3, v3

    .line 117
    iget-object v4, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->size:Lcom/metamoji/cm/Size;

    iget v4, v4, Lcom/metamoji/cm/Size;->width:I

    iget v5, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_r:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 118
    iget-object v5, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->size:Lcom/metamoji/cm/Size;

    iget v5, v5, Lcom/metamoji/cm/Size;->height:I

    iget v6, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_d:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget-object v7, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_point:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 120
    iget-object v7, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    sget-object v8, Lcom/metamoji/ui/menu/MenuUtils$Def;->BALLOON_SIZE:Lcom/metamoji/ui/menu/MenuUtils$Def;

    invoke-virtual {v7, v8}, Lcom/metamoji/ui/menu/MenuUtils;->rv(Lcom/metamoji/ui/menu/MenuUtils$Def;)F

    move-result v7

    .line 121
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v8, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_point:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    cmpg-float v0, v0, v8

    .line 140
    iget-object v8, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    const/4 v9, 0x0

    const/high16 v10, 0x43870000    # 270.0f

    const/high16 v11, 0x43340000    # 180.0f

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v13, 0x42b40000    # 90.0f

    if-gez v0, :cond_0

    sub-float v0, v6, v7

    .line 125
    invoke-virtual {v8, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 126
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    sub-float v8, v3, v7

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 127
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    add-float/2addr v6, v7

    invoke-virtual {v0, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    mul-float/2addr v1, v12

    sub-float v7, v4, v1

    add-float v8, v3, v1

    invoke-direct {v6, v7, v3, v4, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v6, v10, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 133
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    sub-float v10, v5, v1

    invoke-direct {v6, v7, v10, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v6, v9, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 136
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/RectF;

    add-float/2addr v1, v2

    invoke-direct {v4, v2, v10, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v4, v13, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 138
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v3, v1, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v4, v11, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :cond_0
    add-float v0, v6, v7

    .line 140
    invoke-virtual {v8, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 141
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    add-float v8, v5, v7

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 142
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    sub-float/2addr v6, v7

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    mul-float/2addr v1, v12

    sub-float v7, v5, v1

    add-float v8, v2, v1

    invoke-direct {v6, v2, v7, v8, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v6, v13, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 146
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    add-float v12, v3, v1

    invoke-direct {v6, v2, v3, v8, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v6, v11, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 148
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    sub-float v1, v4, v1

    invoke-direct {v2, v1, v3, v4, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2, v10, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 150
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1, v7, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2, v9, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public SetPoint(III)V
    .locals 3

    int-to-float v0, p3

    .line 87
    iget-object v1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v1, v1, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_W:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 88
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget p1, p1, Lcom/metamoji/ui/menu/MenuUtils;->ARROW_W:F

    div-float/2addr p1, v2

    float-to-int p1, p1

    sub-int p1, p3, p1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 93
    :cond_1
    iget-object p3, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_point:Landroid/graphics/Point;

    iget v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_l:I

    sub-int/2addr p1, v0

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 94
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_point:Landroid/graphics/Point;

    iget p3, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_u:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public SetSize(II)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->size:Lcom/metamoji/cm/Size;

    iget v1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_l:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_r:I

    add-int/2addr p1, v1

    iput p1, v0, Lcom/metamoji/cm/Size;->width:I

    .line 104
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->size:Lcom/metamoji/cm/Size;

    iget v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_u:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_d:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/metamoji/cm/Size;->height:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object v1, v1, Lcom/metamoji/ui/menu/MenuUtils;->_paintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 57
    iget-object v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_backPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->m_paintBack:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 66
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/CustomMenuView$MenuItemView;

    .line 67
    invoke-virtual {p3}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_1

    .line 68
    invoke-virtual {p3}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->get_realrect()Landroid/graphics/Rect;

    move-result-object p4

    .line 69
    iget p5, p4, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_l:I

    add-int/2addr p5, v0

    iget v0, p4, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_u:I

    add-int/2addr v0, v1

    iget v1, p4, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_l:I

    add-int/2addr v1, v2

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->_margin_u:I

    add-int/2addr p4, v2

    invoke-virtual {p3, p5, v0, v1, p4}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->layout(IIII)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->size:Lcom/metamoji/cm/Size;

    iget p1, p1, Lcom/metamoji/cm/Size;->width:I

    iget-object p2, p0, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->size:Lcom/metamoji/cm/Size;

    iget p2, p2, Lcom/metamoji/cm/Size;->height:I

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/menu/UiContextMenuViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
