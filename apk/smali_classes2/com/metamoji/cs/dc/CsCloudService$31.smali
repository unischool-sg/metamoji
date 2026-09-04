.class Lcom/metamoji/cs/dc/CsCloudService$31;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeCreateDriveWithParams(Lcom/metamoji/cs/dc/params/CsCreateDriveParam;)Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;",
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

    .line 2045
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$31;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$31;->val$paramStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2049
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 2051
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$31;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$31;->val$paramStr:Ljava/lang/String;

    const-string v3, "/drives/create"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 2052
    new-instance v1, Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;-><init>()V

    .line 2053
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 2055
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 2056
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;->bodyMessage:Ljava/util/HashMap;

    .line 2057
    const-string v2, "driveId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;->driveId:Ljava/lang/String;

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

    .line 2045
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$31;->call()Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;

    move-result-object v0

    return-object v0
.end method
