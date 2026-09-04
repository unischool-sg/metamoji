.class public Lcom/metamoji/cs/dc/CsStubThrowNotLoginExceptionExecutor;
.super Ljava/lang/Object;
.source "CsStubThrowNotLoginExceptionExecutor.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsExecutor;


# instance fields
.field response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsStubThrowNotLoginExceptionExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method

.method public executeSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsStubThrowNotLoginExceptionExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/cs/dc/CsStubThrowNotLoginExceptionExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, -0xc8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 25
    :cond_1
    :goto_0
    new-instance v0, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsStubThrowNotLoginExceptionExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/16 v1, 0x6a

    .line 26
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    return-void
.end method

.method public getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsStubThrowNotLoginExceptionExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object v0
.end method

.method public onCancelSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    .line 58
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsStubThrowNotLoginExceptionExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 59
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method

.method public onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    .line 51
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsStubThrowNotLoginExceptionExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 52
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method

.method public onSuccessSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 1

    .line 44
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/CsStubThrowNotLoginExceptionExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 45
    invoke-interface {p1}, Lcom/metamoji/cs/dc/ICsExecutor;->clear()V

    return-void
.end method
