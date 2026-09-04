.class public Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;
.super Lcom/metamoji/ns/service/NsCollaboURLConnection;
.source "NsCollaboURLConnectionForUpdateRoomInfo.java"


# instance fields
.field public companyId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public formalPresenterArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public formalSpeakerArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public formalVisitorArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public mode2ParamDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public password:Ljava/lang/String;

.field public qwd:Ljava/lang/String;

.field public roomId:Ljava/lang/String;

.field public roomType:Ljava/lang/String;

.field public secureRoomPassword:Ljava/lang/String;

.field public updateSecureRoom:Ljava/lang/Boolean;

.field public updateSecureRoomPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->mode2ParamDic:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public sendRequest()Z
    .locals 20

    move-object/from16 v0, p0

    .line 58
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->valid()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->roomId:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->email:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->password:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->qwd:Ljava/lang/String;

    if-eqz v2, :cond_a

    :cond_0
    iget-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->roomType:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->formalPresenterArray:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->formalSpeakerArray:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->formalVisitorArray:Ljava/util/List;

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 65
    :cond_1
    iget-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->companyId:Ljava/lang/String;

    if-nez v2, :cond_2

    return v3

    .line 70
    :cond_2
    const-string v2, "cosmos/UpdateRoomInfo"

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v9

    .line 75
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v10

    .line 77
    new-instance v4, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v4}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v4, v5}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v12

    .line 85
    iget-object v4, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->qwd:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string/jumbo v5, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"userPassword\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"qwd\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    :goto_0
    move-object v13, v5

    if-nez v4, :cond_4

    .line 86
    iget-object v4, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->password:Ljava/lang/String;

    .line 87
    :cond_4
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->email:Ljava/lang/String;

    invoke-static {v6}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v11, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->companyId:Ljava/lang/String;

    const-string v8, "Android-Share-G-ClassRoom"

    move-object v4, v5

    move-object v5, v1

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v13, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v4, "application/json"

    invoke-static {v4}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    invoke-static {v1, v5}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 92
    const-string v5, "authInfo"

    const/4 v6, 0x0

    invoke-virtual {v12, v5, v6, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 95
    const-string/jumbo v1, "roomID"

    iget-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->roomId:Ljava/lang/String;

    invoke-virtual {v12, v1, v5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 98
    iget-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->formalPresenterArray:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/ns/NsCollaboUtils;->createRoleParamString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 99
    iget-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->formalSpeakerArray:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/ns/NsCollaboUtils;->createRoleParamString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 100
    iget-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->formalVisitorArray:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/ns/NsCollaboUtils;->createRoleParamString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    .line 106
    iget-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->updateSecureRoom:Ljava/lang/Boolean;

    const-string v5, ""

    if-eqz v1, :cond_7

    .line 107
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 108
    iget-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->updateSecureRoomPassword:Ljava/lang/String;

    if-nez v1, :cond_5

    return v3

    .line 112
    :cond_5
    invoke-static {v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, ", \"secureRoom\":\"1\", \"secureRoomPassword\":\"%s\""

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 114
    :cond_6
    const-string v1, ", \"secureRoom\":\"0\""

    :goto_1
    move-object/from16 v18, v1

    goto :goto_2

    :cond_7
    move-object/from16 v18, v5

    .line 120
    :goto_2
    iget-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->mode2ParamDic:Ljava/util/Map;

    if-eqz v1, :cond_8

    .line 121
    invoke-static {v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->mode2ParamJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    :cond_8
    move-object/from16 v19, v5

    .line 126
    iget-object v13, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->roomType:Ljava/lang/String;

    iget-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->companyId:Ljava/lang/String;

    move-object/from16 v17, v1

    filled-new-array/range {v13 .. v19}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "{ \"roomType\":\"%s\", \"role\":{ \"presenter\":[%s], \"speaker\":[%s], \"visitor\":[%s] }, \"companyID\":\"%s\"%s%s }"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v4}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {v1, v3}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 132
    const-string/jumbo v3, "roomInfo"

    invoke-virtual {v12, v3, v6, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 135
    iget-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->secureRoomPassword:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 136
    const-string/jumbo v3, "secureRoomPassword"

    invoke-virtual {v12, v3, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 139
    :cond_9
    invoke-virtual {v12}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomInfo;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v1

    return v1

    :cond_a
    :goto_3
    return v3
.end method
