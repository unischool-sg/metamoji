.class Lcom/metamoji/cs/dc/CsCloudService$30;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeGetDriveHomeWithParams(Lcom/metamoji/cs/dc/params/CsGetDriveHomeParam;)Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;",
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

    .line 2003
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$30;->val$command:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$30;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2007
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 2009
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudService$30;->val$command:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsCloudService$30;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 2010
    new-instance v1, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;-><init>()V

    .line 2011
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 2013
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 2014
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;->bodyMessage:Ljava/util/HashMap;

    .line 2015
    const-string v2, "homeDir"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;->homeDir:Ljava/lang/String;

    .line 2016
    const-string v2, "maintenanceText"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;->maintenanceText:Ljava/lang/String;

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

    .line 2003
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$30;->call()Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;

    move-result-object v0

    return-object v0
.end method
