.class Lcom/metamoji/cs/dc/CsCloudService$6;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeGetUserInfoWithParams(Lcom/metamoji/cs/dc/params/CsGetUserInfoParam;)Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;",
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

    .line 468
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$6;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$6;->val$param:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 472
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$6;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$6;->val$param:Ljava/lang/String;

    const-string v3, "/users2/login/user"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 476
    new-instance v1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;-><init>()V

    .line 477
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 479
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 480
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->bodyMessage:Ljava/util/HashMap;

    .line 481
    const-string v2, "userId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->userId:Ljava/lang/String;

    .line 482
    const-string v2, "email"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->email:Ljava/lang/String;

    .line 483
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->name:Ljava/lang/String;

    .line 484
    const-string v2, "appAuthKey"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->appAuthKey:Ljava/lang/String;

    .line 485
    const-string v2, "locale"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->locale:Ljava/lang/String;

    .line 486
    const-string v2, "timeZone"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->timezone:Ljava/lang/String;

    .line 487
    const-string v2, "homeDir"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->homeDir:Ljava/lang/String;

    .line 488
    const-string v2, "key"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->key:Ljava/lang/Number;

    .line 489
    const-string v2, "isAdmin"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->isAdmin:Z

    :cond_0
    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$6;->call()Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    move-result-object v0

    return-object v0
.end method
