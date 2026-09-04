.class Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;
.super Landroid/os/AsyncTask;
.source "CloudServiceCallSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/CloudServiceCallSupport;->callMethodAsyncWithLoginDialog(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "TPT;",
        "Ljava/lang/Void;",
        "TRT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport;

.field final synthetic val$callbacks:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;

.field final synthetic val$params:Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

.field final synthetic val$retryCount:I


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/CloudServiceCallSupport;Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;ILcom/metamoji/cs/dc/params/CsParamBaseAbstract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->this$0:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->val$callbacks:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;

    iput p3, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->val$retryCount:I

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->val$params:Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TPT;)TRT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    aget-object p1, p1, v0

    .line 68
    invoke-static {p1}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->val$callbacks:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;

    invoke-interface {v0, p1}, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;->onPostCallInBackgroundThread(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 63
    check-cast p1, [Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->doInBackground([Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 74
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->val$callbacks:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;

    invoke-interface {v0, p1}, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;->onPostCall(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 77
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_1

    .line 80
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->getInstance()Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;

    invoke-direct {v1, p0, p1, p0}, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;-><init>(Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Landroid/os/AsyncTask;)V

    sget-object p1, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterd:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->UpdateUserInfoCacheAsync(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V

    return-void

    .line 98
    :cond_1
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    .line 99
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->val$callbacks:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;

    invoke-interface {v0, p1}, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;->onPostCall(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 63
    check-cast p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->onPostExecute(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method
