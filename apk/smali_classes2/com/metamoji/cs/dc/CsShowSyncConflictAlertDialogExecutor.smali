.class public Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;
.super Ljava/lang/Object;
.source "CsShowSyncConflictAlertDialogExecutor.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsUISyncExecutor;


# instance fields
.field private volatile response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

.field private volatile waitForUICallback:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetresponse(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputresponse(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;->waitForUICallback:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;->waitForUICallback:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method

.method public executeSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;->waitForUICallback:Z

    .line 29
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;

    invoke-direct {v1, p0, p0}, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;-><init>(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 60
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;->waitForUICallback:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xa

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object v0
.end method

.method public onCancelSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 0

    return-void
.end method

.method public onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    .line 86
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 87
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method

.method public onSuccessSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    .line 79
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 80
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method
