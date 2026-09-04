.class Lcom/metamoji/forSchool/ScSchoolManager$11;
.super Ljava/lang/Object;
.source "ScSchoolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolManager;->updateEditAreaView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ScSchoolManager;

.field final synthetic val$showEditViewArea:Z


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ScSchoolManager;Z)V
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

    .line 2212
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager$11;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    iput-boolean p2, p0, Lcom/metamoji/forSchool/ScSchoolManager$11;->val$showEditViewArea:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2215
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2217
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_2

    .line 2219
    iget-boolean v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$11;->val$showEditViewArea:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setEditAreaVisibility(Z)V

    .line 2221
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$11;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->getDeadlineInfoView()Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2223
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->updateStatus()V

    .line 2225
    :cond_0
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$11;->this$0:Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->getScoreInfoView()Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2227
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->updateStatus()V

    .line 2230
    :cond_1
    iget-boolean v1, p0, Lcom/metamoji/forSchool/ScSchoolManager$11;->val$showEditViewArea:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowEditorBars()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2231
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->showEditorBars()V

    :cond_2
    return-void
.end method
