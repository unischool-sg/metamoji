.class Lcom/metamoji/cs/dc/CsCloudService$51;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeJoinClassBoxWithParams(Lcom/metamoji/cs/dc/params/CsJoinClassBoxParam;)Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;",
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

    .line 3090
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$51;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$51;->val$paramStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3094
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 3096
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$51;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$51;->val$paramStr:Ljava/lang/String;

    const-string v3, "/users3/crbox/join"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 3097
    new-instance v1, Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;-><init>()V

    .line 3098
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 3100
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 3101
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;->bodyMessage:Ljava/util/HashMap;

    .line 3102
    const-string v2, "driveId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;->driveId:Ljava/lang/String;

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

    .line 3090
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$51;->call()Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;

    move-result-object v0

    return-object v0
.end method
