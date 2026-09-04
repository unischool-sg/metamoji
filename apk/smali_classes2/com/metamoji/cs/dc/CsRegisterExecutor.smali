.class public Lcom/metamoji/cs/dc/CsRegisterExecutor;
.super Ljava/lang/Object;
.source "CsRegisterExecutor.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsExecutor;


# instance fields
.field email:Ljava/lang/String;

.field nickname:Ljava/lang/String;

.field password:Ljava/lang/String;

.field private registerResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsRegisterExecutor;->registerResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsRegisterExecutor;->registerResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method

.method public executeSync()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 24
    new-instance v2, Lcom/metamoji/cs/dc/params/CsRegisterParam;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/params/CsRegisterParam;-><init>()V

    .line 26
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsRegisterExecutor;->email:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/params/CsRegisterParam;->email:Ljava/lang/String;

    .line 27
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsRegisterExecutor;->password:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/params/CsRegisterParam;->password:Ljava/lang/String;

    .line 28
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsRegisterExecutor;->nickname:Ljava/lang/String;

    iput-object v3, v2, Lcom/metamoji/cs/dc/params/CsRegisterParam;->name:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Lcom/metamoji/cs/dc/CsCloudService;->executeRegisterWithParams(Lcom/metamoji/cs/dc/params/CsRegisterParam;)Lcom/metamoji/cs/dc/response/CsRegisterResponse;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 32
    iget v4, v3, Lcom/metamoji/cs/dc/response/CsRegisterResponse;->errorCode:I

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 33
    iput-boolean v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    const/4 v4, 0x1

    .line 34
    iput-boolean v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    .line 35
    iget-object v4, v2, Lcom/metamoji/cs/dc/params/CsRegisterParam;->email:Ljava/lang/String;

    iput-object v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 36
    iget-object v4, v2, Lcom/metamoji/cs/dc/params/CsRegisterParam;->password:Ljava/lang/String;

    iput-object v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    .line 37
    iget-object v2, v2, Lcom/metamoji/cs/dc/params/CsRegisterParam;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    const/4 v2, 0x0

    .line 38
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    const/4 v2, 0x2

    .line 39
    iput v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    .line 40
    invoke-virtual {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    const/16 v0, -0xcf

    .line 42
    iput v0, v3, Lcom/metamoji/cs/dc/response/CsRegisterResponse;->errorCode:I

    .line 45
    :cond_0
    iput-object v3, p0, Lcom/metamoji/cs/dc/CsRegisterExecutor;->registerResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method

.method public getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsRegisterExecutor;->registerResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

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
