.class public Lcom/metamoji/un/text/SearchWordUtil;
.super Ljava/lang/Object;
.source "SearchWordUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;,
        Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static backwardTextPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1005
    :cond_0
    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1006
    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1008
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    if-lez v3, :cond_1

    add-int/lit8 v1, v3, -0x1

    :cond_1
    :goto_0
    if-ge v1, v3, :cond_5

    .line 1018
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v4

    .line 1020
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1021
    iget p0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-eq v1, p0, :cond_2

    .line 1022
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringLength()I

    move-result p0

    if-lez p0, :cond_2

    .line 1023
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringLength()I

    move-result p0

    add-int/lit8 v2, p0, -0x1

    .line 1026
    :cond_2
    new-instance p0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0, v1, v2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p0

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static belongCurrentEditState(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 477
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 483
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 485
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 490
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v0

    :goto_0
    if-eqz p0, :cond_5

    .line 495
    const-string v2, "!type"

    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 496
    const-string v3, "$layer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 497
    const-string v2, "layerType"

    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 499
    const-string/jumbo v2, "system:private"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 500
    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v2, v0, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v2, v0, :cond_5

    if-eqz p0, :cond_5

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 507
    :cond_4
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_5
    :goto_1
    return v1
.end method

.method public static changeCurrentPageAndSetFocus(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/un/text/model/TextModel;Lcom/metamoji/un/text/model/TextRange;)V
    .locals 4

    .line 731
    invoke-static {p1}, Lcom/metamoji/un/text/SearchWordUtil;->getPageModelFromPageInnerModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 734
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 738
    new-instance v1, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;

    invoke-direct {v1}, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/nt/NtNoteController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    .line 741
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageIndex()I

    move-result v0

    .line 742
    sget-object v1, Lcom/metamoji/df/controller/DfPageController$WaType;->UNDEFINED:Lcom/metamoji/df/controller/DfPageController$WaType;

    new-instance v2, Lcom/metamoji/un/text/SearchWordUtil$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/metamoji/un/text/SearchWordUtil$1;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/un/text/model/TextModel;Lcom/metamoji/un/text/model/TextRange;)V

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(ILcom/metamoji/df/controller/DfPageController$WaType;Lcom/metamoji/cm/ICmEventHandler;Lcom/metamoji/cm/IAction1;)V

    return-void

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v0, v1, :cond_5

    .line 815
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/metamoji/un/text/UnTextUnit;

    .line 816
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_1

    .line 821
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->requestKillFocus()V

    .line 824
    :cond_1
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit;->canFocus()Z

    move-result p1

    .line 828
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, p1

    :goto_0
    if-eqz v2, :cond_4

    .line 834
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 837
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->closeDetailWindow()V

    .line 839
    :cond_3
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtNoteController;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V

    .line 840
    invoke-virtual {v3, p2}, Lcom/metamoji/un/text/UnTextUnit;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    goto :goto_1

    .line 842
    :cond_4
    invoke-virtual {v3, p2}, Lcom/metamoji/un/text/UnTextUnit;->setSearchResultTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 846
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;)Z

    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 849
    invoke-static {v3, p0}, Lcom/metamoji/un/text/SearchWordUtil;->processAfterSearchText(Lcom/metamoji/un/text/UnTextUnit;Z)V

    :cond_6
    return-void
.end method

.method private static forwardTextPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 969
    :cond_0
    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 970
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 972
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 978
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v3

    .line 980
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v3

    if-nez v3, :cond_1

    .line 981
    new-instance p0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0, v1, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getCharactorWithBackwardOffset(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;ILcom/metamoji/cm/mutable/MutableChar;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 7

    .line 1301
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1302
    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1305
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    if-ge v0, v2, :cond_5

    .line 1311
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v4

    .line 1313
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v5

    if-eqz v5, :cond_1

    if-gtz p2, :cond_0

    .line 1317
    new-instance p0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0, v0, v3}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    goto :goto_2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 1324
    :cond_1
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringLength()I

    move-result v5

    .line 1325
    iget v6, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-eq v0, v6, :cond_2

    if-lez v5, :cond_2

    move v1, v5

    :cond_2
    if-gt p2, v1, :cond_3

    sub-int v6, v1, p2

    if-ge v6, v5, :cond_3

    .line 1331
    invoke-virtual {v4, v6}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->characterAtIndex(I)C

    move-result v3

    .line 1332
    new-instance p0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0, v0, v6}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    goto :goto_2

    :cond_3
    sub-int/2addr p2, v1

    if-gtz p2, :cond_4

    if-gtz v0, :cond_4

    .line 1341
    invoke-virtual {v4, v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->characterAtIndex(I)C

    move-result p0

    .line 1342
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p1, v0, v3}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    move v3, p0

    move-object p0, p1

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_1
    if-lez v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    .line 1357
    :goto_2
    invoke-virtual {p3, v3}, Lcom/metamoji/cm/mutable/MutableChar;->setValue(C)V

    return-object p0
