.class Lcom/metamoji/cs/dc/CsCloudService$3;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeClassRoomLoginWithParam(Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;)Lcom/metamoji/cs/dc/response/CsLoginResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$isClassRoom:Z

.field final synthetic val$isOnPremise:Z

.field final synthetic val$method:Lcom/metamoji/cs/CsHttpClientMethod;

.field final synthetic val$paramStr:Ljava/lang/String;

.field final synthetic val$serverUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$3;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$3;->val$paramStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/cs/dc/CsCloudService$3;->val$serverUrl:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/metamoji/cs/dc/CsCloudService$3;->val$isOnPremise:Z

    iput-boolean p5, p0, Lcom/metamoji/cs/dc/CsCloudService$3;->val$isClassRoom:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsLoginResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$3;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$3;->val$paramStr:Ljava/lang/String;

    const-string v3, "/users3/classroomlogin"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 319
    new-instance v1, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsLoginResponse;-><init>()V

    .line 320
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 321
    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$3;->val$serverUrl:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/metamoji/cs/dc/CsCloudService$3;->val$isOnPremise:Z

    iget-boolean v4, p0, Lcom/metamoji/cs/dc/CsCloudService$3;->val$isClassRoom:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smprepareLoginResponse(Lcom/metamoji/cs/dc/response/CsLoginResponse;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$3;->call()Lcom/metamoji/cs/dc/response/CsLoginResponse;

    move-result-object v0

    return-object v0
.end method
