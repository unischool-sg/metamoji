.class public Lcom/metamoji/nt/NtTextSearchUtil;
.super Ljava/lang/Object;
.source "NtTextSearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;,
        Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;,
        Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static belongCurrentEditState(Lcom/metamoji/df/model/IModel;)Z
    .locals 6

    .line 899
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 906
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 908
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    .line 913
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v0

    :goto_2
    if-eqz p0, :cond_6

    .line 918
    const-string v4, "!type"

    invoke-interface {p0, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 919
    const-string v5, "$layer"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_6

    .line 929
    const-string v3, "layerType"

    invoke-interface {p0, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 930
    const-string/jumbo v3, "system:private"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 931
    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v3, v0, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v3, v0, :cond_6

    if-eqz p0, :cond_6

    :cond_4
    return v2

    .line 938
    :cond_5
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_2

    :cond_6
    return v1
.end method

.method public static belongInvisibleFrontCoverPage(Lcom/metamoji/df/model/IModel;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static changeCurrentPageAndSetFocusWithNoteController(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V
    .locals 8

    .line 455
    invoke-static {p1}, Lcom/metamoji/nt/NtTextSearchUtil;->getPageModelFromPageInnerModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 458
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 460
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    new-instance v4, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;

    invoke-direct {v4}, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;-><init>()V

    invoke-virtual {v1, v4, v3}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    .line 462
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    instance-of v1, v0, Lcom/metamoji/nt/NtPageController;

    if-eqz v1, :cond_0

    .line 465
    move-object v2, v0

    check-cast v2, Lcom/metamoji/nt/NtPageController;

    :cond_0
    if-eqz v2, :cond_e

    .line 468
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageIndex()I

    move-result v0

    .line 470
    new-instance v1, Lcom/metamoji/nt/NtTextSearchUtil$1;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/nt/NtTextSearchUtil$1;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;Lcom/metamoji/nt/NtTextSearchPosition;)V

    .line 590
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 591
    const-string p2, "pageIndex"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    const-string p2, "completionBlock"

    invoke-virtual {p1, p2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p0

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    :cond_1
    move-object v4, p1

    move-object v5, p2

    move-object p1, p3

    move-object p2, p4

    .line 598
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object p3

    sget-object p4, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq p3, p4, :cond_d

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object p3

    sget-object p4, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq p3, p4, :cond_d

    .line 599
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object p3

    .line 601
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p4

    invoke-virtual {p4, v4}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 602
    instance-of v0, p4, Lcom/metamoji/nt/NtUnitController;

    if-eqz v0, :cond_2

    .line 603
    check-cast p4, Lcom/metamoji/nt/NtUnitController;

    move-object v6, p4

    goto :goto_0

    :cond_2
    move-object v6, v2

    .line 606
    :goto_0
    invoke-virtual {v6}, Lcom/metamoji/nt/NtUnitController;->canFocus()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {v6}, Lcom/metamoji/nt/NtUnitController;->noFocusing()Z

    move-result p4

    if-nez p4, :cond_3

    const/4 p4, 0x1

    goto :goto_1

    :cond_3
    move p4, v3

    :goto_1
    if-eqz p4, :cond_4

    .line 614
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->isEditLayerEditable()Z

    move-result v0

    if-nez v0, :cond_4

    move p4, v3

    :cond_4
    if-eqz p4, :cond_5

    .line 619
    instance-of v0, v6, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_TEXT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_5

    move p4, v3

    :cond_5
    if-eqz p4, :cond_6

    .line 625
    invoke-virtual {v6}, Lcom/metamoji/nt/NtUnitController;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    if-eq v0, v1, :cond_6

    move p4, v3

    .line 630
    :cond_6
    invoke-virtual {p2, v4}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v7

    if-eqz p4, :cond_7

    if-eqz v7, :cond_7

    .line 634
    invoke-interface {v7, v6}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->highlightNotCanFocus(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v3, p4

    :goto_2
    if-eq p3, v6, :cond_8

    .line 643
    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p3

    invoke-interface {p3}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus()V

    :cond_8
    if-eqz p1, :cond_b

    if-eq p1, v4, :cond_b

    .line 648
    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 650
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtNoteController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p4

    if-eqz p4, :cond_9

    .line 652
    instance-of v0, p4, Lcom/metamoji/nt/NtUnitController;

    if-eqz v0, :cond_9

    .line 653
    check-cast p4, Lcom/metamoji/nt/NtUnitController;

    goto :goto_3

    :cond_9
    move-object p4, v2

    .line 656
    :goto_3
    invoke-interface {p3}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->alwaysHightlightOnly()Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p4, :cond_b

    invoke-interface {p3, p4}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->highlightNotCanFocus(Lcom/metamoji/nt/NtUnitController;)Z

    move-result p4

    if-eqz p4, :cond_b

    .line 658
    :cond_a
    invoke-interface {p3, p1, v2}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->setHighlightTextRange(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;)V

    :cond_b
    if-eqz v3, :cond_c

    .line 666
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p3

    new-instance v2, Lcom/metamoji/nt/NtTextSearchUtil$2;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/nt/NtTextSearchUtil$2;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;)V

    invoke-virtual {p3, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 707
    :cond_c
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p3

    new-instance p4, Lcom/metamoji/nt/NtTextSearchUtil$3;

    invoke-direct {p4, v7, v4, v5, p0}, Lcom/metamoji/nt/NtTextSearchUtil$3;-><init>(Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {p3, p4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 732
    :cond_d
    :goto_4
    invoke-static {v4, v5, p1, p2}, Lcom/metamoji/nt/NtTextSearchUtil;->processAfterSearchTextWithResult(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V

    :cond_e
    return-void
.end method

.method public static getLastChildModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 437
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

    .line 1142
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-ne p0, p1, :cond_1

    return-object p1

    .line 1152
    :cond_1
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 1161
    :cond_2
    invoke-static {p0, p1}, Lcom/metamoji/nt/NtTextSearchUtil;->getParentNextSibModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static getNextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;
    .locals 4

    move-object v0, p0

    .line 354
    :cond_0
    invoke-static {v0, p1}, Lcom/metamoji/nt/NtTextSearchUtil;->getNextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_1

    .line 358
    invoke-interface {p2, v0}, Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;->textSearchCheckModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 360
    iget-boolean v3, v2, Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;->hasSearchModel:Z

    if-eqz v3, :cond_5

    .line 363
    :cond_2
    invoke-static {v0}, Lcom/metamoji/nt/NtTextSearchUtil;->belongCurrentEditState(Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/metamoji/nt/NtTextSearchUtil;->belongInvisibleFrontCoverPage(Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p3, :cond_4

    if-eqz v2, :cond_3

    .line 367
    iget-boolean p0, v2, Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;->checkRestorePage:Z

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_4

    .line 371
    invoke-static {v0}, Lcom/metamoji/nt/NtTextSearchUtil;->getPageModelFromPageInnerModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 372
    invoke-virtual {p3, p0}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->checkPurgedAndRestorePage(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    :cond_4
    return-object v0

    :cond_5
    if-eq v0, p0, :cond_6

    .line 382
    invoke-virtual {p3}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->isSearchCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    return-object v1
.end method

.method public static getNextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 341
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/metamoji/nt/NtTextSearchUtil;->getNextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static getNextSearchResultModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;
    .locals 2

    move-object v0, p0

    .line 1079
    :cond_0
    invoke-static {v0, p1}, Lcom/metamoji/nt/NtTextSearchUtil;->getNextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1081
    invoke-virtual {p2, v0}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1084
    invoke-interface {v1, v0}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->lastHighlightTextRange(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    if-eq v0, p0, :cond_2

    .line 1090
    invoke-virtual {p3}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->isSearchCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNextSearchResultModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 1073
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/metamoji/nt/NtTextSearchUtil;->getNextSearchResultModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static getPageModelFromPageInnerModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    :goto_0
    if-eqz p0, :cond_0

    .line 1063
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "$page"

    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static getParentNextSibModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 1170
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-ne p0, p1, :cond_1

    return-object p1

    .line 1175
    :cond_1
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0
.end method

.method private static getPrevModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 1125
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getPrevSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1127
    invoke-static {v0}, Lcom/metamoji/nt/NtTextSearchUtil;->getLastChildModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0

    .line 1131
    :cond_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getParent()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 1137
    :cond_1
    invoke-static {p0}, Lcom/metamoji/nt/NtTextSearchUtil;->getLastChildModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static getPrevModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;
    .locals 4

    move-object v0, p0

    .line 398
    :cond_0
    invoke-static {v0}, Lcom/metamoji/nt/NtTextSearchUtil;->getPrevModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_1

    .line 402
    invoke-interface {p1, v0}, Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;->textSearchCheckModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 404
    iget-boolean v3, v2, Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;->hasSearchModel:Z

    if-eqz v3, :cond_5

    .line 407
    :cond_2
    invoke-static {v0}, Lcom/metamoji/nt/NtTextSearchUtil;->belongCurrentEditState(Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/metamoji/nt/NtTextSearchUtil;->belongInvisibleFrontCoverPage(Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p2, :cond_4

    if-eqz v2, :cond_3

    .line 411
    iget-boolean p0, v2, Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;->checkRestorePage:Z

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_4

    .line 415
    invoke-static {v0}, Lcom/metamoji/nt/NtTextSearchUtil;->getPageModelFromPageInnerModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 416
    invoke-virtual {p2, p0}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->checkPurgedAndRestorePage(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    :cond_4
    return-object v0

    :cond_5
    if-eq v0, p0, :cond_6

    .line 426
    invoke-virtual {p2}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->isSearchCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    return-object v1
.end method

.method public static hasHighlightTextInChildModels(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;)Z
    .locals 1

    .line 1101
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1103
    invoke-virtual {p1, p0}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1105
    invoke-interface {p1, p0}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->hasHighlightText(Lcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1110
    invoke-static {v0, p1}, Lcom/metamoji/nt/NtTextSearchUtil;->hasHighlightTextInChildModels(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1114
    :cond_1
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isNotSearchTargetForPersonalTemplate(Lcom/metamoji/nt/NtUnitController;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 998
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 1003
    :cond_1
    const-string/jumbo v2, "system:personal_template"

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 1007
    :cond_2
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo()Ljava/util/Map;

    move-result-object v0

    .line 1009
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/metamoji/nt/NtTextSearchUtil;->isSearchTargetForPersonalTemplate(Ljava/util/Map;Lcom/metamoji/nt/NtPageController;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isSearchTargetForPersonalTemplate(Ljava/util/Map;Lcom/metamoji/nt/NtPageController;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/nt/NtPageController;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 957
    :cond_0
    const-string/jumbo v1, "visiblePersonalTemplateLayer"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 958
    invoke-static {p0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 965
    :cond_1
    const-string/jumbo v1, "userId"

    invoke-static {p0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 966
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 967
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 969
    iget-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-nez p0, :cond_2

    goto :goto_0

    .line 975
    :cond_2
    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    .line 976
    invoke-virtual {p1, p0}, Lcom/metamoji/nt/NtPageController;->isAllowVisiblePersonalTemplate(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static processAfterSearchTextWithResult(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V
    .locals 1

    const/4 v0, 0x1

    .line 738
    invoke-static {p0, p1, p2, v0, p3}, Lcom/metamoji/nt/NtTextSearchUtil;->processAfterSearchTextWithResult(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;ZLcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V

    return-void
.end method

.method public static processAfterSearchTextWithResult(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;ZLcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V
    .locals 7

    .line 750
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 751
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    .line 752
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 754
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getSearchTextBar()Lcom/metamoji/nt/NtSearchTextBar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 761
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtTextSearchUtil$4;

    invoke-direct {v1, v2}, Lcom/metamoji/nt/NtTextSearchUtil$4;-><init>(Lcom/metamoji/nt/NtSearchTextBar;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v0

    .line 790
    :goto_1
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v1

    sget-object v5, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v1, v5, :cond_4

    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v1

    sget-object v5, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v1, v5, :cond_3

    goto :goto_2

    .line 795
    :cond_3
    invoke-virtual {v3, p0}, Lcom/metamoji/nt/NtNoteController;->setSearchCurrentModel(Lcom/metamoji/df/model/IModel;)V

    .line 796
    invoke-virtual {v3, p1}, Lcom/metamoji/nt/NtNoteController;->setSearchCurrentPosition(Lcom/metamoji/nt/NtTextSearchPosition;)V

    goto :goto_3

    .line 791
    :cond_4
    :goto_2
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p0

    new-instance p1, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;

    invoke-direct {p1}, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    :goto_3
    if-eqz p3, :cond_5

    if-nez v4, :cond_5

    .line 810
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p0

    new-instance p1, Lcom/metamoji/nt/NtTextSearchUtil$5;

    invoke-direct {p1}, Lcom/metamoji/nt/NtTextSearchUtil$5;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Viewport;->post(Ljava/lang/Runnable;)Z

    .line 818
    :cond_5
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v1, Lcom/metamoji/nt/NtTextSearchUtil$6;

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/nt/NtTextSearchUtil$6;-><init>(Lcom/metamoji/nt/NtSearchTextBar;Lcom/metamoji/nt/NtNoteController;ZLcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V

    invoke-virtual {p0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
