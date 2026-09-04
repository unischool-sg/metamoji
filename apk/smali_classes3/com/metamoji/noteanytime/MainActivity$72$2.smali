.class Lcom/metamoji/noteanytime/MainActivity$72$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$72;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$72;


# direct methods
.method public static synthetic $r8$lambda$aC-hnV2EMVP6cRQNp4ddv1ZCl1E(Lcom/metamoji/noteanytime/MainActivity$72$2;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/MainActivity$72$2;->lambda$syncEnd$0(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$72;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4909
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$72$2;->this$0:Lcom/metamoji/noteanytime/MainActivity$72;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$syncEnd$0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 4939
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4940
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4941
    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Logout_WithoutSync:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4943
    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Alert_Logout:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$72$2$1;

    invoke-direct {v2, p0}, Lcom/metamoji/noteanytime/MainActivity$72$2$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$72$2;)V

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4950
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 4951
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4952
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public syncEnd(Z)Z
    .locals 3

    const/4 p1, 0x0

    .line 4913
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->toDoSync(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4916
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$sfgets_alreadySync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4917
    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$sfputs_alreadySync(Z)V

    .line 4918
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startAutoSyncForChanges()Z

    return p1

    .line 4922
    :cond_0
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$sfgets_logoutWaitView()Lcom/metamoji/nt/cabinet/cabinetWaitView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4923
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$sfgets_logoutWaitView()Lcom/metamoji/nt/cabinet/cabinetWaitView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->hide()V

    .line 4924
    invoke-static {v2}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$sfputs_logoutWaitView(Lcom/metamoji/nt/cabinet/cabinetWaitView;)V

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 4930
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->logoutWithClearPasscode(Z)V

    goto :goto_0

    .line 4933
    :cond_2
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4934
    sget v0, Lcom/metamoji/noteanytime/R$string;->AnytimeNotify_Dialog_Msg_Offline:I

    invoke-static {v0, p1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 4937
    :cond_3
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    .line 4938
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$72$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/MainActivity$72$2$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/noteanytime/MainActivity$72$2;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    :goto_0
    return v1
.end method
