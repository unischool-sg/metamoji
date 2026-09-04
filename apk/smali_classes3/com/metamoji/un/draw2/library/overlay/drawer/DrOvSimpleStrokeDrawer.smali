.class public Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;
.super Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;
.source "DrOvSimpleStrokeDrawer.java"


# instance fields
.field private final m_graphics:Lcom/metamoji/df/sprite/Graphics;

.field private final m_last:Landroid/graphics/PointF;

.field private final m_path:Lcom/metamoji/df/sprite/Path;

.field private final m_start:Landroid/graphics/PointF;

.field private m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;-><init>()V

    .line 18
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    .line 19
    new-instance v0, Lcom/metamoji/df/sprite/Path;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    .line 20
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_start:Landroid/graphics/PointF;

    .line 21
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_last:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public addLineToPoint(Landroid/graphics/PointF;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/sprite/Path;->lineTo(FF)V

    .line 62
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 63
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->drawPath(Lcom/metamoji/df/sprite/Path;)V

    .line 64
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_last:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/metamoji/df/sprite/Path;->quadTo(FFFF)V

    .line 73
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 74
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p2, v0}, Lcom/metamoji/df/sprite/Graphics;->drawPath(Lcom/metamoji/df/sprite/Path;)V

    .line 75
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_last:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public addTemporaryLineToPoint(Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public addTemporaryQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public begin()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Path;->clear()V

    .line 45
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->applyTo(Lcom/metamoji/df/sprite/Path;)V

    .line 46
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->drawPath(Lcom/metamoji/df/sprite/Path;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    return-void
.end method

.method public close()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Path;->close()V

    .line 97
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    sget-object v1, Lcom/metamoji/df/sprite/FillRule;->EVEN_ODD:Lcom/metamoji/df/sprite/FillRule;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Path;->setFillRule(Lcom/metamoji/df/sprite/FillRule;)V

    .line 101
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 102
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->drawPath(Lcom/metamoji/df/sprite/Path;)V

    .line 103
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_last:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_start:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public moveToPoint(Landroid/graphics/PointF;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/sprite/Path;->moveTo(FF)V

    .line 52
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_start:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 53
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_last:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public repaint()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->applyTo(Lcom/metamoji/df/sprite/Path;)V

    return-void
.end method

.method public setStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-void
.end method

.method public style()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-object v0
.end method
