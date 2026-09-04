.class public abstract Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoaderBase;
.super Landroid/content/AsyncTaskLoader;
.source "CsCloudServiceExecutorAsyncTaskLoaderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private _callbacktask:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

.field private _method:Ljava/lang/String;

.field private _param:Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 1

    .line 41
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoaderBase;->_method:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoaderBase;->_param:Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

    .line 44
    iput-object p3, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoaderBase;->_callbacktask:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoaderBase;->getCallbacktask()Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method

.method protected abstract executeAsync()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.end method

.method public getCallbacktask()Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoaderBase;->_callbacktask:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoaderBase;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoaderBase;->_param:Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

    return-object v0
.end method

.method public final loadInBackground()Ljava/lang/Object;
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoaderBase;->executeAsync()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoaderBase;->_callbacktask:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    if-eqz v1, :cond_0

    .line 52
    invoke-interface {v1, v0}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_0
    return-object v0
.end method