.end method

.method private static getCharactorWithForwardOffset(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)C
    .locals 6

    .line 1245
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1246
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1249
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 1255
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v3

    .line 1257
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v4

    if-eqz v4, :cond_1

    if-gtz p2, :cond_0

    return v2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 1267
    :cond_1
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringLength()I

    move-result v4

    add-int v5, p1, p2

    if-ge v5, v4, :cond_2

    .line 1269
    invoke-virtual {v3, v5}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->characterAtIndex(I)C

    move-result p0

    return p0

    :cond_2
    sub-int/2addr v4, p1

    sub-int/2addr p2, v4

    move p1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static getLastChildModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 718
    :goto_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getLastChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method private static getNextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 599
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-ne p0, p1, :cond_1

    return-object p1

    .line 607
    :cond_1
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 614
    :cond_2
    invoke-static {p0, p1}, Lcom/metamoji/un/text/SearchWordUtil;->getParentNextSibModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static getNextSearchResultTextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtDocument;)Lcom/metamoji/un/text/model/TextModel;
    .locals 4

    move-object v0, p0

    .line 915
    :cond_0
    invoke-static {v0, p1}, Lcom/metamoji/un/text/SearchWordUtil;->getNextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 916
    instance-of v2, v0, Lcom/metamoji/un/text/model/TextModel;

    if-eqz v2, :cond_2

    .line 917
    invoke-virtual {p2, v0}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 920
    instance-of v3, v2, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v3, :cond_1

    .line 921
    check-cast v2, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 924
    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnit;->lastSearchResultTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 925
    check-cast v0, Lcom/metamoji/un/text/model/TextModel;

    return-object v0

    :cond_2
    if-ne v0, p0, :cond_0

    return-object v1
.end method

.method public static getNextSearchResultTextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtDocument;)Lcom/metamoji/un/text/model/TextModel;
    .locals 1

    .line 907
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/metamoji/un/text/SearchWordUtil;->getNextSearchResultTextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtDocument;)Lcom/metamoji/un/text/model/TextModel;

    move-result-object p0

    return-object p0
.end method

.method public static getNextTextModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/text/model/TextModel;
    .locals 1

    .line 520
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/metamoji/un/text/SearchWordUtil;->getNextTextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/text/model/TextModel;

    move-result-object p0

    return-object p0
.end method

