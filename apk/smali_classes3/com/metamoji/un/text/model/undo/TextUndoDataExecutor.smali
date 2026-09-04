.class public Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;
.super Ljava/lang/Object;
.source "TextUndoDataExecutor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private isUndo:Z

.field private textModel:Lcom/metamoji/un/text/model/TextModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/TextModel;Z)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    .line 48
    iput-boolean p2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->isUndo:Z

    return-void
.end method

.method private addUndoRedoData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    return-void
.end method

.method private createMMJEdColorComponentFromRGB(Ljava/lang/String;)Lcom/metamoji/un/text/model/ColorComponent;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1401
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    .line 1402
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v0, v3

    const/4 v4, 0x4

    .line 1403
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1404
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/4 v5, 0x6

    .line 1405
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1406
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 1408
    new-instance v2, Lcom/metamoji/un/text/model/ColorComponent;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v0, v1, p1}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(FFFF)V

    return-object v2
.end method

.method private createMMJEdMutableStringAttributes(Ljava/util/Map;)Lcom/metamoji/un/text/model/attr/MutableStringAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/un/text/model/attr/MutableStringAttributes;"
        }
    .end annotation

    .line 1375
    new-instance v0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 1376
    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->setMMJEdAttributesProperty(Lcom/metamoji/un/text/model/attr/IAttributesAccess;Ljava/util/Map;)V

    .line 1379
    const-string v1, "fontName"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1380
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setFontName(Ljava/lang/String;)V

    .line 1382
    const-string v1, "italic"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1383
    :goto_0
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setItalic(Z)V

    return-object v0
.end method

.method private createMMJEdMutableStrokeAttributes(Ljava/util/Map;)Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;"
        }
    .end annotation

    .line 1390
    new-instance v0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;-><init>()V

    .line 1391
    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->setMMJEdAttributesProperty(Lcom/metamoji/un/text/model/attr/IAttributesAccess;Ljava/util/Map;)V

    return-object v0
.end method

.method private static createTextPosition(Ljava/util/Map;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/un/text/model/TextPosition;"
        }
    .end annotation

    .line 1455
    const-string/jumbo v0, "swsaOffset"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1456
    const-string/jumbo v1, "textOffset"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1457
    new-instance v1, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object v1
.end method

