.class Lcom/metamoji/cs/dc/CsCloudService$8;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeWithdrawWithParams(Lcom/metamoji/cs/dc/params/CsWithdrawParam;)Lcom/metamoji/cs/dc/response/CsWithdrawResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsWithdrawResponse;",
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

    .line 571
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$8;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$8;->val$param:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsWithdrawResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 575
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 577
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$8;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$8;->val$param:Ljava/lang/String;

    const-string v3, "/users2/withdraw/"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v1

    .line 578
    new-instance v2, Lcom/metamoji/cs/dc/response/CsWithdrawResponse;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/response/CsWithdrawResponse;-><init>()V

    .line 579
    invoke-static {v1, v2}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 581
    iget v1, v2, Lcom/metamoji/cs/dc/response/CsWithdrawResponse;->errorCode:I

    if-nez v1, :cond_0

    .line 582
    invoke-virtual {v0}, Lcom/metamoji/cs/CsHttpClient;->clearSession()V

    :cond_0
    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 571
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$8;->call()Lcom/metamoji/cs/dc/response/CsWithdrawResponse;

    move-result-object v0

    return-object v0
.end method
