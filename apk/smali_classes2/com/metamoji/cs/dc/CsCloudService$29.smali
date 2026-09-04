.class Lcom/metamoji/cs/dc/CsCloudService$29;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeUpdateMemberTypeWithParams(Lcom/metamoji/cs/dc/params/CsUpdateMemberTypeParams;)Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$method:Lcom/metamoji/cs/CsHttpClientMethod;

.field final synthetic val$paramStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1968
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$29;->val$command:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$29;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p3, p0, Lcom/metamoji/cs/dc/CsCloudService$29;->val$paramStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1972
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 1974
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$29;->val$command:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$29;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v3, p0, Lcom/metamoji/cs/dc/CsCloudService$29;->val$paramStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 1975
    new-instance v1, Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;-><init>()V

    .line 1976
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1968
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$29;->call()Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;

    move-result-object v0

    return-object v0
.end method
