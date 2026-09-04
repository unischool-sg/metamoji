.class Lcom/metamoji/nt/NtNoteController$29;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->processAfterCurrentPageChanged(ZZLcom/metamoji/cm/IAction1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$completionAction:Lcom/metamoji/cm/IAction1;

.field final synthetic val$context:Lcom/metamoji/df/controller/ControllerContext;

.field final synthetic val$pageController:Lcom/metamoji/df/controller/DfPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/controller/DfPageController;Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/cm/IAction1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 4701
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$29;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$29;->val$pageController:Lcom/metamoji/df/controller/DfPageController;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController$29;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    iput-object p4, p0, Lcom/metamoji/nt/NtNoteController$29;->val$completionAction:Lcom/metamoji/cm/IAction1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4704
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$29;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 4705
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->suppressAutoSave()V

    const/16 v1, 0x7d0

    .line 4709
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$29;->val$pageController:Lcom/metamoji/df/controller/DfPageController;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$29;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v2, v3}, Lcom/metamoji/df/controller/DfPageController;->restoreChildren(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 4712
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$29;->val$pageController:Lcom/metamoji/df/controller/DfPageController;

    invoke-virtual {v2}, Lcom/metamoji/df/controller/DfPageController;->notifyPageActivated()V

    .line 4715
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$29;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v2}, Lcom/metamoji/df/controller/ControllerContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4716
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$29;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->currentPageRestored()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4719
    :cond_0
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->permitAutoSave(I)V

    .line 4721
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$29;->val$completionAction:Lcom/metamoji/cm/IAction1;

    if-eqz v0, :cond_1

    .line 4722
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$29;->val$context:Lcom/metamoji/df/controller/ControllerContext;

    invoke-virtual {v1}, Lcom/metamoji/df/controller/ControllerContext;->isCancelled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/metamoji/cm/IAction1;->perform(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    .line 4719
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->permitAutoSave(I)V

    .line 4720
    throw v2
.end method
