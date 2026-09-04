.class Lcom/metamoji/cs/dc/CsCloudService$46;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeGetClientFileWithParams(Lcom/metamoji/cs/dc/params/CsGetClientFileParam;)Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$method:Lcom/metamoji/cs/CsHttpClientMethod;

.field final synthetic val$paramJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2868
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$46;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$46;->val$paramJson:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;
    .locals 5

    .line 2872
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 2874
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$46;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$46;->val$paramJson:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "/users2/login/getclientfile"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;Z)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 2876
    new-instance v1, Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;-><init>()V

    .line 2877
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 2879
    iget v2, v1, Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;->errorCode:I

    if-nez v2, :cond_0

    .line 2880
    iget-object v0, v0, Lcom/metamoji/cs/HttpClientResponseBean;->responseBodyFile:Ljava/lang/String;

    iput-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;->url:Ljava/lang/String;

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

    .line 2868
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$46;->call()Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;

    move-result-object v0

    return-object v0
.end method
