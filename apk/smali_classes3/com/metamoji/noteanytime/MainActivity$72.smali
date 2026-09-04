.class Lcom/metamoji/noteanytime/MainActivity$72;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->LogoutBackThread(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4890
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result v0

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$sfputs_alreadySync(Z)V

    .line 4893
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$sfgets_alreadySync()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->toDoSync(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4967
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->logoutWithClearPasscode(Z)V

    return-void

    .line 4896
    :cond_1
    :goto_0
    new-instance v0, Lcom/metamoji/nt/cabinet/cabinetWaitView;

    invoke-direct {v0}, Lcom/metamoji/nt/cabinet/cabinetWaitView;-><init>()V

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$sfputs_logoutWaitView(Lcom/metamoji/nt/cabinet/cabinetWaitView;)V

    .line 4897
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$sfgets_logoutWaitView()Lcom/metamoji/nt/cabinet/cabinetWaitView;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$72$1;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$72$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$72;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/cabinet/cabinetWaitView;->show(Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;)V

    .line 4909
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$72$2;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/MainActivity$72$2;-><init>(Lcom/metamoji/noteanytime/MainActivity$72;)V

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$smsetAutoSyncCallBack(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    .line 4961
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->-$$Nest$sfgets_alreadySync()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4962
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startAutoSyncForChanges()Z

    :cond_2
    return-void
.end method
