.class public Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "ScCollaboBgTaskForGetTestingLogList.java"


# instance fields
.field public RoomId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 8

    .line 47
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->RoomId:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 55
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_GETTESTINGLOGLIST_REQUESTING:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 67
    iget-object v4, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 68
    iget-object v5, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 69
    iget-object v6, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 70
    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v2, v3

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    :goto_0
    if-nez v4, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->cancel()Z

    return-void

    .line 78
    :cond_2
    new-instance v7, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;

    invoke-direct {v7, p0}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 79
    iput-object v4, v7, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->email:Ljava/lang/String;

    .line 80
    iput-object v5, v7, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->companyId:Ljava/lang/String;

    .line 81
    iput-object v6, v7, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->password:Ljava/lang/String;

    .line 82
    iput-object v2, v7, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->qwd:Ljava/lang/String;

    .line 83
    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->RoomId:Ljava/lang/String;

    iput-object v2, v7, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->roomId:Ljava/lang/String;

    .line 85
    iput-object v7, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    .line 89
    :try_start_0
    invoke-virtual {v7}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->cancel()Z

    return-void

    .line 117
    :cond_3
    const-string v2, "testingLogList"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 121
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 124
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {v2}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 126
    const-string v2, "[ScCollaboBgTaskForGetTestingLogList] parseTestingLogList JSON=%s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 128
    const-string v2, "[ScCollaboBgTaskForGetTestingLogList] parseTestingLogList Failed!"

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    if-nez v3, :cond_4

    .line 133
    const-string v0, "[MMJScCollaboBgTaskForGetTestingLogList] testingLogListDic is nil..."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->cancel()Z

    return-void

    .line 138
    :cond_4
    const-string v1, "roomId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string v2, "executionHistory"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 140
    iget-object v3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->RoomId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v2, :cond_7

    .line 142
    :cond_5
    const-string v0, "[MMJScCollaboBgTaskForGetTestingLogList] bad roomId or executionHistoryList is nil..."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->cancel()Z

    return-void

    .line 151
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    const-string v1, "[MMJScCollaboBgTaskForGetTestingLogList] response testingLogList is empty!"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 157
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 165
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList$2;

    invoke-direct {v1, p0, v2}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList$2;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void

    :catch_1
    move-exception v0

    .line 91
    const-string v2, "ScCollaboBgTaskForGetTestingLogList.taskExec"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->cancel()Z

    .line 94
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 96
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_GETTESTINGLOGLIST_MSG_FAILED:I

    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList$1;

    invoke-direct {v1, p0, v2}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList$1;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    .line 105
    :try_start_2
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_2
    return-void

    .line 49
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForGetTestingLogList;->cancel()Z

    return-void
.end method
