.class public Lcom/metamoji/cs/dc/CsResetPasswordExecutor;
.super Ljava/lang/Object;
.source "CsResetPasswordExecutor.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsExecutor;


# instance fields
.field email:Ljava/lang/String;

.field private response:Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsResetPasswordExecutor;->response:Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsResetPasswordExecutor;->response:Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;

    return-void
.end method

.method public executeSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/metamoji/cs/dc/params/CsResetPasswordParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsResetPasswordParam;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsResetPasswordExecutor;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsResetPasswordParam;->email:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeResetPasswordWithParams(Lcom/metamoji/cs/dc/params/CsResetPasswordParam;)Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    iget v1, v0, Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;->errorCode:I

    .line 22
    :cond_0
    iput-object v0, p0, Lcom/metamoji/cs/dc/CsResetPasswordExecutor;->response:Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;

    return-void
.end method

.method public getResponseState()Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsResetPasswordExecutor;->response:Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;

    return-object v0
.end method

.method public bridge synthetic getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsResetPasswordExecutor;->getResponseState()Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;

    move-result-object v0

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
