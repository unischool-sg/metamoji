.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck.java"


# static fields
.field private static mExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final mExecutorLock:Ljava/lang/Object;


# instance fields
.field public companyId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public isCompleted:Z

.field public password:Ljava/lang/String;

.field public qwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->mExecutorLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method public doInBackground()V
    .locals 2

    .line 52
    invoke-static {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->registerTask(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->m_taskId:I

    .line 56
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->mThreadFactory:Lcom/metamoji/cm/CmThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 57
    new-instance v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 3

    .line 114
    invoke-super {p0, p1, p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->onCompleted(ZLjava/lang/Throwable;)V

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[GetShareViewList SubTask : AccountCheck] --- task Completed! isSuccess : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->isCancelled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 118
    iput-boolean v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->isCompleted:Z

    .line 122
    sget-object p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->mExecutorLock:Ljava/lang/Object;

    monitor-enter p1

    .line 123
    :try_start_0
    sget-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    .line 124
    sput-object v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 125
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 129
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-interface {v0, v1, v2, p1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 130
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 133
    :catch_0
    const-string p1, "NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck.onCompleted"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 134
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 125
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method protected taskExec()V
    .locals 2

    .line 80
    const-string v0, "[GetShareViewList SubTask : AccountCheck] --- task Start! ---"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->email:Ljava/lang/String;

    .line 99
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->password:Ljava/lang/String;

    .line 100
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->qwd:Ljava/lang/String;

    .line 103
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->companyId:Ljava/lang/String;

    return-void

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    sget v0, Lcom/metamoji/noteanytime/R$string;->ShareView_Msg_Not_Regist_CabinetUser:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showCabinetUserRegistrationMessage(I)V

    .line 90
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->cancel()Z

    :cond_2
    return-void
.end method
