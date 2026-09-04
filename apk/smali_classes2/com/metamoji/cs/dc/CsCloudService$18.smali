.class Lcom/metamoji/cs/dc/CsCloudService$18;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeInkAmountSyncWithParams(Lcom/metamoji/cs/dc/params/CsInkAmountSyncParams;)Lcom/metamoji/cs/dc/response/CsInkAmountSyncResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsInkAmountSyncResponse;",
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

    .line 1090
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$18;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$18;->val$param:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsInkAmountSyncResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1095
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 1097
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$18;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$18;->val$param:Ljava/lang/String;

    const-string v3, "mmjeditor2"

    const-string v4, "/License"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 1099
    new-instance v1, Lcom/metamoji/cs/dc/response/CsInkAmountSyncResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsInkAmountSyncResponse;-><init>()V

    .line 1100
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 1102
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsInkAmountSyncResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 1103
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsInkAmountSyncResponse;->bodyMessage:Ljava/util/HashMap;

    .line 1104
    const-string v2, "version"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsInkAmountSyncResponse;->version:Ljava/lang/String;

    .line 1105
    const-string v2, "result"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsInkAmountSyncResponse;->result:Ljava/lang/String;

    .line 1106
    const-string v2, "licenselist"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/metamoji/cs/dc/response/CsInkAmountSyncResponse;->licenseList:Ljava/util/ArrayList;

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

    .line 1090
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$18;->call()Lcom/metamoji/cs/dc/response/CsInkAmountSyncResponse;

    move-result-object v0

    return-object v0
.end method
