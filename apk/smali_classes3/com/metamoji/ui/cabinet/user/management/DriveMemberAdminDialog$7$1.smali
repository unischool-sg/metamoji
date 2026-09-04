.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7$1;
.super Ljava/lang/Object;
.source "DriveMemberAdminDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;

.field final synthetic val$result:Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;)V
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

    .line 649
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7$1;->val$result:Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 653
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    .line 655
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7$1;->val$result:Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;

    const-string/jumbo v1, "type"

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;->val$itemData:Ljava/util/Map;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;

    iget v2, v2, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;->val$checkedId:I

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->ctrlIdToRole(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;->val$group:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;->val$itemData:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->roleToCtrlId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 661
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7$1;->val$result:Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;->errorCode:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    .line 662
    :goto_0
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->showCabinetUserErrorAlertDialog(I)V

    return-void
.end method
