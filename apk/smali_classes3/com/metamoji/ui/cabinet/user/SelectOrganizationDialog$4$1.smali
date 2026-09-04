.class Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4$1;
.super Ljava/lang/Object;
.source "SelectOrganizationDialog.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;

.field final synthetic val$subDlg:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)V
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

    .line 305
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4$1;->val$subDlg:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 6

    if-eqz p3, :cond_1

    .line 311
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4$1;->val$subDlg:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->getOrganizationID()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4$1;->val$subDlg:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->getServerURL()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_currentID(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_currentURL(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Ljava/lang/String;

    move-result-object v5

    const-string v2, ""

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4$1;->val$subDlg:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->getPreviousOrganization()Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 323
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;

    if-eqz p1, :cond_0

    .line 318
    iget-object p1, p2, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_adapter(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object p1, p2, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_adapter(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p1

    .line 324
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;

    iget-object p2, p2, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_adapter(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->remove(Ljava/lang/Object;)V

    .line 325
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;

    iget-object p2, p2, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_adapter(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->insert(Ljava/lang/Object;I)V

    .line 328
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4$1;->this$1:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$fget_adapter(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$OrganizationItemAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
