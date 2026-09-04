.class Lcom/metamoji/ns/NsCollaboCommand$8$1$1;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand$8$1;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

.field final synthetic val$isCancelled:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboCommand$8$1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 585
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iput-boolean p2, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->val$isCancelled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 589
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$dlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_isDoneProcessing:Z

    .line 590
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$dlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->dismiss()V

    .line 592
    iget-boolean v0, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->val$isCancelled:Z

    .line 606
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, v2, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-boolean v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$deleteCurrentDoc:Z

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->closeDocument(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;)V

    .line 597
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$currentDriveId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboCommand$8;->val$currentDocId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/dvm/DvmUtil;->deleteDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$currentDriveId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 600
    invoke-static {}, Lcom/metamoji/sd/SdDriveUpdateChecker;->getInstance()Lcom/metamoji/sd/SdDriveUpdateChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboCommand$8;->val$currentDriveId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveUpdateChecker;->doCheck(Ljava/lang/String;)Ljava/util/concurrent/ScheduledFuture;

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CLOSE_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_1
    return-void

    .line 606
    :cond_2
    iget-object v0, v2, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$currentDriveId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 607
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$distributeSharedDrives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 608
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$distributeSharedDrives:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 609
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboCommand$8;->val$currentDriveId:Ljava/lang/String;

    const-string v4, "driveId"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 610
    invoke-static {}, Lcom/metamoji/sd/SdDriveUpdateChecker;->getInstance()Lcom/metamoji/sd/SdDriveUpdateChecker;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboCommand$8;->val$currentDriveId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveUpdateChecker;->doCheck(Ljava/lang/String;)Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 615
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->closeDocument(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;)V

    .line 617
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-boolean v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$deleteCurrentDoc:Z

    if-eqz v0, :cond_5

    .line 618
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$currentDriveId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboCommand$8;->val$currentDocId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/dvm/DvmUtil;->deleteDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$8$1$1;->this$1:Lcom/metamoji/ns/NsCollaboCommand$8$1;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$8;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$8;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CLOSE_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method
