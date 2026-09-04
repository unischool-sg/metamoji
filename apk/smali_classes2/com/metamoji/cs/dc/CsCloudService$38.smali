.class Lcom/metamoji/cs/dc/CsCloudService$38;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeExcludeMemberFromDriveWithParams(Lcom/metamoji/cs/dc/params/CsExcludeMemberFromDriveParam;)Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;",
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

    .line 2323
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$38;->val$command:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$38;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p3, p0, Lcom/metamoji/cs/dc/CsCloudService$38;->val$paramStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2327
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 2329
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$38;->val$command:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$38;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v3, p0, Lcom/metamoji/cs/dc/CsCloudService$38;->val$paramStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 2330
    new-instance v1, Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;-><init>()V

    .line 2331
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 2333
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;->errorCode:I

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2323
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$38;->call()Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;

    move-result-object v0

    return-object v0
.end method
