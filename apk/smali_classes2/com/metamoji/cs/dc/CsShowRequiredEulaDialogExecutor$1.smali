.class Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;
.super Ljava/lang/Object;
.source "CsShowRequiredEulaDialogExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->executeSync()V
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
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

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

    .line 39
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;->call()Ljava/lang/Void;

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

    .line 43
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;Z)V

    .line 44
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->-$$Nest$fgetagreeEULAResponsee(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->-$$Nest$fgetagreeEULAResponsee(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->-$$Nest$fgetendAfterProc(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    invoke-static {v0, v2}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;Z)V

    .line 74
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->-$$Nest$mcloseUI(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)V

    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->-$$Nest$fgetui(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;)Lcom/metamoji/ui/cabinet/user/RequiredEula;

    move-result-object v0

    if-nez v0, :cond_3

    .line 47
    new-instance v0, Lcom/metamoji/ui/cabinet/user/RequiredEula;

    new-instance v3, Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;

    invoke-direct {v3}, Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;-><init>()V

    invoke-direct {v0, v3}, Lcom/metamoji/ui/cabinet/user/RequiredEula;-><init>(Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;)V

    .line 57
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 59
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/user/RequiredEula;->showDialog(Landroidx/fragment/app/FragmentManager;)V

    .line 61
    iget-object v2, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    invoke-static {v2, v0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->-$$Nest$fputui(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;Lcom/metamoji/ui/cabinet/user/RequiredEula;)V

    .line 62
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;Z)V

    goto :goto_1

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->onHandleCancel()V

    .line 66
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;

    invoke-static {v0, v2}, Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRequiredEulaDialogExecutor;Z)V

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
