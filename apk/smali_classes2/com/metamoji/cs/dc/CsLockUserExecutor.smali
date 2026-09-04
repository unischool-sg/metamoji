.class public Lcom/metamoji/cs/dc/CsLockUserExecutor;
.super Lcom/metamoji/cs/dc/CsCloudServiceExecutor;
.source "CsLockUserExecutor.java"


# direct methods
.method public constructor <init>(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)V
    .locals 1

    .line 9
    const-string v0, "executeLockUserWithParams"

    invoke-direct {p0, v0, p1}, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)V

    return-void
.end method


# virtual methods
.method public executeSync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsLockUserExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/cs/dc/CsLockUserExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsLockUserExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/cs/dc/CsLockUserExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, -0xca

    if-ne v0, v1, :cond_1

    .line 21
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsLockUserExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/16 v1, 0x6a

    iput v1, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsLockUserExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/cs/dc/CsLockUserExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, -0x450

    if-ne v0, v1, :cond_2

    .line 27
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsLockUserExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 v1, 0x0

    iput v1, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    return-void

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsLockUserExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/cs/dc/CsLockUserExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    .line 33
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsLockUserExecutor;->executeMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsLockUserExecutor;->params:Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsLockUserExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method
