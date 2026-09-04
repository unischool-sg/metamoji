.class public Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "ScCollaboBgTaskForSetScore.java"


# instance fields
.field public ClearScore:Z

.field public RoomId:Ljava/lang/String;

.field public Score:I

.field public UserId:Ljava/lang/String;

.field private m_updatedUserInfoDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method public getUpdatedUserInfoDic()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->m_updatedUserInfoDic:Ljava/util/Map;

    return-object v0
.end method

.method protected taskExec()V
    .locals 9

    const-string v0, "{\"temp\":"

    .line 49
    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->RoomId:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->UserId:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v1

    .line 57
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SETSCORE_REQUESTING:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v2, 0x1

    .line 60
    invoke-virtual {v1, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 69
    iget-object v5, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 70
    iget-object v6, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 71
    iget-object v7, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 72
    iget-object v3, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v3, v4

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    :goto_0
    if-nez v5, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->cancel()Z

    return-void

    :cond_2
    const/4 v8, 0x0

    .line 81
    invoke-virtual {v1, v8}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 83
    new-instance v1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetScore;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetScore;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 84
    iput-object v5, v1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetScore;->email:Ljava/lang/String;

    .line 85
    iput-object v6, v1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetScore;->companyId:Ljava/lang/String;

    .line 86
    iput-object v7, v1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetScore;->password:Ljava/lang/String;

    .line 87
    iput-object v3, v1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetScore;->qwd:Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->RoomId:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetScore;->roomId:Ljava/lang/String;

    .line 89
    iget-object v3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->UserId:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetScore;->userId:Ljava/lang/String;

    .line 90
    iget v3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->Score:I

    iput v3, v1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetScore;->score:I

    .line 91
    iget-boolean v3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->ClearScore:Z

    iput-boolean v3, v1, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetScore;->clearScore:Z

    .line 94
    :try_start_0
    invoke-virtual {v1}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetScore;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v1, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->cancel()Z

    return-void

    .line 123
    :cond_3
    const-string v2, "scoreList"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    if-eqz v1, :cond_4

    .line 128
    invoke-static {v1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 130
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 132
    const-string v2, "ScSchoolManager.parseScoreList"

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_4

    .line 137
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-static {v1}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 140
    const-string v1, "temp"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    :try_start_3
    const-string v1, "[MMJScCollaboBgTaskForSetScore]parseScoreList JSON=%s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v4, v0

    goto :goto_2

    :catch_2
    move-exception v1

    .line 144
    :goto_2
    const-string v0, "[MMJScCollaboBgTaskForSetScore]parseScoreList Failed!"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4
    :goto_3
    if-eqz v4, :cond_7

    .line 150
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_7

    .line 151
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 152
    const-string v1, "roomId"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->RoomId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 154
    const-string v1, "userList"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 157
    check-cast v1, Ljava/util/Map;

    .line 158
    const-string v2, "userId"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    iget-object v3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->UserId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 160
    iput-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->m_updatedUserInfoDic:Ljava/util/Map;

    goto :goto_5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :catch_3
    move-exception v0

    .line 96
    const-string v1, "ScCollaboBgTaskForSetScore.taskExec"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->cancel()Z

    .line 99
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 101
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SETSCORE_MSG_FAILED:I

    invoke-static {v0, v2}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore$1;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore$1;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    .line 110
    :try_start_4
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_7
    :goto_5
    return-void

    .line 51
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetScore;->cancel()Z

    return-void
.end method
