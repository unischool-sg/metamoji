.class public Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "ScCollaboBgTaskForGetScoreList.java"


# instance fields
.field public DocIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public DriveId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 15

    .line 56
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->DriveId:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->DocIdList:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v1

    .line 64
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_GETSCORELIST_REQUESTING:I

    invoke-virtual {v1, v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    .line 67
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->DriveId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->sdDocumentManager()Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->cancel()Z

    return-void

    :cond_2
    const/4 v4, 0x1

    .line 78
    invoke-virtual {v1, v4}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 81
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 83
    :try_start_0
    invoke-virtual {v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->memberList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 86
    const-string v8, "status"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_3

    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_4

    if-eq v8, v4, :cond_4

    move-object v10, p0

    goto :goto_1

    .line 95
    :cond_4
    const-string v8, "isTeacher"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 97
    invoke-static {v8}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_2

    :cond_5
    move v8, v6

    :goto_2
    if-eqz v8, :cond_6

    goto :goto_1

    .line 102
    :cond_6
    const-string v8, "id"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    .line 103
    const-string v8, "name"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Ljava/lang/String;

    .line 104
    const-string v8, "classNumber"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Ljava/lang/String;

    .line 105
    const-string v8, "loginName"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Ljava/lang/String;

    .line 106
    new-instance v9, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v10, p0

    :try_start_1
    invoke-direct/range {v9 .. v14}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$1;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_7
    move-object v10, p0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v10, p0

    .line 118
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[MMJScCollaboBgTaskForGetScoreList] memberList get failed. : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 122
    :goto_4
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_a

    .line 127
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v7, v10, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->DocIdList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 129
    invoke-virtual {v3, v8}, Lcom/metamoji/sd/SdDriveDocumentManager;->getRoomId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 131
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 134
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_b

    .line 135
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->cancel()Z

    return-void

    .line 140
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_c

    goto/16 :goto_a

    .line 149
    :cond_c
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 151
    iget-object v7, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 152
    iget-object v8, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 153
    iget-object v9, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 154
    iget-object v3, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    goto :goto_6

    :cond_d
    move-object v3, v2

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    :goto_6
    if-nez v7, :cond_e

    .line 158
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->cancel()Z

    return-void

    .line 162
    :cond_e
    new-instance v11, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;

    invoke-direct {v11, p0}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 163
    iput-object v7, v11, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->email:Ljava/lang/String;

    .line 164
    iput-object v8, v11, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->companyId:Ljava/lang/String;

    .line 165
    iput-object v9, v11, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->password:Ljava/lang/String;

    .line 166
    iput-object v3, v11, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->qwd:Ljava/lang/String;

    .line 167
    iput-object v0, v11, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->roomIdList:Ljava/util/List;

    .line 169
    iput-object v11, v10, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    .line 173
    :try_start_2
    invoke-virtual {v11}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-nez v0, :cond_f

    .line 196
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->cancel()Z

    return-void

    .line 201
    :cond_f
    const-string v3, "scoreList"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 205
    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 207
    :try_start_3
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    .line 209
    const-string v3, "ScSchoolManager.parseScoreList"

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_10

    .line 214
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\"temp\":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "}"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-static {v0}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 217
    const-string v4, "temp"

    invoke-static {v0, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 218
    :try_start_5
    const-string v0, "[ScCollaboBgTaskForGetScoreList]parseScoreList JSON=%s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v2, v4

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v2, v4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 221
    :goto_8
    const-string v3, "[ScCollaboBgTaskForGetScoreList]parseScoreList Failed!"

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_10
    :goto_9
    if-nez v2, :cond_11

    .line 227
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->cancel()Z

    return-void

    .line 231
    :cond_11
    new-instance v0, Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;-><init>()V

    .line 232
    invoke-virtual {v0, v2, v5}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->parseScoreList(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 234
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->cancel()Z

    return-void

    .line 239
    :cond_12
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_a

    .line 244
    :cond_13
    invoke-virtual {v1, v6}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 246
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$3;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$3;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;Lcom/metamoji/forSchool/ui/ScScoreListDialog;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void

    :catch_5
    move-exception v0

    .line 175
    const-string v1, "ScCollaboBgTaskForGetScoreList.taskExec"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->cancel()Z

    .line 178
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 180
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_GETSCORELIST_MSG_FAILED:I

    invoke-static {v0, v2}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$2;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList$2;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    .line 189
    :try_start_6
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :goto_a
    return-void

    :cond_14
    :goto_b
    move-object v10, p0

    .line 58
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreList;->cancel()Z

    return-void
.end method
