.class public Lcom/metamoji/un/text/model/linetable/ColumnTable;
.super Ljava/lang/Object;
.source "ColumnTable.java"


# static fields
.field private static final INITARRAY_NUM:I = 0x50


# instance fields
.field private columnInfoArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/linetable/ColumnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private verticalWriting:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->verticalWriting:Z

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    return-void
.end method

.method private lineEndColumnRect(Lcom/metamoji/un/text/model/linetable/ColumnInfo;)Landroid/graphics/RectF;
    .locals 9

    .line 197
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->verticalWriting:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v1, v0

    iget-object v0, p1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v0, v3

    float-to-double v3, v0

    iget-object p1, p1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget p1, p1, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v5, p1

    const-wide/16 v7, 0x0

    invoke-static/range {v1 .. v8}, Lcom/metamoji/cm/RectUtils;->RectBySize(DDDD)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    .line 205
    :cond_0
    iget-object v0, p1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v0, v1

    float-to-double v1, v0

    iget-object v0, p1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v3, v0

    iget-object p1, p1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v7, p1

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v8}, Lcom/metamoji/cm/RectUtils;->RectBySize(DDDD)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addColumnInfoToLast()Lcom/metamoji/un/text/model/linetable/ColumnInfo;
    .locals 2

    .line 73
    new-instance v0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/linetable/ColumnInfo;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getColumnInfo(I)Lcom/metamoji/un/text/model/linetable/ColumnInfo;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    return-object p1
.end method

.method public getColumnOfXpos(F)I
    .locals 6

    .line 262
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    invoke-static {v0}, Lcom/metamoji/cm/ListUtils;->getFirst(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    const/4 v1, 0x1

    move v2, v1

    .line 263
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ge v2, v3, :cond_2

    .line 264
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    .line 265
    iget-object v3, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    .line 266
    iget-boolean v5, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->verticalWriting:Z

    if-eqz v5, :cond_0

    .line 267
    iget-object v5, v3, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v3, v3, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v3, v4

    add-float/2addr v5, v3

    cmpl-float v3, v5, p1

    if-lez v3, :cond_1

    goto :goto_1

    .line 271
    :cond_0
    iget-object v5, v3, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v3, v3, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v3, v4

    add-float/2addr v5, v3

    cmpl-float v3, v5, p1

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 278
    iget-boolean v3, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->verticalWriting:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_4

    .line 279
    iget-object v3, v0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v0, v0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    cmpg-float p1, v3, p1

    if-gez p1, :cond_4

    .line 280
    iget-object p1, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 283
    iget-object v3, v0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v0, v0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    cmpg-float p1, v3, p1

    if-gez p1, :cond_4

    .line 284
    iget-object p1, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    add-int/lit8 v2, p1, 0x2

    :cond_4
    sub-int/2addr v2, v1

    return v2
.end method

.method public getRectOfColumnAt(I)Landroid/graphics/RectF;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    if-ge p1, v0, :cond_0

    .line 181
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    .line 182
    iget-object v0, p1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget-object p1, p1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-static {v0, p1}, Lcom/metamoji/cm/RectUtils;->Rect(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    .line 185
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 186
    iget-object p1, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    invoke-static {p1}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    .line 187
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->lineEndColumnRect(Lcom/metamoji/un/text/model/linetable/ColumnInfo;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    .line 190
    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1
.end method

.method public removeLastColumnInfo()Lcom/metamoji/un/text/model/linetable/ColumnInfo;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    return-object v0
.end method

.method public translateX(F)V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 294
    iget-object v2, p0, Lcom/metamoji/un/text/model/linetable/ColumnTable;->columnInfoArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    .line 295
    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->translateX(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
