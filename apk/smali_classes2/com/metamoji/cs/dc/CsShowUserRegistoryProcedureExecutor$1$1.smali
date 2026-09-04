.class Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1$1;
.super Ljava/lang/Object;
.source "CsShowUserRegistoryProcedureExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1;

.field final synthetic val$_this:Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1;Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1$1;->this$1:Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1$1;->val$_this:Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1$1;->val$_this:Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;

    new-instance v0, Lcom/metamoji/cs/dc/response/CsLockUserResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsLockUserResponse;-><init>()V

    invoke-static {p1, v0}, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;->-$$Nest$fputresponse(Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    .line 42
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1$1;->val$_this:Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;

    invoke-static {p1}, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;->-$$Nest$fgetresponse(Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    .line 43
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1$1;->val$_this:Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;

    invoke-static {p1, v0}, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;Z)V

    return-void
.end method
