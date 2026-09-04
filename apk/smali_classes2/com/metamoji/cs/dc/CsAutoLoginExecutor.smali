.class public Lcom/metamoji/cs/dc/CsAutoLoginExecutor;
.super Ljava/lang/Object;
.source "CsAutoLoginExecutor.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsExecutor;


# instance fields
.field coLoginId:Ljava/lang/String;

.field doAutoLogin:Z

.field email:Ljava/lang/String;

.field loginName:Ljava/lang/String;

.field private loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

.field password:Ljava/lang/String;

.field qwd:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    return-void
.end method

.method public executeSync()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_1

    .line 37
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->clear()V

    .line 38
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    if-eqz v0, :cond_0

    .line 39
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez v0, :cond_2

    .line 43
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->clear()V

    .line 45
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 47
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->email:Ljava/lang/String;

    .line 48
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->password:Ljava/lang/String;

    .line 49
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->qwd:Ljava/lang/String;

    .line 51
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->coLoginId:Ljava/lang/String;

    .line 52
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->loginName:Ljava/lang/String;

    .line 56
    :cond_2
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 58
    new-instance v2, Lcom/metamoji/cs/dc/params/CsLoginParam;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/params/CsLoginParam;-><init>()V

    .line 65
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->coLoginId:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/params/CsLoginParam;->coLoginId:Ljava/lang/String;

    .line 66
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->loginName:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/params/CsLoginParam;->loginName:Ljava/lang/String;

    .line 67
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->password:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/params/CsLoginParam;->password:Ljava/lang/String;

    .line 68
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->qwd:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/params/CsLoginParam;->qwd:Ljava/lang/String;

    .line 71
    invoke-static {v2}, Lcom/metamoji/cs/dc/CsCloudService;->executeLoginWithParam(Lcom/metamoji/cs/dc/params/CsLoginParam;)Lcom/metamoji/cs/dc/response/CsLoginResponse;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 72
    iget v4, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    if-nez v4, :cond_7

    .line 75
    iget-object v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->previousUserId:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->userId:Ljava/lang/String;

    iget-object v5, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->previousUserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 76
    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->previousUserId:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->resetAllSyncInfo()V

    .line 82
    :cond_3
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->coLoginId:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    .line 83
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyId:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 84
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->loginName:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    .line 85
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->restHost:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->restHost:Ljava/lang/String;

    .line 86
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyName:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    .line 89
    iget v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyVersion:I

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 90
    iget v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyVersion:I

    iput v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    goto :goto_0

    .line 92
    :cond_4
    iput v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    .line 95
    :goto_0
    iget-boolean v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isOnPremise:Z

    iput-boolean v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    .line 96
    iget-boolean v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isClassRoom:Z

    iput-boolean v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isClassRoom:Z

    .line 97
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverDeviceId:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverDeviceId:Ljava/lang/String;

    .line 100
    iput-boolean v4, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->doAutoLogin:Z

    .line 103
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->email:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 104
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->userId:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 105
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->password:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    .line 106
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->qwd:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    .line 107
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->name:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 108
    iget-boolean v3, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->doAutoLogin:Z

    iput-boolean v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    .line 109
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->password:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 110
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->qwd:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 111
    iput-boolean v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    .line 112
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->maintCheckURL:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->maintenanceCheckURL:Ljava/lang/String;

    .line 114
    iget-wide v5, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverVersion:D

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-eqz v3, :cond_5

    .line 115
    iget-wide v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverVersion:D

    double-to-int v3, v3

    iput v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    goto :goto_1

    .line 117
    :cond_5
    iput v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    .line 120
    :goto_1
    iget v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 121
    iput v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    .line 124
    :cond_6
    invoke-virtual {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    .line 127
    iget v4, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    invoke-static {v4}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isLoginErrorCode(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 129
    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 130
    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    const/4 v4, 0x0

    .line 131
    iput-boolean v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    .line 133
    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->maintenanceCheckURL:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 136
    iget v0, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    const/16 v1, 0x75

    if-eq v0, v1, :cond_9

    iget v0, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    const/16 v1, 0x72

    if-eq v0, v1, :cond_9

    const/16 v0, -0xcd

    .line 138
    iput v0, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    goto :goto_2

    .line 141
    :cond_8
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->clear()V

    .line 144
    :cond_9
    :goto_2
    iput-object v2, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    return-void
.end method

.method public getResponseState()Lcom/metamoji/cs/dc/response/CsLoginResponse;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    return-object v0
.end method

.method public bridge synthetic getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsAutoLoginExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public onCancelSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 0

    return-void
.end method

.method public onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 0

    return-void
.end method

.method public onSuccessSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 0

    return-void
.end method
