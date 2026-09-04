.class Lcom/metamoji/df/sprite/TextInstruction;
.super Ljava/lang/Object;
.source "TextInstruction.java"

# interfaces
.implements Lcom/metamoji/df/sprite/GraphicsInstruction;


# instance fields
.field private alpha:F

.field private bounds:Landroid/graphics/RectF;

.field private paint:Landroid/graphics/Paint;

.field private text:Ljava/lang/String;

.field private x:F

.field private y:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createBounds()Landroid/graphics/RectF;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/metamoji/df/sprite/TextInstruction;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/df/sprite/TextInstruction;->paint:Landroid/graphics/Paint;

    invoke-static {v0, v1}, Lcom/metamoji/df/sprite/TextInstruction;->rectOfString(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v0

    .line 50
    iget v1, p0, Lcom/metamoji/df/sprite/TextInstruction;->x:F

    iget v2, p0, Lcom/metamoji/df/sprite/TextInstruction;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    return-object v0
.end method

.method public static rectOfString(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/RectF;
    .locals 3

    .line 37
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 40
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 41
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 42
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    sub-float/2addr p1, v0

    invoke-direct {v1, v2, v2, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method


# virtual methods
.method public clone()Lcom/metamoji/df/sprite/GraphicsInstruction;
    .locals 2

    .line 91
    new-instance v0, Lcom/metamoji/df/sprite/TextInstruction;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/TextInstruction;-><init>()V

    .line 92
    iget v1, p0, Lcom/metamoji/df/sprite/TextInstruction;->x:F

    iput v1, v0, Lcom/metamoji/df/sprite/TextInstruction;->x:F

    .line 93
    iget v1, p0, Lcom/metamoji/df/sprite/TextInstruction;->y:F

    iput v1, v0, Lcom/metamoji/df/sprite/TextInstruction;->y:F

    .line 94
    iget-object v1, p0, Lcom/metamoji/df/sprite/TextInstruction;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/df/sprite/TextInstruction;->text:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/metamoji/df/sprite/TextInstruction;->paint:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/metamoji/df/sprite/TextInstruction;->paint:Landroid/graphics/Paint;

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
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/TextInstruction;->clone()Lcom/metamoji/df/sprite/GraphicsInstruction;

    move-result-object v0

    return-object v0
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/TextInstruction;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public getAlpha()F
    .locals 1

    .line 25
    iget v0, p0, Lcom/metamoji/df/sprite/TextInstruction;->alpha:F

    return v0
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/metamoji/df/sprite/TextInstruction;->bounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/metamoji/df/sprite/TextInstruction;->createBounds()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/sprite/TextInstruction;->bounds:Landroid/graphics/RectF;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/TextInstruction;->bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/df/sprite/TextInstruction;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/df/sprite/TextInstruction;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 19
    iget v0, p0, Lcom/metamoji/df/sprite/TextInstruction;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 21
    iget v0, p0, Lcom/metamoji/df/sprite/TextInstruction;->y:F

    return v0
.end method

.method public paint(Lcom/metamoji/df/sprite/Context;)V
    .locals 6

    .line 61
    iget-object v1, p0, Lcom/metamoji/df/sprite/TextInstruction;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/metamoji/df/sprite/TextInstruction;->paint:Landroid/graphics/Paint;

    if-eqz v5, :cond_0

    .line 62
    iget v2, p0, Lcom/metamoji/df/sprite/TextInstruction;->x:F

    iget v3, p0, Lcom/metamoji/df/sprite/TextInstruction;->y:F

    iget v4, p0, Lcom/metamoji/df/sprite/TextInstruction;->alpha:F

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/metamoji/df/sprite/Context;->drawText(Ljava/lang/String;FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/metamoji/df/sprite/TextInstruction;->alpha:F

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/metamoji/df/sprite/TextInstruction;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/metamoji/df/sprite/TextInstruction;->text:Ljava/lang/String;

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/metamoji/df/sprite/TextInstruction;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/metamoji/df/sprite/TextInstruction;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Ti"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/TextInstruction;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/df/sprite/Geometry;->toString(Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
