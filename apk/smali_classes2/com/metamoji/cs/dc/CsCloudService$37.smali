.class Lcom/metamoji/cs/dc/CsCloudService$37;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeUnreferenceDriveWithParams(Lcom/metamoji/cs/dc/params/CsDeleteMemberToDriveParam;)Lcom/metamoji/cs/dc/response/CsDeleteMemberToDriveResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsDeleteMemberToDriveResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$method:Lcom/metamoji/cs/CsHttpClientMethod;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2284
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$37;->val$command:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$37;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsDeleteMemberToDriveResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2288
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 2290
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$37;->val$command:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$37;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 2291
    new-instance v1, Lcom/metamoji/cs/dc/response/CsDeleteMemberToDriveResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsDeleteMemberToDriveResponse;-><init>()V

    .line 2292
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 2294
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsDeleteMemberToDriveResponse;->errorCode:I

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2284
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$37;->call()Lcom/metamoji/cs/dc/response/CsDeleteMemberToDriveResponse;

    move-result-object v0

    return-object v0
.end method
