.class Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4$1;
.super Ljava/lang/Object;
.source "UserManagementListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4$1;->this$2:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4$1;->this$2:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$4;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->-$$Nest$fget_callback(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;->OnManagementItemRemoveAll()V

    return-void
.end method
