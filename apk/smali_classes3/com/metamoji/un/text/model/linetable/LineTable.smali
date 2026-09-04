.class public Lcom/metamoji/un/text/model/linetable/LineTable;
.super Ljava/lang/Object;
.source "LineTable.java"


# static fields
.field private static final INITARRAY_NUM:I = 0xa


# instance fields
.field public delegate:Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;

.field public isRemaking:Z

.field private lineInfoArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/linetable/LineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public needsReconstruct:Z

.field public verticalWriting:Z

.field private final viewRectForLineTableMaking:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    .line 41
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->isRemaking:Z

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->delegate:Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;

    .line 43
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->verticalWriting:Z

    return-void
.end method


# virtual methods
.method public addLineInfoToLast()Lcom/metamoji/un/text/model/linetable/LineInfo;
    .locals 2

    .line 132
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->isRemaking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->delegate:Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;->reconstructLineTable()V

    .line 139
    :cond_0
    new-instance v0, Lcom/metamoji/un/text/model/linetable/LineInfo;

    iget-boolean v1, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->verticalWriting:Z

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;-><init>(Z)V

    .line 146
    iget-object v1, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->isRemaking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->delegate:Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;->reconstructLineTable()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-static {v0}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/linetable/LineInfo;

    return-object v0
.end method

.method public getLineCount()I
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->isRemaking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->delegate:Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;->reconstructLineTable()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I
    .locals 5

    .line 359
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->isRemaking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->delegate:Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0}, Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;->reconstructLineTable()V

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 368
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 370
    iget-object v2, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/linetable/LineInfo;

    .line 372
    iget-object v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p1, v2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v4, v2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    move p1, v0

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    .line 381
    iget-boolean v2, p1, Lcom/metamoji/un/text/model/TextPosition;->lineEndPosition:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move p1, v3

    :goto_2
    if-nez p1, :cond_5

    .line 391
    iget-object p1, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 393
    iget-object p1, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    return p1

    :cond_4
    return v3

    :cond_5
    return v1
.end method

.method public getLineIndexForVertical(F)I
    .locals 4

    .line 407
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->isRemaking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->delegate:Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;

    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0}, Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;->reconstructLineTable()V

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 413
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 429
    iget-object v3, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    if-ge v1, v2, :cond_3

    .line 415
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/linetable/LineInfo;

    .line 416
    iget-boolean v3, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->verticalWriting:Z

    if-eqz v3, :cond_1

    .line 417
    iget-object v3, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v3, v2

    cmpg-float v2, v3, p1

    if-gez v2, :cond_2

    sub-int/2addr v1, v0

    return v1

    .line 423
    :cond_1
    iget-object v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, p1

    if-lez v2, :cond_2

    sub-int/2addr v1, v0

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    return p1
.end method

.method public getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->isRemaking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->delegate:Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;->reconstructLineTable()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/linetable/LineInfo;

    return-object p1
.end method

.method public getLineInfoAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/linetable/LineInfo;
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    .line 209
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p1

    return-object p1
.end method

.method public getLineInfoGetterAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;
    .locals 0

    .line 194
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPositionForHorizontal(IFLcom/metamoji/un/text/model/ITextInput;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 1

    .line 434
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p1

    .line 435
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->verticalWriting:Z

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Landroid/graphics/PointF;

    iget-object p1, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, p3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getTextPositionOfPosition(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/ITextInput;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1

    .line 438
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget-object p1, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, p3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getTextPositionOfPosition(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/ITextInput;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1
.end method

.method public getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;
    .locals 4

    .line 277
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->isRemaking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->delegate:Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0}, Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;->reconstructLineTable()V

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 287
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 288
    iget-object v2, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/linetable/LineInfo;

    .line 290
    iget-object v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p1, v2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    sub-int/2addr v1, v0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/linetable/LineInfo;

    .line 295
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object v1

    :goto_1
    move-object v2, v1

    move v1, v0

    goto :goto_2

    :cond_1
    if-nez v2, :cond_3

    .line 298
    iget-boolean v2, p1, Lcom/metamoji/un/text/model/TextPosition;->lineEndPosition:Z

    if-eqz v2, :cond_3

    .line 300
    iget-object v2, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    sub-int/2addr v1, v0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/linetable/LineInfo;

    .line 301
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getRectOfColumnAt(I)Landroid/graphics/RectF;

    move-result-object v1

    .line 302
    iget-boolean v2, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->verticalWriting:Z

    if-eqz v2, :cond_2

    .line 303
    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 305
    :cond_2
    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-nez v1, :cond_d

    .line 311
    iget-object v1, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 312
    iget-object v1, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/linetable/LineInfo;

    .line 313
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/metamoji/un/text/model/ITextInput;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    .line 315
    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 317
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    .line 318
    :cond_5
    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v2

    if-eq v0, v2, :cond_b

    .line 320
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result p1

    .line 321
    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getRectOfColumnAt(I)Landroid/graphics/RectF;

    move-result-object p2

    .line 323
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->verticalWriting:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    .line 324
    :cond_6
    iget p1, p2, Landroid/graphics/RectF;->left:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_7

    .line 325
    iget-object p1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p2, p1}, Lcom/metamoji/cm/RectUtils;->setLeft(Landroid/graphics/RectF;F)V

    .line 326
    :cond_7
    iget p1, p2, Landroid/graphics/RectF;->top:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_8

    .line 327
    iget-object p1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p2, p1}, Lcom/metamoji/cm/RectUtils;->setTop(Landroid/graphics/RectF;F)V

    .line 329
    :cond_8
    iget-boolean p1, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->verticalWriting:Z

    if-eqz p1, :cond_9

    .line 330
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    cmpl-float p1, v2, p1

    if-nez p1, :cond_a

    .line 331
    iget-object p1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget p1, p1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {p2, p1}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    return-object p2

    .line 334
    :cond_9
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, v2, p1

    if-nez p1, :cond_a

    .line 335
    iget-object p1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p2, p1}, Lcom/metamoji/cm/RectUtils;->setHeight(Landroid/graphics/RectF;F)V

    :cond_a
    return-object p2

    .line 339
    :cond_b
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    .line 343
    :cond_c
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    :cond_d
    return-object v2
