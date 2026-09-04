.class public Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;
.super Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;
.source "DrOvFountainStrokeDrawer.java"


# instance fields
.field private m_delta:F

.field private m_first:Z

.field private m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

.field private final m_graphics:Lcom/metamoji/df/sprite/Graphics;

.field private m_inferenceRatio:F

.field private final m_last:Landroid/graphics/PointF;

.field private final m_path:Lcom/metamoji/df/sprite/Path;

.field private m_scDist:F

.field private m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

.field private m_times:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final m_tmpPath:Lcom/metamoji/df/sprite/Path;

.field private m_wcDist:F

.field private m_zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSpriteDrawer;-><init>()V

    .line 21
    new-instance v0, Lcom/metamoji/df/sprite/Path;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    .line 22
    new-instance v0, Lcom/metamoji/df/sprite/Path;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_tmpPath:Lcom/metamoji/df/sprite/Path;

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_last:Landroid/graphics/PointF;

    .line 26
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    .line 32
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    return-void
.end method


# virtual methods
.method public addLineToPoint(Landroid/graphics/PointF;)V
    .locals 0

    .line 147
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addPoint(Landroid/graphics/PointF;JZ)V
    .locals 2

    .line 109
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_first:Z

    .line 115
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 110
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->beginFountainerAtPoint(Landroid/graphics/PointF;Ljava/util/Calendar;)V

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_first:Z

    return-void

    .line 115
    :cond_0
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->addPoint(Landroid/graphics/PointF;JZ)V

    .line 116
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_last:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 118
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->addedBezierPathCount()I

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    iget-object p3, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p2, p3}, Lcom/metamoji/df/sprite/Graphics;->removeInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    .line 122
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->bezierPaths()Ljava/util/ArrayList;

    move-result-object p2

    .line 123
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int p1, p3, p1

    :goto_0
    if-ge p1, p3, :cond_1

    .line 124
    iget-object p4, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p4, v0}, Lcom/metamoji/df/sprite/Path;->addPath(Lcom/metamoji/df/sprite/Path;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    :cond_2
    return-void
.end method

.method public addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 151
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addTemporaryLineToPoint(Landroid/graphics/PointF;)V
    .locals 0

    .line 155
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addTemporaryQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 160
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public begin()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_delta:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setDelta(F)V

    .line 71
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_zoom:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setZoom(F)V

    .line 72
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineWidth()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setPenWidth(D)V

    .line 73
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_scDist:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setScDist(D)V

    .line 74
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_wcDist:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setWcDist(D)V

    .line 75
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_times:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTimes(Ljava/util/List;)V

    .line 78
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->trans()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTrans(D)V

    .line 79
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStay()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setBeginStay(D)V

    .line 80
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStayRate()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setBeginStayRate(D)V

    .line 81
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStayDelta()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setBeginStayDelta(D)V

    .line 82
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRun()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setBeginRun(D)V

    .line 83
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRunRate()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setBeginRunRate(D)V

    .line 84
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRunDelta()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setBeginRunDelta(D)V

    .line 85
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStay()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setEndStay(D)V

    .line 86
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStayRate()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setEndStayRate(D)V

    .line 87
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStayDelta()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setEndStayDelta(D)V

    .line 88
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRun()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setEndRun(D)V

    .line 89
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRunRate()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setEndRunRate(D)V

    .line 90
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRunDelta()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setEndRunDelta(D)V

    .line 91
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStay()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTailStay(D)V

    .line 92
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStayRate()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTailStayRate(D)V

    .line 93
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStayDelta()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTailStayDelta(D)V

    .line 94
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRun()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTailRun(D)V

    .line 95
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRunRate()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTailRunRate(D)V

    .line 96
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_fountainer:Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRunDelta()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTailRunDelta(D)V

    .line 98
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Path;->setLineWidth(F)V

    .line 99
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Path;->setLineAlpha(F)V

    .line 100
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Path;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 101
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    new-instance v1, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Path;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 102
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Path;->setFillAlpha(F)V

    .line 103
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_path:Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->addInstruction(Lcom/metamoji/df/sprite/GraphicsInstruction;)V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_first:Z

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_graphics:Lcom/metamoji/df/sprite/Graphics;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    return-void
.end method

.method public delta()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_delta:F

    return v0
.end method

.method public inferenceRatio()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_inferenceRatio:F

    return v0
.end method

.method public moveToPoint(Landroid/graphics/PointF;)V
    .locals 0

    .line 143
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public scDist()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_scDist:F

    return v0
.end method

.method public setDelta(F)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_delta:F

    return-void
.end method

.method public setInferenceRatio(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_inferenceRatio:F

    return-void
.end method

.method public setScDist(F)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_scDist:F

    return-void
.end method

.method public setStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    return-void
.end method

.method public setTimes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_times:Ljava/util/List;

    return-void
.end method

.method public setWcDist(F)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_wcDist:F

    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_zoom:F

    return-void
.end method

.method public style()Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    return-object v0
.end method

.method public times()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_times:Ljava/util/List;

    return-object v0
.end method

.method public wcDist()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_wcDist:F

    return v0
.end method

.method public zoom()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->m_zoom:F

    return v0
.end method
