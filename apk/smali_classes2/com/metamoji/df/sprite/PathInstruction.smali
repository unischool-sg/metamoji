.class Lcom/metamoji/df/sprite/PathInstruction;
.super Ljava/lang/Object;
.source "PathInstruction.java"

# interfaces
.implements Lcom/metamoji/df/sprite/GraphicsInstruction;


# instance fields
.field private bounds:Landroid/graphics/RectF;

.field private fillAlpha:F

.field private fillPaint:Landroid/graphics/Paint;

.field private lineAlpha:F

.field private linePaint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Landroid/graphics/Path;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/PathInstruction;->path:Landroid/graphics/Path;

    return-void
.end method

.method private createBounds()Landroid/graphics/RectF;
    .locals 3

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/metamoji/df/sprite/PathInstruction;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 33
    iget-object v1, p0, Lcom/metamoji/df/sprite/PathInstruction;->linePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 35
    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 36
    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 37
    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 38
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/metamoji/df/sprite/GraphicsInstruction;
    .locals 2

    .line 72
    new-instance v0, Lcom/metamoji/df/sprite/PathInstruction;

    iget-object v1, p0, Lcom/metamoji/df/sprite/PathInstruction;->path:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/PathInstruction;-><init>(Landroid/graphics/Path;)V

    .line 73
    iget-object v1, p0, Lcom/metamoji/df/sprite/PathInstruction;->linePaint:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/metamoji/df/sprite/PathInstruction;->linePaint:Landroid/graphics/Paint;

    .line 74
    iget v1, p0, Lcom/metamoji/df/sprite/PathInstruction;->lineAlpha:F

    iput v1, v0, Lcom/metamoji/df/sprite/PathInstruction;->lineAlpha:F

    .line 75
    iget-object v1, p0, Lcom/metamoji/df/sprite/PathInstruction;->fillPaint:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/metamoji/df/sprite/PathInstruction;->fillPaint:Landroid/graphics/Paint;

    .line 76
    iget v1, p0, Lcom/metamoji/df/sprite/PathInstruction;->fillAlpha:F

    iput v1, v0, Lcom/metamoji/df/sprite/PathInstruction;->fillAlpha:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/PathInstruction;->clone()Lcom/metamoji/df/sprite/GraphicsInstruction;

    move-result-object v0

    return-object v0
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/PathInstruction;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/df/sprite/PathInstruction;->bounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/metamoji/df/sprite/PathInstruction;->createBounds()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/sprite/PathInstruction;->bounds:Landroid/graphics/RectF;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/PathInstruction;->bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getFillAlpha()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/metamoji/df/sprite/PathInstruction;->fillAlpha:F

    return v0
.end method

.method public getFillPaint()Landroid/graphics/Paint;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/df/sprite/PathInstruction;->fillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLineAlpha()F
    .locals 1

    .line 25
    iget v0, p0, Lcom/metamoji/df/sprite/PathInstruction;->lineAlpha:F

    return v0
.end method

.method public getLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/df/sprite/PathInstruction;->linePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public paint(Lcom/metamoji/df/sprite/Context;)V
    .locals 6

    .line 47
    iget-object v1, p0, Lcom/metamoji/df/sprite/PathInstruction;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/metamoji/df/sprite/PathInstruction;->fillAlpha:F

    iget-object v3, p0, Lcom/metamoji/df/sprite/PathInstruction;->fillPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/metamoji/df/sprite/PathInstruction;->lineAlpha:F

    iget-object v5, p0, Lcom/metamoji/df/sprite/PathInstruction;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/metamoji/df/sprite/Context;->drawPath(Landroid/graphics/Path;FLandroid/graphics/Paint;FLandroid/graphics/Paint;)V

    return-void
.end method

.method public setFillAlpha(F)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/metamoji/df/sprite/PathInstruction;->fillAlpha:F

    return-void
.end method

.method public setFillPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/metamoji/df/sprite/PathInstruction;->fillPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setLineAlpha(F)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/metamoji/df/sprite/PathInstruction;->lineAlpha:F

    return-void
.end method

.method public setLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/metamoji/df/sprite/PathInstruction;->linePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Pi"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/PathInstruction;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/df/sprite/Geometry;->toString(Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
