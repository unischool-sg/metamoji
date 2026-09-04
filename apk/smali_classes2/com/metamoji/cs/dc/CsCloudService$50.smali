.class Lcom/metamoji/cs/dc/CsCloudService$50;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeGetClassCodeWithParams(Lcom/metamoji/cs/dc/params/CsGetClassCodeParam;)Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$method:Lcom/metamoji/cs/CsHttpClientMethod;

.field final synthetic val$paramStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3048
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$50;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$50;->val$paramStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3052
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 3054
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$50;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$50;->val$paramStr:Ljava/lang/String;

    const-string v3, "/users3/crbox/get/joincode"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 3055
    new-instance v1, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;-><init>()V

    .line 3056
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 3058
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 3059
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->bodyMessage:Ljava/util/HashMap;

    .line 3060
    const-string v2, "joinCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->joinCode:Ljava/lang/String;

    .line 3061
    const-string v2, "joinEnabled"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;->joinEnabled:Z

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

    .line 3048
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$50;->call()Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;

    move-result-object v0

    return-object v0
.end method
