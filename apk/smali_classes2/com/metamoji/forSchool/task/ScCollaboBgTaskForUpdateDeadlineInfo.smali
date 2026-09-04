.class public Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "ScCollaboBgTaskForUpdateDeadlineInfo.java"


# instance fields
.field public EndDate:Ljava/util/Date;

.field public EndMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field public PrevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field public RoomId:Ljava/lang/String;

.field public StartDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method protected taskExec()V
    .locals 7

    .line 41
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->RoomId:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 49
    sget v1, Lcom/metamoji/noteanytime/R$string;->UpdateRoomType_Requesting:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 61
    iget-object v3, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 62
    iget-object v4, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 63
    iget-object v5, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 64
    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move-object v2, v3

    move-object v4, v2

    move-object v5, v4

    :goto_0
    if-nez v3, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->cancel()Z

    return-void

    :cond_2
    const/4 v6, 0x0

    .line 73
    invoke-virtual {v0, v6}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 75
    new-instance v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 76
    iput-object v3, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->email:Ljava/lang/String;

    .line 77
    iput-object v4, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->companyId:Ljava/lang/String;

    .line 78
    iput-object v5, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->password:Ljava/lang/String;

    .line 79
    iput-object v2, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->qwd:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->RoomId:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->roomId:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->validFlag()I

    move-result v2

    iput v2, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->validFlag:I

    .line 82
    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->PrevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object v2, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 83
    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->EndMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object v2, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 84
    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->StartDate:Ljava/util/Date;

    iput-object v2, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->startDate:Ljava/util/Date;

    .line 85
    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->EndDate:Ljava/util/Date;

    iput-object v2, v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->endDate:Ljava/util/Date;

    .line 88
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->cancel()Z

    return-void

    :catch_0
    move-exception v0

    .line 90
    const-string v2, "ScCollaboBgTaskForUpdateDeadlineInfo.taskExec"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->cancel()Z

    .line 93
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 95
    sget v1, Lcom/metamoji/noteanytime/R$string;->UpdateRoomType_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo$1;

    invoke-direct {v1, p0, v2}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo$1;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    .line 104
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    return-void

    .line 43
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->cancel()Z

    return-void
.end method
