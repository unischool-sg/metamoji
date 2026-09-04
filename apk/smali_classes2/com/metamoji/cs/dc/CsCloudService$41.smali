.class Lcom/metamoji/cs/dc/CsCloudService$41;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeGetPrivateDriveHomeWithParams(Lcom/metamoji/cs/dc/params/CsGetPrivateDriveHomeParam;)Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$method:Lcom/metamoji/cs/CsHttpClientMethod;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/CsHttpClientMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2676
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$41;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2680
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 2682
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$41;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    const/4 v2, 0x0

    const-string v3, "/v3/users/login/home"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 2683
    new-instance v1, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;-><init>()V

    .line 2684
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 2686
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 2687
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->bodyMessage:Ljava/util/HashMap;

    .line 2688
    const-string v2, "userId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->userId:Ljava/lang/String;

    .line 2689
    const-string v2, "driveId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->driveId:Ljava/lang/String;

    .line 2690
    const-string v2, "homeDir"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->homeDir:Ljava/lang/String;

    .line 2691
    const-string v2, "maintenanceText"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->maintenanceText:Ljava/lang/String;

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

    .line 2676
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$41;->call()Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;

    move-result-object v0

    return-object v0
.end method
