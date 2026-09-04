.class Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1;
.super Ljava/lang/Object;
.source "CsShowUserRegistoryProcedureExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;->executeSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;

.field final synthetic val$_this:Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;


# direct methods
.method public static synthetic $r8$lambda$hcNXn1As8XB8P0DKHM7hy8zaB2E(Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1;Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1;->lambda$run$0(Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;)V
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

    .line 26
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1;->val$_this:Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 31
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 32
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJID_MAKE_LAST_STEP_TITLE:I

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 33
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJID_MAKE_LAST_STEP_MSG:I

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 34
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 37
    new-instance v1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 38
    new-instance v0, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1$1;-><init>(Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1;Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;)V

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 46
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "EntryUser_showMsgDialog"

    invoke-virtual {v1, p1, p2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 29
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1;->val$_this:Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;

    new-instance v2, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor$1;Lcom/metamoji/cs/dc/CsShowUserRegistoryProcedureExecutor;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
