.class public Lcom/metamoji/df/sprite/LinearGradientPath;
.super Ljava/lang/Object;
.source "LinearGradientPath.java"

# interfaces
.implements Lcom/metamoji/df/sprite/GraphicsInstruction;


# instance fields
.field private alterFillAlpha:F

.field private alterFillColor:I

.field private bounds:Landroid/graphics/RectF;

.field private endPoint:Landroid/graphics/PointF;

.field private fillAlpha:F

.field private fillColor:I

.field private paint:Landroid/graphics/Paint;

.field private pathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private startPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->fillAlpha:F

    .line 23
    iput v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->alterFillAlpha:F

    return-void
.end method

.method private createBounds()Landroid/graphics/RectF;
    .locals 6

    .line 212
    iget-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->pathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 214
    iget-object v4, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->pathList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    .line 215
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 216
    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 217
    invoke-static {v1, v5}, Lcom/metamoji/df/sprite/Geometry;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private createPaint()Landroid/graphics/Paint;
    .locals 4

    .line 189
    new-instance v0, Lcom/metamoji/df/sprite/PaintLinearGradient;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/PaintLinearGradient;-><init>()V

    .line 190
    iget-object v1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->startPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/PaintLinearGradient;->setStart(Landroid/graphics/PointF;)V

    .line 191
    iget-object v1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->endPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/PaintLinearGradient;->setEnd(Landroid/graphics/PointF;)V

    .line 192
    iget v1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->fillColor:I

    iget v2, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->fillAlpha:F

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/sprite/PaintLinearGradient;->addStop(FIF)V

    .line 193
    iget v1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->alterFillColor:I

    iget v2, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->alterFillAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/sprite/PaintLinearGradient;->addStop(FIF)V

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/PaintLinearGradient;->resolve(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LinearGradientPath;->createPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->paint:Landroid/graphics/Paint;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->paint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/metamoji/df/sprite/GraphicsInstruction;
    .locals 2

    .line 259
    new-instance v0, Lcom/metamoji/df/sprite/LinearGradientPath;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/LinearGradientPath;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->pathList:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/df/sprite/LinearGradientPath;->pathList:Ljava/util/List;

    .line 261
    iget v1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->fillColor:I

    iput v1, v0, Lcom/metamoji/df/sprite/LinearGradientPath;->fillColor:I

    .line 262
    iget v1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->fillAlpha:F

    iput v1, v0, Lcom/metamoji/df/sprite/LinearGradientPath;->fillAlpha:F

    .line 263
    iget v1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->alterFillColor:I

    iput v1, v0, Lcom/metamoji/df/sprite/LinearGradientPath;->alterFillColor:I

    .line 264
    iget v1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->alterFillAlpha:F

    iput v1, v0, Lcom/metamoji/df/sprite/LinearGradientPath;->alterFillAlpha:F

    .line 265
    iget-object v1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->startPoint:Landroid/graphics/PointF;

    iput-object v1, v0, Lcom/metamoji/df/sprite/LinearGradientPath;->startPoint:Landroid/graphics/PointF;

    .line 266
    iget-object v1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->endPoint:Landroid/graphics/PointF;

    iput-object v1, v0, Lcom/metamoji/df/sprite/LinearGradientPath;->endPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/LinearGradientPath;->clone()Lcom/metamoji/df/sprite/GraphicsInstruction;

    move-result-object v0

    return-object v0
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 2

    .line 251
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/LinearGradientPath;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public getAPath()Landroid/graphics/Path;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->pathList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->pathList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlterFillAlpha()F
    .locals 1

    .line 161
    iget v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->alterFillAlpha:F

    return v0
.end method

.method public getAlterFillColor()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->alterFillColor:I

    return v0
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->bounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LinearGradientPath;->createBounds()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->bounds:Landroid/graphics/RectF;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getEndPoint()Landroid/graphics/PointF;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->endPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getFillAlpha()F
    .locals 1

    .line 145
    iget v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->fillAlpha:F

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->fillColor:I

    return v0
.end method

.method public getPath()Lcom/metamoji/df/sprite/Path;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->pathList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->pathList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 115
    new-instance v1, Lcom/metamoji/df/sprite/Path;

    invoke-direct {v1, v0}, Lcom/metamoji/df/sprite/Path;-><init>(Landroid/graphics/Path;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPathArray()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/Path;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->pathList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->pathList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 83
    iget-object v3, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->pathList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    .line 84
    new-instance v4, Lcom/metamoji/df/sprite/Path;

    invoke-direct {v4, v3}, Lcom/metamoji/df/sprite/Path;-><init>(Landroid/graphics/Path;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->pathList:Ljava/util/List;

    return-object v0
.end method

.method public getStartPoint()Landroid/graphics/PointF;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->startPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public paint(Lcom/metamoji/df/sprite/Context;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->pathList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LinearGradientPath;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/sprite/Context;->drawPathList(Ljava/util/List;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setAlterFillAlpha(F)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->alterFillAlpha:F

    return-void
.end method

.method public setAlterFillColor(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->alterFillColor:I

    return-void
.end method

.method public setEndPoint(Landroid/graphics/PointF;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->endPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public setFillAlpha(F)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->fillAlpha:F

    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->fillColor:I

    return-void
.end method

.method public setPath(Lcom/metamoji/df/sprite/Path;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Path;->getPath()Landroid/graphics/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/LinearGradientPath;->setPathList(Ljava/util/List;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/LinearGradientPath;->setPathList(Ljava/util/List;)V

    return-void
.end method

.method public setPathArray(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/Path;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 99
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/sprite/Path;

    .line 100
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Path;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/df/sprite/LinearGradientPath;->setPathList(Ljava/util/List;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/LinearGradientPath;->setPathList(Ljava/util/List;)V

    return-void
.end method

.method public setPathList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->pathList:Ljava/util/List;

    return-void
.end method

.method public setStartPoint(Landroid/graphics/PointF;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/metamoji/df/sprite/LinearGradientPath;->startPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Lg"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/LinearGradientPath;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/df/sprite/Geometry;->toString(Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
