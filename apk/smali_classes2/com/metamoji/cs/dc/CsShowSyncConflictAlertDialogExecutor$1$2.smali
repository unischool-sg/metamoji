.class Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1$2;
.super Ljava/lang/Object;
.source "CsShowSyncConflictAlertDialogExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;

.field final synthetic val$_this:Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;)V
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

    .line 46
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1$2;->this$1:Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1$2;->val$_this:Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1$2;->val$_this:Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;

    new-instance p2, Lcom/metamoji/cs/dc/response/CsLockUserResponse;

    invoke-direct {p2}, Lcom/metamoji/cs/dc/response/CsLockUserResponse;-><init>()V

    invoke-static {p1, p2}, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;->-$$Nest$fputresponse(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    .line 49
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1$2;->val$_this:Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;

    invoke-static {p1}, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;->-$$Nest$fgetresponse(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p1

    const/16 p2, -0xc8

    iput p2, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    .line 50
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1$2;->val$_this:Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;->-$$Nest$fputwaitForUICallback(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;Z)V

    return-void
.end method
