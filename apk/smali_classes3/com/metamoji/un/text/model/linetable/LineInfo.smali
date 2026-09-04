.class public Lcom/metamoji/un/text/model/linetable/LineInfo;
.super Ljava/lang/Object;
.source "LineInfo.java"


# instance fields
.field public baseline:F

.field private columnTable:Lcom/metamoji/un/text/model/linetable/ColumnTable;

.field public endIsNewLineChar:Z

.field public endOfParagraph:Z

.field public origin:Landroid/graphics/PointF;

.field public paragraphTop:Z

.field public position:Lcom/metamoji/un/text/model/TextPosition;

.field public size:Lcom/metamoji/cm/SizeF;

.field public stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

.field public swsaIndexReferingParagraphStyle:I

.field private verticalWriting:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    .line 48
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, v1, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->endIsNewLineChar:Z

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    .line 51
    new-instance v2, Lcom/metamoji/un/text/model/linetable/ColumnTable;

    invoke-direct {v2, p1}, Lcom/metamoji/un/text/model/linetable/ColumnTable;-><init>(Z)V

    iput-object v2, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->columnTable:Lcom/metamoji/un/text/model/linetable/ColumnTable;

    .line 53
    iput-object v1, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    const/4 v1, -0x1

    .line 54
    iput v1, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->swsaIndexReferingParagraphStyle:I

    .line 56
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->paragraphTop:Z

    .line 58
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->verticalWriting:Z

    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->columnTable:Lcom/metamoji/un/text/model/linetable/ColumnTable;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnOfXpos(F)I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->columnTable:Lcom/metamoji/un/text/model/linetable/ColumnTable;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnOfXpos(F)I

    move-result p1

    return p1
.end method

.method public getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->columnTable:Lcom/metamoji/un/text/model/linetable/ColumnTable;

    return-object v0
.end method

.method public getLineRect()Landroid/graphics/RectF;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-static {v0, v1}, Lcom/metamoji/cm/RectUtils;->Rect(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRectOfColumnAt(I)Landroid/graphics/RectF;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->columnTable:Lcom/metamoji/un/text/model/linetable/ColumnTable;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getRectOfColumnAt(I)Landroid/graphics/RectF;

    move-result-object p1

    .line 133
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->verticalWriting:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    return-object p1
.end method

.method public getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->columnTable:Lcom/metamoji/un/text/model/linetable/ColumnTable;

    iget-object v1, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-interface {p2, v1, p1}, Lcom/metamoji/un/text/model/ITextInput;->offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getRectOfColumnAt(I)Landroid/graphics/RectF;

    move-result-object p1

    .line 113
    iget-boolean p2, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->verticalWriting:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 115
    iget-object p2, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {p1, p2}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    return-object p1

    .line 118
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p2

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 120
    iget-object p2, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p1, p2}, Lcom/metamoji/cm/RectUtils;->setHeight(Landroid/graphics/RectF;F)V

    :cond_1
    return-object p1
.end method

.method public translateX(F)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 176
    iget-object v0, p0, Lcom/metamoji/un/text/model/linetable/LineInfo;->columnTable:Lcom/metamoji/un/text/model/linetable/ColumnTable;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->translateX(F)V

    return-void
.end method
