.class public Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;
.super Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoaderBase;
.source "CsCloudServiceExecutorAsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;
    }
.end annotation


# instance fields
.field stateMachine:Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;

.field private userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/ICsExecutor;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, v0, p3}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoaderBase;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    .line 19
    new-instance p3, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;

    invoke-direct {p3}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;-><init>()V

    iput-object p3, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->stateMachine:Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;

    .line 21
    sget-object p3, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->None:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    .line 33
    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    .line 34
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->stateMachine:Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;

    invoke-virtual {p2, p1}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->pushExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p4}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoaderBase;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    .line 19
    new-instance p4, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;

    invoke-direct {p4}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;-><init>()V

    iput-object p4, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->stateMachine:Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;

    .line 21
    sget-object p4, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->None:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    iput-object p4, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    .line 25
    new-instance p4, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;

    invoke-direct {p4, p1, p2}, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)V

    .line 26
    iput-object p3, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    .line 27
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->stateMachine:Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;

    invoke-virtual {p1, p4}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->pushExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    return-void
.end method


# virtual methods
.method protected executeAsync()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->stateMachine:Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;

    monitor-enter v0

    .line 45
    :try_start_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 48
    iget v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    sget-object v4, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterd:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    sget-object v4, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterdAndRotateClose:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    sget-object v4, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithoutLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    if-ne v1, v4, :cond_2

    :cond_1
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 54
    :goto_1
    iget-object v4, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    sget-object v5, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterdAndRotateClose:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    if-ne v4, v5, :cond_3

    move v2, v3

    .line 57
    :cond_3
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->stateMachine:Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;

    invoke-virtual {v3, v1, v2}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeWithState(ZZ)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method pushNextExecute(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)V
    .locals 1

    .line 38
    new-instance v0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)V

    .line 39
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->stateMachine:Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;

    invoke-virtual {p1, v0}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->pushExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    return-void
.end method
