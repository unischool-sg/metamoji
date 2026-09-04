.class public Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;
.super Lcom/metamoji/ns/service/NsCollaboURLConnection;
.source "NsCollaboURLConnectionForModifyRole.java"


# instance fields
.field public companyId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public isAddRole:Z

.field public password:Ljava/lang/String;

.field public qwd:Ljava/lang/String;

.field public role:Ljava/lang/String;

.field public roomId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    return-void
.end method


# virtual methods
.method public sendRequest()Z
    .locals 12

    .line 49
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->valid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->roomId:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->email:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->password:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->qwd:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->companyId:Ljava/lang/String;

    if-nez v1, :cond_1

    return v2

    .line 60
    :cond_1
    const-string v1, "/cosmos/ModifyRole"

    invoke-virtual {p0, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v8

    .line 67
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v10

    .line 75
    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->qwd:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string/jumbo v3, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"userPassword\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"qwd\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    :goto_0
    move-object v11, v3

    if-nez v2, :cond_3

    .line 76
    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->password:Ljava/lang/String;

    .line 82
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->email:Ljava/lang/String;

    invoke-static {v4}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->companyId:Ljava/lang/String;

    const-string v6, "Android-Share-G-ClassRoom"

    move-object v2, v3

    move-object v3, v0

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v2, "application/json"

    invoke-static {v2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v0, v2}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 87
    const-string v2, "authInfo"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 90
    const-string/jumbo v0, "roomID"

    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->roomId:Ljava/lang/String;

    invoke-virtual {v10, v0, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 93
    iget-boolean v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->isAddRole:Z

    if-eqz v0, :cond_4

    const-string v0, "addRole"

    goto :goto_1

    :cond_4
    const-string v0, "delRole"

    :goto_1
    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->role:Ljava/lang/String;

    invoke-virtual {v10, v0, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 95
    invoke-virtual {v10}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForModifyRole;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_5
    :goto_2
    return v2
.end method
