.class Lcom/metamoji/nt/NtNoteController$30;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->handleUndo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$modelManager:Lcom/metamoji/df/model/IModelManager;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/model/IModelManager;)V
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

    .line 4749
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$30;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$30;->val$modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4752
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$30;->this$0:Lcom/metamoji/nt/NtNoteController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fput_doingUndoRedoCommand(Lcom/metamoji/nt/NtNoteController;Z)V

    .line 4753
    new-instance v0, Lcom/metamoji/df/controller/StageQueueingDisposer;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$30;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/metamoji/df/controller/StageQueueingDisposer;-><init>(Lcom/metamoji/df/sprite/Stage;)V

    const/4 v2, 0x0

    .line 4755
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$30;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, v3, Lcom/metamoji/nt/NtNoteController;->_undoOrRedoListeners:Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;

    if-eqz v3, :cond_0

    .line 4756
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$30;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, v3, Lcom/metamoji/nt/NtNoteController;->_undoOrRedoListeners:Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;

    invoke-virtual {v3, v1}, Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;->willUndoOrRedo(Z)V

    .line 4758
    :cond_0
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$30;->val$modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->undo()V

    .line 4760
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$30;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, v3, Lcom/metamoji/nt/NtNoteController;->_undoOrRedoListeners:Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;

    if-eqz v3, :cond_1

    .line 4761
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$30;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, v3, Lcom/metamoji/nt/NtNoteController;->_undoOrRedoListeners:Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;

    invoke-virtual {v3, v1}, Lcom/metamoji/nt/NtNoteController$UndoOrRedoEventListeners;->didUndoOrRedo(Z)V

    .line 4763
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->refreshDetailWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4765
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$30;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v1, v2}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fput_doingUndoRedoCommand(Lcom/metamoji/nt/NtNoteController;Z)V

    .line 4766
    invoke-virtual {v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 4768
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$30;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->updateUndoRedoCommandState()V

    return-void

    :catchall_0
    move-exception v1

    .line 4765
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$30;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v3, v2}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fput_doingUndoRedoCommand(Lcom/metamoji/nt/NtNoteController;Z)V

    .line 4766
    invoke-virtual {v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 4767
    throw v1
.end method