.method public static getNextTextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/text/model/TextModel;
    .locals 2

    move-object v0, p0

    .line 530
    :cond_0
    invoke-static {v0, p1}, Lcom/metamoji/un/text/SearchWordUtil;->getNextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 531
    instance-of v1, v0, Lcom/metamoji/un/text/model/TextModel;

    if-eqz v1, :cond_1

    .line 533
    invoke-static {v0}, Lcom/metamoji/un/text/SearchWordUtil;->belongCurrentEditState(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    check-cast v0, Lcom/metamoji/un/text/model/TextModel;

    return-object v0

    :cond_1
    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNextTextModelVisibleLayer(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;)Lcom/metamoji/un/text/model/TextModel;
    .locals 5

    move-object v0, p0

    .line 562
    :cond_0
    invoke-static {v0, p1}, Lcom/metamoji/un/text/SearchWordUtil;->getNextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 563
    instance-of v2, v0, Lcom/metamoji/un/text/model/TextModel;

    if-eqz v2, :cond_3

    .line 565
    move-object v3, v0

    check-cast v3, Lcom/metamoji/df/model/Model;

    invoke-static {v3}, Lcom/metamoji/un/text/SearchWordUtil;->belongCurrentEditState(Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 567
    invoke-static {v0}, Lcom/metamoji/un/text/SearchWordUtil;->getPageModelFromPageInnerModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 568
    invoke-virtual {p3, v3}, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->checkPurgedAndRestorePage(Lcom/metamoji/df/model/IModel;)V

    .line 570
    invoke-virtual {p2, v0}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 573
    instance-of v4, v3, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v4, :cond_1

    .line 574
    check-cast v3, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_3

    .line 578
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 579
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    .line 582
    check-cast v0, Lcom/metamoji/un/text/model/TextModel;

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    if-ne v0, p0, :cond_0

    return-object v1
.end method

.method public static getNextTextModelVisibleLayer(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;)Lcom/metamoji/un/text/model/TextModel;
    .locals 1

    .line 547
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/metamoji/un/text/SearchWordUtil;->getNextTextModelVisibleLayer(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;)Lcom/metamoji/un/text/model/TextModel;

    move-result-object p0

    return-object p0
.end method

.method private static getPageModelFromPageInnerModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    :goto_0
    if-eqz p0, :cond_0

    .line 896
    const-string v0, "$page"

    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static getParentNextSibModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 623
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-ne p0, p1, :cond_1

    return-object p1

    .line 626
    :cond_1
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
.end method

.method private static getPrevModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 700
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getPrevSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    invoke-static {v0}, Lcom/metamoji/un/text/SearchWordUtil;->getLastChildModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0

    .line 704
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 708
    :cond_1
    invoke-static {p0}, Lcom/metamoji/un/text/SearchWordUtil;->getLastChildModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static getPrevTextModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/text/model/TextModel;
    .locals 2

    move-object v0, p0

    .line 640
    :cond_0
    invoke-static {v0}, Lcom/metamoji/un/text/SearchWordUtil;->getPrevModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 641
    instance-of v1, v0, Lcom/metamoji/un/text/model/TextModel;

    if-eqz v1, :cond_1

    .line 643
    invoke-static {v0}, Lcom/metamoji/un/text/SearchWordUtil;->belongCurrentEditState(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 644
    check-cast v0, Lcom/metamoji/un/text/model/TextModel;

    return-object v0

    :cond_1
    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPrevTextModelVisibleLayer(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;)Lcom/metamoji/un/text/model/TextModel;
    .locals 5

    move-object v0, p0

    .line 663
    :cond_0
    invoke-static {v0}, Lcom/metamoji/un/text/SearchWordUtil;->getPrevModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 664
    instance-of v2, v0, Lcom/metamoji/un/text/model/TextModel;

    if-eqz v2, :cond_3

    .line 666
    move-object v3, v0

    check-cast v3, Lcom/metamoji/df/model/Model;

    invoke-static {v3}, Lcom/metamoji/un/text/SearchWordUtil;->belongCurrentEditState(Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 668
    invoke-static {v0}, Lcom/metamoji/un/text/SearchWordUtil;->getPageModelFromPageInnerModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 669
    invoke-virtual {p2, v3}, Lcom/metamoji/un/text/SearchWordUtil$UnTextSearchContext;->checkPurgedAndRestorePage(Lcom/metamoji/df/model/IModel;)V

    .line 671
    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v3, :cond_1

    .line 674
    instance-of v4, v3, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v4, :cond_1

    .line 675
    check-cast v3, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_3

    .line 679
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 680
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    .line 683
    check-cast v0, Lcom/metamoji/un/text/model/TextModel;

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    if-ne v0, p0, :cond_0

    return-object v1
.end method

.method public static getSearchStartPos(Lcom/metamoji/un/text/model/TextModel;Z)Lcom/metamoji/un/text/model/TextPosition;
    .locals 2

    .line 447
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p0

    return-object p0

    .line 454
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getNormalizedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 460
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p0

    return-object p0

    .line 466
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p0

    return-object p0
.end method

.method private static getTextRange(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextRange;
    .locals 7

    .line 1184
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1185
    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1188
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    .line 1196
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v4

    .line 1198
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    if-gtz p2, :cond_0

    .line 1201
    new-instance p0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0, v0, v6}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    goto :goto_2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 1208
    :cond_1
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringLength()I

    move-result v4

    add-int v5, v1, p2

    if-gt v5, v4, :cond_2

    .line 1211
    new-instance p0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0, v0, v5}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    goto :goto_2

    :cond_2
    sub-int/2addr v4, v1

    sub-int/2addr p2, v4

    move v1, v6

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-object p0, v3

    :goto_2
    if-eqz p1, :cond_5

    if-nez p0, :cond_4

    goto :goto_3

    .line 1229
    :cond_4
    new-instance p2, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p2, p1, p0}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    return-object p2

    :cond_5
    :goto_3
    return-object v3
.end method

.method public static hasSearchResultInChildModels(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 941
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 943
    instance-of v3, p0, Lcom/metamoji/un/text/model/TextModel;

    if-eqz v3, :cond_1

    .line 944
    check-cast p0, Lcom/metamoji/un/text/model/TextModel;

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getSearchResults()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 948
    invoke-static {v0}, Lcom/metamoji/un/text/SearchWordUtil;->hasSearchResultInChildModels(Lcom/metamoji/df/model/IModel;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    .line 951
    :cond_2
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_0

    :cond_3
    return v2
.end method

.method private static isEqualCharacterCode(CCLcom/metamoji/un/text/SearchWordUtil$CompareOptionType;)Z
    .locals 1

    .line 1390
    sget-object v0, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;->NoCase:Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    if-ne v0, p2, :cond_1

    const/16 p2, 0x7a

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    if-gt p0, p2, :cond_0

    add-int/lit8 p0, p0, -0x20

    int-to-char p0, p0

    :cond_0
    if-gt v0, p1, :cond_1

    if-gt p1, p2, :cond_1

    add-int/lit8 p1, p1, -0x20

    int-to-char p1, p1

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static moveTextBackwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1112
    :cond_0
    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1113
    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1116
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    if-lez v3, :cond_1

    add-int/lit8 v1, v3, -0x1

    :cond_1
    :goto_0
    if-ge v1, v3, :cond_7

    .line 1128
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v4

    .line 1130
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    if-gtz p2, :cond_2

    .line 1133
    new-instance p0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0, v1, v6}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p0

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 1140
    :cond_3
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringLength()I

    move-result v4

    .line 1141
    iget v5, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-eq v1, v5, :cond_4

    if-lez v4, :cond_4

    move v2, v4

    :cond_4
    if-gt p2, v2, :cond_5

    sub-int v5, v2, p2

    if-gt v5, v4, :cond_5

    .line 1147
    new-instance p0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0, v1, v5}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p0

    :cond_5
    sub-int/2addr p2, v2

    if-gtz p2, :cond_6

    if-gtz v1, :cond_6

    .line 1156
    new-instance p0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0, v1, v6}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p0

    :cond_6
    move v2, v6

    :goto_1
    if-lez v1, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method private static moveTextForwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1055
    :cond_0
    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1056
    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1059
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    .line 1067
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v3

    .line 1069
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    if-gtz p2, :cond_1

    .line 1072
    new-instance p0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0, v1, v5}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 1079
    :cond_2
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringLength()I

    move-result v3

    add-int v4, p1, p2

    if-ge v4, v3, :cond_3

    .line 1081
    new-instance p0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p0, v1, v4}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p0

    :cond_3
    sub-int/2addr v3, p1

    sub-int/2addr p2, v3

    move p1, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static processAfterSearchText(Lcom/metamoji/un/text/UnTextUnit;Z)V
    .locals 4

    if-eqz p0, :cond_0

    .line 859
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 860
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne v0, v1, :cond_0

    .line 862
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnit;->focusToViewForSoftInputAndShowSoftInput()V

    .line 873
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 875
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v1, v2, :cond_1

    .line 876
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;

    invoke-direct {v2}, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    :cond_1
    if-eqz p1, :cond_2

    if-nez p0, :cond_2

    .line 882
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p0

    new-instance p1, Lcom/metamoji/un/text/SearchWordUtil$2;

    invoke-direct {p1}, Lcom/metamoji/un/text/SearchWordUtil$2;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public static searchBackward(Lcom/metamoji/un/text/model/StringWithStrokesArray;Ljava/lang/String;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;)Lcom/metamoji/un/text/model/TextRange;
    .locals 11

    .line 343
    invoke-static {p1}, Lcom/metamoji/un/text/SearchWordUtil;->trimmingPatternText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 351
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    add-int/lit8 v3, v0, -0x1

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    .line 357
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 359
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 370
    :cond_1
    invoke-static {p0, p2, v0}, Lcom/metamoji/un/text/SearchWordUtil;->moveTextBackwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    if-nez v4, :cond_2

    return-object v1

    .line 376
    :cond_2
    invoke-static {p0, p2, v5}, Lcom/metamoji/un/text/SearchWordUtil;->moveTextBackwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 377
    invoke-static {p0, p2}, Lcom/metamoji/un/text/SearchWordUtil;->backwardTextPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 379
    invoke-static {p0, p2, v3}, Lcom/metamoji/un/text/SearchWordUtil;->moveTextBackwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-eqz v4, :cond_b

    move-object v9, v4

    move v8, v6

    :cond_3
    if-ge v8, v0, :cond_6

    .line 385
    invoke-static {p0, v9, v6}, Lcom/metamoji/un/text/SearchWordUtil;->getCharactorWithForwardOffset(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)C

    move-result v7

    .line 386
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v7, v10, p3}, Lcom/metamoji/un/text/SearchWordUtil;->isEqualCharacterCode(CCLcom/metamoji/un/text/SearchWordUtil$CompareOptionType;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    if-ne v8, v3, :cond_5

    .line 391
    invoke-static {p0, v4, v0}, Lcom/metamoji/un/text/SearchWordUtil;->getTextRange(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 395
    invoke-static {p0, v9, v5}, Lcom/metamoji/un/text/SearchWordUtil;->moveTextForwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v9

    .line 397
    invoke-virtual {v9, p2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v10

    if-ne v5, v10, :cond_3

    move-object v9, p2

    move v7, v6

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    goto :goto_3

    .line 411
    :cond_7
    invoke-static {p0, v4, v5}, Lcom/metamoji/un/text/SearchWordUtil;->moveTextBackwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    if-nez v4, :cond_8

    :goto_3
    return-object v1

    .line 417
    :cond_8
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_9

    .line 419
    invoke-static {p0, v9, v0}, Lcom/metamoji/un/text/SearchWordUtil;->moveTextBackwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    goto :goto_1

    :cond_9
    add-int/2addr v8, v5

    .line 425
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v8, :cond_a

    .line 427
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v9, v4}, Lcom/metamoji/un/text/SearchWordUtil;->moveTextBackwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    goto :goto_1

    .line 430
    :cond_a
    invoke-static {p0, v9, v8}, Lcom/metamoji/un/text/SearchWordUtil;->moveTextBackwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    goto :goto_1

    :cond_b
    return-object v1
.end method

.method public static searchForward(Lcom/metamoji/un/text/model/StringWithStrokesArray;Ljava/lang/String;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;)Lcom/metamoji/un/text/model/TextRange;
    .locals 11

    .line 253
    invoke-static {p1}, Lcom/metamoji/un/text/SearchWordUtil;->trimmingPatternText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 261
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v0, -0x1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    .line 267
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 269
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    sub-int v7, v0, v4

    sub-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 279
    :cond_1
    invoke-static {p0, p2}, Lcom/metamoji/un/text/SearchWordUtil;->forwardTextPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 281
    invoke-static {p0, p2, v5}, Lcom/metamoji/un/text/SearchWordUtil;->moveTextForwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    move v7, v3

    :goto_1
    if-eqz v4, :cond_9

    move v8, v5

    :cond_2
    if-ltz v8, :cond_5

    .line 286
    invoke-static {p0, v4, v3}, Lcom/metamoji/un/text/SearchWordUtil;->getCharactorWithForwardOffset(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)C

    move-result v7

    .line 287
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v7, v9, p3}, Lcom/metamoji/un/text/SearchWordUtil;->isEqualCharacterCode(CCLcom/metamoji/un/text/SearchWordUtil$CompareOptionType;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    if-nez v8, :cond_4

    .line 292
    invoke-static {p0, v4, v0}, Lcom/metamoji/un/text/SearchWordUtil;->getTextRange(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, -0x1

    .line 296
    invoke-static {p0, v4, v6}, Lcom/metamoji/un/text/SearchWordUtil;->moveTextBackwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    .line 298
    invoke-virtual {p2, v4}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v9

    if-ne v6, v9, :cond_2

    move-object v4, p2

    move v7, v3

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    return-object v1

    .line 312
    :cond_6
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_7

    .line 314
    invoke-static {p0, v4, v0}, Lcom/metamoji/un/text/SearchWordUtil;->moveTextForwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    goto :goto_1

    :cond_7
    sub-int v8, v0, v8

    .line 320
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v8, :cond_8

    .line 322
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p0, v4, v8}, Lcom/metamoji/un/text/SearchWordUtil;->moveTextForwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    goto :goto_1

    .line 325
    :cond_8
    invoke-static {p0, v4, v8}, Lcom/metamoji/un/text/SearchWordUtil;->moveTextForwardPosition(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    goto :goto_1

    :cond_9
    return-object v1
.end method

.method public static trimmingPatternText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1368
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1372
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method
