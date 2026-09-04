.class public Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;
.super Lcom/metamoji/ns/service/NsCollaboURLConnection;
.source "NsCollaboURLConnectionForLoginRoom.java"


# instance fields
.field public companyId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public qwd:Ljava/lang/String;

.field public roomId:Ljava/lang/String;

.field public roomPassword:Ljava/lang/String;

.field public secureRoomPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 40
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

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->roomId:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->companyId:Ljava/lang/String;

    if-nez v1, :cond_1

    return v2

    .line 60
    :cond_1
    const-string v1, "cosmos/LoginRoom"

    invoke-virtual {p0, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->baseURL(Ljava/lang/String;)Ljava/lang/String;

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

    .line 71
    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->email:Ljava/lang/String;

    const-string v6, "Android-Share-G-ClassRoom"

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->password:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->qwd:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 76
    :cond_2
    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->qwd:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string/jumbo v4, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"userPassword\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"qwd\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    :goto_0
    move-object v11, v4

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 78
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v2, v3

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->email:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->companyId:Ljava/lang/String;

    move-object v4, v0

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 84
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"guest\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\" }"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_2
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

    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->roomId:Ljava/lang/String;

    invoke-virtual {v10, v0, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 93
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->roomPassword:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 94
    const-string/jumbo v0, "roomPassword2"

    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->roomPassword:Ljava/lang/String;

    invoke-virtual {v10, v0, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->secureRoomPassword:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 101
    const-string/jumbo v2, "secureRoomPassword"

    invoke-virtual {v10, v2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 106
    :cond_7
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->getLocalIp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 108
    const-string v2, "localIp"

    invoke-virtual {v10, v2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 111
    :cond_8
    invoke-virtual {v10}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForLoginRoom;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_9
    :goto_3
    return v2
.end method
