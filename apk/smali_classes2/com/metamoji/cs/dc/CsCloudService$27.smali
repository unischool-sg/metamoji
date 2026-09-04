.class Lcom/metamoji/cs/dc/CsCloudService$27;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeGetStorageUsageWithParams(Lcom/metamoji/cs/dc/params/CsGetStorageUsageParam;)Lcom/metamoji/cs/dc/response/CsGetStorageUsageResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsGetStorageUsageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$method:Lcom/metamoji/cs/CsHttpClientMethod;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/CsHttpClientMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1880
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$27;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsGetStorageUsageResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1884
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 1886
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$27;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    const-string v2, ""

    const-string v3, "/users2/recalc"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 1888
    new-instance v1, Lcom/metamoji/cs/dc/response/CsGetStorageUsageResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsGetStorageUsageResponse;-><init>()V

    .line 1889
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 1891
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsGetStorageUsageResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 1892
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetStorageUsageResponse;->bodyMessage:Ljava/util/HashMap;

    .line 1893
    const-string v2, "amount"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetStorageUsageResponse;->amountUsage:Ljava/lang/String;

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

    .line 1880
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$27;->call()Lcom/metamoji/cs/dc/response/CsGetStorageUsageResponse;

    move-result-object v0

    return-object v0
.end method
