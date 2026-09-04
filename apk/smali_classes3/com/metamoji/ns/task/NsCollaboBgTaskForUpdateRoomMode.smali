.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForUpdateRoomMode.java"


# instance fields
.field public roomId:Ljava/lang/String;

.field public roomMode:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 6

    .line 37
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->roomId:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 44
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 46
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 54
    sget v1, Lcom/metamoji/noteanytime/R$string;->UpdateRoomMode_Requesting:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 69
    iget-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 70
    iget-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 71
    iget-object v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 74
    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object v1, v2

    move-object v3, v1

    move-object v4, v3

    :goto_0
    if-nez v2, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->cancel()Z

    return-void

    :cond_3
    const/4 v5, 0x0

    .line 84
    invoke-virtual {v0, v5}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 87
    new-instance v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 88
    iget-object v5, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->roomId:Ljava/lang/String;

    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode;->roomId:Ljava/lang/String;

    .line 89
    iput-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode;->email:Ljava/lang/String;

    .line 90
    iput-object v3, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode;->password:Ljava/lang/String;

    .line 91
    iput-object v4, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode;->qwd:Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->roomMode:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    iput-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode;->roomMode:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    .line 95
    iput-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode;->companyId:Ljava/lang/String;

    .line 99
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->cancel()Z

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->cancel()Z

    .line 102
    const-string v1, "NsCollaboBgTaskForUpdateRoomMode.taskExec"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 103
    sget v1, Lcom/metamoji/noteanytime/R$string;->UpdateRoomMode_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void

    .line 48
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->cancel()Z

    return-void

    .line 39
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomMode;->cancel()Z

    return-void
.end method
