.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;


# direct methods
.method public static synthetic $r8$lambda$ChLtbNt_nEo97AeeLvJ7r8qaKF0(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Ljava/lang/String;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->lambda$callBack$0(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Ljava/lang/String;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 831
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$callBack$0(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Ljava/lang/String;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Landroidx/fragment/app/FragmentActivity;)V
    .locals 8

    .line 853
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 854
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 855
    invoke-static {p5}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p5

    .line 856
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Confrict_SyncProcess:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 857
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$1;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$1;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Ljava/lang/String;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-virtual {p5, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 871
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_NO:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$2;

    invoke-direct {p2, p0, v4, v5, v7}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$2;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-virtual {p5, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 886
    invoke-static {p5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;)Z

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 8

    .line 835
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-eqz v0, :cond_2

    .line 836
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, 0x8e

    if-eq v0, v1, :cond_1

    .line 837
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    .line 839
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->GetLibrarySyncCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 840
    iput v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    .line 842
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;->val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 843
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    iget-object v1, v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;->val$lockToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userLockToken:Ljava/lang/String;

    .line 844
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    iget-object v1, v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;->val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-virtual {v1, v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 846
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-interface {v0, p1}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void

    .line 851
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    iget-object v5, v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;->val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    iget-object v6, v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;->val$lockToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    iget-object v7, v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    new-instance v2, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Ljava/lang/String;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void

    :cond_1
    move-object v3, p0

    goto :goto_0

    :cond_2
    move-object v3, p0

    move-object v4, p1

    .line 892
    iget-object p1, v3, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    iget-object p1, p1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;->val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-virtual {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p1

    .line 893
    iget-object v0, v3, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;->val$lockToken:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userLockToken:Ljava/lang/String;

    .line 894
    iget-object v0, v3, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;->val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 896
    iget-object p1, v3, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    iget-object p1, p1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    if-eqz p1, :cond_3

    .line 897
    iget-object p1, v3, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    iget-object p1, p1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-interface {p1, v4}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_3
    :goto_0
    return-void
.end method
