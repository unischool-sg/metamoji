.class public Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "ScCollaboBgTaskForGetScoreLogList.java"


# instance fields
.field public RoomId:Ljava/lang/String;

.field public TargetUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 9

    const-string v0, "{\"temp\":"

    .line 50
    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->RoomId:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->TargetUserId:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v1

    .line 58
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_GETSCORELIST_REQUESTING:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v2, 0x1

    .line 61
    invoke-virtual {v1, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 70
    iget-object v5, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 71
    iget-object v6, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 72
    iget-object v7, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 73
    iget-object v3, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v3, v4

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    :goto_0
    if-nez v5, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->cancel()Z

    return-void

    .line 81
    :cond_2
    new-instance v8, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;

    invoke-direct {v8, p0}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 82
    iput-object v5, v8, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->email:Ljava/lang/String;

    .line 83
    iput-object v6, v8, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->companyId:Ljava/lang/String;

    .line 84
    iput-object v7, v8, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->password:Ljava/lang/String;

    .line 85
    iput-object v3, v8, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->qwd:Ljava/lang/String;

    .line 86
    new-instance v3, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList$1;

    invoke-direct {v3, p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList$1;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;)V

    iput-object v3, v8, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->roomIdList:Ljava/util/List;

    .line 87
    iput-boolean v2, v8, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->needLog:Z

    .line 89
    iput-object v8, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    .line 93
    :try_start_0
    invoke-virtual {v8}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v2, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->cancel()Z

    return-void

    .line 121
    :cond_3
    const-string v3, "scoreList"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 125
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 127
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 129
    const-string v5, "ScCollaboBgTaskForGetScoreLogList.parseScoreList"

    invoke-static {v2, v5}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_4

    .line 134
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "}"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-static {v2}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 137
    const-string v2, "temp"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    :try_start_3
    const-string v2, "[ScCollaboBgTaskForGetScoreLogList] parseScoreList JSON=%s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v0, v4

    .line 141
    :goto_2
    const-string v5, "[ScCollaboBgTaskForGetScoreLogList] parseScoreList Failed!"

    invoke-static {v2, v5}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v0, v4

    :goto_3
    if-nez v0, :cond_5

    .line 147
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->cancel()Z

    return-void

    .line 152
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_5

    .line 157
    :cond_6
    invoke-virtual {v1, v3}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 161
    check-cast v1, Ljava/util/Map;

    .line 162
    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->RoomId:Ljava/lang/String;

    const-string v3, "roomId"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 163
    const-string v0, "userList"

    invoke-static {v1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 166
    check-cast v1, Ljava/util/Map;

    .line 167
    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->TargetUserId:Ljava/lang/String;

    const-string v3, "userId"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v4, v1

    goto :goto_4

    .line 177
    :cond_9
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList$3;

    invoke-direct {v1, p0, v4}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList$3;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void

    :catch_3
    move-exception v0

    .line 95
    const-string v1, "ScCollaboBgTaskForGetScoreLogList.taskExec"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->cancel()Z

    .line 98
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 100
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_GETSCORELIST_MSG_FAILED:I

    invoke-static {v0, v2}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList$2;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList$2;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    .line 109
    :try_start_4
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :goto_5
    return-void

    .line 52
    :cond_a
    :goto_6
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetScoreLogList;->cancel()Z

    return-void
.end method
