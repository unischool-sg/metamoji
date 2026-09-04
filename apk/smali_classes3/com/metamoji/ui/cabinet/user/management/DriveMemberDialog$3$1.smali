.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;
.super Ljava/lang/Object;
.source "DriveMemberDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;

.field final synthetic val$result:Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;)V
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

    .line 236
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;->val$result:Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;->val$result:Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->errorCode:I

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;->val$result:Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    iget-object v0, v0, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->list:Ljava/util/List;

    .line 242
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->sortMemberArray(Ljava/util/List;)V

    .line 243
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;->val$dlg:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->updateUserCount(Landroid/view/View;)V

    .line 245
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->addAll(Ljava/util/Collection;)V

    .line 246
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;->val$listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 247
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->notifyDataSetChanged()V

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;->val$result:Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    iget v0, v0, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;->errorCode:I

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->showCabinetUserErrorAlertDialog(I)V

    .line 251
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->dismiss()V

    return-void
.end method
