.class public Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "ScCollaboBgTaskForManageClassList.java"


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 7

    .line 26
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 27
    sget v1, Lcom/metamoji/noteanytime/R$string;->PreCreateRoom_Checking:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 33
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList;->isMaintenanceDCServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList;->cancel()Z

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList;->cancel()Z

    return-void

    .line 44
    :cond_1
    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 45
    iget-object v4, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 46
    iget-object v5, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 47
    iget-object v6, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList$1;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForManageClassList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
