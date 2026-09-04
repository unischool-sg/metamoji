.class public Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;
.super Lcom/metamoji/ns/service/NsCollaboURLConnection;
.source "NsCollaboURLConnectionForUpdateRoomTitleDate.java"


# instance fields
.field public accessToken:Ljava/lang/String;

.field public companyId:Ljava/lang/String;

.field public date:Ljava/util/Date;

.field public email:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public qwd:Ljava/lang/String;

.field public roomId:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    return-void
.end method


# virtual methods
.method public sendRequest()Z
    .locals 13

    .line 49
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->valid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->roomId:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->email:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->companyId:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->password:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->qwd:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->title:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 55
    :cond_1
    const-string v1, "/mmjcloud/ShareViewSetRoomInfo"

    invoke-virtual {p0, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v8

    .line 60
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v9

    .line 62
    new-instance v3, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v3}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v4, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v3, v4}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v11

    .line 66
    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->qwd:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string/jumbo v4, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"userPassword\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"qwd\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    :goto_0
    move-object v12, v4

    if-nez v3, :cond_3

    .line 67
    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->password:Ljava/lang/String;

    .line 72
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->email:Ljava/lang/String;

    invoke-static {v5}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->companyId:Ljava/lang/String;

    const-string v7, "Android-Share-G-ClassRoom"

    move-object v3, v4

    move-object v4, v0

    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v0, v4}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 74
    const-string v4, "authInfo"

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->title:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->date:Ljava/util/Date;

    invoke-static {v2}, Lcom/metamoji/ns/NsShareViewCommand;->convertDateFromDate(Ljava/util/Date;)J

    move-result-wide v6

    .line 89
    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->roomId:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "{ \"roomId\":%s, \"title\":\"%s\", \"openDate\":%d }"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v0, v2}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 91
    const-string/jumbo v2, "roomInfo"

    invoke-virtual {v11, v2, v5, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 93
    invoke-virtual {v11}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 82
    const-string v1, "NsCollaboURLConnectionForUpdateRoomTitleDate.sendRequest"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/metamoji/ns/service/NsCollaboServiceException;

    const-string v3, "encoding"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/metamoji/ns/service/NsCollaboServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :goto_1
    return v2
.end method
