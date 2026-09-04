.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$1;
.super Ljava/lang/Object;
.source "DriveMemberDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$1;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 136
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$1;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    sget v2, Lcom/metamoji/noteanytime/R$string;->ManageParticipantsDlg_Add_Participants:I

    sget v4, Lcom/metamoji/noteanytime/R$string;->ManageParticipantsDlg_Address_Guidance:I

    sget-object v5, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;->INVITE_DRIVE:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;-><init>(Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;ILjava/util/ArrayList;ILcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;)V

    .line 140
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$1;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "bbb"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
