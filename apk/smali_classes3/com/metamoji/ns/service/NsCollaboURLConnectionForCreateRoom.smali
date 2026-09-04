.class public Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;
.super Lcom/metamoji/ns/service/NsCollaboURLConnection;
.source "NsCollaboURLConnectionForCreateRoom.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public companyId:Ljava/lang/String;

.field public date:Ljava/util/Date;

.field public email:Ljava/lang/String;

.field public endDate:Ljava/util/Date;

.field public endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

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

.field public ownerId:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field public qwd:Ljava/lang/String;

.field public roomPassword:Ljava/lang/String;

.field public roomType:Ljava/lang/String;

.field public scoreEnable:Z

.field public secureRoomPassword:Ljava/lang/String;

.field public startDate:Ljava/util/Date;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    return-void
.end method

.method public static mode2ParamDicWithScoreEnable(ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;",
            "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 171
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const v1, 0x8001

    :cond_2
    if-eqz p0, :cond_3

    const p0, 0x800c

    or-int/2addr v1, p0

    .line 181
    :cond_3
    invoke-static {v1, p1, p2, p3, p4}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->mode2ParamDicWithValidFlag(ILcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static mode2ParamDicWithValidFlag(ILcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;",
            "Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 187
    const-string/jumbo v1, "validFlag"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {p3}, Lcom/metamoji/ns/NsShareViewCommand;->convertDateFromDate(Ljava/util/Date;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo p3, "startTime"

    invoke-interface {v0, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {p4}, Lcom/metamoji/ns/NsShareViewCommand;->convertDateFromDate(Ljava/util/Date;)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p3, "endTime"

    invoke-interface {v0, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object p0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->DONTSEE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ne p1, p0, :cond_0

    move p0, p4

    goto :goto_0

    .line 199
    :cond_0
    sget-object p0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->READONLY:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    if-ne p1, p0, :cond_1

    move p0, p3

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    .line 202
    :goto_0
    const-string p1, "beforeMode2"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo p0, "testingMode2"

    const/16 p1, 0x13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object p0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->DONTSEE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    if-ne p2, p0, :cond_2

    move p0, p4

    goto :goto_1

    .line 211
    :cond_2
    sget-object p0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->READONLY:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    if-ne p2, p0, :cond_3

    const/16 p0, 0x11

    goto :goto_1

    :cond_3
    move p0, p1

    .line 214
    :goto_1
    const-string v1, "afterMode2"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x41

    .line 217
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "reportMode2"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object p0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->DONTSEE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    if-ne p2, p0, :cond_4

    goto :goto_2

    :cond_4
    move p4, p3

    .line 224
    :goto_2
    const-string p0, "endReportMode2"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string p0, "remandMode2"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string p0, "lockMode2"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static mode2ParamJsonStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 237
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 245
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/metamoji/cm/CmJson;->createJsonValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 251
    :cond_1
    const-string v1, "[NsCollaboURLConnectionForCreateRoom] Invalid Parameter... roomIdList : {0}"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    const-string/jumbo p0, "{"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 256
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, ", %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static mode2ParamStrWithScoreEnable(ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 161
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->mode2ParamDicWithScoreEnable(ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)Ljava/util/Map;

    move-result-object p0

    .line 162
    invoke-static {p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->mode2ParamJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mode2ParamStrWithValidFlag(ILcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 165
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->mode2ParamDicWithValidFlag(ILcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)Ljava/util/Map;

    move-result-object p0

    .line 166
    invoke-static {p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->mode2ParamJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public sendRequest()Z
    .locals 23

    move-object/from16 v1, p0

    .line 78
    const-string v2, ""

    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->valid()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->email:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->password:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->qwd:Ljava/lang/String;

    if-eqz v3, :cond_7

    :cond_0
    iget-object v3, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->roomPassword:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->title:Ljava/lang/String;

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 84
    :cond_1
    iget-object v3, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->companyId:Ljava/lang/String;

    if-nez v3, :cond_2

    return v4

    .line 89
    :cond_2
    const-string v3, "cosmos/CreateRoom"

    invoke-virtual {v1, v3}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v10

    .line 94
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v11

    .line 100
    :try_start_0
    iget-object v5, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->title:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    new-instance v4, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v4}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v4, v5}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v4

    .line 114
    iget-object v5, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->qwd:Ljava/lang/String;

    if-nez v5, :cond_3

    const-string/jumbo v6, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"userPassword\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"qwd\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    :goto_0
    move-object v13, v6

    if-nez v5, :cond_4

    .line 115
    iget-object v5, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->password:Ljava/lang/String;

    .line 116
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->email:Ljava/lang/String;

    invoke-static {v7}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v12, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->companyId:Ljava/lang/String;

    const-string v9, "Android-Share-G-ClassRoom"

    move-object v5, v6

    move-object v6, v0

    filled-new-array/range {v5 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v5, "application/json"

    invoke-static {v5}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v6

    invoke-static {v0, v6}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 121
    const-string v6, "authInfo"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 126
    iget-object v0, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->formalPresenterArray:Ljava/util/List;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->createRoleParamString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    .line 127
    iget-object v0, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->formalSpeakerArray:Ljava/util/List;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->createRoleParamString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 128
    iget-object v0, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->formalVisitorArray:Ljava/util/List;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->createRoleParamString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 130
    iget-object v0, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->date:Ljava/util/Date;

    invoke-static {v0}, Lcom/metamoji/ns/NsShareViewCommand;->convertDateFromDate(Ljava/util/Date;)J

    move-result-wide v8

    .line 134
    iget-object v0, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->ownerId:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 135
    iget-object v0, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->ownerId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, ", \"ownerID\":\"%s\""

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_1

    :cond_5
    move-object/from16 v20, v2

    .line 141
    :goto_1
    iget-object v0, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->secureRoomPassword:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 142
    invoke-static {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, ", \"secureRoom\":\"1\", \"secureRoomPassword\":\"%s\""

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    move-object/from16 v21, v2

    .line 146
    iget-boolean v0, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->scoreEnable:Z

    iget-object v2, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iget-object v6, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iget-object v10, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->startDate:Ljava/util/Date;

    iget-object v11, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->endDate:Ljava/util/Date;

    invoke-static {v0, v2, v6, v10, v11}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->mode2ParamStrWithScoreEnable(ZLcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    .line 149
    iget-object v12, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->roomType:Ljava/lang/String;

    iget-object v0, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->roomPassword:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    iget-object v2, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->companyId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v19, v2

    filled-new-array/range {v12 .. v22}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "{ \"roomType\":\"%s\", \"role\":{ \"presenter\":[%s], \"speaker\":[%s], \"visitor\":[%s] }, \"roomPassword2\":\"%s\", \"title\":\"%s\", \"openDate\":%d, \"companyID\":\"%s\"%s%s%s }"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v5}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v0, v2}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 152
    const-string/jumbo v2, "roomInfo"

    invoke-virtual {v4, v2, v7, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 154
    invoke-virtual {v4}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 102
    const-string v3, "NsCollaboURLConnectionForCreateRoom.sendRequest"

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 103
    new-instance v3, Lcom/metamoji/ns/service/NsCollaboServiceException;

    const-string v5, "encoding"

    invoke-direct {v3, v4, v5, v2, v0}, Lcom/metamoji/ns/service/NsCollaboServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_7
    :goto_2
    return v4
.end method
