.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForUpdateRoomTitleDate.java"


# instance fields
.field public date:Ljava/util/Date;

.field public dialog:Lcom/metamoji/ui/dialog/NtDialog;

.field public roomId:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Z4JUc-aET9uFfA6fJ0lz1gD1bTg(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->lambda$taskExec$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZpzLdAluUtw8iEVHhPgH7azyT8c(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->lambda$taskExec$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$td6ZgeknlqivAfD4J8OnBodSIZs(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;Ljava/lang/Exception;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->lambda$taskExec$1(Ljava/lang/Exception;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method private synthetic lambda$taskExec$0()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->dialog:Lcom/metamoji/ui/dialog/NtDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$taskExec$1(Ljava/lang/Exception;Z)V
    .locals 1

    .line 107
    invoke-static {p1}, Lcom/metamoji/ns/service/NsCollaboServiceException;->responseCodeFromException(Ljava/lang/Exception;)I

    move-result p2

    const/16 v0, 0x190

    .line 108
    invoke-static {p2, v0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->checkResponseCode(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 109
    invoke-static {p1}, Lcom/metamoji/ns/service/NsCollaboServiceException;->errorCodeFromException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p1}, Lcom/metamoji/ns/service/NsCollaboServiceException;->errorCode(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x352

    if-ne p1, p2, :cond_0

    .line 114
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$taskExec$2()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->dialog:Lcom/metamoji/ui/dialog/NtDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 7

    .line 43
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->roomId:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->title:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->dialog:Lcom/metamoji/ui/dialog/NtDialog;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 50
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 52
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 60
    sget v1, Lcom/metamoji/noteanytime/R$string;->UpdateRoomMode_Requesting:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 73
    iget-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 74
    iget-object v4, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 75
    iget-object v5, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 76
    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v2

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :goto_0
    if-nez v3, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->cancel()Z

    return-void

    :cond_3
    const/4 v6, 0x0

    .line 85
    invoke-virtual {v0, v6}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 88
    new-instance v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 89
    iget-object v6, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->roomId:Ljava/lang/String;

    iput-object v6, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->roomId:Ljava/lang/String;

    .line 90
    iput-object v3, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->email:Ljava/lang/String;

    .line 91
    iput-object v4, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->companyId:Ljava/lang/String;

    .line 92
    iput-object v5, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->password:Ljava/lang/String;

    .line 93
    iput-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->qwd:Ljava/lang/String;

    .line 94
    iput-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->accessToken:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->title:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->date:Ljava/util/Date;

    iput-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->date:Ljava/util/Date;

    .line 100
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomTitleDate;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->cancel()Z

    return-void

    .line 130
    :cond_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->cancel()Z

    .line 104
    const-string v1, "NsCollaboBgTaskForUpdateRoomTitleDate.taskExec"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 105
    sget v1, Lcom/metamoji/noteanytime/R$string;->UpdateRoomMode_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;Ljava/lang/Exception;)V

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    return-void

    .line 54
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->cancel()Z

    return-void

    .line 45
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->cancel()Z

    return-void
.end method
