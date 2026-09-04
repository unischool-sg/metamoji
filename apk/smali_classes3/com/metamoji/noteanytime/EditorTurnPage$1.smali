.class Lcom/metamoji/noteanytime/EditorTurnPage$1;
.super Ljava/lang/Object;
.source "EditorTurnPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorTurnPage;->startTurnPage(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorTurnPage;

.field final synthetic val$doneJob:Ljava/lang/Runnable;

.field final synthetic val$i:I

.field final synthetic val$next:Z

.field final synthetic val$note:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorTurnPage;ZLcom/metamoji/nt/NtNoteController;ILjava/lang/Runnable;)V
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

    .line 189
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorTurnPage$1;->this$0:Lcom/metamoji/noteanytime/EditorTurnPage;

    iput-boolean p2, p0, Lcom/metamoji/noteanytime/EditorTurnPage$1;->val$next:Z

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorTurnPage$1;->val$note:Lcom/metamoji/nt/NtNoteController;

    iput p4, p0, Lcom/metamoji/noteanytime/EditorTurnPage$1;->val$i:I

    iput-object p5, p0, Lcom/metamoji/noteanytime/EditorTurnPage$1;->val$doneJob:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 193
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorTurnPage$1;->val$next:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorTurnPage$1;->this$0:Lcom/metamoji/noteanytime/EditorTurnPage;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {v1}, Lcom/metamoji/noteanytime/EditorTurnPage;->-$$Nest$mhas_next_page(Lcom/metamoji/noteanytime/EditorTurnPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/metamoji/noteanytime/EditorTurnPage;->-$$Nest$mhas_prev_page(Lcom/metamoji/noteanytime/EditorTurnPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorTurnPage$1;->val$note:Lcom/metamoji/nt/NtNoteController;

    iget v1, p0, Lcom/metamoji/noteanytime/EditorTurnPage$1;->val$i:I

    sget-object v2, Lcom/metamoji/df/controller/DfPageController$WaType;->OFFSET_CENTER:Lcom/metamoji/df/controller/DfPageController$WaType;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(ILcom/metamoji/df/controller/DfPageController$WaType;Lcom/metamoji/cm/ICmEventHandler;Lcom/metamoji/cm/IAction1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorTurnPage$1;->val$doneJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorTurnPage$1;->val$doneJob:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 198
    throw v0
.end method
