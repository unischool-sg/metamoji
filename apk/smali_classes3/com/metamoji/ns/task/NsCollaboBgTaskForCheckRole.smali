.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForCheckRole.java"


# instance fields
.field public hasPresenterRole:Z

.field public roomId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->hasPresenterRole:Z

    return-void
.end method


# virtual methods
.method public doInBackground()V
    .locals 1

    .line 39
    invoke-static {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->registerTask(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->m_taskId:I

    .line 43
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    return-void
.end method

.method protected taskExec()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->roomId:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 73
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 75
    iget v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    .line 99
    :cond_1
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->cancel()Z

    return-void

    .line 106
    :cond_2
    new-instance v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCheckRole;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCheckRole;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 107
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->roomId:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCheckRole;->roomId:Ljava/lang/String;

    .line 108
    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCheckRole;->email:Ljava/lang/String;

    .line 109
    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCheckRole;->password:Ljava/lang/String;

    .line 110
    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCheckRole;->qwd:Ljava/lang/String;

    .line 113
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    iput-object v0, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCheckRole;->companyId:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    .line 121
    :try_start_0
    invoke-virtual {v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCheckRole;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->cancel()Z

    return-void

    .line 134
    :cond_3
    const-string/jumbo v1, "statusCode"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 136
    const-string/jumbo v1, "result"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 138
    const-string/jumbo v1, "roomList"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 140
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 141
    check-cast v1, Ljava/util/Map;

    const-string/jumbo v2, "roomId"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 142
    iget-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->roomId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    const-string/jumbo v0, "roleList"

    invoke-static {v1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 147
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "presenter"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->hasPresenterRole:Z

    :cond_6
    return-void

    :catch_0
    move-exception v0

    .line 124
    const-string v1, "NsCollaboBgTaskForCheckRole.taskExec"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->cancel()Z

    return-void

    .line 77
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->cancel()Z

    return-void

    .line 68
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->cancel()Z

    return-void
.end method
