.class Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;
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

    .line 104
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;->val$this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->-$$Nest$fget_isFiltering(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)Z

    move-result p1

    .line 112
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->-$$Nest$fget_callback(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->-$$Nest$fget_text(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;->OnManagementItemAddItem(Ljava/lang/String;)V

    return-void

    .line 112
    :cond_0
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->-$$Nest$fget_checkBox(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 115
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->-$$Nest$fget_callback(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->-$$Nest$fget_text(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;->OnManagementItemRemoveItemNotFiltering(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;->-$$Nest$fget_callback(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter;)Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->-$$Nest$fget_text(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/ui/cabinet/user/management/IUserManagementItemCallBack;->OnManagementItemAddItemNotFiltering(Ljava/lang/String;)V

    .line 118
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->-$$Nest$fget_checkBox(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->-$$Nest$fget_checkBox(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 119
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->-$$Nest$fget_item(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;)Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder$3;->this$1:Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;->-$$Nest$fget_checkBox(Lcom/metamoji/ui/cabinet/user/management/UserManagementListAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Lcom/metamoji/ui/cabinet/user/management/UserManagementItem;->_isChecked:Z

    return-void
.end method
