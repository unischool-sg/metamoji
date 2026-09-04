.class public Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;
.super Ljava/lang/Object;
.source "StrokeDraw.java"

# interfaces
.implements Lcom/metamoji/mazecclient/strokedraw/IStrokeDraw;


# instance fields
.field protected gradationParams_:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;

.field protected lineWidth_:F

.field protected points_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field protected strokeStyle_:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->points_:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->points_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected applyDrawAttribute(Landroid/graphics/Paint;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->strokeStyle_:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result v0

    .line 169
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->lineWidth_:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 174
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method public clearPoints()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->points_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected complementGradationParams()V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->gradationParams_:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->getLinearGradationStartColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->strokeStyle_:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->strokeStyle_:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 66
    iget-object v2, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->gradationParams_:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;

    .line 67
    invoke-virtual {v2}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->getLinearGradationStartPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->gradationParams_:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;

    .line 68
    invoke-virtual {v3}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->getLinearGradationEndPoint()Landroid/graphics/PointF;

    move-result-object v3

    .line 69
    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getGradationStartColor()I

    move-result v4

    invoke-static {v4, v1}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v4

    .line 70
    invoke-interface {v0}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getGradationEndColor()I

    move-result v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v0

    .line 66
    invoke-static {v2, v3, v4, v0}, Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;->linearGradation(Landroid/graphics/PointF;Landroid/graphics/PointF;II)Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->gradationParams_:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;

    return-void
.end method

.method public draw(Lcom/metamoji/df/sprite/Context;)V
    .locals 0

    return-void
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->points_:Ljava/util/List;

    return-object v0
.end method

.method public setGradationParams(Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->gradationParams_:Lcom/metamoji/mazecclient/strokedraw/StrokeGradationParams;

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->complementGradationParams()V

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/metamoji/mazecclient/strokedraw/StrokeDraw;->lineWidth_:F

    return-void
.end method
