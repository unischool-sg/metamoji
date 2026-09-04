.class public abstract Lcom/metamoji/media/service/MediaBgTask;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "MediaBgTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/service/MediaBgTask$IMediaAction;
    }
.end annotation


# static fields
.field static _busy:Lcom/metamoji/cm/ResetableEvent;

.field static _jobCount:I

.field static _jobCountLock:Ljava/lang/Object;


# instance fields
.field protected _displayWaitView:Z

.field private _incJob:Z


# direct methods
.method static bridge synthetic -$$Nest$fget_incJob(Lcom/metamoji/media/service/MediaBgTask;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/media/service/MediaBgTask;->_incJob:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fput_incJob(Lcom/metamoji/media/service/MediaBgTask;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaBgTask;->_incJob:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/media/service/MediaBgTask;->_jobCountLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/metamoji/cm/ResetableEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    sput-object v0, Lcom/metamoji/media/service/MediaBgTask;->_busy:Lcom/metamoji/cm/ResetableEvent;

    return-void
.end method

.method protected constructor <init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaBgTask;->_incJob:Z

    .line 47
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaBgTask;->_displayWaitView:Z

    return-void
.end method

.method static synthetic access$000(Lcom/metamoji/media/service/MediaBgTask;)V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTask;->taskExec()V

    return-void
.end method

.method static synthetic access$100(Lcom/metamoji/media/service/MediaBgTask;ZLjava/lang/Throwable;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/service/MediaBgTask;->onCompleted(ZLjava/lang/Throwable;)V

    return-void
.end method

.method static decJobCount()V
    .locals 2

    .line 99
    sget-object v0, Lcom/metamoji/media/service/MediaBgTask;->_jobCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    sget v1, Lcom/metamoji/media/service/MediaBgTask;->_jobCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/metamoji/media/service/MediaBgTask;->_jobCount:I

    if-nez v1, :cond_0

    .line 101
    sget-object v1, Lcom/metamoji/media/service/MediaBgTask;->_busy:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {v1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    .line 103
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static incJobCount()V
    .locals 3

    .line 91
    sget-object v0, Lcom/metamoji/media/service/MediaBgTask;->_jobCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    sget v1, Lcom/metamoji/media/service/MediaBgTask;->_jobCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/metamoji/media/service/MediaBgTask;->_jobCount:I

    if-nez v1, :cond_0

    .line 93
    sget-object v1, Lcom/metamoji/media/service/MediaBgTask;->_busy:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {v1}, Lcom/metamoji/cm/ResetableEvent;->reset()V

    .line 95
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isBusy()Z
    .locals 4

    const/4 v0, 0x0

    .line 108
    :try_start_0
    sget-object v1, Lcom/metamoji/media/service/MediaBgTask;->_busy:Lcom/metamoji/cm/ResetableEvent;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/cm/ResetableEvent;->waitOne(J)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public static login(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z
    .locals 4

    .line 132
    new-instance v0, Lcom/metamoji/media/service/MediaLogin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/service/MediaLogin;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    .line 133
    invoke-virtual {v0, p0}, Lcom/metamoji/media/service/MediaLogin;->setUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V

    const/4 p0, 0x0

    .line 138
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/media/service/MediaLogin;->responseStringFromRequest()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return p0

    :cond_0
    const/16 v1, 0x2c

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 152
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/16 v1, 0x30

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    return v3

    .line 154
    :cond_2
    :goto_0
    const-string v1, "Failed to login media server\n(%s)"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :catch_0
    move-exception v0

    .line 142
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_ShareServer_Connect_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/media/service/MediaServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return p0
.end method

.method static showAlertMessage(Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static waitJobs()V
    .locals 1

    .line 119
    :try_start_0
    sget-object v0, Lcom/metamoji/media/service/MediaBgTask;->_busy:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {v0}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public doInBackground()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaBgTask;->_displayWaitView:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-super {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->doInBackground()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/metamoji/media/service/MediaBgTask;->_incJob:Z

    .line 64
    invoke-static {}, Lcom/metamoji/media/service/MediaBgTask;->incJobCount()V

    .line 66
    new-instance v0, Lcom/metamoji/media/service/MediaBgTask$1;

    invoke-direct {v0, p0}, Lcom/metamoji/media/service/MediaBgTask$1;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    return-void
.end method

.method public getDisplayWaitView()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaBgTask;->_displayWaitView:Z

    return v0
.end method

.method public setDisplayWaitView(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaBgTask;->_displayWaitView:Z

    return-void
.end method
