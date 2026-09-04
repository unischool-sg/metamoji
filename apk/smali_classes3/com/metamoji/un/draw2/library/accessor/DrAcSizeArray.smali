.class public Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;
.super Ljava/lang/Object;
.source "DrAcSizeArray.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSize(Lcom/metamoji/cm/SizeF;Ljava/lang/Object;)V
    .locals 2

    .line 62
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 64
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 67
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/metamoji/cm/SizeF;->width:F

    iget p0, p0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public static applyTransform(Landroid/graphics/Matrix;Ljava/lang/Object;)V
    .locals 5

    .line 145
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 147
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 150
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 151
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 152
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 153
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 154
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static checkSizeArray(Ljava/lang/Object;)Z
    .locals 0

    .line 49
    instance-of p0, p0, Lcom/metamoji/cm/PointArray;

    return p0
.end method

.method public static cloneWithTransform(Landroid/graphics/Matrix;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 159
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->newSizeArrayWithArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cm/PointArray;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 161
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    .line 164
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->applyTransform(Landroid/graphics/Matrix;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static count(Ljava/lang/Object;)I
    .locals 1

    .line 53
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result p0

    return p0
.end method

.method public static lastSize(Ljava/lang/Object;)Lcom/metamoji/cm/SizeF;
    .locals 2

    .line 131
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 133
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 138
    invoke-virtual {p0, v1}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object p0

    .line 139
    new-instance v0, Lcom/metamoji/cm/SizeF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p0}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    :cond_1
    return-object v0
.end method

.method public static newSizeArray()Ljava/lang/Object;
    .locals 1

    .line 19
    new-instance v0, Lcom/metamoji/cm/PointArray;

    invoke-direct {v0}, Lcom/metamoji/cm/PointArray;-><init>()V

    return-object v0
.end method

.method public static newSizeArrayWithArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->clone()Lcom/metamoji/cm/PointArray;

    move-result-object p0

    return-object p0
.end method

.method public static newSizeArrayWithCapacity(I)Ljava/lang/Object;
    .locals 1

    .line 23
    new-instance v0, Lcom/metamoji/cm/PointArray;

    invoke-direct {v0, p0}, Lcom/metamoji/cm/PointArray;-><init>(I)V

    return-object v0
.end method

.method public static newSizeArrayWithList(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/cm/SizeF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 40
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 41
    new-instance v1, Lcom/metamoji/cm/PointArray;

    invoke-direct {v1, v0}, Lcom/metamoji/cm/PointArray;-><init>(I)V

    .line 42
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cm/SizeF;

    .line 43
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 185
    instance-of v0, p0, Lcom/metamoji/cm/PointArray;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/metamoji/cm/PointArray;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeAllSizes(Ljava/lang/Object;)V
    .locals 1

    .line 108
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 110
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->clear()V

    return-void
.end method

.method public static removeLastSize(Ljava/lang/Object;)V
    .locals 1

    .line 97
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 99
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->removeLastPoint()Landroid/graphics/PointF;

    :cond_1
    return-void
.end method

.method public static removeSizeAtIndex(ILjava/lang/Object;)V
    .locals 2

    .line 84
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 86
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v1

    if-lt p0, v1, :cond_1

    const/4 p0, 0x1

    .line 90
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 93
    :cond_1
    invoke-virtual {p1, p0}, Lcom/metamoji/cm/PointArray;->remove(I)Landroid/graphics/PointF;

    return-void
.end method

.method public static replaceSizeAtIndex(ILcom/metamoji/cm/SizeF;Ljava/lang/Object;)V
    .locals 2

    .line 71
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    .line 73
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 76
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v1

    if-lt p0, v1, :cond_1

    const/4 p0, 0x1

    .line 77
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 80
    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p0, v0}, Lcom/metamoji/cm/PointArray;->set(ILandroid/graphics/PointF;)Landroid/graphics/PointF;

    return-void
.end method

.method public static sizeAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/SizeF;
    .locals 2

    .line 117
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 119
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v1

    if-lt p0, v1, :cond_1

    const/4 p0, 0x1

    .line 123
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 126
    :cond_1
    invoke-virtual {p1, p0}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object p0

    .line 127
    new-instance p1, Lcom/metamoji/cm/SizeF;

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {p1, v0, p0}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object p1
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 170
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSizeArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 172
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "### ----- Log SizeArray (Count = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ----- ###\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
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

    .line 178
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

    .line 180
    :cond_1
    const-string p0, "### ----- Log End ----- ###"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
