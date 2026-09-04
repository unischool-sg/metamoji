.class Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;
.super Ljava/lang/Object;
.source "ScOfflineEditManager.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->reflectOfflineEdit(Lcom/metamoji/nt/NtNoteController;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$removeMode:Z


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;ZLcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 310
    iput-object p1, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;->this$0:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    iput-boolean p2, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;->val$removeMode:Z

    iput-object p3, p0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 314
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$1;-><init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 332
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2$2;-><init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method
