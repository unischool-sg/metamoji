.class public Lcom/metamoji/un/text/model/StringWithStrokesArray;
.super Ljava/lang/Object;
.source "StringWithStrokesArray.java"


# instance fields
.field public editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

.field private lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

.field public swsArrayDelegate:Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;

.field private textArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/un/text/model/linetable/LineTable;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    return-void
.end method

.method private appendStringRelyOnParagaraphStyle(ILcom/metamoji/un/text/model/stringws/StringWithStrokes;Lcom/metamoji/un/text/model/TextModel;)Ljava/lang/StringBuilder;
    .locals 3

    .line 1351
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v0

    .line 1352
    new-instance v1, Lcom/metamoji/un/text/model/TextPosition;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    .line 1353
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v0

    .line 1354
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v0

    .line 1355
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NoList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListKind()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 1357
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTotalLeftIndent()F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x20

    invoke-static {v1, v0}, Lcom/metamoji/cm/StringUtils;->stringFromCharacters(CI)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1358
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithEndOfParagraphChar()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1359
    :cond_0
    invoke-virtual {p3, p1}, Lcom/metamoji/un/text/model/TextModel;->getListPrefixSnapshot(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private insertSingleLineString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;",
            "Lcom/metamoji/un/text/model/TextPosition;",
            ")",
            "Lcom/metamoji/un/text/model/TextPosition;"
        }
    .end annotation

    .line 823
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 824
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 828
    :goto_0
    iget v3, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v4, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 865
    iget-object v5, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    if-lt v3, v4, :cond_8

    .line 830
    invoke-static {v5}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 831
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 834
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v5

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v0, v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->characterAtIndex(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 836
    :cond_1
    new-instance v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>()V

    .line 838
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v2, p3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 839
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->cloneMutableExceptPersonalInfo()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, v4

    :goto_1
    if-eqz p3, :cond_3

    .line 841
    check-cast p3, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-virtual {v0, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 844
    :cond_3
    iget-object p3, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->swsArrayDelegate:Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;

    if-eqz p3, :cond_4

    .line 845
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;->notificateAuthorInfoCreating(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 846
    :cond_4
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    move v2, v3

    .line 850
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 853
    new-instance p3, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {p3, p1, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 854
    invoke-virtual {p0, p3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    .line 857
    new-instance p2, Lcom/metamoji/un/text/model/TextPosition;

    iget-object p3, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-direct {p2, p3, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p2

    :cond_6
    if-eq v3, v2, :cond_7

    .line 860
    iget-object v4, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    :cond_7
    invoke-virtual {v0, p1, p2, v4, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->appendString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 862
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p1

    .line 865
    :cond_8
    iget v3, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 866
    iget v9, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 867
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 869
    iget v3, p3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v3, :cond_12

    .line 871
    iget v3, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-eqz v3, :cond_e

    .line 873
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v3, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 874
    iget v3, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    sub-int/2addr v3, v1

    .line 875
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result v4

    if-nez v4, :cond_a

    .line 876
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v4

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->characterAtIndex(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 879
    iget-object v4, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-virtual {v2, p1, p2, v4, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->appendString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 881
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    iget p2, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    sub-int/2addr p2, v1

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v1

    invoke-direct {p1, p2, v1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 883
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {p2, p3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object p2

    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    .line 884
    iget v0, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    .line 886
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 888
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget p3, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 889
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {v0, p2}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    invoke-virtual {p3, v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    :cond_9
    return-object p1

    .line 893
    :cond_a
    new-instance v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v2, p1, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 894
    iget p1, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, v2, p1, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 896
    iget-object p1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {p1, p3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 898
    new-instance p2, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {p2, p1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    .line 899
    move-object p1, p2

    check-cast p1, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-virtual {v2, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    move-object p1, p2

    .line 902
    :cond_b
    new-instance p2, Lcom/metamoji/un/text/model/TextPosition;

    iget v3, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v2

    invoke-direct {p2, v3, v2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 904
    iget v0, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    .line 906
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 908
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v2, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 910
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    if-eqz v2, :cond_c

    .line 911
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v2

    iget p3, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr p3, v1

    invoke-static {v2, p3}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createSetParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;I)Ljava/util/Map;

    move-result-object p3

    .line 912
    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-interface {v1, p3}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 914
    :cond_c
    check-cast p1, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    :cond_d
    return-object p2

    .line 919
    :cond_e
    iget-object v3, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v3, p3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v3

    .line 921
    new-instance v4, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v4, p1, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 922
    invoke-virtual {p0, v4, v2, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    if-eqz v3, :cond_f

    .line 925
    new-instance p1, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {p1, v3}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    .line 926
    move-object p2, p1

    check-cast p2, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-virtual {v4, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    move-object v3, p1

    .line 929
    :cond_f
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result p2

    invoke-direct {p1, v2, p2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    if-eqz v0, :cond_11

    if-eqz v3, :cond_11

    .line 931
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    .line 933
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_11

    .line 935
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v0, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 938
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    if-eqz v0, :cond_10

    .line 939
    iget p3, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr p3, v1

    invoke-static {v3, p3}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createSetParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;I)Ljava/util/Map;

    move-result-object p3

    .line 940
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-interface {v0, p3}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 943
    :cond_10
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->cloneMutableExceptPersonalInfo()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    :cond_11
    return-object p1

    .line 949
    :cond_12
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 951
    iget v2, p3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget-object v3, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-virtual {v4, v2, v3, v9}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->splitStrokesAtOffset(ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    goto :goto_2

    .line 954
    :cond_13
    iget v2, p3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget-object v3, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-virtual {v4, v2, v3, v9}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->splitAtOffset(ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_14

    .line 956
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v3

    if-lez v3, :cond_14

    .line 957
    iget v3, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 960
    :cond_14
    new-instance v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v2, p1, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 961
    iget p1, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, p1, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 963
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    iget p2, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr p2, v1

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v1

    invoke-direct {p1, p2, v1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 965
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {p2, p3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object p2

    if-eqz v0, :cond_15

    if-eqz p2, :cond_15

    .line 966
    iget v0, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    .line 968
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 970
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget p3, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 p3, p3, 0x2

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 971
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {v0, p2}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    invoke-virtual {p3, v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    :cond_15
    return-object p1

    .line 976
    :cond_16
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v3

    iget v5, p3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-ne v3, v5, :cond_18

    .line 977
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v3

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->characterAtIndex(I)C

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 980
    new-instance v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v2, p1, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 981
    iget p1, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, p1, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 982
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    iget p2, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr p2, v1

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v1

    invoke-direct {p1, p2, v1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 984
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {p2, p3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object p2

    if-eqz v0, :cond_17

    if-eqz p2, :cond_17

    .line 985
    iget v0, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    .line 987
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 989
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget p3, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 p3, p3, 0x2

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 990
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {v0, p2}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    invoke-virtual {p3, v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    :cond_17
    return-object p1

    .line 995
    :cond_18
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v0, p3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v0

    .line 997
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v3

    if-ne v1, v3, :cond_1a

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_19
    move v2, v1

    .line 1001
    :cond_1a
    iget v7, p3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget-object v8, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->insertString(Ljava/lang/CharSequence;Ljava/util/List;ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    if-eqz v2, :cond_1b

    .line 1004
    iget-object p1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->swsArrayDelegate:Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;

    if-eqz p1, :cond_1b

    .line 1005
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;->notificateAuthorInfoCreating(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 1008
    :cond_1b
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    iget p2, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget v2, p3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p1, p2, v2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 1011
    iget p2, p3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    add-int/2addr p2, v1

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v2

    if-ne p2, v2, :cond_1c

    iget p2, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr p2, v1

    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    .line 1012
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1c

    .line 1014
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget p3, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr p3, v1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1015
    new-instance p3, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {p3, v0}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    :cond_1c
    return-object p1
.end method

.method private putAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;ILcom/metamoji/cm/Range;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;",
            ">;I",
            "Lcom/metamoji/cm/Range;",
            ")V"
        }
    .end annotation

    .line 1543
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1544
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_6

    .line 1546
    invoke-virtual {p2}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    .line 1547
    iget-object p5, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-object p4, p2

    move-object p3, p7

    move-object p2, p1

    move-object p1, v1

    invoke-virtual/range {p1 .. p6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    return-void

    :cond_0
    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    move-object v3, p7

    move p7, p6

    if-eqz p2, :cond_4

    .line 1551
    new-instance v2, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;

    invoke-direct {v2}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;-><init>()V

    .line 1552
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseFontSize()Z

    move-result p6

    if-eqz p6, :cond_1

    .line 1553
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result p6

    invoke-virtual {v2, p6}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->setFontSize(F)V

    .line 1554
    :cond_1
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUnderline()Z

    move-result p6

    invoke-virtual {v2, p6}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->setUnderline(Z)V

    .line 1555
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isStrikeout()Z

    move-result p6

    invoke-virtual {v2, p6}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->setStrikeout(Z)V

    .line 1556
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseBackgroundColor()Z

    move-result p6

    if-eqz p6, :cond_2

    .line 1557
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object p6

    invoke-virtual {v2, p6}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->setBackgroundColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    .line 1560
    :cond_2
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseFontWeight()Z

    move-result p6

    if-eqz p6, :cond_3

    .line 1561
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontWeight()I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->setFontWeight(I)V

    .line 1563
    :cond_3
    invoke-virtual {p1}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v4

    .line 1564
    sget-object p1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object p2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object p6, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v5, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {p1, p2, p6, v0, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    .line 1572
    iget-object v5, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->putStrokeAttributes(Lcom/metamoji/un/text/model/attr/StrokeAttributes;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    :cond_4
    move-object p1, v1

    if-eqz p3, :cond_6

    .line 1576
    sget-object p2, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->PEN_TYPE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p5, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 1582
    iget-object p6, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    if-eqz p2, :cond_5

    move-object p2, p3

    move-object p3, p4

    move-object p4, v3

    .line 1578
    invoke-virtual/range {p1 .. p7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->putStrokeStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    return-void

    :cond_5
    move-object p2, p3

    move-object p3, p4

    move-object p4, v3

    .line 1582
    invoke-virtual/range {p1 .. p7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->applyStrokeStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    :cond_6
    return-void
.end method

.method private replaceCharactersToBePlainText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 1375
    sget-object v0, Lcom/metamoji/un/text/model/TextModel;->UNICODE_LINE_SEPARATOR_STRING:Ljava/lang/String;

    sget-object v1, Lcom/metamoji/un/text/model/TextModel;->UNICODE_NEW_LINE_STRING:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object p1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 155
    invoke-static {p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createRemoveStringWithStrokes(I)Ljava/util/Map;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-interface {v0, p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public attributesAt(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/attr/Attributes;
    .locals 2

    .line 1732
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1734
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1735
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    move-result-object p1

    return-object p1

    .line 1738
    :cond_0
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;
    .locals 1

    .line 105
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/TextPosition;-><init>()V

    return-object v0
.end method

.method public deleteCharactersInRange(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 9

    .line 437
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 441
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getNormalizedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    .line 442
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 443
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 446
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-static {v2}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    if-eqz v2, :cond_1

    .line 448
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result v2

    if-nez v2, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->removeStringWsAtIndex(IZ)V

    .line 453
    :cond_1
    iget v2, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget v4, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ne v2, v4, :cond_6

    .line 457
    iget v2, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v4, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 458
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 459
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-static {v2}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 462
    :cond_2
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v4, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 463
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v4

    .line 464
    new-instance v5, Lcom/metamoji/cm/Range;

    iget v6, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget v7, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr p1, v7

    invoke-direct {v5, v6, p1}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 465
    iget-object p1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    iget v6, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v2, v5, p1, v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->deleteInRange(Lcom/metamoji/cm/Range;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 467
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result p1

    if-nez p1, :cond_10

    .line 469
    iget p1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-lez p1, :cond_3

    .line 470
    iget-object p1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v5, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    sub-int/2addr v5, v3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    if-nez v4, :cond_5

    if-eqz p1, :cond_4

    .line 475
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 477
    :cond_4
    iget v4, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 478
    iget-object v4, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v5, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    :cond_5
    if-eqz p1, :cond_10

    .line 486
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 487
    iget p1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, p1, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->removeStringWsAtIndex(IZ)V

    return-object v1

    .line 505
    :cond_6
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v4, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 506
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v4

    .line 507
    new-instance v5, Lcom/metamoji/cm/Range;

    iget v6, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v7

    iget v8, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v7, v8

    invoke-direct {v5, v6, v7}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 508
    iget-object v6, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    iget v7, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v2, v5, v6, v7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->deleteInRange(Lcom/metamoji/cm/Range;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 510
    new-instance v5, Ljava/util/TreeSet;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 513
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v6

    if-nez v6, :cond_c

    .line 515
    iget v6, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-lez v6, :cond_7

    .line 516
    iget-object v6, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v7, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    goto :goto_1

    :cond_7
    move-object v6, v1

    :goto_1
    if-nez v4, :cond_9

    if-eqz v6, :cond_8

    .line 521
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 524
    :cond_8
    iget v4, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v4, v3

    iget-object v6, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 525
    iget-object v4, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v6, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v6, v3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    goto :goto_2

    :cond_9
    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_b

    .line 530
    iget-object v6, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    if-eqz v6, :cond_a

    .line 531
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v6

    iget v7, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v7, v3

    invoke-static {v6, v7}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createSetParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;I)Ljava/util/Map;

    move-result-object v6

    .line 532
    iget-object v7, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-interface {v7, v6}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 534
    :cond_a
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v4

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v2

    const-class v6, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-static {v6}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->overwriteOtherStyles(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    .line 537
    :cond_b
    iget v2, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-eq v2, v4, :cond_c

    .line 538
    iget v2, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_c
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 545
    iget v4, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ge v4, v2, :cond_d

    .line 547
    iget-object v4, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v6, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 548
    iget v6, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-lez v6, :cond_d

    .line 549
    new-instance v6, Lcom/metamoji/cm/Range;

    const/4 v7, 0x0

    iget v8, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-direct {v6, v7, v8}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 550
    iget-object v7, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    iget v8, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v4, v6, v7, v8}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->deleteInRange(Lcom/metamoji/cm/Range;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 552
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v4

    if-nez v4, :cond_d

    .line 554
    iget v4, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v6

    sub-int/2addr v6, v3

    if-eq v4, v6, :cond_d

    .line 555
    iget v4, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_d
    iget v4, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v4, v3

    :goto_3
    iget v6, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ge v4, v6, :cond_e

    if-ge v4, v2, :cond_e

    .line 563
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 566
    :cond_e
    invoke-virtual {p0, v5}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->removeStringWsAtIndexs(Ljava/util/TreeSet;)V

    .line 574
    iget p1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 575
    iget v0, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v0, :cond_f

    add-int/lit8 p1, p1, -0x1

    :cond_f
    add-int/lit8 v0, p1, 0x1

    .line 577
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    .line 578
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    .line 579
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v4

    if-eqz v2, :cond_10

    .line 582
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v5

    if-nez v5, :cond_10

    .line 583
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result v5

    if-nez v5, :cond_10

    .line 584
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result v5

    if-nez v5, :cond_10

    .line 586
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v1

    .line 588
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributes()Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-virtual {v2, v5, v4, v6, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->appendString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 589
    invoke-virtual {p0, v0, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->removeStringWsAtIndex(IZ)V

    .line 590
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v0, p1, v1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object v0

    :cond_10
    :goto_4
    return-object v1
.end method

.method public endOfDocument()Lcom/metamoji/un/text/model/TextPosition;
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 116
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/TextPosition;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 118
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v2

    .line 122
    iget-object v3, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 119
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v1, 0x0

    .line 120
    iput v1, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    return-object v0

    .line 122
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 123
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v1

    iput v1, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    return-object v0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    return-object v0
.end method

.method public forEachStringWsInRange(Lcom/metamoji/un/text/model/TextRange;Lcom/metamoji/cm/IAction3;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextRange;",
            "Lcom/metamoji/cm/IAction3<",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            "Lcom/metamoji/cm/Range;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1593
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1597
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getNormalizedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    .line 1598
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 1599
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1601
    iget v1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ne v1, v2, :cond_1

    .line 1603
    iget v1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v1

    .line 1604
    new-instance v2, Lcom/metamoji/cm/Range;

    iget v3, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget v4, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr p1, v4

    invoke-direct {v2, v3, p1}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1605
    iget p1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v1, v2, p1}, Lcom/metamoji/cm/IAction3;->perform(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 1611
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v2, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1612
    new-instance v2, Lcom/metamoji/cm/Range;

    iget v3, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v4

    iget v5, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1613
    iget v3, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3}, Lcom/metamoji/cm/IAction3;->perform(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1616
    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1617
    iget v0, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    if-ge v0, v1, :cond_2

    .line 1618
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1619
    new-instance v4, Lcom/metamoji/cm/Range;

    iget-object v5, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1620
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v4, v3}, Lcom/metamoji/cm/IAction3;->perform(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1624
    :cond_2
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ge v0, v1, :cond_3

    .line 1625
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1626
    new-instance v1, Lcom/metamoji/cm/Range;

    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-direct {v1, v3, v2}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1627
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v0, v1, p1}, Lcom/metamoji/cm/IAction3;->perform(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getAsStringWsArrayWithRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextRange;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getAsStringWsArrayWithRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAsStringWsArrayWithRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextRange;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 316
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getNormalizedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    .line 319
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 322
    iget v4, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v5, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_11

    iget v4, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v5, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    .line 323
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v4, v5, :cond_11

    iget v4, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v5, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    .line 324
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget v4, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-eqz v4, :cond_1

    goto/16 :goto_c

    .line 328
    :cond_1
    iget v1, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget v4, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 354
    iget-object v5, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    if-ne v1, v4, :cond_5

    .line 330
    iget v1, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 331
    new-instance v4, Lcom/metamoji/cm/Range;

    iget v5, v3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget v6, v3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr p1, v6

    invoke-direct {v4, v5, p1}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 332
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 333
    new-instance p1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-virtual {v1, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v5

    .line 334
    invoke-virtual {v1, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p1, v5, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 336
    :cond_2
    new-instance p1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-virtual {v1, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->substringWithRange(Lcom/metamoji/cm/Range;)Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-virtual {v1, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p1, v5, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    :goto_0
    if-nez p2, :cond_4

    .line 340
    iget p2, v3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez p2, :cond_3

    iget p2, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-eqz p2, :cond_4

    iget p2, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    sub-int/2addr v3, v2

    .line 343
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 348
    :cond_3
    new-instance p2, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {p2}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>()V

    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    goto :goto_2

    .line 346
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->cloneMutableExceptPersonalInfo()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 350
    :goto_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 354
    :cond_5
    iget v1, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 355
    new-instance v4, Lcom/metamoji/cm/Range;

    iget v5, v3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v6

    iget v7, v3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 356
    iget v5, v4, Lcom/metamoji/cm/Range;->length:I

    if-lez v5, :cond_9

    .line 357
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 358
    new-instance v5, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-virtual {v1, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v6

    .line 359
    invoke-virtual {v1, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    .line 361
    :cond_6
    new-instance v5, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-virtual {v1, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->substringWithRange(Lcom/metamoji/cm/Range;)Ljava/lang/String;

    move-result-object v6

    .line 362
    invoke-virtual {v1, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    :goto_3
    if-nez p2, :cond_8

    .line 365
    iget v4, v3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v4, :cond_7

    iget v4, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-eqz v4, :cond_8

    iget v4, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v6, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    sub-int/2addr v6, v2

    .line 368
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    .line 373
    :cond_7
    new-instance v1, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>()V

    invoke-virtual {v5, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    goto :goto_5

    .line 371
    :cond_8
    :goto_4
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->cloneMutableExceptPersonalInfo()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 375
    :goto_5
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_9
    iget v1, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v1, v2

    :goto_6
    iget v3, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ge v1, v3, :cond_c

    .line 379
    iget-object v3, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 380
    new-instance v4, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v4, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;)V

    if-nez p2, :cond_b

    if-lez v1, :cond_a

    .line 382
    iget-object v5, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    .line 383
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_7

    .line 388
    :cond_a
    new-instance v3, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {v3}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>()V

    invoke-virtual {v4, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    goto :goto_8

    .line 386
    :cond_b
    :goto_7
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->cloneMutableExceptPersonalInfo()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 390
    :goto_8
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 392
    :cond_c
    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v3, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_10

    .line 394
    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v3, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 395
    new-instance v3, Lcom/metamoji/cm/Range;

    const/4 v4, 0x0

    iget v5, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-direct {v3, v4, v5}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 396
    iget v4, v3, Lcom/metamoji/cm/Range;->length:I

    if-lez v4, :cond_10

    .line 397
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 398
    new-instance v4, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-virtual {v1, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v5

    .line 399
    invoke-virtual {v1, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_9

    .line 401
    :cond_d
    new-instance v4, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-virtual {v1, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->substringWithRange(Lcom/metamoji/cm/Range;)Ljava/lang/String;

    move-result-object v5

    .line 402
    invoke-virtual {v1, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    :goto_9
    if-nez p2, :cond_f

    .line 405
    iget p2, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-eqz p2, :cond_f

    iget p2, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-lez p2, :cond_e

    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    sub-int/2addr p1, v2

    .line 407
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_a

    .line 412
    :cond_e
    new-instance p1, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {p1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>()V

    invoke-virtual {v4, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    goto :goto_b

    .line 410
    :cond_f
    :goto_a
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->cloneMutableExceptPersonalInfo()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 414
    :goto_b
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-object v0

    :cond_11
    :goto_c
    return-object v1
.end method

.method public getAttributes(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/attr/Attributes;
    .locals 4

    .line 1641
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 1643
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1644
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1645
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v0, -0x1

    .line 1646
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1648
    new-instance v2, Lcom/metamoji/cm/Range;

    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1649
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 1650
    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1651
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/attr/Attributes;

    return-object p1

    :cond_1
    return-object v1

    .line 1653
    :cond_2
    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1654
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/attr/Attributes;

    return-object p1

    :cond_3
    return-object v1
.end method

.method public getAttributes(Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/Attributes;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextRange;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)",
            "Lcom/metamoji/un/text/model/attr/Attributes;"
        }
    .end annotation

    .line 1670
    const-class v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 1671
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_a

    .line 1672
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1673
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getAttributes(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object p1

    return-object p1

    .line 1676
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-gt v0, v2, :cond_a

    .line 1678
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto/16 :goto_4

    .line 1681
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1683
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ne v0, v3, :cond_3

    .line 1685
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-eq v0, v3, :cond_2

    .line 1686
    new-instance v3, Lcom/metamoji/cm/Range;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v5

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v6

    iget v6, v6, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_1

    .line 1688
    :cond_2
    new-instance v3, Lcom/metamoji/cm/Range;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v6

    iget v6, v6, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_1

    .line 1689
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_4

    .line 1691
    new-instance v3, Lcom/metamoji/cm/Range;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-direct {v3, v4, v5}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_1

    .line 1693
    :cond_4
    new-instance v3, Lcom/metamoji/cm/Range;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1697
    :goto_1
    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getAttributeArrayInRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1700
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/model/attr/Attributes;

    if-nez v1, :cond_6

    goto :goto_3

    .line 1705
    :cond_6
    invoke-virtual {v3, v1}, Lcom/metamoji/un/text/model/attr/Attributes;->compare(Lcom/metamoji/un/text/model/attr/Attributes;)Ljava/util/EnumSet;

    move-result-object v4

    .line 1707
    instance-of v5, v1, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    if-nez v5, :cond_7

    instance-of v6, v3, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    if-eqz v6, :cond_8

    .line 1709
    :cond_7
    sget-object v6, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1711
    sget-object v6, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontName:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1712
    sget-object v6, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Italic:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1714
    :cond_8
    invoke-virtual {p2, v4}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    if-eqz v5, :cond_5

    .line 1718
    instance-of v4, v3, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz v4, :cond_5

    :goto_3
    move-object v1, v3

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_4
    return-object v1
.end method

.method public getCount()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStrokeStyle(Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextRange;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;",
            ">;)",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;"
        }
    .end annotation

    .line 1799
    invoke-virtual {p2}, Ljava/util/EnumSet;->clear()V

    .line 1801
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_b

    .line 1803
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1804
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1805
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1806
    iget-object v3, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    const/4 v0, -0x1

    .line 1807
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1808
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v3, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1809
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1810
    new-instance v3, Lcom/metamoji/cm/Range;

    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-direct {v3, p1, v2}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1811
    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeStyleSetInRange(Lcom/metamoji/cm/Range;)Ljava/util/HashSet;

    move-result-object p1

    goto/16 :goto_3

    :cond_1
    move-object p1, v1

    goto/16 :goto_3

    .line 1815
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1817
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-gt v3, v4, :cond_8

    .line 1819
    iget-object v4, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    goto/16 :goto_2

    .line 1822
    :cond_3
    iget-object v4, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1824
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1825
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ne v3, v5, :cond_5

    .line 1827
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-eq v3, v5, :cond_4

    .line 1828
    new-instance v5, Lcom/metamoji/cm/Range;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v6

    iget v6, v6, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v7

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v8

    iget v8, v8, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v7, v8

    invoke-direct {v5, v6, v7}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_1

    .line 1830
    :cond_4
    new-instance v5, Lcom/metamoji/cm/Range;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v6

    iget v6, v6, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v7

    iget v7, v7, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v8

    iget v8, v8, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v7, v8

    invoke-direct {v5, v6, v7}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_1

    .line 1831
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v6, 0x0

    if-ne v3, v5, :cond_6

    .line 1833
    new-instance v5, Lcom/metamoji/cm/Range;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v7

    iget v7, v7, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-direct {v5, v6, v7}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_1

    .line 1835
    :cond_6
    new-instance v5, Lcom/metamoji/cm/Range;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1839
    :goto_1
    invoke-virtual {v4, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeStyleSetInRange(Lcom/metamoji/cm/Range;)Ljava/util/HashSet;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1841
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_2
    move-object p1, v0

    :goto_3
    if-eqz p1, :cond_b

    .line 1846
    const-class v0, Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 1847
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v2, v0, :cond_9

    .line 1849
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    return-object p1

    .line 1853
    :cond_9
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    if-nez v1, :cond_a

    move-object v1, v0

    goto :goto_4

    .line 1858
    :cond_a
    invoke-interface {v1, v0}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->compare(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_b
    return-object v1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 275
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTextArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            ">;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    return-object v0
.end method

.method public insertString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;",
            "Lcom/metamoji/un/text/model/TextPosition;",
            ")",
            "Lcom/metamoji/un/text/model/TextPosition;"
        }
    .end annotation

    .line 732
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 733
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v1

    .line 734
    invoke-static {p1, v1}, Lcom/metamoji/cm/StringUtils;->indexOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v5, v2, :cond_6

    add-int/lit8 v6, v2, 0x1

    if-eq v6, v0, :cond_6

    .line 740
    new-instance v2, Lcom/metamoji/cm/Range;

    const/4 v7, 0x0

    invoke-direct {v2, v7, v6}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 741
    invoke-static {p1, v2}, Lcom/metamoji/cm/StringUtils;->substring(Ljava/lang/CharSequence;Lcom/metamoji/cm/Range;)Ljava/lang/CharSequence;

    move-result-object v7

    if-nez p2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 742
    :cond_0
    invoke-static {p2, v2}, Lcom/metamoji/cm/ListUtils;->getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v2

    .line 743
    :goto_0
    invoke-direct {p0, v7, v2, p3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertSingleLineString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p3

    .line 744
    iget v2, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 745
    iget-object v7, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 747
    invoke-virtual {v7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v8

    iget v9, p3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-le v8, v9, :cond_1

    .line 748
    iget p3, p3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget-object v8, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-virtual {v7, p3, v8, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->splitAtOffset(ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v3

    .line 752
    :goto_1
    new-instance v7, Lcom/metamoji/cm/Range;

    sub-int v8, v0, v6

    invoke-direct {v7, v6, v8}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 753
    invoke-static {p1, v1, v7}, Lcom/metamoji/cm/StringUtils;->indexOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;Lcom/metamoji/cm/Range;)I

    move-result v6

    :goto_2
    if-eq v5, v6, :cond_3

    add-int/lit8 v6, v6, 0x1

    if-eq v6, v0, :cond_3

    .line 755
    new-instance v8, Lcom/metamoji/cm/Range;

    iget v9, v7, Lcom/metamoji/cm/Range;->location:I

    iget v7, v7, Lcom/metamoji/cm/Range;->location:I

    sub-int v7, v6, v7

    invoke-direct {v8, v9, v7}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 756
    invoke-static {p1, v8}, Lcom/metamoji/cm/StringUtils;->substring(Ljava/lang/CharSequence;Lcom/metamoji/cm/Range;)Ljava/lang/CharSequence;

    move-result-object v7

    if-nez p2, :cond_2

    move-object v8, v3

    goto :goto_3

    .line 757
    :cond_2
    invoke-static {p2, v8}, Lcom/metamoji/cm/ListUtils;->getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v8

    .line 758
    :goto_3
    new-instance v9, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v9, v7, v8}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    .line 760
    invoke-virtual {p0, v9, v2, v4}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 762
    new-instance v7, Lcom/metamoji/cm/Range;

    sub-int v8, v0, v6

    invoke-direct {v7, v6, v8}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 763
    invoke-static {p1, v1, v7}, Lcom/metamoji/cm/StringUtils;->indexOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;Lcom/metamoji/cm/Range;)I

    move-result v6

    goto :goto_2

    .line 765
    :cond_3
    new-instance v1, Lcom/metamoji/cm/Range;

    iget v5, v7, Lcom/metamoji/cm/Range;->location:I

    iget v6, v7, Lcom/metamoji/cm/Range;->location:I

    sub-int/2addr v0, v6

    invoke-direct {v1, v5, v0}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 766
    invoke-static {p1, v1}, Lcom/metamoji/cm/StringUtils;->substring(Ljava/lang/CharSequence;Lcom/metamoji/cm/Range;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p2, :cond_4

    goto :goto_4

    .line 767
    :cond_4
    invoke-static {p2, v1}, Lcom/metamoji/cm/ListUtils;->getRange(Ljava/util/List;Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v3

    .line 768
    :goto_4
    new-instance p2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {p2, p1, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    add-int/2addr v2, v4

    .line 770
    invoke-virtual {p0, p2, v2, v4}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 771
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result p2

    invoke-direct {p1, v2, p2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    if-eqz p3, :cond_5

    .line 775
    invoke-virtual {p0, p3, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    :cond_5
    return-object p1

    :cond_6
    if-eq v5, v2, :cond_a

    add-int/2addr v2, v4

    if-ne v2, v0, :cond_a

    .line 784
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertSingleLineString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 786
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 788
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v0

    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-le v0, v1, :cond_7

    .line 789
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p2, v0, v1, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->splitAtOffset(ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v3

    :cond_7
    if-eqz v3, :cond_9

    .line 794
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {p2, p3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 796
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->cloneMutableExceptPersonalInfo()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 799
    :cond_8
    iget p2, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr p2, v4

    invoke-virtual {p0, v3, p2, v4}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    :cond_9
    return-object p1

    .line 803
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertSingleLineString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1
.end method

.method public insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 6

    .line 606
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result v0

    if-nez v0, :cond_4

    .line 609
    iget v0, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v3

    iget v4, p2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-gt v3, v4, :cond_0

    .line 612
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget v0, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v0, v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 616
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    iget v3, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v3, v2

    invoke-direct {v0, v3, v1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    goto :goto_0

    .line 618
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 621
    :goto_0
    iget v1, p2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v1, :cond_3

    iget v1, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-eqz v1, :cond_1

    iget v1, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-lez v1, :cond_3

    iget p2, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    sub-int/2addr p2, v2

    .line 623
    invoke-virtual {p0, p2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 626
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 627
    iget p2, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, p2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object p2

    .line 628
    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    if-eqz v1, :cond_2

    .line 630
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v1

    iget v2, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-static {v1, v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createSetParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;I)Ljava/util/Map;

    move-result-object v1

    .line 631
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-interface {v2, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 633
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    :cond_3
    return-object v0

    .line 637
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 638
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStrokes(Ljava/util/List;Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 641
    iget v1, p2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v1, :cond_7

    iget v1, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-eqz v1, :cond_5

    iget v1, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-lez v1, :cond_7

    iget p2, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    sub-int/2addr p2, v2

    .line 643
    invoke-virtual {p0, p2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 646
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 647
    iget p2, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, p2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object p2

    .line 648
    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    if-eqz v1, :cond_6

    .line 650
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v1

    iget v2, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-static {v1, v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createSetParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;I)Ljava/util/Map;

    move-result-object v1

    .line 651
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-interface {v2, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 653
    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    :cond_7
    return-object v0

    .line 657
    :cond_8
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 659
    iget v0, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v4, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_9

    .line 660
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v4, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    goto :goto_1

    :cond_9
    move-object v0, v3

    .line 662
    :goto_1
    iget-object v4, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v4, p2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 663
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->cloneMutableExceptPersonalInfo()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v3

    .line 666
    :cond_a
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v4

    if-nez v4, :cond_c

    if-eqz v3, :cond_b

    .line 668
    check-cast v3, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-virtual {p1, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    goto :goto_2

    .line 670
    :cond_b
    new-instance v3, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {v3}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>()V

    invoke-virtual {p1, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 675
    :cond_c
    :goto_2
    iget-object v3, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->swsArrayDelegate:Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;

    if-eqz v3, :cond_d

    .line 676
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;->notificateAuthorInfoCreating(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 678
    :cond_d
    iget v3, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v4, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_e

    .line 680
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    .line 681
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1

    .line 682
    :cond_e
    iget v3, p2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v3, :cond_f

    .line 684
    iget v0, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 685
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    iget p2, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result p1

    invoke-direct {v0, p2, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object v0

    .line 686
    :cond_f
    iget v3, p2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_10

    .line 688
    iget v0, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v0, v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 689
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    iget p2, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr p2, v2

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result p1

    invoke-direct {v0, p2, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object v0

    .line 692
    :cond_10
    iget v3, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 694
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 696
    iget v4, p2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget-object v5, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-virtual {v0, v4, v5, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->splitStrokesAtOffset(ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    goto :goto_3

    .line 699
    :cond_11
    iget v4, p2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget-object v5, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-virtual {v0, v4, v5, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->splitAtOffset(ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_12

    .line 701
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v3

    if-lez v3, :cond_12

    .line 702
    iget v3, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v3, v2

    invoke-virtual {p0, v0, v3, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 704
    :cond_12
    iget v0, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v0, v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 706
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    iget p2, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 p2, p2, 0x2

    invoke-direct {p1, p2, v1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p1

    :cond_13
    return-object v3
.end method

.method public insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 174
    iget-object p1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 175
    invoke-static {p2}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createRemoveStringWithStrokes(I)Ljava/util/Map;

    move-result-object p1

    .line 176
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-interface {p2, p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public insertStrokes(Ljava/util/List;Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            ">;",
            "Lcom/metamoji/un/text/model/TextPosition;",
            ")",
            "Lcom/metamoji/un/text/model/TextPosition;"
        }
    .end annotation

    .line 1059
    iget v0, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1093
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_4

    .line 1064
    invoke-static {v2}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v1, p3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p3

    if-lez p3, :cond_0

    add-int/lit8 p3, p3, -0x1

    .line 1070
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v0, p3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p3

    .line 1071
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->cloneMutableExceptPersonalInfo()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p3

    move-object v4, p3

    goto :goto_0

    .line 1073
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->cloneMutableExceptPersonalInfo()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v4

    .line 1077
    :cond_1
    :goto_0
    new-instance p3, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {p3, p1, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/util/List;Ljava/util/List;)V

    if-eqz v4, :cond_2

    .line 1079
    invoke-virtual {p3, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 1082
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->swsArrayDelegate:Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;

    if-eqz p1, :cond_3

    .line 1083
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;->notificateAuthorInfoCreating(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 1084
    :cond_3
    invoke-virtual {p0, p3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    .line 1086
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p1

    .line 1093
    :cond_4
    iget v0, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1094
    iget v1, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-eqz v0, :cond_11

    .line 1099
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v2

    .line 1101
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_5
    iget v4, p3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    .line 1170
    :cond_6
    iget v4, p3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget-object v6, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-virtual {v0, v4, v6, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->splitAtOffset(ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    .line 1172
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v1

    if-lez v1, :cond_7

    .line 1173
    iget v1, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 1178
    :cond_7
    new-instance v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 1179
    iget p1, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr p1, v3

    invoke-virtual {p0, v0, p1, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 1181
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    iget p2, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 p2, p2, 0x2

    invoke-direct {p1, p2, v5}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    goto/16 :goto_3

    .line 1104
    :cond_8
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1106
    invoke-virtual {v0, p1, p2, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->insertStrokes(Ljava/util/List;Ljava/util/List;I)V

    .line 1108
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    if-eqz p2, :cond_9

    .line 1110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-static {v1, v5, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createRemoveStrokes(III)Ljava/util/Map;

    move-result-object p1

    .line 1111
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-interface {p2, p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 1114
    :cond_9
    iget-object p1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->swsArrayDelegate:Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;

    if-eqz p1, :cond_a

    .line 1115
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;->notificateAuthorInfoCreating(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 1117
    :cond_a
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    iget p2, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    goto/16 :goto_3

    .line 1122
    :cond_b
    iget v4, p3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v4, :cond_d

    .line 1124
    iget v0, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-eqz v0, :cond_c

    .line 1126
    new-instance v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 1127
    iget p1, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, v0, p1, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 1129
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    iget p2, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    goto :goto_2

    .line 1136
    :cond_c
    new-instance p3, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {p3, p1, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 1137
    invoke-virtual {p0, p3, v5, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 1139
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result p2

    invoke-direct {p1, v5, p2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    move-object v0, p3

    .line 1146
    :goto_2
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->swsArrayDelegate:Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;

    if-eqz p2, :cond_f

    .line 1147
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;->notificateAuthorInfoCreating(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    goto :goto_3

    .line 1150
    :cond_d
    iget v4, p3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget-object v5, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-virtual {v0, v4, v5, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->splitStrokesAtOffset(ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1152
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v1

    if-lez v1, :cond_e

    .line 1153
    iget v1, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 1155
    :cond_e
    new-instance v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 1156
    iget p1, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr p1, v3

    invoke-virtual {p0, v0, p1, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 1158
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    iget p2, p3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr p2, v3

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 1164
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->swsArrayDelegate:Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;

    if-eqz p2, :cond_f

    .line 1165
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/metamoji/un/text/model/IStringWithStrokesArrayDelegate;->notificateAuthorInfoCreating(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    :cond_f
    :goto_3
    if-eqz v2, :cond_10

    .line 1189
    new-instance p2, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {p2, v2}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    invoke-virtual {v0, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    :cond_10
    return-object p1

    :cond_11
    return-object v4
.end method

.method public maxFontSize(Ljava/util/List;)[F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/TextRange;",
            ">;)[F"
        }
    .end annotation

    .line 1921
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/TextRange;

    .line 1922
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v3

    .line 1923
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1924
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    :goto_0
    if-ge v2, v4, :cond_0

    .line 1926
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1927
    invoke-virtual {v3, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    move-result-object v5

    goto :goto_1

    .line 1929
    :cond_1
    invoke-virtual {v3, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v5

    .line 1931
    :goto_1
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/attr/Attributes;->getFontSize()F

    move-result v6

    cmpg-float v6, v1, v6

    if-gez v6, :cond_2

    .line 1932
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/attr/Attributes;->getFontSize()F

    move-result v1

    .line 1933
    :cond_2
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/attr/Attributes;->getFontSize()F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_3

    .line 1934
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/attr/Attributes;->getFontSize()F

    move-result v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    .line 1937
    new-array p1, p1, [F

    const/4 v2, 0x0

    aput v1, p1, v2

    const/4 v1, 0x1

    aput v0, p1, v1

    return-object p1
.end method

.method public offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)I
    .locals 1

    const/4 v0, 0x1

    .line 2024
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;Z)I

    move-result p1

    return p1
.end method

.method public offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;Z)I
    .locals 7

    .line 2028
    iget v0, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ne v0, v1, :cond_1

    .line 2029
    iget v0, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2031
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget p2, p2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->offsetFromIndexToIndex(IIZ)I

    move-result p1

    return p1

    .line 2034
    :cond_0
    iget p2, p2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr p2, p1

    return p2

    .line 2038
    :cond_1
    iget v0, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    iget v0, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    .line 2039
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 2044
    :cond_3
    :goto_0
    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_4

    const/4 v0, -0x1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_1

    :cond_4
    move v0, v1

    .line 2049
    :goto_1
    iget-object v3, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v4, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 2051
    iget v4, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v5

    invoke-virtual {v3, v4, v5, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->offsetFromIndexToIndex(IIZ)I

    move-result v3

    .line 2053
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr p1, v1

    :goto_2
    iget v1, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ge p1, v1, :cond_5

    .line 2054
    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 2055
    invoke-virtual {v1, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength(Z)I

    move-result v1

    add-int/2addr v3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 2057
    :cond_5
    iget p1, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 2059
    iget-object p1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v1, p2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 2061
    iget p2, p2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {p1, v2, p2, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->offsetFromIndexToIndex(IIZ)I

    move-result p1

    add-int/2addr v3, p1

    :cond_6
    mul-int/2addr v3, v0

    return v3
.end method

.method public positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;
    .locals 1

    const/4 v0, 0x1

    .line 1945
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;IZ)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1
.end method

.method public positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;IZ)Lcom/metamoji/un/text/model/TextPosition;
    .locals 5

    .line 1948
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v0, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1949
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1951
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    :cond_0
    const/4 v1, 0x0

    if-ltz p2, :cond_5

    if-eqz p1, :cond_4

    .line 1958
    :goto_0
    iget v2, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {p1, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getMaxIndex(Z)I

    move-result v3

    invoke-virtual {p1, v2, v3, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->offsetFromIndexToIndex(IIZ)I

    move-result v2

    if-lt v2, p2, :cond_1

    .line 1962
    iget v1, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {p1, v1, p2, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->indexFrom(IIZ)I

    move-result p1

    iput p1, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    return-object v0

    .line 1966
    :cond_1
    iget v3, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 1967
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1969
    iget p1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1970
    iput v1, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    return-object v0

    .line 1972
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result p1

    iput p1, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    return-object v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    sub-int/2addr p2, v2

    .line 1983
    iget p1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object p1

    .line 1985
    iput v1, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 1992
    iget v2, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {p1, v1, v2, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->offsetFromIndexToIndex(IIZ)I

    move-result v2

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    neg-int v3, p2

    if-lt v2, v3, :cond_7

    .line 1996
    iget v1, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {p1, v1, p2, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->indexFrom(IIZ)I

    move-result p1

    iput p1, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    return-object v0

    .line 2000
    :cond_7
    iget v2, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-gtz v2, :cond_8

    .line 2001
    iput v1, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    return-object v0

    :cond_8
    if-eqz p1, :cond_9

    .line 2007
    iget v2, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {p1, v1, v2, p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->offsetFromIndexToIndex(IIZ)I

    move-result p1

    add-int/2addr p2, p1

    .line 2008
    :cond_9
    iget p1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object p1

    .line 2010
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getMaxIndex()I

    move-result v2

    iput v2, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method public putAttributes(Lcom/metamoji/un/text/model/attr/Attributes;Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/Attributes;",
            "Lcom/metamoji/un/text/model/TextRange;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1431
    iget-object v2, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 1435
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/un/text/model/TextRange;->getNormalizedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v2

    .line 1436
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    .line 1437
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    .line 1439
    iget v4, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget v5, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1453
    iget-object v6, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    if-ne v4, v5, :cond_1

    .line 1441
    iget v4, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1442
    iget v10, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1443
    new-instance v7, Lcom/metamoji/cm/Range;

    iget v4, v3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v2, v3

    invoke-direct {v7, v4, v2}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1445
    instance-of v2, v1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz v2, :cond_5

    .line 1446
    move-object v6, v1

    check-cast v6, Lcom/metamoji/un/text/model/attr/StringAttributes;

    iget-object v9, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-object/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 1447
    new-instance v6, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    invoke-direct {v6, v1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    .line 1448
    iget-object v9, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-virtual/range {v5 .. v10}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->putStrokeAttributes(Lcom/metamoji/un/text/model/attr/StrokeAttributes;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    return-void

    .line 1453
    :cond_1
    iget v4, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1454
    iget v4, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1455
    new-instance v13, Lcom/metamoji/cm/Range;

    iget v5, v3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v11}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v6

    iget v7, v3, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v6, v7

    invoke-direct {v13, v5, v6}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1457
    instance-of v5, v1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz v5, :cond_2

    .line 1458
    move-object v12, v1

    check-cast v12, Lcom/metamoji/un/text/model/attr/StringAttributes;

    iget-object v15, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-object/from16 v14, p3

    move/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 1459
    new-instance v12, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    invoke-direct {v12, v1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    .line 1460
    iget-object v15, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-virtual/range {v11 .. v16}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->putStrokeAttributes(Lcom/metamoji/un/text/model/attr/StrokeAttributes;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 1463
    :cond_2
    iget-object v4, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1466
    iget v6, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v7, 0x0

    if-ge v6, v4, :cond_3

    .line 1467
    iget-object v6, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v8, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1468
    iget v6, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1469
    new-instance v13, Lcom/metamoji/cm/Range;

    iget v8, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-direct {v13, v7, v8}, Lcom/metamoji/cm/Range;-><init>(II)V

    if-eqz v5, :cond_3

    .line 1472
    move-object v12, v1

    check-cast v12, Lcom/metamoji/un/text/model/attr/StringAttributes;

    iget-object v15, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-object/from16 v14, p3

    move/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 1473
    new-instance v12, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    invoke-direct {v12, v1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    .line 1474
    iget-object v15, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-virtual/range {v11 .. v16}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->putStrokeAttributes(Lcom/metamoji/un/text/model/attr/StrokeAttributes;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 1479
    :cond_3
    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 v3, v3, 0x1

    :goto_0
    iget v6, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ge v3, v6, :cond_5

    if-ge v3, v4, :cond_5

    .line 1480
    iget-object v6, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    if-eqz v5, :cond_4

    .line 1482
    new-instance v13, Lcom/metamoji/cm/Range;

    invoke-virtual {v11}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v6

    invoke-direct {v13, v7, v6}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1483
    move-object v12, v1

    check-cast v12, Lcom/metamoji/un/text/model/attr/StringAttributes;

    iget-object v15, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-object/from16 v14, p3

    move/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 1484
    new-instance v12, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    invoke-direct {v12, v1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    .line 1485
    iget-object v15, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-virtual/range {v11 .. v16}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->putStrokeAttributes(Lcom/metamoji/un/text/model/attr/StrokeAttributes;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    goto :goto_1

    :cond_4
    move/from16 v16, v3

    :goto_1
    add-int/lit8 v3, v16, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public putAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/TextRange;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;",
            ">;",
            "Lcom/metamoji/un/text/model/TextRange;",
            ")V"
        }
    .end annotation

    .line 1500
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1504
    :cond_0
    invoke-virtual/range {p6 .. p6}, Lcom/metamoji/un/text/model/TextRange;->getNormalizedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 1505
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 1506
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 1508
    iget v2, v1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget v3, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ne v2, v3, :cond_1

    .line 1510
    new-instance v11, Lcom/metamoji/cm/Range;

    iget v2, v1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget v0, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget v3, v1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v0, v3

    invoke-direct {v11, v2, v0}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1511
    iget v10, v1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v11}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->putAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;ILcom/metamoji/cm/Range;)V

    return-void

    .line 1515
    :cond_1
    iget-object v3, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v4, v1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1516
    new-instance v9, Lcom/metamoji/cm/Range;

    iget v4, v1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v3

    iget v5, v1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v3, v5

    invoke-direct {v9, v4, v3}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1517
    iget v8, v1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->putAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;ILcom/metamoji/cm/Range;)V

    .line 1519
    iget-object v3, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 1522
    iget v3, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v11, 0x0

    if-ge v3, v10, :cond_2

    .line 1523
    new-instance v9, Lcom/metamoji/cm/Range;

    iget v3, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-direct {v9, v11, v3}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1524
    iget v8, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->putAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;ILcom/metamoji/cm/Range;)V

    .line 1528
    :cond_2
    iget v1, v1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 v1, v1, 0x1

    move v7, v1

    :goto_0
    iget v1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ge v7, v1, :cond_5

    if-ge v7, v10, :cond_5

    if-eqz p1, :cond_3

    .line 1529
    instance-of v1, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz v1, :cond_4

    .line 1530
    :cond_3
    new-instance v8, Lcom/metamoji/cm/Range;

    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v1

    invoke-direct {v8, v11, v1}, Lcom/metamoji/cm/Range;-><init>(II)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 1531
    invoke-direct/range {v1 .. v8}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->putAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;ILcom/metamoji/cm/Range;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public rangeForSameAttributes(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/Attributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;",
            "Lcom/metamoji/un/text/model/TextPosition;",
            ")",
            "Lcom/metamoji/un/text/model/TextRange;"
        }
    .end annotation

    .line 1753
    invoke-virtual {p0, p3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->attributesAt(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v0

    .line 1756
    invoke-virtual {p1, v0, p2}, Lcom/metamoji/un/text/model/attr/Attributes;->compare(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p3

    :goto_0
    const/4 v1, -0x1

    .line 1759
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 1760
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->attributesAt(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v2

    .line 1762
    invoke-virtual {p1, v2, p2}, Lcom/metamoji/un/text/model/attr/Attributes;->compare(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1765
    :cond_0
    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/TextPosition;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1770
    :goto_1
    new-instance v2, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v2, v0}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    :goto_2
    const/4 v0, 0x1

    .line 1775
    invoke-virtual {p0, p3, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 1776
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->attributesAt(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v1

    .line 1778
    invoke-virtual {p1, v1, p2}, Lcom/metamoji/un/text/model/attr/Attributes;->compare(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 1781
    :cond_1
    invoke-virtual {v0, p3}, Lcom/metamoji/un/text/model/TextPosition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1785
    :goto_3
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p1, p3}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/TextRange;->setEnd(Lcom/metamoji/un/text/model/TextPosition;)V

    return-object v2

    :cond_2
    move-object p3, v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public rangesFontSizeDesignated()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/TextRange;",
            ">;"
        }
    .end annotation

    .line 1874
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v0

    .line 1876
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    .line 1878
    invoke-virtual {p0, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v4

    .line 1880
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1881
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributes()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    .line 1883
    :cond_0
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributes()Ljava/util/List;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_5

    .line 1887
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v2

    move-object v8, v6

    :goto_2
    if-gt v7, v5, :cond_5

    if-ge v7, v5, :cond_1

    .line 1891
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/text/model/attr/Attributes;

    goto :goto_3

    :cond_1
    move-object v9, v6

    :goto_3
    if-nez v8, :cond_2

    if-eqz v9, :cond_2

    .line 1893
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseFontSize()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1896
    new-instance v8, Lcom/metamoji/un/text/model/TextRange;

    new-instance v9, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v9, v3, v7}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    invoke-direct {v8, v9}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    goto :goto_4

    :cond_2
    if-eqz v8, :cond_4

    if-eqz v9, :cond_3

    .line 1898
    invoke-virtual {v9}, Lcom/metamoji/un/text/model/attr/Attributes;->isUseFontSize()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1901
    :cond_3
    new-instance v9, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v9, v3, v7}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/metamoji/un/text/model/TextRange;->setEnd(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1902
    invoke-virtual {v8, v2}, Lcom/metamoji/un/text/model/TextRange;->setEmpty(Z)V

    .line 1903
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v6

    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method public removeAllStringWss()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 190
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-static {v1, v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createInsertStringWithStrokes(ILcom/metamoji/un/text/model/stringws/StringWithStrokes;)Ljava/util/Map;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-interface {v2, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeStringWsAtIndex(IZ)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 228
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-static {p1, p2}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createInsertStringWithStrokes(ILcom/metamoji/un/text/model/stringws/StringWithStrokes;)Ljava/util/Map;

    move-result-object p2

    .line 229
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-interface {v0, p2}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 232
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removeStringWsAtIndexs(Ljava/util/TreeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 247
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-static {v1, v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createInsertStringWithStrokes(ILcom/metamoji/un/text/model/stringws/StringWithStrokes;)Ljava/util/Map;

    move-result-object v1

    .line 248
    iget-object v2, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-interface {v2, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public splitLastNewLineChar(I)Z
    .locals 6

    .line 1393
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1394
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1396
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1398
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->characterAtIndex(I)C

    move-result v3

    .line 1400
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 1402
    new-instance v4, Lcom/metamoji/cm/Range;

    invoke-direct {v4, v1, v2}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1404
    invoke-virtual {v0, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v5

    .line 1407
    invoke-virtual {v0, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->removeStringAndAttributesInRange(Lcom/metamoji/cm/Range;)V

    .line 1409
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    if-eqz v0, :cond_0

    .line 1410
    invoke-static {p1, v1, v3, v5}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createInsertString(IILjava/lang/CharSequence;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 1411
    iget-object v1, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    invoke-interface {v1, v0}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 1415
    :cond_0
    new-instance v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v0, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;)V

    add-int/2addr p1, v2

    .line 1416
    invoke-virtual {p0, v0, p1, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public substringWithRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 1203
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->substringWithRange(Lcom/metamoji/un/text/model/TextRange;ZLcom/metamoji/un/text/model/TextModel;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public substringWithRange(Lcom/metamoji/un/text/model/TextRange;ZLcom/metamoji/un/text/model/TextModel;)Ljava/lang/CharSequence;
    .locals 10

    .line 1218
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1223
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getNormalizedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    .line 1224
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 1225
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1227
    iget v2, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget v3, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    .line 1229
    iget-object p3, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    if-nez p2, :cond_3

    .line 1231
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1232
    new-instance p2, Lcom/metamoji/cm/Range;

    iget v1, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget v0, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr p1, v0

    invoke-direct {p2, v1, p1}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 1234
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result p1

    .line 1235
    iget v0, p2, Lcom/metamoji/cm/Range;->location:I

    iget v1, p2, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_1

    .line 1236
    iget v0, p2, Lcom/metamoji/cm/Range;->location:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p2, Lcom/metamoji/cm/Range;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "comes with location=%d length=%d besides string length is %d"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1237
    iget v0, p2, Lcom/metamoji/cm/Range;->location:I

    sub-int/2addr p1, v0

    iput p1, p2, Lcom/metamoji/cm/Range;->length:I

    .line 1240
    :cond_1
    invoke-virtual {p3, p2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->substringWithRange(Lcom/metamoji/cm/Range;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1244
    :cond_2
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1248
    :cond_3
    iget p2, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget v0, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr p1, v0

    invoke-virtual {p3, p2, p1, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->subSequenceWithRange(IIZ)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1252
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_5

    .line 1255
    invoke-virtual {p3}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v3

    goto :goto_0

    :cond_5
    move-object v3, v1

    .line 1257
    :goto_0
    iget-object v5, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v6, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1258
    iget v6, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-lt v6, v4, :cond_6

    .line 1259
    iget-object v6, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v7, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    sub-int/2addr v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    goto :goto_1

    :cond_6
    move-object v6, v1

    :goto_1
    const/4 v7, 0x0

    if-eqz v3, :cond_8

    if-eqz v6, :cond_7

    .line 1261
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    iget v8, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v8, :cond_8

    .line 1264
    invoke-direct {p0, v7, v6, p3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->appendStringRelyOnParagaraphStyle(ILcom/metamoji/un/text/model/stringws/StringWithStrokes;Lcom/metamoji/un/text/model/TextModel;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1266
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_8
    if-nez p2, :cond_a

    .line 1269
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1270
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v6

    if-nez v6, :cond_9

    .line 1271
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v6

    iget v8, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v6, v8

    if-lez v6, :cond_b

    .line 1273
    iget v8, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v5, v8, v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->substringWithRange(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1278
    :cond_9
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1283
    :cond_a
    iget v6, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v8

    iget v9, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v8, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->subSequenceWithRange(IIZ)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1286
    :cond_b
    :goto_2
    iget v0, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/2addr v0, v4

    :goto_3
    iget v6, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ge v0, v6, :cond_f

    .line 1288
    iget-object v6, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    if-eqz v3, :cond_c

    .line 1289
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1291
    invoke-direct {p0, v0, v5, p3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->appendStringRelyOnParagaraphStyle(ILcom/metamoji/un/text/model/stringws/StringWithStrokes;Lcom/metamoji/un/text/model/TextModel;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 1293
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_c
    if-nez p2, :cond_d

    .line 1296
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1297
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1300
    :cond_d
    invoke-virtual {v6, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getCharSequence(Z)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move-object v5, v6

    goto :goto_3

    .line 1304
    :cond_f
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-gtz v0, :cond_10

    if-eqz v3, :cond_15

    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v0, :cond_15

    .line 1307
    :cond_10
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v6, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_11

    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    :cond_11
    if-eqz v3, :cond_12

    .line 1308
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1310
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-direct {p0, v0, v5, p3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->appendStringRelyOnParagaraphStyle(ILcom/metamoji/un/text/model/stringws/StringWithStrokes;Lcom/metamoji/un/text/model/TextModel;)Ljava/lang/StringBuilder;

    move-result-object p3

    if-eqz p3, :cond_12

    .line 1312
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_12
    if-eqz v1, :cond_15

    if-nez p2, :cond_14

    .line 1316
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 1317
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result p2

    if-nez p2, :cond_13

    .line 1318
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v1, v7, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->substringWithRange(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1322
    :cond_13
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1327
    :cond_14
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v1, v7, p1, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->subSequenceWithRange(IIZ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1333
    :cond_15
    :goto_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->replaceCharactersToBePlainText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public textLength()I
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 290
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;
    .locals 1

    if-ltz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
