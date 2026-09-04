.class Lcom/metamoji/nt/NtNoteController$32;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(ILcom/metamoji/df/controller/DfPageController$WaType;Lcom/metamoji/cm/ICmEventHandler;Lcom/metamoji/cm/IAction1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$completionAction:Lcom/metamoji/cm/IAction1;

.field final synthetic val$index:I

.field final synthetic val$pagingAction:Lcom/metamoji/cm/ICmEventHandler;

.field final synthetic val$watype:Lcom/metamoji/df/controller/DfPageController$WaType;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/controller/DfPageController$WaType;ILcom/metamoji/cm/ICmEventHandler;Lcom/metamoji/cm/IAction1;)V
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

    .line 4848
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$32;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$32;->val$watype:Lcom/metamoji/df/controller/DfPageController$WaType;

    iput p3, p0, Lcom/metamoji/nt/NtNoteController$32;->val$index:I

    iput-object p4, p0, Lcom/metamoji/nt/NtNoteController$32;->val$pagingAction:Lcom/metamoji/cm/ICmEventHandler;

    iput-object p5, p0, Lcom/metamoji/nt/NtNoteController$32;->val$completionAction:Lcom/metamoji/cm/IAction1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    .line 4852
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$32;->this$0:Lcom/metamoji/nt/NtNoteController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fput_isReady(Lcom/metamoji/nt/NtNoteController;Z)V

    .line 4853
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$32;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$32;->val$watype:Lcom/metamoji/df/controller/DfPageController$WaType;

    iput-object v2, v1, Lcom/metamoji/nt/NtNoteController;->_requestWaType:Lcom/metamoji/df/controller/DfPageController$WaType;

    .line 4856
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$32;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget v2, p0, Lcom/metamoji/nt/NtNoteController$32;->val$index:I

    invoke-static {v1, v2}, Lcom/metamoji/nt/NtNoteController;->access$001(Lcom/metamoji/nt/NtNoteController;I)V

    .line 4858
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$32;->val$pagingAction:Lcom/metamoji/cm/ICmEventHandler;

    if-eqz v1, :cond_0

    .line 4859
    iget v2, p0, Lcom/metamoji/nt/NtNoteController$32;->val$index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/metamoji/cm/ICmEventHandler;->invoke(Ljava/lang/Object;)V

    .line 4869
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$32;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$32;->val$completionAction:Lcom/metamoji/cm/IAction1;

    invoke-static {v1, v0, v0, v2}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$mprocessAfterCurrentPageChanged(Lcom/metamoji/nt/NtNoteController;ZZLcom/metamoji/cm/IAction1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4873
    :goto_0
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$32;->this$0:Lcom/metamoji/nt/NtNoteController;

    sget-object v2, Lcom/metamoji/df/controller/DfPageController$WaType;->UNDEFINED:Lcom/metamoji/df/controller/DfPageController$WaType;

    iput-object v2, v1, Lcom/metamoji/nt/NtNoteController;->_requestWaType:Lcom/metamoji/df/controller/DfPageController$WaType;

    .line 4874
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$32;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v1, v0}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fput_isReady(Lcom/metamoji/nt/NtNoteController;Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 4871
    :try_start_1
    const-string v2, "NtNoteController.setCurrentPageIndex"

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 4873
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$32;->this$0:Lcom/metamoji/nt/NtNoteController;

    sget-object v3, Lcom/metamoji/df/controller/DfPageController$WaType;->UNDEFINED:Lcom/metamoji/df/controller/DfPageController$WaType;

    iput-object v3, v2, Lcom/metamoji/nt/NtNoteController;->_requestWaType:Lcom/metamoji/df/controller/DfPageController$WaType;

    .line 4874
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$32;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v2, v0}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$fput_isReady(Lcom/metamoji/nt/NtNoteController;Z)V

    .line 4875
    throw v1
.end method
