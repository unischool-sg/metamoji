.class Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2;
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

    .line 332
    iput-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2;->this$1:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2;->this$1:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;

    iget-object v0, v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setIsOfflineEditMode(Z)V

    .line 336
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2$1;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2$1;-><init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
