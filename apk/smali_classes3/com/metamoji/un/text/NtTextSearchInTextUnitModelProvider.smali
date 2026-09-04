.class public Lcom/metamoji/un/text/NtTextSearchInTextUnitModelProvider;
.super Ljava/lang/Object;
.source "NtTextSearchInTextUnitModelProvider.java"

# interfaces
.implements Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;


# static fields
.field public static final MMJNT_TEXTSEARCH_KEY_TEXTPOSITION:Ljava/lang/String; = "textPosition"

.field public static final MMJNT_TEXTSEARCH_KEY_TEXTRANGE:Ljava/lang/String; = "textRange"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alwaysHightlightOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasHighlightText(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 400
    instance-of v0, p1, Lcom/metamoji/un/text/model/TextModel;

    if-eqz v0, :cond_0

    .line 401
    check-cast p1, Lcom/metamoji/un/text/model/TextModel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 407
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getSearchResults()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 408
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public highlightNotCanFocus(Lcom/metamoji/nt/NtUnitController;)Z
    .locals 2

    .line 594
    instance-of v0, p1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v0, :cond_0

    .line 595
    check-cast p1, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 600
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->isLockingShareEditing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->isOwnerAndEditability()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public highlightText(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;)I
    .locals 2

    .line 357
    instance-of p4, p1, Lcom/metamoji/un/text/model/TextModel;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 358
    move-object p4, p1

    check-cast p4, Lcom/metamoji/un/text/model/TextModel;

    goto :goto_0

    :cond_0
    move-object p4, v0

    :goto_0
    const/4 v1, 0x0

    if-nez p4, :cond_1

    return v1

    .line 364
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p4

    if-nez p4, :cond_2

    return v1

    .line 369
    :cond_2
    invoke-virtual {p4}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p4

    if-nez p4, :cond_3

    return v1

    .line 374
    :cond_3
    invoke-virtual {p4, p1}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    if-nez p1, :cond_4

    return v1

    .line 380
    :cond_4
    instance-of p4, p1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz p4, :cond_5

    .line 381
    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    :cond_5
    if-eqz v0, :cond_6

    .line 385
    invoke-virtual {v0, p2, p3}, Lcom/metamoji/un/text/UnTextUnit;->updateSearchResult(Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;)I

    move-result p1

    return p1

    :cond_6
    return v1
.end method

.method public isEqualToPosition(Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/NtTextSearchPosition;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_1

    goto/16 :goto_3

    .line 530
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextSearchPosition;->getModelType()Ljava/lang/String;

    move-result-object v2

    .line 531
    invoke-virtual {p2}, Lcom/metamoji/nt/NtTextSearchPosition;->getModelType()Ljava/lang/String;

    move-result-object v3

    .line 533
    invoke-virtual {p0}, Lcom/metamoji/un/text/NtTextSearchInTextUnitModelProvider;->useModelTypes()Ljava/util/List;

    move-result-object v4

    if-eqz v2, :cond_8

    .line 534
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    .line 538
    :cond_2
    const-string/jumbo v2, "textPosition"

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtTextSearchPosition;->getPosInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 540
    instance-of v5, v3, Lcom/metamoji/un/text/model/TextPosition;

    if-eqz v5, :cond_3

    .line 541
    check-cast v3, Lcom/metamoji/un/text/model/TextPosition;

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 544
    :goto_0
    invoke-virtual {p2, v2}, Lcom/metamoji/nt/NtTextSearchPosition;->getPosInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 546
    instance-of v5, v2, Lcom/metamoji/un/text/model/TextPosition;

    if-eqz v5, :cond_4

    .line 547
    check-cast v2, Lcom/metamoji/un/text/model/TextPosition;

    goto :goto_1

    :cond_4
    move-object v2, v4

    .line 550
    :goto_1
    const-string/jumbo v5, "textRange"

    invoke-virtual {p1, v5}, Lcom/metamoji/nt/NtTextSearchPosition;->getPosInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 552
    instance-of v6, p1, Lcom/metamoji/un/text/model/TextRange;

    if-eqz v6, :cond_5

    .line 553
    check-cast p1, Lcom/metamoji/un/text/model/TextRange;

    goto :goto_2

    :cond_5
    move-object p1, v4

    .line 556
    :goto_2
    invoke-virtual {p2, v5}, Lcom/metamoji/nt/NtTextSearchPosition;->getPosInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 558
    instance-of v5, p2, Lcom/metamoji/un/text/model/TextRange;

    if-eqz v5, :cond_6

    .line 559
    move-object v4, p2

    check-cast v4, Lcom/metamoji/un/text/model/TextRange;

    :cond_6
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 564
    invoke-virtual {v3, v2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    if-nez p1, :cond_8

    return v0

    :cond_7
    if-eqz p1, :cond_8

    if-eqz v4, :cond_8

    .line 570
    invoke-virtual {p1, v4}, Lcom/metamoji/un/text/model/TextRange;->isEqualToRange(Lcom/metamoji/un/text/model/TextRange;)Z

    move-result p1

    return p1

    :cond_8
    :goto_3
    return v1
.end method

.method public lastHighlightTextRange(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;
    .locals 2

    .line 486
    instance-of v0, p1, Lcom/metamoji/un/text/model/TextModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 487
    check-cast p1, Lcom/metamoji/un/text/model/TextModel;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    .line 493
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getSearchResults()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    .line 498
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 503
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/TextRange;

    if-eqz p1, :cond_4

    .line 505
    new-instance v0, Lcom/metamoji/nt/NtTextSearchPosition;

    invoke-direct {v0}, Lcom/metamoji/nt/NtTextSearchPosition;-><init>()V

    .line 506
    const-string v1, "$text"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtTextSearchPosition;->setModelType(Ljava/lang/String;)V

    .line 507
    const-string/jumbo v1, "textRange"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/NtTextSearchPosition;->setPosInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_4
    return-object v1
.end method

.method public positionInRange(Lcom/metamoji/nt/NtTextSearchPosition;Z)Lcom/metamoji/nt/NtTextSearchPosition;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 253
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtTextSearchPosition;->getModelType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 254
    invoke-virtual {p0}, Lcom/metamoji/un/text/NtTextSearchInTextUnitModelProvider;->useModelTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 258
    :cond_1
    const-string/jumbo v1, "textRange"

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtTextSearchPosition;->getPosInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 260
    instance-of v1, p1, Lcom/metamoji/un/text/model/TextRange;

    if-eqz v1, :cond_2

    .line 261
    check-cast p1, Lcom/metamoji/un/text/model/TextRange;

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_3

    return-object v0

    :cond_3
    if-eqz p2, :cond_4

    .line 269
    new-instance p2, Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    goto :goto_1

    .line 272
    :cond_4
    new-instance p2, Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 278
    :goto_1
    new-instance p1, Lcom/metamoji/nt/NtTextSearchPosition;

    invoke-direct {p1}, Lcom/metamoji/nt/NtTextSearchPosition;-><init>()V

    .line 279
    const-string v0, "$text"

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtTextSearchPosition;->setModelType(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v0, "textPosition"

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtTextSearchPosition;->setPosInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public searchBeginPosition(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;
    .locals 2

    .line 148
    instance-of v0, p1, Lcom/metamoji/un/text/model/TextModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    check-cast p1, Lcom/metamoji/un/text/model/TextModel;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    .line 155
    :cond_1
    new-instance v0, Lcom/metamoji/nt/NtTextSearchPosition;

    invoke-direct {v0}, Lcom/metamoji/nt/NtTextSearchPosition;-><init>()V

    .line 156
    const-string v1, "$text"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtTextSearchPosition;->setModelType(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    const-string/jumbo v1, "textPosition"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/NtTextSearchPosition;->setPosInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public searchCurrentPosition(Lcom/metamoji/df/model/IModel;Z)Lcom/metamoji/nt/NtTextSearchPosition;
    .locals 3

    .line 195
    instance-of v0, p1, Lcom/metamoji/un/text/model/TextModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    check-cast p1, Lcom/metamoji/un/text/model/TextModel;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    .line 203
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 209
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    goto :goto_1

    .line 214
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getNormalizedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    if-eqz p2, :cond_4

    .line 220
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    goto :goto_1

    .line 226
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_5

    return-object v1

    .line 234
    :cond_5
    new-instance p2, Lcom/metamoji/nt/NtTextSearchPosition;

    invoke-direct {p2}, Lcom/metamoji/nt/NtTextSearchPosition;-><init>()V

    .line 235
    const-string v0, "$text"

    invoke-virtual {p2, v0}, Lcom/metamoji/nt/NtTextSearchPosition;->setModelType(Ljava/lang/String;)V

    .line 236
    const-string/jumbo v0, "textPosition"

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/nt/NtTextSearchPosition;->setPosInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public searchEndPosition(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;
    .locals 2

    .line 171
    instance-of v0, p1, Lcom/metamoji/un/text/model/TextModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 172
    check-cast p1, Lcom/metamoji/un/text/model/TextModel;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    .line 178
    :cond_1
    new-instance v0, Lcom/metamoji/nt/NtTextSearchPosition;

    invoke-direct {v0}, Lcom/metamoji/nt/NtTextSearchPosition;-><init>()V

    .line 179
    const-string v1, "$text"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtTextSearchPosition;->setModelType(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    const-string/jumbo v1, "textPosition"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/NtTextSearchPosition;->setPosInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public searchNext(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;)Lcom/metamoji/nt/NtTextSearchPosition;
    .locals 2

    .line 49
    instance-of p5, p1, Lcom/metamoji/un/text/model/TextModel;

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 50
    check-cast p1, Lcom/metamoji/un/text/model/TextModel;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    if-eqz p4, :cond_3

    .line 57
    invoke-virtual {p4}, Lcom/metamoji/nt/NtTextSearchPosition;->getModelType()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/metamoji/un/text/NtTextSearchInTextUnitModelProvider;->useModelTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_3

    :cond_2
    move-object p4, v0

    :cond_3
    if-eqz p4, :cond_4

    .line 65
    const-string/jumbo p5, "textPosition"

    invoke-virtual {p4, p5}, Lcom/metamoji/nt/NtTextSearchPosition;->getPosInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 66
    instance-of p5, p4, Lcom/metamoji/un/text/model/TextPosition;

    if-eqz p5, :cond_4

    .line 67
    check-cast p4, Lcom/metamoji/un/text/model/TextPosition;

    goto :goto_1

    :cond_4
    move-object p4, v0

    :goto_1
    if-nez p4, :cond_5

    .line 72
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p4

    .line 75
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object p1

    invoke-static {p1, p2, p4, p3}, Lcom/metamoji/un/text/SearchWordUtil;->searchForward(Lcom/metamoji/un/text/model/StringWithStrokesArray;Ljava/lang/String;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 78
    new-instance p2, Lcom/metamoji/nt/NtTextSearchPosition;

    invoke-direct {p2}, Lcom/metamoji/nt/NtTextSearchPosition;-><init>()V

    .line 79
    const-string p3, "$text"

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtTextSearchPosition;->setModelType(Ljava/lang/String;)V

    .line 80
    const-string/jumbo p3, "textRange"

    invoke-virtual {p2, p1, p3}, Lcom/metamoji/nt/NtTextSearchPosition;->setPosInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    :cond_6
    return-object v0
.end method

.method public searchPrev(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;)Lcom/metamoji/nt/NtTextSearchPosition;
    .locals 2

    .line 100
    instance-of p5, p1, Lcom/metamoji/un/text/model/TextModel;

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 101
    check-cast p1, Lcom/metamoji/un/text/model/TextModel;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    if-eqz p4, :cond_3

    .line 108
    invoke-virtual {p4}, Lcom/metamoji/nt/NtTextSearchPosition;->getModelType()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/metamoji/un/text/NtTextSearchInTextUnitModelProvider;->useModelTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_3

    :cond_2
    move-object p4, v0

    :cond_3
    if-eqz p4, :cond_4

    .line 116
    const-string/jumbo p5, "textPosition"

    invoke-virtual {p4, p5}, Lcom/metamoji/nt/NtTextSearchPosition;->getPosInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 117
    instance-of p5, p4, Lcom/metamoji/un/text/model/TextPosition;

    if-eqz p5, :cond_4

    .line 118
    check-cast p4, Lcom/metamoji/un/text/model/TextPosition;

    goto :goto_1

    :cond_4
    move-object p4, v0

    :goto_1
    if-nez p4, :cond_5

    .line 123
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p4

    .line 126
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object p1

    invoke-static {p1, p2, p4, p3}, Lcom/metamoji/un/text/SearchWordUtil;->searchBackward(Lcom/metamoji/un/text/model/StringWithStrokesArray;Ljava/lang/String;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 129
    new-instance p2, Lcom/metamoji/nt/NtTextSearchPosition;

    invoke-direct {p2}, Lcom/metamoji/nt/NtTextSearchPosition;-><init>()V

    .line 130
    const-string p3, "$text"

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtTextSearchPosition;->setModelType(Ljava/lang/String;)V

    .line 131
    const-string/jumbo p3, "textRange"

    invoke-virtual {p2, p1, p3}, Lcom/metamoji/nt/NtTextSearchPosition;->setPosInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    :cond_6
    return-object v0
.end method

.method public setHighlightTextRange(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 421
    invoke-virtual {p2}, Lcom/metamoji/nt/NtTextSearchPosition;->getModelType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 422
    invoke-virtual {p0}, Lcom/metamoji/un/text/NtTextSearchInTextUnitModelProvider;->useModelTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    .line 426
    :cond_0
    const-string/jumbo v1, "textRange"

    invoke-virtual {p2, v1}, Lcom/metamoji/nt/NtTextSearchPosition;->getPosInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 428
    instance-of v1, p2, Lcom/metamoji/un/text/model/TextRange;

    if-eqz v1, :cond_1

    .line 429
    check-cast p2, Lcom/metamoji/un/text/model/TextRange;

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v0

    .line 437
    :goto_1
    instance-of v1, p1, Lcom/metamoji/un/text/model/TextModel;

    if-eqz v1, :cond_3

    .line 438
    move-object v1, p1

    check-cast v1, Lcom/metamoji/un/text/model/TextModel;

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_4

    goto :goto_5

    :cond_4
    if-nez p2, :cond_5

    .line 445
    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/TextModel;->setSearchResults(Ljava/util/List;)V

    goto :goto_3

    .line 447
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 448
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/TextModel;->setSearchResults(Ljava/util/List;)V

    .line 452
    :goto_3
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_5

    .line 457
    :cond_6
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_5

    .line 462
    :cond_7
    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_5

    .line 468
    :cond_8
    instance-of p2, p1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz p2, :cond_9

    .line 469
    check-cast p1, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_4

    :cond_9
    move-object p1, v0

    :goto_4
    if-eqz p1, :cond_a

    .line 472
    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->setNeedsDisplayFrom(Lcom/metamoji/un/text/model/TextPosition;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public setSelectedRange(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 294
    invoke-virtual {p2}, Lcom/metamoji/nt/NtTextSearchPosition;->getModelType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 295
    invoke-virtual {p0}, Lcom/metamoji/un/text/NtTextSearchInTextUnitModelProvider;->useModelTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 299
    :cond_0
    const-string/jumbo v1, "textRange"

    invoke-virtual {p2, v1}, Lcom/metamoji/nt/NtTextSearchPosition;->getPosInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 301
    instance-of v1, p2, Lcom/metamoji/un/text/model/TextRange;

    if-eqz v1, :cond_1

    .line 302
    check-cast p2, Lcom/metamoji/un/text/model/TextRange;

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v0

    .line 310
    :goto_1
    instance-of v1, p1, Lcom/metamoji/un/text/model/TextModel;

    if-eqz v1, :cond_3

    .line 311
    move-object v1, p1

    check-cast v1, Lcom/metamoji/un/text/model/TextModel;

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    .line 317
    :cond_4
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 322
    :cond_5
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 327
    :cond_6
    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    .line 333
    :cond_7
    instance-of v1, p1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_8

    .line 334
    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    :cond_8
    if-eqz v0, :cond_9

    .line 338
    invoke-virtual {v0, p2}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 341
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->checkVisibleCursor()V

    :cond_9
    :goto_3
    return-void
.end method

.method public useModelTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    const-string v1, "$text"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
