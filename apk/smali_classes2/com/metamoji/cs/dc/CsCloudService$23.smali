.class Lcom/metamoji/cs/dc/CsCloudService$23;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeSimulationPurchaseWithParams(Lcom/metamoji/cs/dc/params/CsSimulationPurchaseParam;)Lcom/metamoji/cs/dc/response/CsSimulationPurchaseResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsSimulationPurchaseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$method:Lcom/metamoji/cs/CsHttpClientMethod;

.field final synthetic val$paramDic:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1332
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$23;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$23;->val$paramDic:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsSimulationPurchaseResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1336
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 1338
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$23;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$23;->val$paramDic:Ljava/util/ArrayList;

    const-string v3, "mmjeditor2"

    const-string v4, "/SimPurchase"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/util/ArrayList;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 1340
    new-instance v1, Lcom/metamoji/cs/dc/response/CsSimulationPurchaseResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsSimulationPurchaseResponse;-><init>()V

    .line 1341
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 1343
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsSimulationPurchaseResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 1344
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsSimulationPurchaseResponse;->bodyMessage:Ljava/util/HashMap;

    .line 1345
    const-string v2, "version"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsSimulationPurchaseResponse;->version:Ljava/lang/String;

    .line 1346
    const-string v2, "result"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsSimulationPurchaseResponse;->result:Ljava/lang/String;

    .line 1347
    const-string v2, "message"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsSimulationPurchaseResponse;->message:Ljava/lang/String;

    .line 1348
    const-string v2, "hasBaseLicense"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/metamoji/cs/dc/response/CsSimulationPurchaseResponse;->hasBaseLicense:Z

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

    .line 1332
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$23;->call()Lcom/metamoji/cs/dc/response/CsSimulationPurchaseResponse;

    move-result-object v0

    return-object v0
.end method
