.class interface abstract Lcom/metamoji/cs/dc/ICsExecutor;
.super Ljava/lang/Object;
.source "ICsExecutor.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract executeSync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getResponseState()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.end method

.method public abstract onCancelSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
.end method

.method public abstract onFailedSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
.end method

.method public abstract onSuccessSubExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V
.end method
