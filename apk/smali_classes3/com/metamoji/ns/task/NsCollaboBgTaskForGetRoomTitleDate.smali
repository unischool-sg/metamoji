.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForGetRoomTitleDate.java"


# instance fields
.field public completionAction:Lcom/metamoji/ns/INsShareViewCommandCompletionAction;

.field m_email:Ljava/lang/String;

.field m_password:Ljava/lang/String;

.field m_qwd:Ljava/lang/String;

.field public roomId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->roomId:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 57
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 59
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 67
    sget v1, Lcom/metamoji/noteanytime/R$string;->GetRoomInfo_TitleDate_Requesting:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->m_email:Ljava/lang/String;

    .line 81
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->m_password:Ljava/lang/String;

    .line 82
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->m_qwd:Ljava/lang/String;

    .line 85
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->m_email:Ljava/lang/String;

    if-nez v1, :cond_3

    goto/16 :goto_1

    .line 95
    :cond_3
    new-instance v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomTitleDate;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomTitleDate;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 96
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->roomId:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomTitleDate;->roomId:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->m_email:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomTitleDate;->email:Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->m_password:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomTitleDate;->password:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->m_qwd:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomTitleDate;->qwd:Ljava/lang/String;

    .line 102
    iput-object v0, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomTitleDate;->companyId:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    .line 110
    :try_start_0
    invoke-virtual {v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetRoomTitleDate;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    goto/16 :goto_1

    .line 123
    :cond_4
    const-string/jumbo v1, "statusCode"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 125
    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 127
    const-string/jumbo v1, "roomList"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 130
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 131
    check-cast v1, Ljava/util/Map;

    const-string/jumbo v2, "roomId"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 132
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->roomId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    const-string/jumbo v0, "title"

    invoke-static {v1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ns/NsShareViewCommand;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v2, "openDate"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;->roomId:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForGetRoomTitleDate;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 153
    :cond_6
    sget v0, Lcom/metamoji/noteanytime/R$string;->LoginRoom_Error_Lobby_304:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    :catch_0
    move-exception v0

    .line 113
    const-string v1, "NsCollaboBgTaskForGetRoomTitleDate.taskExec"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 114
    sget v1, Lcom/metamoji/noteanytime/R$string;->GetRoomInfo_TitleDate_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method
