.class Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;
.super Ljava/lang/Object;
.source "CloudServiceCallSupport.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->onPostExecute(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;

.field final synthetic val$cloudServiceResult:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

.field final synthetic val$task:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Landroid/os/AsyncTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;->this$1:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;->val$cloudServiceResult:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;->val$task:Landroid/os/AsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 84
    iget p1, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;->this$1:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;

    iget p1, p1, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->val$retryCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x5

    if-le p1, v1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;->this$1:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->val$callbacks:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;->val$cloudServiceResult:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-interface {p1, v0}, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;->onPostCall(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;->val$task:Landroid/os/AsyncTask;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 91
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;->this$1:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->this$0:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;->this$1:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->val$params:Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;->this$1:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->val$callbacks:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;->this$1:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;

    iget v3, v3, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->val$retryCount:I

    add-int/2addr v3, v0

    invoke-static {p1, v1, v2, v3}, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport;->-$$Nest$mcallMethodAsyncWithLoginDialog(Lcom/metamoji/ui/cabinet/CloudServiceCallSupport;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;I)V

    return-void

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;->this$1:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;->val$callbacks:Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1$1;->val$cloudServiceResult:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-interface {p1, v0}, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;->onPostCall(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method
