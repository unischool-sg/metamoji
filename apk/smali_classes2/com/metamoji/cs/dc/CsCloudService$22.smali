.class Lcom/metamoji/cs/dc/CsCloudService$22;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeGetShareInfoWithParams(Lcom/metamoji/cs/dc/params/CsGetShareInfoParam;)Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;",
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

    .line 1283
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$22;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$22;->val$param:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1287
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 1289
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$22;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$22;->val$param:Ljava/lang/String;

    const-string v3, "mmjeditor2"

    const-string v4, "/GetShareInfo"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 1291
    new-instance v1, Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;-><init>()V

    .line 1292
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 1294
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 1295
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;->bodyMessage:Ljava/util/HashMap;

    .line 1296
    const-string v2, "version"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;->version:Ljava/lang/String;

    .line 1297
    const-string v2, "result"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;->result:Ljava/lang/String;

    .line 1298
    const-string v2, "message"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;->message:Ljava/lang/String;

    .line 1299
    const-string v2, "hasBaseLicense"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;->hasBaseLicense:Z

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

    .line 1283
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$22;->call()Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;

    move-result-object v0

    return-object v0
.end method
