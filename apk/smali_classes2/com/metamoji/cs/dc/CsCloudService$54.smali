.class Lcom/metamoji/cs/dc/CsCloudService$54;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeCreateLinkWithParams(Lcom/metamoji/cs/dc/params/CsCreateLinkParam;)Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$json:Ljava/lang/String;

.field final synthetic val$method:Lcom/metamoji/cs/CsHttpClientMethod;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3212
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$54;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$54;->val$json:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3216
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 3218
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$54;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$54;->val$json:Ljava/lang/String;

    const-string v3, "/link/create"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 3220
    new-instance v1, Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;-><init>()V

    .line 3221
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 3223
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 3224
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;->bodyMessage:Ljava/util/HashMap;

    .line 3225
    const-string v2, "uri"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;->uri:Ljava/lang/String;

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

    .line 3212
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$54;->call()Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;

    move-result-object v0

    return-object v0
.end method
