.class public Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;
.super Lcom/metamoji/ns/service/NsCollaboURLConnection;
.source "NsCollaboURLConnectionForUpdateRoomSetting.java"


# instance fields
.field public accessToken:Ljava/lang/String;

.field public companyId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public qwd:Ljava/lang/String;

.field public roomId:Ljava/lang/String;

.field public roomSettingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    return-void
.end method


# virtual methods
.method public sendRequest()Z
    .locals 13

    .line 52
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->valid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->roomId:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->email:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->password:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->qwd:Ljava/lang/String;

    if-eqz v1, :cond_9

    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->roomSettingList:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 54
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->companyId:Ljava/lang/String;

    if-nez v1, :cond_2

    return v2

    .line 64
    :cond_2
    const-string v1, "/mmjcloud/ShareViewSetRoomSetting"

    invoke-virtual {p0, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v9

    .line 71
    new-instance v3, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v3}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v4, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v3, v4}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v11

    .line 79
    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->qwd:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string/jumbo v4, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"userPassword\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"qwd\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    :goto_0
    move-object v12, v4

    if-nez v3, :cond_4

    .line 80
    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->password:Ljava/lang/String;

    .line 86
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->email:Ljava/lang/String;

    invoke-static {v5}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->companyId:Ljava/lang/String;

    const-string v7, "Android-Share-G-ClassRoom"

    move-object v3, v4

    move-object v4, v0

    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v0, v4}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 91
    const-string v4, "authInfo"

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 94
    const-string/jumbo v0, "roomId"

    iget-object v4, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->roomId:Ljava/lang/String;

    invoke-virtual {v11, v0, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object v4, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->roomSettingList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 100
    check-cast v6, Ljava/util/Map;

    if-eqz v6, :cond_5

    .line 102
    const-string/jumbo v7, "updated"

    invoke-static {v6, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 103
    const-string v8, "key1"

    invoke-static {v6, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 104
    const-string v9, "key2"

    invoke-static {v6, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 105
    const-string/jumbo v10, "value"

    invoke-static {v6, v10}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v8, :cond_5

    if-eqz v9, :cond_5

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    if-nez v7, :cond_7

    .line 112
    const-string/jumbo v7, "{ \"key1\":\"%s\", \"key2\":\"%s\", \"value\":\"%s\" }"

    filled-new-array {v8, v9, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 115
    :cond_7
    const-string/jumbo v10, "{ \"updated\":%s, \"key1\":\"%s\", \"key2\":\"%s\", \"value\":\"%s\" }"

    filled-new-array {v7, v8, v9, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 117
    :goto_2
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_8
    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->jointString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "[ %s ]"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v0, v2}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 122
    const-string/jumbo v2, "roomSettingList"

    invoke-virtual {v11, v2, v5, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 124
    invoke-virtual {v11}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomSetting;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_9
    :goto_3
    return v2
.end method
