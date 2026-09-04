.class public Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;
.super Ljava/lang/Object;
.source "ParagraphInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;
    }
.end annotation


# instance fields
.field public endLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

.field public startLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

.field public stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;-><init>(II)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->startLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    .line 88
    new-instance v0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    invoke-direct {v0, v1, v1}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;-><init>(II)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->endLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    return-void
.end method


# virtual methods
.method public getParagraphRange(Ljava/util/List;ZLcom/metamoji/un/text/model/StringWithStrokesArray;)Lcom/metamoji/un/text/model/TextRange;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/linetable/LineTable;",
            ">;Z",
            "Lcom/metamoji/un/text/model/StringWithStrokesArray;",
            ")",
            "Lcom/metamoji/un/text/model/TextRange;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->startLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iget v0, v0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineTableIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/linetable/LineTable;

    .line 100
    iget-object v1, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->startLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iget v1, v1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineNo:I

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->endLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iget v1, v1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineTableIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/linetable/LineTable;

    .line 108
    iget-object v2, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->endLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iget v2, v2, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineNo:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    .line 110
    iget-object p1, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->endLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iget p1, p1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineNo:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p1

    .line 111
    new-instance v2, Lcom/metamoji/un/text/model/TextPosition;

    iget-object p1, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v2, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    if-nez p2, :cond_3

    .line 113
    iget-object p1, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->endLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iget p1, p1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineNo:I

    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v4

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->endLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iget v2, v2, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineNo:I

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v4

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->startLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iget v1, v1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineTableIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 127
    iget-object v3, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->endLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    const/4 v5, 0x0

    if-ge v1, v2, :cond_2

    .line 122
    iget v1, v3, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineTableIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/linetable/LineTable;

    .line 123
    invoke-virtual {p1, v5}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p1

    .line 124
    new-instance v2, Lcom/metamoji/un/text/model/TextPosition;

    iget-object p1, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v2, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    goto :goto_0

    .line 127
    :cond_2
    iget v1, v3, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineTableIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/linetable/LineTable;

    .line 128
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p1

    .line 130
    new-instance v2, Lcom/metamoji/un/text/model/TextPosition;

    iget-object p1, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v2, p1, v5}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    :cond_3
    :goto_0
    if-nez p2, :cond_5

    .line 136
    iget-boolean p1, v4, Lcom/metamoji/un/text/model/linetable/LineInfo;->endIsNewLineChar:Z

    if-eqz p1, :cond_5

    .line 137
    iget p1, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-eqz p1, :cond_4

    .line 138
    iget p1, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    goto :goto_1

    .line 140
    :cond_4
    iget p1, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 141
    iget p1, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p3, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 147
    :cond_5
    :goto_1
    new-instance p1, Lcom/metamoji/un/text/model/TextRange;

    iget-object p2, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p1, p2, v2}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    return-object p1
.end method

.method public getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
