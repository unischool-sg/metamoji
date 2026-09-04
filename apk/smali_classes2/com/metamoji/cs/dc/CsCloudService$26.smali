.class Lcom/metamoji/cs/dc/CsCloudService$26;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$__loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

.field final synthetic val$__password:Ljava/lang/String;

.field final synthetic val$__qwd:Ljava/lang/String;

.field final synthetic val$__userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

.field final synthetic val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Lcom/metamoji/cs/dc/user/CsDCUserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cs/dc/response/CsLoginResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1653
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$__userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iput-object p3, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$__password:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$__qwd:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$__loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1656
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1659
    iget v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 1664
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$__userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 1668
    :cond_1
    iget-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    .line 1672
    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    .line 1673
    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$__password:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 1674
    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$__qwd:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 1679
    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$__loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    iget v2, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyVersion:I

    if-eqz v2, :cond_3

    .line 1680
    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$__loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    iget v2, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyVersion:I

    iput v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    goto :goto_0

    .line 1682
    :cond_3
    iput v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    .line 1686
    :goto_0
    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$__loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    iget-boolean v2, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isOnPremise:Z

    iput-boolean v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    .line 1687
    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$__loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    iget-boolean v2, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isClassRoom:Z

    iput-boolean v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isClassRoom:Z

    .line 1689
    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$__loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    iget-wide v2, v2, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverVersion:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    .line 1690
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$__loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    iget-wide v1, v1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverVersion:D

    double-to-int v1, v1

    iput v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    goto :goto_1

    .line 1692
    :cond_4
    iput v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    .line 1695
    :goto_1
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$__loginResponse:Lcom/metamoji/cs/dc/response/CsLoginResponse;

    iget-object v1, v1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverDeviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverDeviceId:Ljava/lang/String;

    .line 1696
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$26;->val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-virtual {v1, v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    :cond_5
    :goto_2
    return-void
.end method
