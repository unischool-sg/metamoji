.class Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$1;
.super Ljava/lang/Object;
.source "CsShowRegisterSplashExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->executeSync()V
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
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

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

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;Z)V

    .line 64
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->-$$Nest$fgetshowUIResponse(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->-$$Nest$fgetshowUIResponse(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->-$$Nest$mcloseUI(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;)V

    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->-$$Nest$fgetshowUIResponse(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->-$$Nest$fgetshowUIResponse(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v3, -0xc8

    if-ne v0, v3, :cond_2

    .line 66
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    invoke-static {v0, v2}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;Z)V

    return-object v1

    .line 69
    :cond_2
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 72
    new-instance v2, Lcom/metamoji/ui/cabinet/user/UserView;

    invoke-direct {v2}, Lcom/metamoji/ui/cabinet/user/UserView;-><init>()V

    .line 74
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 75
    sget-object v4, Lcom/metamoji/ui/cabinet/user/UserView;->Key_UserViewTaskCallBack:Ljava/lang/String;

    new-instance v5, Lcom/metamoji/cs/dc/CsShowRegisterSplashCallback;

    invoke-direct {v5}, Lcom/metamoji/cs/dc/CsShowRegisterSplashCallback;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 76
    invoke-virtual {v2, v3}, Lcom/metamoji/ui/cabinet/user/UserView;->setArguments(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v3, 0x1020002

    const-string v4, "UserView"

    invoke-virtual {v0, v3, v2, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->onHandleCancelRegister()V

    .line 83
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;

    invoke-static {v0, v2}, Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowRegisterSplashExecutor;Z)V

    :goto_1
    return-object v1
.end method
