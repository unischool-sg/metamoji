.class public Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;
.super Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;
.source "DrOvCalligraphicStrokeDrawer.java"


# instance fields
.field private m_calligrapher:Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;

.field private m_delta:F

.field m_first:Z

.field private final m_graphics:Lcom/metamoji/df/sprite/Graphics;

.field private m_inferenceRatio:F

.field private final m_last:Landroid/graphics/PointF;

.field private final m_path:Lcom/metamoji/df/sprite/Path;

.field private m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

.field private final m_tmpPath:Lcom/metamoji/df/sprite/Path;

.field private m_zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;-><init>()V

    .line 22
    new-instance v0, Lcom/metamoji/df/sprite/Path;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    .line 23
    new-instance v0, Lcom/metamoji/df/sprite/Path;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_tmpPath:Lcom/metamoji/df/sprite/Path;

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_last:Landroid/graphics/PointF;

    .line 27
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    .line 31
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_calligrapher:Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;

    return-void
.end method


# virtual methods
.method public addLineToPoint(Landroid/graphics/PointF;)V
    .locals 0

    .line 124
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addPoint(Landroid/graphics/PointF;Z)V
    .locals 3

    .line 81
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_first:Z

    .line 87
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_calligrapher:Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->beginCalligrapherAtPoint(Landroid/graphics/PointF;)V

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_first:Z

    return-void

    .line 87
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->addPoint(Landroid/graphics/PointF;Z)V

    .line 88
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_last:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 90
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_calligrapher:Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->addedBezierPathCount()I

    move-result p1

    if-eqz p1, :cond_2

    .line 92
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p2, v0}, Lcom/metamoji/df/sprite/Graphics;->removeInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    .line 94
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_calligrapher:Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPaths()Ljava/util/ArrayList;

    move-result-object p2

    .line 95
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int p1, v0, p1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 96
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Path;->addPath(Lcom/metamoji/df/sprite/Path;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    :cond_2
    return-void
.end method

.method public addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 128
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addTemporaryLineToPoint(Landroid/graphics/PointF;)V
    .locals 0

    .line 132
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addTemporaryQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    .line 137
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_tmpPath:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p2, v0}, Lcom/metamoji/df/sprite/Graphics;->removeInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    .line 138
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_tmpPath:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Path;->getPath()Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 139
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_calligrapher:Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->createInferentialPathToPoint(Landroid/graphics/PointF;)Lcom/metamoji/df/sprite/Path;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 141
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_tmpPath:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p2, p1}, Lcom/metamoji/df/sprite/Path;->addPath(Lcom/metamoji/df/sprite/Path;)V

    .line 142
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_tmpPath:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    :cond_0
    return-void
.end method

.method public begin()V
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_calligrapher:Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_delta:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setDelta(F)V

    .line 56
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_calligrapher:Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_zoom:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setZoom(F)V

    .line 57
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_calligrapher:Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setPenWidth(F)V

    .line 58
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_calligrapher:Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->penAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setPenAngle(F)V

    .line 59
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_calligrapher:Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->penRate()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setPenRate(F)V

    .line 61
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_calligrapher:Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_inferenceRatio:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setInferenceRatio(F)V

    .line 63
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Path;->setLineWidth(F)V

    .line 64
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Path;->setLineAlpha(F)V

    .line 65
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Path;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 66
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v4, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/metamoji/df/sprite/Path;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 67
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineAlpha()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/metamoji/df/sprite/Path;->setFillAlpha(F)V

    .line 68
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0, v3}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    .line 70
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_tmpPath:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Path;->setLineWidth(F)V

    .line 71
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_tmpPath:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Path;->setLineAlpha(F)V

    .line 72
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_tmpPath:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Path;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 73
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_tmpPath:Lcom/metamoji/df/sprite/Path;

    new-instance v1, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Path;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 74
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_tmpPath:Lcom/metamoji/df/sprite/Path;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Path;->setFillAlpha(F)V

    .line 75
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_tmpPath:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_first:Z

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    return-void
.end method

.method public delta()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_delta:F

    return v0
.end method

.method public inferenceRatio()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_inferenceRatio:F

    return v0
.end method

.method public moveToPoint(Landroid/graphics/PointF;)V
    .locals 0

    .line 120
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setDelta(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_delta:F

    return-void
.end method

.method public setInferenceRatio(F)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_inferenceRatio:F

    return-void
.end method

.method public setStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_zoom:F

    return-void
.end method

.method public style()Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    return-object v0
.end method

.method public zoom()F
    .locals 1

    .line 43
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->m_zoom:F

    return v0
.end method
