.class public Lcom/metamoji/cs/dc/CsAgreeEULAExecutor;
.super Ljava/lang/Object;
.source "CsAgreeEULAExecutor.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsExecutor;


# instance fields
.field eulaAgreeVersion:I

.field private response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsAgreeEULAExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/metamoji/cs/dc/CsAgreeEULAExecutor;->eulaAgreeVersion:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsAgreeEULAExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method

.method public executeSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/metamoji/cs/dc/params/CsAgreeEulaParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsAgreeEulaParam;-><init>()V

    .line 17
    iget v1, p0, Lcom/metamoji/cs/dc/CsAgreeEULAExecutor;->eulaAgreeVersion:I

    iput v1, v0, Lcom/metamoji/cs/dc/params/CsAgreeEulaParam;->eulaAgreeVersion:I

    .line 19
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeAgreeEULAWithParams(Lcom/metamoji/cs/dc/params/CsAgreeEulaParam;)Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    iget v1, v0, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;->errorCode:I

    .line 23
    :cond_0
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsAgreeEULAExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-void
.end method

.method public getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsAgreeEULAExecutor;->response:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    return-object v0
.end method

.method public onCancelSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 0

    return-void
.end method

.method public onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 0

    return-void
.end method

.method public onSuccessSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
    .locals 0

    return-void
.end method
