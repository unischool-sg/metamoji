.class Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;
.super Ljava/lang/Object;
.source "CsShowLoginDialogExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->executeSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;Z)V

    .line 98
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->-$$Nest$fgetloginResponsee(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->-$$Nest$fgetloginResponsee(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v3, -0xc8

    if-ne v0, v3, :cond_0

    .line 99
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    invoke-static {v0, v2}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;Z)V

    .line 100
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->-$$Nest$mcloseUI(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;)V

    return-object v1

    .line 104
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    .line 107
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->-$$Nest$fgetloginResponsee(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->-$$Nest$fgetloginResponsee(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    invoke-static {v0, v2}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;Z)V

    .line 166
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->-$$Nest$mcloseUI(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;)V

    goto :goto_1

    .line 144
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->-$$Nest$fgetloginActivityOpened(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1$2;

    invoke-direct {v2, p0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1$2;-><init>(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-object v1
.end method
