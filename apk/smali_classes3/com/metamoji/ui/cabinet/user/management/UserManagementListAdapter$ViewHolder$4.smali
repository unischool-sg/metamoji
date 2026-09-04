.class Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4;
.super Ljava/lang/Object;
.source "UserManagementListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;-><init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

.field final synthetic val$this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)V
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

    .line 124
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4;->val$this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 127
    new-instance p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4;)V

    .line 134
    sget v0, Lcom/metamoji/noteanytime/R$string;->UserManagement_Msg_Delete_History:I

    sget v1, Lcom/metamoji/noteanytime/R$string;->UserManagement_Delete_History_Title:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method
