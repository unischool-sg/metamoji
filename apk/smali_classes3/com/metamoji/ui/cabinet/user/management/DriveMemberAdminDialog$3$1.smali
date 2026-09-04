.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3$1;
.super Ljava/lang/Object;
.source "DriveMemberAdminDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;

.field final synthetic val$result:Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;)V
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

    .line 394
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3$1;->val$result:Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 398
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    .line 400
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3$1;->val$result:Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_memberListDataAdapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->clear()V

    .line 402
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3$1;->val$result:Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    iget-object v0, v0, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->list:Ljava/util/List;

    .line 404
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->sortMemberArray(Ljava/util/List;)V

    .line 406
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_memberListDataAdapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->addAll(Ljava/util/Collection;)V

    .line 408
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_memberListDataAdapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->notifyDataSetChanged()V

    .line 411
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->updateUserCount()V

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3$1;->val$result:Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->errorCode:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    .line 415
    :goto_0
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->showCabinetUserErrorAlertDialog(I)V

    .line 416
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->dismiss()V

    return-void
.end method
