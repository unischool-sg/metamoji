.class Lcom/metamoji/cs/dc/CsCloudService$13;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeLockUserWithParams(Lcom/metamoji/cs/dc/params/CsLockUserParam;)Lcom/metamoji/cs/dc/response/CsLockUserResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsLockUserResponse;",
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

    .line 854
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$13;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$13;->val$param:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsLockUserResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 858
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 860
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$13;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$13;->val$param:Ljava/lang/String;

    const-string v3, "/users2/lock"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 862
    new-instance v1, Lcom/metamoji/cs/dc/response/CsLockUserResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsLockUserResponse;-><init>()V

    .line 863
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 865
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsLockUserResponse;->errorCode:I

    if-nez v0, :cond_1

    .line 866
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsLockUserResponse;->bodyMessage:Ljava/util/HashMap;

    .line 867
    const-string v2, "needRecovery"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 869
    iput-boolean v2, v1, Lcom/metamoji/cs/dc/response/CsLockUserResponse;->needRecovery:Z

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 871
    iput-boolean v0, v1, Lcom/metamoji/cs/dc/response/CsLockUserResponse;->needRecovery:Z

    :cond_1
    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 854
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$13;->call()Lcom/metamoji/cs/dc/response/CsLockUserResponse;

    move-result-object v0

    return-object v0
.end method
