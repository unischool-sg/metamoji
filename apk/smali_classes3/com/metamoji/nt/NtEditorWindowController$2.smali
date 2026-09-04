.class Lcom/metamoji/nt/NtEditorWindowController$2;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->editDocument(Lcom/metamoji/df/controller/IOwnerView;Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/cm/SizeF;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;ILcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$context:Lcom/metamoji/df/controller/ControllerContext;

.field final synthetic val$currentPage:I

.field final synthetic val$displaySize:Lcom/metamoji/cm/SizeF;

.field final synthetic val$documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

.field final synthetic val$mruItem:Lcom/metamoji/nt/NtMRUDocList$ItemBase;

.field final synthetic val$operation:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

.field final synthetic val$ov:Lcom/metamoji/df/controller/IOwnerView;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/nt/NtMRUDocList$ItemBase;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Lcom/metamoji/df/controller/IOwnerView;Lcom/metamoji/cm/SizeF;ILcom/metamoji/df/controller/ControllerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    iput-object p3, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$mruItem:Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    iput-object p4, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$operation:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    iput-object p5, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$ov:Lcom/metamoji/df/controller/IOwnerView;

    iput-object p6, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$displaySize:Lcom/metamoji/cm/SizeF;

    iput p7, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$currentPage:I

    iput-object p8, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 386
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 389
    :goto_0
    iget-object v3, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v3}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "NtEditorWindowController.editDocument(): called while editing other document (%s). is it Chromebook?"

    invoke-static {v4, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 390
    const-string/jumbo v3, "true"

    goto :goto_1

    :cond_1
    const-string v3, "false"

    :goto_1
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "NtEditorWindowController.editDocument(): leaveDocEditorOpened=%s"

    invoke-static {v4, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    iget-object v3, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v3}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    sget-object v4, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    invoke-static {v3, v4, v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$smcloseDocument(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Z)Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fput_document(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtDocument;)V

    .line 397
    sput-boolean v2, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->CLOSING:Z

    .line 398
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setCurrentEditing(Z)V

    .line 401
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v5

    .line 402
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 407
    sget-object v1, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->LOCAL:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->SDRIVE:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    .line 408
    :goto_2
    iget-object v3, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$mruItem:Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    if-eqz v3, :cond_8

    .line 410
    instance-of v4, v3, Lcom/metamoji/nt/NtMRUDocList$MinItem;

    if-eqz v4, :cond_6

    .line 413
    invoke-interface {v3}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 414
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$mruItem:Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    invoke-interface {v0}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$mruItem:Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    invoke-interface {v2}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->docId()Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 417
    sget-object v1, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->SDRIVE:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    goto :goto_3

    :cond_4
    move-object v2, v5

    .line 420
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$mruItem:Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    invoke-interface {v3}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->isReadOnly()Z

    move-result v3

    :goto_4
    move-object v4, v0

    move-object v8, v1

    move-object v6, v2

    move v7, v3

    goto :goto_5

    .line 422
    :cond_6
    instance-of v4, v3, Lcom/metamoji/nt/NtMRUDocList$Item;

    if-eqz v4, :cond_9

    .line 425
    check-cast v3, Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtMRUDocList$Item;->srcDocId()Ljava/lang/String;

    move-result-object v2

    .line 426
    sget-object v1, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->KEEP_CURRENT:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    .line 427
    iget-object v3, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$mruItem:Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    invoke-interface {v3}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 428
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$mruItem:Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    invoke-interface {v0}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 430
    sget-object v1, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->SDRIVE:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    .line 433
    :cond_7
    iget-object v3, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$mruItem:Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    invoke-interface {v3}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->isReadOnly()Z

    move-result v3

    goto :goto_4

    .line 436
    :cond_8
    sget-object v3, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Restore:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    iget-object v4, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$operation:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-ne v3, v4, :cond_9

    .line 439
    sget-object v1, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->KEEP_CURRENT:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    :cond_9
    move-object v4, v0

    move-object v8, v1

    move v7, v2

    move-object v6, v5

    .line 441
    :goto_5
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v3

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/nt/NtMRUDocList;->addUsedDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtMRUDocList$FeedFrom;)V

    .line 444
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    new-instance v1, Lcom/metamoji/nt/NtDocument;

    invoke-direct {v1}, Lcom/metamoji/nt/NtDocument;-><init>()V

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fput_document(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtDocument;)V

    .line 445
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->suppressAutoSave()V

    .line 448
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_commandManager(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtCommandManager;->init()V

    .line 449
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    iget-object v3, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$ov:Lcom/metamoji/df/controller/IOwnerView;

    iget-object v4, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v5, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$displaySize:Lcom/metamoji/cm/SizeF;

    iget-object v6, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$operation:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    iget v7, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$currentPage:I

    iget-object v8, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/nt/NtDocument;->init(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/df/controller/IOwnerView;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/SizeF;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;ILcom/metamoji/df/controller/ControllerContext;)V

    .line 451
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/ControllerContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_6

    .line 455
    :cond_a
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 457
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->updateDocumentEditor(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    .line 467
    :cond_b
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtDocument;->updateControllerContext(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    .line 470
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 472
    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtPageController;->restoreChildren(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 478
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->notifyPageActivated()V

    .line 481
    :cond_c
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v1}, Lcom/metamoji/df/controller/ControllerContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_e

    .line 483
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->currentPageRestored()V

    .line 485
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 487
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->initializeOnLoadedCollaboDocument()V

    .line 491
    :cond_d
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_commandManager(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 492
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_BACKW:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 493
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 497
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 498
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_VIEW:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 499
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_LASER:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 500
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_PEN:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 501
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_ERASER:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 502
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_SELECT:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 503
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_TEXT:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 504
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_DETAIL_WINDOW:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 505
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_WRIST_GUARD:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 506
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 509
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_MEMORY_LOCATION:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 514
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_START_RECORDING:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 515
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_ADD_INDEX:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 520
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->onDocumentEditStart()V

    .line 522
    invoke-static {}, Lcom/metamoji/nt/NtUnitStateManager;->sharedInstance()Lcom/metamoji/nt/NtUnitStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitStateManager;->onDocumentEditStart()V

    .line 524
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager;->SharedInstance()Lcom/metamoji/media/MediaUploadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager;->onDocumentEditStart()V

    .line 525
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager2;->onDocumentEditStart()V

    .line 527
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->initializeManager()V

    .line 529
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$2;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->createUserClassNumberAndLoginNameCache()V

    :cond_e
    :goto_6
    return-void
.end method
