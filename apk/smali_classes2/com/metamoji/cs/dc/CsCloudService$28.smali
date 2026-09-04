.class Lcom/metamoji/cs/dc/CsCloudService$28;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeGetDriveEntryWithParams(Lcom/metamoji/cs/dc/params/CsGetDriveEntryParam;)Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;",
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

    .line 1924
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$28;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1929
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 1931
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$28;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    const/4 v2, 0x0

    const-string v3, "/drives/entry"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 1932
    new-instance v1, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;-><init>()V

    .line 1933
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 1935
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 1936
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->bodyMessage:Ljava/util/HashMap;

    .line 1937
    const-string v2, "uid"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->uid:Ljava/lang/String;

    .line 1938
    const-string v2, "list"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;->list:Ljava/util/List;

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

    .line 1924
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$28;->call()Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;

    move-result-object v0

    return-object v0
.end method
