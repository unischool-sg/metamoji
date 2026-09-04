.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForPreCreateRoom.java"


# instance fields
.field public deleteCurrentDoc:Z

.field public isDragDrop:Z

.field public shareTemplateDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public submitByStudent:Z


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->submitByStudent:Z

    .line 22
    iput-boolean p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->isDragDrop:Z

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 10

    .line 35
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 36
    sget v1, Lcom/metamoji/noteanytime/R$string;->PreCreateRoom_Checking:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->isMaintenanceDCServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->cancel()Z

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->checkServerVersion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->cancel()Z

    return-void

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;->cancel()Z

    return-void

    .line 60
    :cond_2
    iget-object v4, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 61
    iget-object v5, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 62
    iget-object v6, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 63
    iget-object v7, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 64
    iget-object v8, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 65
    iget-object v9, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    .line 68
    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForPreCreateRoom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
