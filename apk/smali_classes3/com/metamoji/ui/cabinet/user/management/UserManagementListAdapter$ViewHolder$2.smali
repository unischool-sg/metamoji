.class Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$2;
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

    .line 96
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$2;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$2;->val$this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$2;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->-$$Nest$fget_callback(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$2;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->-$$Nest$fget_item(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;)Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_groupIndex:I

    invoke-interface {p1, v0}, Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;->OnManagementItemOpenGroup(I)V

    return-void
.end method
