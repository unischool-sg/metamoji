.class public Lcom/metamoji/un/text/model/paragtable/ParagraphTable;
.super Ljava/lang/Object;
.source "ParagraphTable.java"


# instance fields
.field private _lockObj:Ljava/lang/Object;

.field private _paragpraphInfoArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;",
            ">;"
        }
    .end annotation
.end field

.field public lineTableArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/linetable/LineTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->_paragpraphInfoArray:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->_lockObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public AddParagraphInfoToLast()Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;
    .locals 3

    .line 24
    invoke-static {}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;->getFactory()Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfoFactory;->newInstance()Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->_lockObj:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 31
    :try_start_0
    monitor-exit v1

    return-object v0

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->_paragpraphInfoArray:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public GetParagraphIndexFromLineLocation(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;)I
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->_paragpraphInfoArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 138
    iget-object v3, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->_paragpraphInfoArray:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    .line 139
    iget-object v4, v3, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->startLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    invoke-virtual {v4, p1}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->compareTo(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;)I

    move-result v4

    .line 140
    iget-object v3, v3, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->endLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    invoke-virtual {p1, v3}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->compareTo(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;)I

    move-result v3

    if-eqz v4, :cond_3

    if-ne v1, v4, :cond_1

    if-eq v1, v3, :cond_3

    :cond_1
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method public count()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->_paragpraphInfoArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParagraphIndexFromTextPosition(Lcom/metamoji/un/text/model/TextPosition;)I
    .locals 10

    .line 65
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->lineTableArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    if-eqz p1, :cond_7

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v0, :cond_6

    .line 72
    iget-object v5, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->lineTableArray:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/text/model/linetable/LineTable;

    .line 74
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v6

    if-nez v6, :cond_0

    :goto_1
    move v5, v2

    move v2, v1

    goto :goto_6

    :cond_0
    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_3

    .line 82
    invoke-virtual {v5, v7}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v8

    .line 84
    iget-object v8, v8, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p1, v8}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v9, v8, :cond_1

    :goto_3
    add-int/lit8 v7, v7, -0x1

    move v4, v1

    goto :goto_4

    :cond_1
    if-nez v8, :cond_2

    .line 91
    iget-boolean v8, p1, Lcom/metamoji/un/text/model/TextPosition;->lineEndPosition:Z

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    move v5, v7

    if-eqz v4, :cond_4

    goto :goto_5

    :cond_4
    if-ne v1, v6, :cond_5

    if-ne v5, v6, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_5
    move v2, v4

    goto :goto_6

    :cond_7
    move v5, v3

    :goto_6
    if-eqz v2, :cond_8

    .line 115
    new-instance p1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    invoke-direct {p1, v3, v5}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->GetParagraphIndexFromLineLocation(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;)I

    move-result p1

    return p1

    .line 118
    :cond_8
    iget-object p1, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->_paragpraphInfoArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    return p1
.end method

.method public paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->_paragpraphInfoArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    return-object p1
.end method

.method public removeAllParagraphInfo()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->_paragpraphInfoArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeParagraphInfo(Lcom/metamoji/cm/Range;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->_paragpraphInfoArray:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/metamoji/cm/ListUtils;->removeRange(Ljava/util/List;Lcom/metamoji/cm/Range;)V

    return-void
.end method

.method public removeParagraphInfo(I)Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->_paragpraphInfoArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->_paragpraphInfoArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
