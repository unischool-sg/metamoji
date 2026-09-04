.class Lcom/metamoji/cs/dc/CsCloudService$10;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeGetUserAndSystemInfo2WithParams(Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;)Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$method:Lcom/metamoji/cs/CsHttpClientMethod;

.field final synthetic val$param:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 671
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$10;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$10;->val$param:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 676
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 678
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$10;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$10;->val$param:Ljava/lang/String;

    const-string v3, "/system2/user2"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 680
    new-instance v1, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;-><init>()V

    .line 681
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 683
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->errorCode:I

    if-nez v0, :cond_3

    .line 684
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->bodyMessage:Ljava/util/HashMap;

    .line 686
    new-instance v2, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;-><init>()V

    .line 687
    new-instance v3, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;

    invoke-direct {v3}, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;-><init>()V

    if-eqz v0, :cond_2

    .line 690
    const-string v4, "userInfo"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 692
    const-string v6, "locale"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->locale:Ljava/lang/String;

    .line 693
    const-string v6, "userId"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->userId:Ljava/lang/String;

    .line 694
    const-string v6, "name"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->name:Ljava/lang/String;

    .line 695
    const-string v6, "email"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->email:Ljava/lang/String;

    .line 696
    const-string v6, "appAuthKey"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->appAuthKey:Ljava/lang/String;

    .line 697
    const-string v6, "homeDir"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->homeDir:Ljava/lang/String;

    .line 698
    const-string v6, "key"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    iput-object v6, v2, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->key:Ljava/lang/Number;

    .line 699
    const-string v6, "isAdmin"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->isAdmin:Z

    .line 702
    :cond_0
    const-string v4, "systemInfo"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 704
    const-string v4, "userUsageDiskSpace"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->userUsageDiskSpace:Ljava/lang/String;

    .line 705
    const-string v4, "userTransfer"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->userTransfer:Ljava/lang/String;

    .line 706
    const-string v4, "dcplan"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->dcplan:Ljava/lang/String;

    .line 707
    const-string v4, "userLicenseInfo"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, v3, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->licenseInfo:Ljava/util/Map;

    .line 708
    const-string v4, "userActionInfo"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, v3, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->userActionInfo:Ljava/util/Map;

    .line 709
    const-string v4, "serverTime"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    iput-object v4, v3, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->serverTime:Ljava/lang/Number;

    .line 710
    const-string v4, "hasCRLicense"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->hasCRLicense:Z

    .line 711
    const-string v4, "isReadOnlyUser"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->readOnlyUser:Z

    .line 712
    const-string v4, "serviceSettings"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 714
    iput-object v4, v3, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->serviceSettings:Ljava/util/Map;

    goto :goto_0

    .line 716
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->serviceSettings:Ljava/util/Map;

    .line 720
    :goto_0
    const-string v4, "currentYearGroupId"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 722
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->currentGroupId:Ljava/lang/String;

    .line 728
    :cond_2
    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->userInfo:Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    .line 729
    iput-object v3, v1, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->systemInfo:Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;

    :cond_3
    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 671
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$10;->call()Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;

    move-result-object v0

    return-object v0
.end method
