.class public Lcom/metamoji/un/text/model/paragtable/ParagraphTableCreator;
.super Ljava/lang/Object;
.source "ParagraphTableCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createParagraphTable(Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/paragtable/ParagraphTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/linetable/LineTable;",
            ">;",
            "Lcom/metamoji/un/text/model/TextPosition;",
            ")",
            "Lcom/metamoji/un/text/model/paragtable/ParagraphTable;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphTableCreator;->newInstance(Ljava/lang/Object;)Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object v0

    .line 21
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphTableCreator;->createParagraphTable(Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/paragtable/ParagraphTable;)Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object p1

    return-object p1
.end method

.method public createParagraphTable(Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/paragtable/ParagraphTable;)Lcom/metamoji/un/text/model/paragtable/ParagraphTable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/linetable/LineTable;",
            ">;",
            "Lcom/metamoji/un/text/model/TextPosition;",
            "Lcom/metamoji/un/text/model/paragtable/ParagraphTable;",
            ")",
            "Lcom/metamoji/un/text/model/paragtable/ParagraphTable;"
        }
    .end annotation

    .line 34
    iput-object p1, p3, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->lineTableArray:Ljava/util/List;

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_9

    .line 40
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/text/model/linetable/LineTable;

    .line 41
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    if-nez v6, :cond_1

    add-int/lit8 v7, v2, 0x1

    if-ge v7, p2, :cond_1

    .line 53
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/un/text/model/linetable/LineTable;

    .line 54
    invoke-virtual {v8, v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v8

    if-gez v8, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/metamoji/un/text/model/linetable/LineTable;

    .line 62
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v5

    move v2, v7

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v1

    .line 68
    :goto_1
    new-instance v7, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    invoke-direct {v7, v2, v6}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;-><init>(II)V

    invoke-virtual {p3, v7}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->GetParagraphIndexFromLineLocation(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v8, v7, :cond_4

    .line 70
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->count()I

    move-result v3

    if-lt v7, v3, :cond_2

    add-int/lit8 v7, v7, -0x1

    .line 75
    :cond_2
    invoke-virtual {p3, v7}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v8

    .line 76
    iget-object v9, v8, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->startLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iget v9, v9, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineNo:I

    if-ge v9, v6, :cond_3

    .line 77
    iget-object v9, v8, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->startLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iput-object v9, v8, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->endLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    .line 78
    new-instance v9, Lcom/metamoji/cm/Range;

    add-int/lit8 v10, v7, 0x1

    sub-int/2addr v3, v7

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v9, v10, v3}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-virtual {p3, v9}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->removeParagraphInfo(Lcom/metamoji/cm/Range;)V

    move-object v3, v8

    goto :goto_2

    .line 81
    :cond_3
    new-instance v8, Lcom/metamoji/cm/Range;

    sub-int/2addr v3, v7

    invoke-direct {v8, v7, v3}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-virtual {p3, v8}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->removeParagraphInfo(Lcom/metamoji/cm/Range;)V

    move-object v3, v0

    .line 86
    :cond_4
    :goto_2
    invoke-virtual {v4, v6}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v7

    if-nez v3, :cond_5

    .line 90
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->AddParagraphInfoToLast()Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v3

    .line 91
    new-instance v8, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    invoke-direct {v8, v2, v6}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;-><init>(II)V

    iput-object v8, v3, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->startLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    .line 92
    iget-object v8, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    iput-object v8, v3, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 94
    invoke-virtual {v7}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/metamoji/un/text/model/paragtable/ParagraphTableCreator;->setDataToParagraphInfo(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    .line 98
    :cond_5
    iget-boolean v7, v7, Lcom/metamoji/un/text/model/linetable/LineInfo;->endOfParagraph:Z

    if-nez v7, :cond_6

    add-int/lit8 v7, v6, 0x1

    if-lt v7, v5, :cond_8

    .line 99
    :cond_6
    new-instance v7, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    invoke-direct {v7, v2, v6}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;-><init>(II)V

    iput-object v7, v3, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->endLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    add-int/lit8 v3, v6, 0x1

    if-lt v3, v5, :cond_7

    move-object v3, v0

    goto :goto_3

    :cond_7
    move-object v3, v0

    :cond_8
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v5, :cond_4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return-object p3
.end method

.method protected newInstance(Ljava/lang/Object;)Lcom/metamoji/un/text/model/paragtable/ParagraphTable;
    .locals 0

    .line 127
    new-instance p1, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    invoke-direct {p1}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;-><init>()V

    return-object p1
.end method

.method protected setDataToParagraphInfo(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V
    .locals 0

    return-void
.end method
