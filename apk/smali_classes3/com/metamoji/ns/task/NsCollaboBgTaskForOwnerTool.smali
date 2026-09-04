.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForOwnerTool.java"


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 5

    .line 42
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 44
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 53
    sget v1, Lcom/metamoji/noteanytime/R$string;->OwnerToolLogin_Requesting:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;->isMaintenanceDCServer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;->cancel()Z

    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 75
    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 76
    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 79
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move-object v0, v1

    move-object v2, v0

    move-object v3, v2

    :goto_0
    if-nez v1, :cond_3

    .line 84
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;->cancel()Z

    return-void

    .line 89
    :cond_3
    new-instance v4, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;

    invoke-direct {v4, p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 90
    iput-object v1, v4, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->email:Ljava/lang/String;

    .line 91
    iput-object v2, v4, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->password:Ljava/lang/String;

    .line 92
    iput-object v3, v4, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->qwd:Ljava/lang/String;

    .line 95
    iput-object v0, v4, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->companyId:Ljava/lang/String;

    .line 99
    iput-object v4, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    .line 103
    :try_start_0
    invoke-virtual {v4}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;->cancel()Z

    return-void

    .line 115
    :cond_4
    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    const-string v2, "message"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    if-nez v0, :cond_5

    goto :goto_1

    .line 128
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 129
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;->cancel()Z

    return-void

    .line 134
    :cond_6
    invoke-static {v0}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mmjeditor2/CosmosOwnerTool?pass=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->baseURLForMMJEditor2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 118
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;->cancel()Z

    .line 119
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 120
    sget v3, Lcom/metamoji/noteanytime/R$string;->OwnerToolLogin_Msg_Failed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_8

    goto :goto_2

    .line 121
    :cond_8
    const-string v0, ""

    :goto_2
    if-eqz v1, :cond_9

    goto :goto_3

    .line 122
    :cond_9
    const-string v1, "?"

    :goto_3
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 120
    const-string v1, "%s\n%s(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;->cancel()Z

    .line 106
    const-string v1, "NsCollaboBgTaskForOwnerTool.taskExec"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 107
    sget v1, Lcom/metamoji/noteanytime/R$string;->OwnerToolLogin_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForOwnerTool;->cancel()Z

    .line 47
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJID_MSG_NOT_REGIST_CABINETUSER_FOR_CREATESHARENOTE:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showCabinetUserRegistrationMessage(I)V

    return-void
.end method
