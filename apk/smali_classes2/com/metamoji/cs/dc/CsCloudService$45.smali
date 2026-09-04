.class Lcom/metamoji/cs/dc/CsCloudService$45;
.super Ljava/lang/Object;
.source "CsCloudService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsCloudService;->executeSetClientFileWithParams(Lcom/metamoji/cs/dc/params/CsSetClientFileParam;)Lcom/metamoji/cs/dc/response/CsSetClientFileResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/cs/dc/response/CsSetClientFileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$method:Lcom/metamoji/cs/CsHttpClientMethod;

.field final synthetic val$param_:Lcom/metamoji/cs/dc/params/CsSetClientFileParam;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/params/CsSetClientFileParam;Lcom/metamoji/cs/CsHttpClientMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2829
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudService$45;->val$param_:Lcom/metamoji/cs/dc/params/CsSetClientFileParam;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudService$45;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/cs/dc/response/CsSetClientFileResponse;
    .locals 6

    .line 2833
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;

    move-result-object v0

    .line 2834
    const-string v1, "application/octet-stream"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 2836
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 2837
    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/cs/dc/CsCloudService$45;->val$param_:Lcom/metamoji/cs/dc/params/CsSetClientFileParam;

    iget-object v3, v3, Lcom/metamoji/cs/dc/params/CsSetClientFileParam;->key:Ljava/lang/String;

    .line 2838
    const-string v4, "key"

    invoke-virtual {v2, v4, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/cs/dc/CsCloudService$45;->val$param_:Lcom/metamoji/cs/dc/params/CsSetClientFileParam;

    iget-object v3, v3, Lcom/metamoji/cs/dc/params/CsSetClientFileParam;->key:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/metamoji/cs/dc/CsCloudService$45;->val$param_:Lcom/metamoji/cs/dc/params/CsSetClientFileParam;

    iget-object v5, v5, Lcom/metamoji/cs/dc/params/CsSetClientFileParam;->url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2839
    invoke-static {v4, v1}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    const-string v4, "fileEntity"

    invoke-virtual {v2, v4, v3, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    .line 2840
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    .line 2842
    const-string v2, "/users2/login/setclientfile"

    iget-object v3, p0, Lcom/metamoji/cs/dc/CsCloudService$45;->val$method:Lcom/metamoji/cs/CsHttpClientMethod;

    invoke-virtual {v0, v2, v3, v1}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithMultipartFromData(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Lokhttp3/RequestBody;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    .line 2844
    new-instance v1, Lcom/metamoji/cs/dc/response/CsSetClientFileResponse;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/response/CsSetClientFileResponse;-><init>()V

    .line 2845
    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsCloudService;->-$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2829
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudService$45;->call()Lcom/metamoji/cs/dc/response/CsSetClientFileResponse;

    move-result-object v0

    return-object v0
.end method
