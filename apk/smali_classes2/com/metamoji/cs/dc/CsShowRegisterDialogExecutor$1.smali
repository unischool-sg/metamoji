.class Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;
.super Ljava/lang/Object;
.source "CsShowRegisterDialogExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->executeSync()V
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
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

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

    .line 44
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;Z)V

    .line 49
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fgetregisterResponse(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fgetregisterResponse(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v4, -0xc8

    if-ne v0, v4, :cond_0

    .line 50
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v0, v3}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;Z)V

    .line 51
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$mcloseUI(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)V

    return-object v2

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fgetregisterResponse(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fgetregisterResponse(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fgetendAfterProc(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v0, v3}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;Z)V

    .line 74
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$mcloseUI(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)V

    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fgetui(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;)Lcom/metamoji/ui/cabinet/user/EntryUser;

    move-result-object v0

    if-nez v0, :cond_4

    .line 57
    new-instance v0, Lcom/metamoji/ui/cabinet/user/EntryUser;

    new-instance v4, Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;

    invoke-direct {v4}, Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;-><init>()V

    invoke-direct {v0, v4}, Lcom/metamoji/ui/cabinet/user/EntryUser;-><init>(Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;)V

    .line 58
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 60
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 61
    invoke-virtual {v0, v3}, Lcom/metamoji/ui/cabinet/user/EntryUser;->showDialog(Landroidx/fragment/app/FragmentManager;)V

    .line 62
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v3, v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fputui(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;Lcom/metamoji/ui/cabinet/user/EntryUser;)V

    .line 63
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;Z)V

    goto :goto_1

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->onHandleCancelRegister()V

    .line 67
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;

    invoke-static {v0, v3}, Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRegisterDialogExecutor;Z)V

    :cond_4
    :goto_1
    return-object v2
.end method
