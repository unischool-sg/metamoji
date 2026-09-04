.class Lcom/metamoji/nt/NtTextSearchUtil$1$1;
.super Ljava/lang/Object;
.source "NtTextSearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtTextSearchUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtTextSearchUtil$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 473
    iput-object p1, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 477
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v0, v0, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v0, v0, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v0, v1, :cond_c

    .line 478
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v0, v0, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v1, v1, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    instance-of v1, v0, Lcom/metamoji/nt/NtUnitController;

    if-eqz v1, :cond_0

    .line 481
    check-cast v0, Lcom/metamoji/nt/NtUnitController;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_c

    .line 485
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->canFocus()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->noFocusing()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 491
    iget-object v4, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v4, v4, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtNoteController;->isEditLayerEditable()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v3

    :cond_2
    if-eqz v1, :cond_3

    .line 496
    instance-of v4, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v4, v4, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_TEXT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v3

    :cond_3
    if-eqz v1, :cond_4

    .line 502
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v5, v5, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v5

    if-eq v4, v5, :cond_4

    move v1, v3

    .line 508
    :cond_4
    iget-object v4, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v4, v4, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$fromModel:Lcom/metamoji/df/model/IModel;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v4, v4, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$fromModel:Lcom/metamoji/df/model/IModel;

    iget-object v5, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v5, v5, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$model:Lcom/metamoji/df/model/IModel;

    if-eq v4, v5, :cond_7

    .line 509
    iget-object v4, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v4, v4, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    iget-object v5, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v5, v5, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$fromModel:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 511
    iget-object v5, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v5, v5, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iget-object v6, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v6, v6, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$fromModel:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v5, v6}, Lcom/metamoji/nt/NtNoteController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 513
    instance-of v6, v5, Lcom/metamoji/nt/NtUnitController;

    if-eqz v6, :cond_5

    .line 514
    check-cast v5, Lcom/metamoji/nt/NtUnitController;

    goto :goto_2

    :cond_5
    move-object v5, v2

    .line 517
    :goto_2
    invoke-interface {v4}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->alwaysHightlightOnly()Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v5, :cond_7

    invoke-interface {v4, v5}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->highlightNotCanFocus(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 519
    :cond_6
    iget-object v5, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v5, v5, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$fromModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v4, v5, v2}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->setHighlightTextRange(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;)V

    .line 524
    :cond_7
    iget-object v4, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v4, v4, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    iget-object v5, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v5, v5, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v4

    if-eqz v1, :cond_8

    if-eqz v4, :cond_8

    .line 528
    invoke-interface {v4, v0}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->highlightNotCanFocus(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v1, v3

    :cond_8
    if-eqz v1, :cond_a

    .line 537
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 538
    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtEditorWindowController;->hideDetailWindow(Z)V

    .line 545
    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v1, v1, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    .line 546
    instance-of v3, v1, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v3, :cond_9

    .line 547
    check-cast v1, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v1, :cond_9

    .line 549
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->selectUnit(Lcom/metamoji/nt/NtUnitController;)V

    .line 554
    :cond_9
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 555
    const-string v3, "index"

    sget-object v5, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1, v3, v5}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 556
    iget-object v3, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v3, v3, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v3

    sget-object v5, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v3, v5, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 558
    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v1, v1, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtNoteController;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V

    if-eqz v4, :cond_c

    .line 560
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtTextSearchUtil$1$1$1;

    invoke-direct {v1, p0, v4}, Lcom/metamoji/nt/NtTextSearchUtil$1$1$1;-><init>(Lcom/metamoji/nt/NtTextSearchUtil$1$1;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_b

    .line 571
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v0, v0, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$model:Lcom/metamoji/df/model/IModel;

    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v1, v1, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$range:Lcom/metamoji/nt/NtTextSearchPosition;

    invoke-interface {v4, v0, v1}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->setHighlightTextRange(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;)V

    .line 576
    :cond_b
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 578
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;)Z

    .line 583
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v0, v0, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$model:Lcom/metamoji/df/model/IModel;

    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v1, v1, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$range:Lcom/metamoji/nt/NtTextSearchPosition;

    iget-object v3, p0, Lcom/metamoji/nt/NtTextSearchUtil$1$1;->this$0:Lcom/metamoji/nt/NtTextSearchUtil$1;

    iget-object v3, v3, Lcom/metamoji/nt/NtTextSearchUtil$1;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/nt/NtTextSearchUtil;->processAfterSearchTextWithResult(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V

    return-void
.end method
