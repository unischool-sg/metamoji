.class Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;
.super Ljava/lang/Object;
.source "CsShowSyncConflictAlertDialogExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;->executeSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;

.field final synthetic val$_this:Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;


# direct methods
.method public static synthetic $r8$lambda$y_uvnlKd2_VA5XbMxWCxRi5BZCE(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;->lambda$run$0(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;)V
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

    .line 29
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;->this$0:Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;->val$_this:Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 35
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Confrict_SyncProcess:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1$1;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1$1;-><init>(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;)V

    invoke-virtual {p2, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_NO:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1$2;-><init>(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;)V

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 55
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 33
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;->val$_this:Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;

    new-instance v2, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor$1;Lcom/metamoji/cs/dc/CsShowSyncConflictAlertDialogExecutor;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
