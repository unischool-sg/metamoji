.class public Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "ScCollaboBgTaskForSetReport.java"


# instance fields
.field public Report:I

.field public RoomId:Ljava/lang/String;

.field public UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 7

    .line 37
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->RoomId:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->UserId:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 45
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SETREPORT_REQUESTING:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 57
    iget-object v3, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 58
    iget-object v4, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 59
    iget-object v5, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 60
    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move-object v2, v3

    move-object v4, v2

    move-object v5, v4

    :goto_0
    if-nez v3, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->cancel()Z

    return-void

    :cond_2
    const/4 v6, 0x0

    .line 69
    invoke-virtual {v0, v6}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 71
    new-instance v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 72
    iput-object v3, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;->email:Ljava/lang/String;

    .line 73
    iput-object v4, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;->companyId:Ljava/lang/String;

    .line 74
    iput-object v5, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;->password:Ljava/lang/String;

    .line 75
    iput-object v2, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;->qwd:Ljava/lang/String;

    .line 76
    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->RoomId:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;->roomId:Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->UserId:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;->userId:Ljava/lang/String;

    .line 78
    iget v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->Report:I

    iput v2, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;->report:I

    .line 81
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForSetReport;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->cancel()Z

    return-void

    :catch_0
    move-exception v0

    .line 83
    const-string v2, "ScCollaboBgTaskForSetReport.taskExec"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->cancel()Z

    .line 86
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 88
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SETREPORT_MSG_FAILED:I

    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport$1;

    invoke-direct {v1, p0, v2}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport$1;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    .line 97
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    return-void

    .line 39
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForSetReport;->cancel()Z

    return-void
.end method
