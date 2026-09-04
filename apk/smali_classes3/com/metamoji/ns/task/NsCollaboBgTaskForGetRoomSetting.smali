.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForGetRoomSetting.java"


# instance fields
.field public roomId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 20

    move-object/from16 v1, p0

    .line 57
    iget-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->roomId:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 64
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 66
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto/16 :goto_7

    .line 73
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 74
    sget v2, Lcom/metamoji/noteanytime/R$string;->GetRoomInfo_TitleDate_Requesting:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v2, 0x1

    .line 77
    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 90
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 92
    iget-object v3, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 93
    iget-object v4, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 94
    iget-object v5, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 100
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    move-object v6, v0

    goto :goto_0

    :cond_2
    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_0
    if-nez v3, :cond_3

    .line 105
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->cancel()Z

    return-void

    .line 110
    :cond_3
    new-instance v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomSetting;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomSetting;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 111
    iget-object v7, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->roomId:Ljava/lang/String;

    iput-object v7, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomSetting;->roomId:Ljava/lang/String;

    .line 112
    iput-object v3, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomSetting;->email:Ljava/lang/String;

    .line 113
    iput-object v4, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomSetting;->password:Ljava/lang/String;

    .line 114
    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomSetting;->qwd:Ljava/lang/String;

    .line 120
    iput-object v6, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomSetting;->companyId:Ljava/lang/String;

    .line 124
    iput-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    .line 128
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomSetting;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_4

    .line 137
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->cancel()Z

    return-void

    .line 141
    :cond_4
    const-string/jumbo v7, "statusCode"

    invoke-static {v0, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_13

    .line 142
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_6

    .line 148
    :cond_5
    const-string/jumbo v7, "result"

    invoke-static {v0, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 150
    const-string/jumbo v7, "roomSettingList"

    invoke-static {v0, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_8

    .line 153
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 156
    instance-of v9, v8, Ljava/util/Map;

    if-eqz v9, :cond_6

    .line 157
    check-cast v8, Ljava/util/Map;

    .line 158
    const-string v9, "key1"

    invoke-static {v8, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 159
    const-string v10, "#ClassRoom"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 160
    const-string v9, "key2"

    invoke-static {v8, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 161
    const-string v10, "allowToJoinNote"

    .line 162
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "allowToSaveNote"

    .line 164
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "allowToEditOths"

    .line 167
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "allowToChgGrp"

    .line 170
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "allowToOpePage"

    .line 172
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 173
    :cond_7
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    move-object v7, v2

    .line 183
    :cond_9
    new-instance v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 184
    iget-object v8, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->roomId:Ljava/lang/String;

    iput-object v8, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;->roomId:Ljava/lang/String;

    .line 185
    iput-object v3, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;->email:Ljava/lang/String;

    .line 186
    iput-object v4, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;->password:Ljava/lang/String;

    .line 187
    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;->qwd:Ljava/lang/String;

    .line 190
    iput-object v6, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;->companyId:Ljava/lang/String;

    .line 194
    iput-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    .line 198
    :try_start_1
    invoke-virtual {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomInfo;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v15, :cond_a

    .line 206
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->cancel()Z

    return-void

    .line 211
    :cond_a
    const-string/jumbo v0, "roomType"

    invoke-static {v15, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    const-string/jumbo v8, "role"

    invoke-static {v15, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 213
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 214
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 215
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 218
    const-string v12, "presenter"

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-eqz v12, :cond_c

    .line 220
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_b
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 221
    instance-of v14, v13, Ljava/util/Map;

    if-eqz v14, :cond_b

    .line 222
    check-cast v13, Ljava/util/Map;

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 226
    :cond_c
    const-string/jumbo v12, "speaker"

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-eqz v12, :cond_e

    .line 228
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_d
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 229
    instance-of v14, v13, Ljava/util/Map;

    if-eqz v14, :cond_d

    .line 230
    check-cast v13, Ljava/util/Map;

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 234
    :cond_e
    const-string/jumbo v12, "visitor"

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_10

    .line 236
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 237
    instance-of v13, v12, Ljava/util/Map;

    if-eqz v13, :cond_f

    .line 238
    check-cast v12, Ljava/util/Map;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 246
    :cond_10
    const-string/jumbo v8, "validFlag"

    invoke-static {v15, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v12

    const v14, 0x8000

    and-int/2addr v14, v12

    if-eqz v14, :cond_11

    .line 249
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 250
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v8, "startTime"

    invoke-static {v15, v8}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v16, v0

    const-wide/16 v0, -0x1

    invoke-static {v14, v0, v1}, Lcom/metamoji/cm/CmUtils;->toLong(Ljava/lang/Object;J)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v2, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v8, "endTime"

    invoke-static {v15, v8}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v0, v1}, Lcom/metamoji/cm/CmUtils;->toLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "beforeMode2"

    invoke-static {v15, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v0, "testingMode2"

    invoke-static {v15, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "afterMode2"

    invoke-static {v15, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "reportMode2"

    invoke-static {v15, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "endReportMode2"

    invoke-static {v15, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "remandMode2"

    invoke-static {v15, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, "lockMode2"

    invoke-static {v15, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_11
    move-object/from16 v16, v0

    :goto_5
    move-object v14, v2

    .line 263
    const-string/jumbo v0, "title"

    invoke-static {v15, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ns/NsShareViewCommand;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    const-string v1, "openDate"

    invoke-static {v15, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v1

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->cancel()Z

    return-void

    .line 281
    :cond_12
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v0

    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;

    move-object/from16 v19, v2

    move-object v2, v7

    move v13, v12

    move-object/from16 v7, v16

    move-object v12, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v15}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;ILjava/util/Map;Ljava/util/Map;)V

    move-object v1, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->cancel()Z

    .line 201
    sget v1, Lcom/metamoji/noteanytime/R$string;->GetRoomInfo_Role_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void

    .line 143
    :cond_13
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->cancel()Z

    return-void

    :catch_1
    move-exception v0

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->cancel()Z

    .line 131
    const-string v1, "NsCollaboBgTaskForGetVoiceSetting.taskExec"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 132
    sget v1, Lcom/metamoji/noteanytime/R$string;->GetRoomInfo_TitleDate_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void

    .line 68
    :cond_14
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->cancel()Z

    return-void

    .line 59
    :cond_15
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomSetting;->cancel()Z

    return-void
.end method
