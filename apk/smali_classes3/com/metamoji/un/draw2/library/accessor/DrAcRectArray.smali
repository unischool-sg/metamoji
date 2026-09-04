.class public Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;
.super Ljava/lang/Object;
.source "DrAcRectArray.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRect(Lcom/metamoji/cm/RectEx;Ljava/lang/Object;)V
    .locals 3

    .line 68
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 70
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 73
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget v2, p0, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    .line 74
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/metamoji/cm/RectEx;->width:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public static applyTransform(Landroid/graphics/Matrix;Ljava/lang/Object;)V
    .locals 10

    .line 158
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 160
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v1

    .line 164
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_1

    .line 166
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    .line 167
    invoke-virtual {p1, v4}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v4

    .line 168
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    iget v8, v3, Landroid/graphics/PointF;->y:F

    iget v9, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 169
    invoke-virtual {p0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 170
    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 171
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static checkRectArray(Ljava/lang/Object;)Z
    .locals 2

    .line 51
    instance-of v0, p0, Lcom/metamoji/cm/PointArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 54
    :cond_0
    check-cast p0, Lcom/metamoji/cm/PointArray;

    .line 55
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static cloneWithTransform(Landroid/graphics/Matrix;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 176
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->newRectArrayWithArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cm/PointArray;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 178
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    .line 181
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->applyTransform(Landroid/graphics/Matrix;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static count(Ljava/lang/Object;)I
    .locals 1

    .line 59
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static lastRect(Ljava/lang/Object;)Lcom/metamoji/cm/RectEx;
    .locals 4

    .line 143
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 145
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v0, v1, -0x2

    .line 150
    invoke-virtual {p0, v0}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    .line 151
    invoke-virtual {p0, v1}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object p0

    .line 152
    new-instance v1, Lcom/metamoji/cm/RectEx;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v0, v3, p0}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method public static newRectArray()Ljava/lang/Object;
    .locals 1

    .line 20
    new-instance v0, Lcom/metamoji/cm/PointArray;

    invoke-direct {v0}, Lcom/metamoji/cm/PointArray;-><init>()V

    return-object v0
.end method

.method public static newRectArrayWithArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->clone()Lcom/metamoji/cm/PointArray;

    move-result-object p0

    return-object p0
.end method

.method public static newRectArrayWithCapacity(I)Ljava/lang/Object;
    .locals 1

    .line 24
    new-instance v0, Lcom/metamoji/cm/PointArray;

    mul-int/lit8 p0, p0, 0x2

    invoke-direct {v0, p0}, Lcom/metamoji/cm/PointArray;-><init>(I)V

    return-object v0
.end method

.method public static newRectArrayWithList(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/cm/RectEx;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 41
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 42
    new-instance v1, Lcom/metamoji/cm/PointArray;

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Lcom/metamoji/cm/PointArray;-><init>(I)V

    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cm/RectEx;

    .line 44
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget v4, v0, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    .line 45
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Lcom/metamoji/cm/RectEx;->width:F

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;
    .locals 2

    .line 207
    instance-of v0, p0, Lcom/metamoji/cm/PointArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 210
    :cond_0
    check-cast p0, Lcom/metamoji/cm/PointArray;

    .line 211
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;
    .locals 3

    .line 127
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 129
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    :cond_0
    mul-int/lit8 p0, p0, 0x2

    .line 133
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt p0, v1, :cond_1

    .line 134
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, p0, 0x1

    .line 137
    invoke-virtual {p1, p0}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object p0

    .line 138
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object p1

    .line 139
    new-instance v0, Lcom/metamoji/cm/RectEx;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v0
.end method

.method public static removeAllRects(Ljava/lang/Object;)V
    .locals 1

    .line 118
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 120
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->clear()V

    return-void
.end method

.method public static removeLastRect(Ljava/lang/Object;)V
    .locals 1

    .line 106
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 108
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->removeLastPoint()Landroid/graphics/PointF;

    .line 113
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->removeLastPoint()Landroid/graphics/PointF;

    :cond_1
    return-void
.end method

.method public static removeRectAtIndex(ILjava/lang/Object;)V
    .locals 3

    .line 92
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 94
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    mul-int/lit8 p0, p0, 0x2

    .line 98
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt p0, v1, :cond_1

    .line 99
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 101
    :cond_1
    invoke-virtual {p1, p0}, Lcom/metamoji/cm/PointArray;->remove(I)Landroid/graphics/PointF;

    .line 102
    invoke-virtual {p1, p0}, Lcom/metamoji/cm/PointArray;->remove(I)Landroid/graphics/PointF;

    return-void
.end method

.method public static replaceRectAtIndex(ILcom/metamoji/cm/RectEx;Ljava/lang/Object;)V
    .locals 4

    .line 78
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    .line 80
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    mul-int/lit8 p0, p0, 0x2

    .line 84
    invoke-virtual {p2}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt p0, v1, :cond_1

    .line 85
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, p0, 0x1

    .line 87
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p0, v1}, Lcom/metamoji/cm/PointArray;->set(ILandroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 88
    new-instance p0, Landroid/graphics/PointF;

    iget v1, p1, Lcom/metamoji/cm/RectEx;->width:F

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-direct {p0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, v0, p0}, Lcom/metamoji/cm/PointArray;->set(ILandroid/graphics/PointF;)Landroid/graphics/PointF;

    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 187
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->pointArray(Ljava/lang/Object;)Lcom/metamoji/cm/PointArray;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 189
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0

    .line 192
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "### ----- Log RectArray (Count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v2

    .line 194
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ----- ###\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v0, v2, :cond_1

    add-int/lit8 v3, v0, 0x1

    .line 196
    invoke-virtual {p0, v0}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v4

    add-int/lit8 v0, v0, 0x2

    .line 197
    invoke-virtual {p0, v3}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v3

    .line 198
    const-string v5, "  ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget v5, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget v4, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 202
    :cond_1
    const-string p0, "### ----- Log End ----- ###"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
