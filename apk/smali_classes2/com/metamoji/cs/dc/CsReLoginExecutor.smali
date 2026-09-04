.class public Lcom/metamoji/cs/dc/CsReLoginExecutor;
.super Ljava/lang/Object;
.source "CsReLoginExecutor.java"

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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    return-void
.end method

.method public executeSync()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 35
    new-instance v2, Lcom/metamoji/cs/dc/params/CsLoginParam;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/params/CsLoginParam;-><init>()V

    .line 42
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->coLoginId:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/params/CsLoginParam;->coLoginId:Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->loginName:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/params/CsLoginParam;->loginName:Ljava/lang/String;

    .line 44
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->password:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/params/CsLoginParam;->password:Ljava/lang/String;

    .line 45
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->qwd:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/params/CsLoginParam;->qwd:Ljava/lang/String;

    .line 48
    invoke-static {v2}, Lcom/metamoji/cs/dc/CsCloudService;->executeLoginWithParam(Lcom/metamoji/cs/dc/params/CsLoginParam;)Lcom/metamoji/cs/dc/response/CsLoginResponse;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 49
    iget v4, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    if-nez v4, :cond_4

    .line 52
    iget-object v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->previousUserId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->userId:Ljava/lang/String;

    iget-object v5, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->previousUserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->previousUserId:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->resetAllSyncInfo()V

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->coLoginId:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    .line 60
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyId:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 61
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->loginName:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    .line 62
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->restHost:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->restHost:Ljava/lang/String;

    .line 63
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyName:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    .line 66
    iget v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyVersion:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 67
    iget v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyVersion:I

    iput v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    goto :goto_0

    .line 69
    :cond_1
    iput v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    .line 72
    :goto_0
    iget-boolean v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isOnPremise:Z

    iput-boolean v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    .line 73
    iget-boolean v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isClassRoom:Z

    iput-boolean v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isClassRoom:Z

    .line 74
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverDeviceId:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverDeviceId:Ljava/lang/String;

    .line 77
    iput-boolean v4, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->doAutoLogin:Z

    .line 80
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->email:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 81
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->userId:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 82
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->password:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    .line 83
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->qwd:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    .line 84
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->name:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 85
    iget-boolean v3, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->doAutoLogin:Z

    iput-boolean v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    .line 86
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->password:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 87
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->qwd:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 88
    iput-boolean v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    .line 89
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->maintCheckURL:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->maintenanceCheckURL:Ljava/lang/String;

    .line 91
    iget-wide v5, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverVersion:D

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-eqz v3, :cond_2

    .line 92
    iget-wide v3, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverVersion:D

    double-to-int v3, v3

    iput v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    goto :goto_1

    .line 94
    :cond_2
    iput v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    .line 97
    :goto_1
    iget v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 98
    iput v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    .line 101
    :cond_3
    invoke-virtual {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    goto :goto_2

    .line 104
    :cond_4
    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    const/4 v4, 0x0

    .line 105
    iput-boolean v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    .line 107
    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->maintenanceCheckURL:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 110
    iget v0, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    const/16 v1, 0x75

    if-eq v0, v1, :cond_5

    iget v0, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    const/16 v1, 0x72

    if-eq v0, v1, :cond_5

    const/16 v0, -0xca

    .line 112
    iput v0, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    .line 128
    :cond_5
    :goto_2
    iput-object v2, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    return-void
.end method

.method public getResponseState()Lcom/metamoji/cs/dc/response/CsLoginResponse;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsReLoginExecutor;->loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    return-object v0
.end method

.method public bridge synthetic getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsReLoginExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsLoginResponse;

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
