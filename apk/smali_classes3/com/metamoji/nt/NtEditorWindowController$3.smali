.class Lcom/metamoji/nt/NtEditorWindowController$3;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IOnCompleted;


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

.field final synthetic val$documentCompleted:Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;

.field final synthetic val$documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

.field final synthetic val$operation:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 532
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    iput-object p3, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->val$documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    iput-object p4, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->val$documentCompleted:Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;

    iput-object p5, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->val$operation:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/ControllerContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    if-eqz p1, :cond_2

    .line 538
    instance-of v1, p1, Lcom/metamoji/cm/CmException;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/metamoji/cm/CmException;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmException;->getCode()I

    move-result v1

    sget-object v2, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANCEL_PASSWORD_AUTHENTICATION:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 543
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 544
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtEditorWindowController;->closeDocument(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;)V

    goto :goto_1

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->val$documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-static {v1}, Lcom/metamoji/nt/NtEditorWindowController;->closeLastEditingDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    goto :goto_1

    .line 549
    :cond_2
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Yes:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtEditorWindowController;->closeDocument(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 554
    const-string v2, "NtEditorWindowController.editDocument(): closeDocument error."

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingStartEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 556
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v1, v1, Lcom/metamoji/nt/NtEditorWindowController;->UserDrawingEndEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 557
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fput_document(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtDocument;)V

    goto :goto_1

    .line 560
    :cond_3
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->val$documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-static {v1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$smdiscardLastEditingDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    .line 564
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->val$documentCompleted:Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;

    if-eqz v1, :cond_5

    .line 565
    invoke-interface {v1, v0, p1}, Lcom/metamoji/nt/NtEditorWindowController$ILoadCompleted;->onDocumentCompleted(ZLjava/lang/Throwable;)V

    .line 567
    :cond_5
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {p1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 568
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {p1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    const/16 v0, 0x7d0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtDocument;->permitAutoSave(I)V

    .line 572
    :cond_6
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->val$operation:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->ImportAudioNew:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-ne p1, v0, :cond_7

    .line 573
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$3$1;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtEditorWindowController$3$1;-><init>(Lcom/metamoji/nt/NtEditorWindowController$3;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 584
    :cond_7
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {p1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 585
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 587
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 589
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$3;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_document(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 590
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_SHARE_NEW:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    goto :goto_2

    .line 592
    :cond_8
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_SHARE:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    :cond_9
    :goto_2
    return-void
.end method