.end method

.method public getTextPositionOfPosition(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/ITextInput;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 4

    .line 450
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->isRemaking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->delegate:Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;

    if-eqz v0, :cond_0

    .line 451
    invoke-interface {v0}, Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;->reconstructLineTable()V

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 459
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 460
    iget-object v2, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/linetable/LineInfo;

    .line 462
    iget-boolean v3, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->verticalWriting:Z

    if-eqz v3, :cond_4

    .line 463
    iget-object v3, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v3, v2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_8

    .line 465
    iget-object v2, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    sub-int/2addr v1, v0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/linetable/LineInfo;

    .line 466
    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnOfXpos(F)I

    move-result v2

    .line 467
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 468
    iget-boolean v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->endIsNewLineChar:Z

    if-eqz v2, :cond_1

    .line 470
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p2, v2, v1}, Lcom/metamoji/un/text/model/ITextInput;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    goto/16 :goto_2

    .line 472
    :cond_1
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result v1

    invoke-interface {p2, v2, v1}, Lcom/metamoji/un/text/model/ITextInput;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 473
    iput-boolean v0, v1, Lcom/metamoji/un/text/model/TextPosition;->lineEndPosition:Z

    goto :goto_1

    .line 475
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 476
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p2, v2, v1}, Lcom/metamoji/un/text/model/ITextInput;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    goto :goto_2

    .line 479
    :cond_3
    iget-object v0, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-interface {p2, v0, v2}, Lcom/metamoji/un/text/model/ITextInput;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    goto :goto_2

    .line 485
    :cond_4
    iget-object v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 487
    iget-object v2, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    sub-int/2addr v1, v0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/linetable/LineInfo;

    .line 488
    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnOfXpos(F)I

    move-result v2

    .line 489
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result v3

    if-ge v3, v2, :cond_6

    .line 490
    iget-boolean v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->endIsNewLineChar:Z

    if-eqz v2, :cond_5

    .line 492
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p2, v2, v1}, Lcom/metamoji/un/text/model/ITextInput;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    goto :goto_2

    .line 494
    :cond_5
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result v1

    invoke-interface {p2, v2, v1}, Lcom/metamoji/un/text/model/ITextInput;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 495
    iput-boolean v0, v1, Lcom/metamoji/un/text/model/TextPosition;->lineEndPosition:Z

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 497
    :cond_6
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 498
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p2, v2, v1}, Lcom/metamoji/un/text/model/ITextInput;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    goto :goto_2

    .line 501
    :cond_7
    iget-object v0, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-interface {p2, v0, v2}, Lcom/metamoji/un/text/model/ITextInput;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_d

    .line 510
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v0

    .line 511
    iget-boolean v1, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->verticalWriting:Z

    if-eqz v1, :cond_b

    if-eqz v0, :cond_a

    .line 512
    iget-object v1, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_a

    .line 514
    iget-object v1, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnOfXpos(F)I

    move-result p1

    invoke-interface {p2, v1, p1}, Lcom/metamoji/un/text/model/ITextInput;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1

    .line 517
    :cond_a
    invoke-interface {p2}, Lcom/metamoji/un/text/model/ITextInput;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1

    :cond_b
    if-eqz v0, :cond_c

    .line 521
    iget-object v1, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_c

    .line 523
    iget-object v1, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnOfXpos(F)I

    move-result p1

    invoke-interface {p2, v1, p1}, Lcom/metamoji/un/text/model/ITextInput;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1

    .line 526
    :cond_c
    invoke-interface {p2}, Lcom/metamoji/un/text/model/ITextInput;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v0
.end method

.method public getViewRectForLineTableMaking()Landroid/graphics/RectF;
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->isRemaking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->delegate:Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;->reconstructLineTable()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    return-object v0
.end method

.method public removeLineInRange(Lcom/metamoji/cm/Range;)V
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->isRemaking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->delegate:Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0}, Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;->reconstructLineTable()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->lineInfoArray:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/metamoji/cm/ListUtils;->removeRange(Ljava/util/List;Lcom/metamoji/cm/Range;)V

    return-void
.end method

.method public setViewRectForLineTableMaking(Landroid/graphics/RectF;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public translateX(F)V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineTable;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 538
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 540
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v2

    .line 541
    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->translateX(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
