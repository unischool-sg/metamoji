.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8$1;
.super Ljava/lang/Object;
.source "DriveMemberAdminDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8;

.field final synthetic val$result:Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8;Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;)V
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

    .line 715
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8$1;->val$result:Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 719
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    .line 721
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8$1;->val$result:Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;->errorCode:I

    if-nez v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 724
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8$1;->val$result:Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;

    iget-boolean v1, v1, Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;->isAlreadyMember:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 725
    sget v1, Lcom/metamoji/noteanytime/R$string;->CabinetSdAlreadyMember_Msg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 727
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$string;->CabinetSd_DriveMember_DgMsg_InvitationSuccess:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8$1;->val$result:Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method
