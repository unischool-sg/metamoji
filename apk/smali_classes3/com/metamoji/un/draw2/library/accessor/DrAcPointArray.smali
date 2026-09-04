.class public Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;
.super Ljava/lang/Object;
.source "DrAcPointArray.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPoint(FFLcom/metamoji/cm/PointArray;)V
    .locals 2

    .line 62
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 63
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, 0x1

    .line 66
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 69
    :cond_2
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public static addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V
    .locals 1

    .line 57
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(FFLcom/metamoji/cm/PointArray;)V

    return-void
.end method

.method public static applyTransform(Landroid/graphics/Matrix;Lcom/metamoji/cm/PointArray;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 153
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object p1

    .line 165
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 166
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 167
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    .line 168
    invoke-interface {p1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static checkPointArray(Lcom/metamoji/cm/PointArray;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkPointArray(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    instance-of p0, p0, Lcom/metamoji/cm/PointArray;

    return p0
.end method

.method public static cloneWithTransform(Landroid/graphics/Matrix;Lcom/metamoji/cm/PointArray;)Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithArray(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 175
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    .line 178
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->applyTransform(Landroid/graphics/Matrix;Lcom/metamoji/cm/PointArray;)V

    return-object p1
.end method

.method public static count(Lcom/metamoji/cm/PointArray;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result p0

    return p0
.end method

.method public static lastPoint(Lcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 144
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 145
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 148
    invoke-virtual {p0, v0}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public static newPointArray()Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 17
    new-instance v0, Lcom/metamoji/cm/PointArray;

    invoke-direct {v0}, Lcom/metamoji/cm/PointArray;-><init>()V

    return-object v0
.end method

.method public static newPointArrayWithArray(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/PointArray;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->clone()Lcom/metamoji/cm/PointArray;

    move-result-object p0

    return-object p0
.end method

.method public static newPointArrayWithCapacity(I)Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 21
    new-instance v0, Lcom/metamoji/cm/PointArray;

    invoke-direct {v0, p0}, Lcom/metamoji/cm/PointArray;-><init>(I)V

    return-object v0
.end method

.method public static newPointArrayWithList(Ljava/util/List;)Lcom/metamoji/cm/PointArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Lcom/metamoji/cm/PointArray;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/metamoji/cm/PointArray;

    invoke-direct {v0, p0}, Lcom/metamoji/cm/PointArray;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/metamoji/cm/PointArray;->clone()Lcom/metamoji/cm/PointArray;

    move-result-object p0

    return-object p0
.end method

.method public static pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 125
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 126
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v1

    if-lt p0, v1, :cond_1

    const/4 p0, 0x1

    .line 129
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 130
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0

    .line 132
    :cond_1
    invoke-virtual {p1, p0}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static pointAtIndex(ILcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 138
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-object p2
.end method

.method public static removeAllPoints(Lcom/metamoji/cm/PointArray;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 117
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->clear()V

    return-void
.end method

.method public static removeLastPoint(Lcom/metamoji/cm/PointArray;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 107
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->removeLastPoint()Landroid/graphics/PointF;

    :cond_1
    return-void
.end method

.method public static removePointAtIndex(ILcom/metamoji/cm/PointArray;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 95
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v1

    if-lt p0, v1, :cond_1

    const/4 p0, 0x1

    .line 99
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 102
    :cond_1
    invoke-virtual {p1, p0}, Lcom/metamoji/cm/PointArray;->remove(I)Landroid/graphics/PointF;

    return-void
.end method

.method public static replacePointAtIndex(IFFLcom/metamoji/cm/PointArray;)V
    .locals 2

    .line 78
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 79
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_1
    if-nez p3, :cond_2

    const/4 p0, 0x1

    .line 82
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 85
    :cond_2
    invoke-virtual {p3}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v0

    if-lt p0, v0, :cond_3

    const/4 p0, 0x2

    .line 86
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 90
    :cond_3
    invoke-virtual {p3, p0}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public static replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V
    .locals 1

    .line 73
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0, v0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(IFFLcom/metamoji/cm/PointArray;)V

    return-void
.end method

.method public static toString(Lcom/metamoji/cm/PointArray;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 185
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "### ----- Log PointArray (Count = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ----- ###\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 191
    const-string v2, "  ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 193
    :cond_1
    const-string p0, "### ----- Log End ----- ###"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
