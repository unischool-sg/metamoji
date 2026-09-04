.class Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1;
.super Ljava/lang/Object;
.source "ScOfflineEditManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1;->this$1:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1;->this$1:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;

    iget-boolean v0, v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;->val$removeMode:Z

    if-nez v0, :cond_0

    .line 317
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_REFLECTED_OFFLINE_EDIT:I

    invoke-static {v0}, Lcom/metamoji/ns/ui/NsCollaboProgressView;->toast(I)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1;->this$1:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;

    iget-object v0, v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;)V

    .line 321
    iget-object v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1;->this$1:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;

    iget-object v0, v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;->this$0:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->updateOfflineEditModeInfo(Z)V

    .line 322
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1$1;-><init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method