.method public static createTextRange(Ljava/util/Map;)Lcom/metamoji/un/text/model/TextRange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/un/text/model/TextRange;"
        }
    .end annotation

    .line 1444
    const-string/jumbo v0, "startPos"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->createTextPosition(Ljava/util/Map;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 1445
    const-string v1, "endPos"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->createTextPosition(Ljava/util/Map;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 1446
    const-string/jumbo v2, "selectedAll"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 1448
    new-instance v2, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1449
    invoke-virtual {v2, p0}, Lcom/metamoji/un/text/model/TextRange;->setSelectedAll(Z)V

    return-object v2
.end method

.method private createUIColorFromRGBA(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1417
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    .line 1418
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x4

    .line 1419
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1420
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x6

    .line 1421
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1422
    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v5, 0x8

    .line 1423
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1424
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 1426
    invoke-static {p1, v0, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private processForSwitchRenderingStringWs(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 700
    const-string v0, "arrayIndex"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 701
    const-string v1, "renderStrokes"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 703
    iget-object v1, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 705
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v2

    .line 707
    invoke-static {v2, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createForSwitchRenderingStringWs(ZI)Ljava/util/Map;

    move-result-object v2

    .line 708
    invoke-direct {p0, v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    .line 710
    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setRenderStrokes(Z)V

    .line 711
    iget-object p1, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    new-instance v1, Lcom/metamoji/un/text/model/TextPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    invoke-virtual {p1, v1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V

    :cond_0
    return-void
.end method

.method private processInsertString(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 173
    const-string v0, "arrayIndex"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 174
    const-string v1, "index"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 175
    const-string v1, "aString"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 177
    const-string v1, "StringAttrs"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cm/Blob;

    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p1

    .line 178
    new-instance v1, Lcom/metamoji/cm/DataArchiver;

    const/4 v2, 0x0

    array-length v4, p1

    invoke-direct {v1, p1, v2, v4}, Lcom/metamoji/cm/DataArchiver;-><init>([BII)V

    .line 179
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 180
    const-class p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-static {v4, v1, p1}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 182
    iget-object p1, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 183
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->insertString(Ljava/lang/CharSequence;Ljava/util/List;ILcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    .line 186
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v5

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, v5, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createRemoveString(III)Ljava/util/Map;

    move-result-object p1

    .line 187
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    return-void
.end method

.method private processInsertStringWithStrokes(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 285
    const-string v0, "index"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 287
    const-string/jumbo v1, "strWs"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cm/Blob;

    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p1

    .line 288
    new-instance v1, Lcom/metamoji/cm/DataArchiver;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2}, Lcom/metamoji/cm/DataArchiver;-><init>([BII)V

    .line 289
    new-instance p1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>()V

    .line 290
    invoke-virtual {p1, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    .line 292
    iget-object v1, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;IZ)V

    .line 295
    invoke-static {v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createRemoveStringWithStrokes(I)Ljava/util/Map;

    move-result-object p1

    .line 296
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    return-void
.end method

.method private processOverwriteParagraphStyles(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 641
    const-string/jumbo v0, "swsaIndexs"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 642
    const-string v1, "paragStyles"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 643
    const-string v2, "paragOwFlag"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->enumSetFromInt(I)Ljava/util/EnumSet;

    move-result-object p1

    .line 646
    iget-object v2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v2

    invoke-static {v2, v0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createOverwriteParagraphStyles(Lcom/metamoji/un/text/model/StringWithStrokesArray;Ljava/util/List;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object v2

    .line 647
    invoke-direct {p0, v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    const/4 v2, 0x0

    .line 649
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 650
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 651
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 652
    new-instance v5, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    invoke-direct {v5, v4}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;-><init>(Ljava/util/Map;)V

    .line 654
    iget-object v4, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v3

    .line 655
    new-instance v4, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    .line 656
    invoke-virtual {v4, v5, p1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->overwriteOtherStyles(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    .line 657
    invoke-virtual {v3, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processOverwriteStringAttributes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 329
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processOverwriteStringAttributes(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method private processOverwriteStringAttributes(Ljava/util/Map;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 332
    const-string v0, "arrayIndex"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 333
    const-string v0, "index"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 334
    const-string v1, "StringAttrs"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 335
    const-string v1, "overwriteFlag"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->enumSetFromInt(I)Ljava/util/EnumSet;

    move-result-object v4

    .line 337
    const-string v1, "StringAttrs.New"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 339
    iget-object v2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    .line 340
    new-instance v8, Lcom/metamoji/cm/Range;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v8, v0, v3}, Lcom/metamoji/cm/Range;-><init>(II)V

    const/4 v9, 0x0

    if-nez v1, :cond_0

    .line 345
    invoke-virtual {v2, v8}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 347
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v9

    .line 348
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 349
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 350
    invoke-direct {p0, v10}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->createMMJEdMutableStringAttributes(Ljava/util/Map;)Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    move-result-object v10

    .line 351
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 355
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v9

    .line 356
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 357
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 358
    invoke-direct {p0, v10}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->createMMJEdMutableStringAttributes(Ljava/util/Map;)Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    move-result-object v10

    .line 359
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 363
    :cond_2
    invoke-static {v6, v0, v1, v3, v4}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createOverwriteStringAttributes(IILjava/util/List;Ljava/util/List;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object v0

    move v10, v9

    .line 365
    :goto_3
    iget v1, v8, Lcom/metamoji/cm/Range;->length:I

    const/4 v3, 0x1

    if-ge v10, v1, :cond_3

    .line 366
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 367
    invoke-direct {p0, v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->createMMJEdMutableStringAttributes(Ljava/util/Map;)Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    move-result-object v1

    move v5, v3

    .line 368
    new-instance v3, Lcom/metamoji/cm/Range;

    iget v11, v8, Lcom/metamoji/cm/Range;->location:I

    add-int/2addr v11, v10

    invoke-direct {v3, v11, v5}, Lcom/metamoji/cm/Range;-><init>(II)V

    const/4 v5, 0x0

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    add-int/lit8 v10, v10, 0x1

    move-object v2, v1

    goto :goto_3

    :cond_3
    move v5, v3

    .line 372
    const-string v1, "relatedResizeModel"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 376
    const-string v2, "param"

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    .line 377
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    :goto_4
    if-ltz v4, :cond_6

    .line 379
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 380
    const-string v6, "name"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 381
    const-string v7, "resizeUnit"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 382
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_5

    .line 384
    invoke-direct {p0, v5, v9}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processRelatedResizeUnit(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_5

    if-nez v3, :cond_4

    .line 387
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 389
    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 396
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_7

    if-eqz v3, :cond_7

    .line 399
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-nez p2, :cond_8

    .line 404
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    return-void

    .line 406
    :cond_8
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private processOverwriteStrokeStyles(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 514
    const-string v0, "arrayIndex"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 515
    const-string v1, "index"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 516
    const-string/jumbo v2, "strokeStyleArray"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/cm/Blob;

    .line 517
    const-string v3, "overwriteFlag"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->enumSetFromInt(I)Ljava/util/EnumSet;

    move-result-object p1

    .line 519
    iget-object v3, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 524
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    .line 525
    new-instance v5, Lcom/metamoji/cm/DataArchiver;

    array-length v6, v2

    invoke-direct {v5, v2, v4, v6}, Lcom/metamoji/cm/DataArchiver;-><init>([BII)V

    .line 526
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 527
    const-class v6, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    invoke-static {v2, v5, v6}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 528
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v5, v4

    .line 531
    :goto_0
    new-instance v6, Lcom/metamoji/cm/Range;

    invoke-direct {v6, v1, v5}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 534
    invoke-virtual {v3, v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v1

    new-instance v5, Lcom/metamoji/un/text/model/TextPosition;

    iget v7, v6, Lcom/metamoji/cm/Range;->location:I

    invoke-direct {v5, v0, v7}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    invoke-static {p1, v1, v5}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createOverwriteStrokesStyle(Ljava/util/EnumSet;Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Ljava/util/Map;

    move-result-object p1

    .line 535
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    .line 537
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokes()Ljava/util/List;

    move-result-object p1

    move v0, v4

    .line 538
    :goto_1
    iget v1, v6, Lcom/metamoji/cm/Range;->length:I

    if-ge v0, v1, :cond_2

    .line 539
    iget v1, v6, Lcom/metamoji/cm/Range;->location:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    .line 541
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    .line 542
    invoke-interface {v3}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getCountOfStroke()I

    move-result v5

    move v7, v4

    :goto_2
    if-ge v7, v5, :cond_1

    .line 544
    invoke-interface {v1, v7}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getStrokeAt(I)Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    move-result-object v8

    .line 545
    invoke-interface {v3, v7}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getStrokeAt(I)Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    move-result-object v9

    .line 546
    invoke-interface {v9}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->setStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private processOverwriteStrokesAttributes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 423
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processOverwriteStrokesAttributes(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method private processOverwriteStrokesAttributes(Ljava/util/Map;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 426
    const-string v0, "arrayIndex"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 427
    const-string v0, "index"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 428
    const-string/jumbo v1, "strokesAttrs"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/List;

    .line 429
    const-string v1, "overwriteFlag"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->enumSetFromInt(I)Ljava/util/EnumSet;

    move-result-object v4

    .line 431
    const-string/jumbo v1, "strokesAttrsNew"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 433
    iget-object v2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    .line 434
    new-instance v8, Lcom/metamoji/cm/Range;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v8, v0, v3}, Lcom/metamoji/cm/Range;-><init>(II)V

    const/4 v9, 0x0

    if-nez v1, :cond_0

    .line 439
    invoke-virtual {v2, v8}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 441
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v9

    .line 442
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 443
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 444
    invoke-direct {p0, v10}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->createMMJEdMutableStrokeAttributes(Ljava/util/Map;)Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;

    move-result-object v10

    .line 445
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 449
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v9

    .line 450
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 451
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 452
    invoke-direct {p0, v10}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->createMMJEdMutableStrokeAttributes(Ljava/util/Map;)Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;

    move-result-object v10

    .line 453
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 457
    :cond_2
    invoke-static {v6, v0, v1, v3, v4}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createOverwriteStrokesAttributes(IILjava/util/List;Ljava/util/List;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object v0

    move v10, v9

    .line 459
    :goto_3
    iget v1, v8, Lcom/metamoji/cm/Range;->length:I

    const/4 v3, 0x1

    if-ge v10, v1, :cond_3

    .line 460
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 461
    invoke-direct {p0, v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->createMMJEdMutableStrokeAttributes(Ljava/util/Map;)Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;

    move-result-object v1

    move v5, v3

    .line 462
    new-instance v3, Lcom/metamoji/cm/Range;

    iget v11, v8, Lcom/metamoji/cm/Range;->location:I

    add-int/2addr v11, v10

    invoke-direct {v3, v11, v5}, Lcom/metamoji/cm/Range;-><init>(II)V

    const/4 v5, 0x0

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->putStrokeAttributes(Lcom/metamoji/un/text/model/attr/StrokeAttributes;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/undo/ITextUndoManager;I)V

    add-int/lit8 v10, v10, 0x1

    move-object v2, v1

    goto :goto_3

    :cond_3
    move v5, v3

    .line 466
    const-string v1, "relatedResizeModel"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 470
    const-string v2, "param"

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    .line 471
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    :goto_4
    if-ltz v4, :cond_6

    .line 473
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 474
    const-string v6, "name"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 475
    const-string v7, "resizeUnit"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 476
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_5

    .line 478
    invoke-direct {p0, v5, v9}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processRelatedResizeUnit(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_5

    if-nez v3, :cond_4

    .line 481
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 483
    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 490
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_7

    if-eqz v3, :cond_7

    .line 493
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-nez p2, :cond_8

    .line 498
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    return-void

    .line 500
    :cond_8
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private processRelatedResizeUnit(Ljava/util/Map;Z)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 915
    new-instance v0, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v0}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 916
    new-instance v1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 917
    const-string/jumbo v2, "x"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 918
    const-string/jumbo v3, "y"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 919
    const-string/jumbo v4, "x.New"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 920
    const-string/jumbo v5, "y.New"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 922
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v6, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v6, v0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 923
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, v1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 926
    :cond_0
    const-string/jumbo v2, "width"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 927
    const-string v3, "height"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 928
    const-string/jumbo v4, "width.New"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 929
    const-string v5, "height.New"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 931
    new-instance v6, Lcom/metamoji/cm/SizeF;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v6, v2, v3}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v6, v0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 932
    new-instance v2, Lcom/metamoji/cm/SizeF;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v2, v1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 935
    :cond_1
    const-string/jumbo v2, "rotation"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 936
    const-string/jumbo v3, "rotation.New"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 938
    iput-object v2, v0, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    .line 939
    iput-object v3, v1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    .line 942
    :cond_2
    const-string v2, "contentScale"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 943
    const-string v3, "contentScale.New"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 945
    iput-object v2, v0, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    .line 946
    iput-object v3, v1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    .line 949
    :cond_3
    const-string v2, "drUndoModel"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    .line 953
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createResizeUnitParams(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object v1

    .line 956
    iget-object v2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    iget-object v2, v2, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    iget-boolean v3, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->isUndo:Z

    invoke-interface {v2, v0, p1, v3, p2}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->setGeometricUndoOrRedo(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;ZZ)V

    return-object v1
.end method

.method private processRemoveString(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 200
    const-string v0, "arrayIndex"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 201
    const-string v1, "rangeStart"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 202
    const-string v2, "rangeEnd"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 203
    new-instance v2, Lcom/metamoji/cm/Range;

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v2, v1, p1}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 205
    iget-object v3, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v3

    .line 208
    invoke-virtual {v3, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->substringWithRange(Lcom/metamoji/cm/Range;)Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-virtual {v3, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v2

    .line 210
    invoke-static {v0, v1, v4, v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createInsertString(IILjava/lang/CharSequence;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 211
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    .line 213
    new-instance v0, Lcom/metamoji/cm/Range;

    invoke-direct {v0, v1, p1}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->removeStringAndAttributesInRange(Lcom/metamoji/cm/Range;)V

    return-void
.end method

.method private processRemoveStringWithStrokes(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 307
    const-string v0, "index"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 310
    iget-object v0, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createInsertStringWithStrokes(ILcom/metamoji/un/text/model/stringws/StringWithStrokes;)Ljava/util/Map;

    move-result-object v0

    .line 311
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    .line 313
    iget-object v0, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->removeStringWsAtIndex(IZ)V

    return-void
.end method

.method private processRemoveStrokes(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 259
    const-string v0, "arrayIndex"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 260
    const-string v1, "rangeStart"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 261
    const-string v2, "rangeEnd"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 262
    new-instance v2, Lcom/metamoji/cm/Range;

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v2, v1, p1}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 264
    iget-object v3, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v3

    .line 267
    invoke-virtual {v3, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v4

    .line 268
    invoke-virtual {v3, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v2

    .line 269
    invoke-static {v0, v1, v4, v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createInsertStrokes(IILjava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 270
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    .line 272
    new-instance v0, Lcom/metamoji/cm/Range;

    invoke-direct {v0, v1, p1}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->removeStrokesAndAttributesInRange(Lcom/metamoji/cm/Range;)V

    return-void
.end method

.method private processReplaceStrokesStyles(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 563
    const-string v0, "arrayIndex"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 564
    const-string v1, "index"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 565
    const-string/jumbo v2, "strokeStyleArray"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cm/Blob;

    .line 568
    iget-object v2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 573
    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p1

    .line 574
    new-instance v4, Lcom/metamoji/cm/DataArchiver;

    array-length v5, p1

    invoke-direct {v4, p1, v3, v5}, Lcom/metamoji/cm/DataArchiver;-><init>([BII)V

    .line 575
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 576
    const-class v3, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    invoke-static {p1, v4, v3}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 577
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 580
    :goto_0
    new-instance v4, Lcom/metamoji/cm/Range;

    invoke-direct {v4, v1, v3}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 583
    invoke-virtual {v2, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokesWithRange(Lcom/metamoji/cm/Range;)Ljava/util/List;

    move-result-object v1

    new-instance v5, Lcom/metamoji/un/text/model/TextPosition;

    iget v6, v4, Lcom/metamoji/cm/Range;->location:I

    invoke-direct {v5, v0, v6}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    invoke-static {v1, v5}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createReplaceStrokesStyle(Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Ljava/util/Map;

    move-result-object v0

    .line 584
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    if-lez v3, :cond_1

    .line 587
    invoke-virtual {v2, p1, v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->replaceStrokes(Ljava/util/List;Lcom/metamoji/cm/Range;)V

    :cond_1
    return-void
.end method

.method private processResizeUnitTask(Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 768
    const-string v2, "relatedResizeModel"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 772
    iget-boolean v4, v0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->isUndo:Z

    const-string v5, "resizeUnit"

    const-string v6, "param"

    const-string v7, "name"

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 773
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v8

    const/4 v10, 0x0

    :goto_0
    if-ltz v4, :cond_3

    .line 775
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 776
    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 777
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 778
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    if-eqz v11, :cond_1

    .line 780
    invoke-direct {v0, v11, v8}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processRelatedResizeUnit(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_1

    if-nez v10, :cond_0

    .line 783
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 785
    :cond_0
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    .line 792
    :cond_3
    new-instance v4, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v4}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 793
    new-instance v11, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v11}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 794
    const-string/jumbo v12, "x"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    .line 795
    const-string/jumbo v13, "y"

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    .line 796
    const-string/jumbo v14, "x.New"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    .line 797
    const-string/jumbo v15, "y.New"

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    if-eqz v12, :cond_4

    if-eqz v13, :cond_4

    if-eqz v14, :cond_4

    if-eqz v15, :cond_4

    .line 799
    new-instance v9, Landroid/graphics/PointF;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-direct {v9, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v9, v4, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 800
    new-instance v9, Landroid/graphics/PointF;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-direct {v9, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v9, v11, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 803
    :cond_4
    const-string/jumbo v9, "width"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    .line 804
    const-string v12, "height"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    .line 805
    const-string/jumbo v13, "width.New"

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    .line 806
    const-string v14, "height.New"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    if-eqz v9, :cond_5

    if-eqz v12, :cond_5

    if-eqz v13, :cond_5

    if-eqz v14, :cond_5

    .line 808
    new-instance v15, Lcom/metamoji/cm/SizeF;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-direct {v15, v9, v12}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v15, v4, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 809
    new-instance v9, Lcom/metamoji/cm/SizeF;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-direct {v9, v12, v13}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v9, v11, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 812
    :cond_5
    const-string/jumbo v9, "rotation"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    .line 813
    const-string/jumbo v12, "rotation.New"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    if-eqz v9, :cond_6

    if-eqz v12, :cond_6

    .line 815
    iput-object v9, v4, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    .line 816
    iput-object v12, v11, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    .line 819
    :cond_6
    const-string v9, "contentScale"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    .line 820
    const-string v12, "contentScale.New"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    if-eqz v9, :cond_7

    if-eqz v12, :cond_7

    .line 822
    iput-object v9, v4, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    .line 823
    iput-object v12, v11, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    .line 826
    :cond_7
    const-string v9, "drUndoModel"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/df/model/IModel;

    .line 830
    invoke-static {v11, v4, v9}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createResizeUnitParams(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object v11

    .line 833
    iget-object v12, v0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    iget-object v12, v12, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    iget-boolean v13, v0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->isUndo:Z

    invoke-interface {v12, v4, v9, v13, v8}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->setGeometricUndoOrRedo(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/model/IModel;ZZ)V

    .line 837
    const-string v4, "fontSizeUndoModel"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_e

    const/4 v12, 0x0

    .line 841
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, -0x1

    if-ge v12, v13, :cond_9

    .line 842
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 843
    const-string/jumbo v15, "unitStyle"

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 844
    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    goto :goto_2

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_9
    move v12, v14

    const/4 v9, 0x0

    :goto_2
    if-eq v14, v12, :cond_a

    .line 850
    invoke-interface {v1, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_a
    if-eqz v9, :cond_b

    .line 854
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-direct {v0, v9, v12}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processUnitStyleTask(Ljava/util/Map;Ljava/util/List;)V

    move-object v9, v12

    goto :goto_3

    :cond_b
    const/4 v9, 0x0

    :goto_3
    if-eqz v1, :cond_f

    .line 858
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_f

    const/4 v12, 0x0

    .line 859
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_f

    .line 860
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 861
    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 863
    const-string v15, "overwriteStringAttributes"

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 864
    invoke-direct {v0, v14, v9}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processOverwriteStringAttributes(Ljava/util/Map;Ljava/util/List;)V

    goto :goto_5

    .line 867
    :cond_c
    const-string v8, "overwriteStrokesAttributes"

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 868
    invoke-direct {v0, v14, v9}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processOverwriteStrokesAttributes(Ljava/util/Map;Ljava/util/List;)V

    :cond_d
    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto :goto_4

    :cond_e
    const/4 v9, 0x0

    .line 875
    :cond_f
    iget-boolean v1, v0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->isUndo:Z

    if-nez v1, :cond_13

    if-eqz v3, :cond_13

    .line 876
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v1, :cond_13

    .line 878
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 879
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_11

    .line 880
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 881
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    if-eqz v12, :cond_11

    const/4 v13, 0x1

    .line 883
    invoke-direct {v0, v12, v13}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processRelatedResizeUnit(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v12

    if-eqz v12, :cond_12

    if-nez v10, :cond_10

    .line 886
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 888
    :cond_10
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_11
    const/4 v13, 0x1

    :cond_12
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 895
    :cond_13
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_15

    if-eqz v9, :cond_14

    .line 898
    invoke-interface {v1, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    if-eqz v10, :cond_15

    .line 901
    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    :cond_15
    invoke-direct {v0, v11}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    .line 906
    iget-object v1, v0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    iget-object v1, v1, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    iget-boolean v2, v0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->isUndo:Z

    invoke-interface {v1, v2}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->delayShareSendTextUnitDataAfterUndoOrRedo(Z)V

    return-void
.end method

.method private processSetParagraphStyle(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 670
    const-string v0, "arrayIndex"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 672
    const-string v1, "paragraphStyle"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cm/Blob;

    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p1

    .line 677
    iget-object v1, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 679
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v2

    .line 681
    invoke-static {v2, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createSetParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;I)Ljava/util/Map;

    move-result-object v0

    .line 682
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    .line 684
    new-instance v0, Lcom/metamoji/cm/DataArchiver;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-direct {v0, p1, v2, v3}, Lcom/metamoji/cm/DataArchiver;-><init>([BII)V

    .line 685
    new-instance p1, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {p1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>()V

    .line 686
    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    .line 687
    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    :cond_0
    return-void
.end method

.method private processSetSelectedTextRange(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1079
    const-string/jumbo v0, "textRange"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->createTextRange(Ljava/util/Map;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    .line 1086
    iget-object v0, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    return-void
.end method

.method private processUnitNoDropShadow(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1139
    const-string v0, "dataUnitNoDropShadow"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1142
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 1145
    invoke-static {v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createUnitNoDropShadow(Z)Ljava/util/Map;

    move-result-object v0

    .line 1146
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    .line 1148
    iget-object v0, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setUnitNoDropShadow(Z)V

    .line 1149
    iget-object v0, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    iget-object v0, v0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {v0, p1}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->setUnitNoDropShadowUndoOrRedo(Z)V

    return-void
.end method

.method private processUnitNotDelWhenEmpty(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1156
    const-string v0, "dataUnitNotDelWhenEmpty"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1159
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 1162
    invoke-static {v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createUnitNotDelWhenEmpty(Z)Ljava/util/Map;

    move-result-object v0

    .line 1163
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    .line 1165
    iget-object v0, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setUnitNotDelWhenEmpty(Z)V

    .line 1166
    iget-object v0, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    iget-object v0, v0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {v0, p1}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->setUnitNotDelWhenEmptyUndoOrRedo(Z)V

    return-void
.end method

.method private processUnitStyleTask(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 976
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processUnitStyleTask(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method private processUnitStyleTask(Ljava/util/Map;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 979
    new-instance v0, Lcom/metamoji/un/text/model/UnitStyles;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    .line 980
    new-instance v1, Lcom/metamoji/un/text/model/UnitStyles;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    .line 982
    const-string v2, "fontName"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 984
    iput-object v2, v0, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    .line 985
    iget-object v2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    .line 987
    :cond_0
    const-string v2, "fontSize"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 988
    const-string v3, "fontSize.New"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 990
    iput-object v2, v0, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    .line 991
    iput-object v3, v1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    .line 993
    :cond_1
    const-string v2, "lineSpacing"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-eqz v2, :cond_2

    .line 995
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    .line 996
    iget-object v2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getLineSpacing()F

    move-result v2

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    .line 998
    :cond_2
    const-string/jumbo v2, "ruledLineStyle"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 1000
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/text/model/RuledLineStyle;->valueOf(I)Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 1001
    iget-object v2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getRuledLineStyle()Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 1003
    :cond_3
    const-string v2, "borderStyle"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 1005
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/text/model/UnitBorderStyle;->valueOf(I)Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 1006
    iget-object v2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getUnitBorderStyle()Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 1008
    :cond_4
    const-string v2, "backgroundColor"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1010
    invoke-direct {p0, v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->createUIColorFromRGBA(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    .line 1011
    iget-object v2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getUnitBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    .line 1013
    :cond_5
    const-string v2, "fontColor"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1015
    invoke-direct {p0, v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->createUIColorFromRGBA(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    .line 1016
    iget-object v2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    .line 1018
    :cond_6
    sget-boolean v2, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v2, :cond_7

    .line 1019
    const-string/jumbo v2, "verticalWriting"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    .line 1021
    iput-object v2, v0, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    .line 1022
    iget-object v2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    .line 1027
    :cond_7
    const-string/jumbo v2, "shareSend"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    .line 1029
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_8
    move v2, v3

    .line 1032
    :goto_0
    iget-object v4, v0, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    invoke-static {v1, v4, v2}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createUnitStyleParams(Lcom/metamoji/un/text/model/UnitStyles;Ljava/lang/Float;Z)Ljava/util/Map;

    move-result-object v1

    .line 1034
    iget-object v4, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v4, v0, v3, v2}, Lcom/metamoji/un/text/model/TextModel;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;ZZ)V

    .line 1037
    const-string v0, "relatedResizeModel"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1041
    const-string v2, "param"

    const/4 v4, 0x0

    if-eqz p1, :cond_b

    .line 1042
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_1
    if-ltz v5, :cond_b

    .line 1044
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1045
    const-string v6, "name"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 1046
    const-string v7, "resizeUnit"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1047
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_a

    const/4 v6, 0x0

    .line 1049
    invoke-direct {p0, v3, v6}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processRelatedResizeUnit(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_a

    if-nez v4, :cond_9

    .line 1052
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    :cond_9
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1061
    :cond_b
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_c

    if-eqz v4, :cond_c

    .line 1064
    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    if-nez p2, :cond_d

    .line 1069
    invoke-direct {p0, v1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    .line 1071
    iget-object p1, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    iget-object p1, p1, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    iget-boolean p2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->isUndo:Z

    invoke-interface {p1, p2}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->delayShareSendTextUnitDataAfterUndoOrRedo(Z)V

    return-void

    .line 1073
    :cond_d
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setMMJEdAttributesProperty(Lcom/metamoji/un/text/model/attr/IAttributesAccess;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/IAttributesAccess;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1334
    const-string v0, "fontSize"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1336
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setFontSize(F)V

    goto :goto_0

    .line 1339
    :cond_0
    invoke-interface {p1, v1}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setUseFontSize(Z)V

    .line 1342
    :goto_0
    const-string v0, "fontWeight"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1344
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setFontWeight(I)V

    goto :goto_1

    .line 1347
    :cond_1
    invoke-interface {p1, v1}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setUseFontWeight(Z)V

    .line 1350
    :goto_1
    const-string/jumbo v0, "underline"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 1351
    :goto_2
    invoke-interface {p1, v0}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setUnderline(Z)V

    .line 1353
    const-string/jumbo v0, "strikeout"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v1

    .line 1354
    :goto_3
    invoke-interface {p1, v2}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setStrikeout(Z)V

    .line 1356
    const-string v0, "color"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1358
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->createMMJEdColorComponentFromRGB(Ljava/lang/String;)Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    goto :goto_4

    .line 1361
    :cond_4
    invoke-interface {p1, v1}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setUseColor(Z)V

    .line 1364
    :goto_4
    const-string v0, "backgroundColor"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 1366
    new-instance v0, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-direct {p0, p2}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->createUIColorFromRGBA(Ljava/lang/String;)I

    move-result p2

    invoke-direct {v0, p2}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setBackgroundColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    return-void

    .line 1369
    :cond_5
    invoke-interface {p1, v1}, Lcom/metamoji/un/text/model/attr/IAttributesAccess;->setUseBackgroundColor(Z)V

    return-void
.end method


# virtual methods
.method public processInsertStrokes(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 228
    const-string v0, "arrayIndex"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 229
    const-string v1, "index"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 231
    const-string/jumbo v2, "strokesArray"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/cm/Blob;

    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    .line 232
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 233
    new-instance v4, Lcom/metamoji/cm/DataArchiver;

    array-length v5, v2

    const/4 v6, 0x0

    invoke-direct {v4, v2, v6, v5}, Lcom/metamoji/cm/DataArchiver;-><init>([BII)V

    .line 234
    const-class v2, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    invoke-static {v3, v4, v2}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 236
    const-string/jumbo v2, "strokesAttrs"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cm/Blob;

    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p1

    .line 237
    new-instance v2, Lcom/metamoji/cm/DataArchiver;

    array-length v4, p1

    invoke-direct {v2, p1, v6, v4}, Lcom/metamoji/cm/DataArchiver;-><init>([BII)V

    .line 238
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    const-class v4, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    invoke-static {p1, v2, v4}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 241
    iget-object v2, p0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->textModel:Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    .line 242
    invoke-virtual {v2, v3, p1, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->insertStrokes(Ljava/util/List;Ljava/util/List;I)V

    .line 245
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createRemoveStrokes(III)Ljava/util/Map;

    move-result-object p1

    .line 246
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->addUndoRedoData(Ljava/util/Map;)V

    return-void
.end method

.method public processUndoData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 56
    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    const-string v1, "param"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 60
    const-string v1, "insertString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processInsertString(Ljava/util/Map;)V

    return-void

    .line 63
    :cond_0
    const-string v1, "removeString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processRemoveString(Ljava/util/Map;)V

    return-void

    .line 66
    :cond_1
    const-string v1, "insertStrokes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processInsertStrokes(Ljava/util/Map;)V

    return-void

    .line 69
    :cond_2
    const-string v1, "removeStrokes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processRemoveStrokes(Ljava/util/Map;)V

    return-void

    .line 72
    :cond_3
    const-string v1, "insertStringWithStrokes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processInsertStringWithStrokes(Ljava/util/Map;)V

    return-void

    .line 75
    :cond_4
    const-string v1, "removeStringWithStrokes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 76
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processRemoveStringWithStrokes(Ljava/util/Map;)V

    return-void

    .line 78
    :cond_5
    const-string v1, "overwriteStringAttributes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 79
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processOverwriteStringAttributes(Ljava/util/Map;)V

    return-void

    .line 81
    :cond_6
    const-string v1, "overwriteStrokesAttributes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 82
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processOverwriteStrokesAttributes(Ljava/util/Map;)V

    return-void

    .line 84
    :cond_7
    const-string v1, "overwriteStrokesStyles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 85
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processOverwriteStrokeStyles(Ljava/util/Map;)V

    return-void

    .line 87
    :cond_8
    const-string v1, "replaceStrokesStyles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 88
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processReplaceStrokesStyles(Ljava/util/Map;)V

    return-void

    .line 94
    :cond_9
    const-string v1, "overwriteParagraphStyles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 95
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processOverwriteParagraphStyles(Ljava/util/Map;)V

    return-void

    .line 97
    :cond_a
    const-string/jumbo v1, "setParagraphStyleToStringWithStrokes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 98
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processSetParagraphStyle(Ljava/util/Map;)V

    return-void

    .line 100
    :cond_b
    const-string/jumbo v1, "switchRenderingStringWithStrokes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 101
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processForSwitchRenderingStringWs(Ljava/util/Map;)V

    return-void

    .line 111
    :cond_c
    const-string v1, "resizeUnit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 113
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processResizeUnitTask(Ljava/util/Map;)V

    return-void

    .line 115
    :cond_d
    const-string/jumbo v1, "unitStyle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 116
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processUnitStyleTask(Ljava/util/Map;)V

    return-void

    .line 118
    :cond_e
    const-string/jumbo v1, "setSelectedTextRange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 119
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processSetSelectedTextRange(Ljava/util/Map;)V

    return-void

    .line 142
    :cond_f
    const-string/jumbo v1, "taskUnitNoDropShadow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 143
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processUnitNoDropShadow(Ljava/util/Map;)V

    return-void

    .line 145
    :cond_10
    const-string/jumbo v1, "taskUnitNotDelWhenEmpty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 146
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processUnitNotDelWhenEmpty(Ljava/util/Map;)V

    :cond_11
    return-void
.end method
