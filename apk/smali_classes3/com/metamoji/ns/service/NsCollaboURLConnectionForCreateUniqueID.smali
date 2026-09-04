.class public Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateUniqueID;
.super Lcom/metamoji/ns/service/NsCollaboURLConnection;
.source "NsCollaboURLConnectionForCreateUniqueID.java"


# instance fields
.field public deviceCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    return-void
.end method


# virtual methods
.method public sendRequest()Z
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateUniqueID;->deviceCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    const-string v0, "cosmos/CreateUniqueID"

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateUniqueID;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v2

    .line 47
    new-instance v3, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v3}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v4, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v3, v4}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 50
    iget-object v4, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateUniqueID;->deviceCode:Ljava/lang/String;

    const-string v5, "Android-Share-G-ClassRoom"

    filled-new-array {v4, v5, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "{ \"deviceCode\":\"%s\", \"authType\":\"guest\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\" }"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v2, "application/json"

    invoke-static {v2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 52
    const-string v2, "authInfo"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 54
    invoke-virtual {v3}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateUniqueID;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
