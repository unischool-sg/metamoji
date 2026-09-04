.class Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1$2;
.super Ljava/lang/Object;
.source "CsShowLoginDialogExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1$2;->this$1:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 151
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1$2;->this$1:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, v1, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->-$$Nest$fputloginActivityOpened(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;Ljava/lang/Boolean;)V

    .line 154
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->showLoginPage()V

    return-void

    .line 156
    :cond_0
    iget-object v0, v1, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onHandleCancelLogin()V

    .line 157
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1$2;->this$1:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;Z)V

    return-void
.end method
