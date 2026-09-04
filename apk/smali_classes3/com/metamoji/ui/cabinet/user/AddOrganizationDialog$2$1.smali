.class Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2$1;
.super Ljava/lang/Object;
.source "AddOrganizationDialog.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;

.field final synthetic val$subDlg:Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;)V
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

    .line 160
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2$1;->this$1:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2$1;->val$subDlg:Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    if-eqz p3, :cond_2

    .line 167
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2$1;->this$1:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2$1;->val$subDlg:Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->getServerURL()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$fput_serverURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2$1;->this$1:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$fget_serverURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 182
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2$1;->this$1:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;

    if-nez p1, :cond_1

    .line 172
    iget-object p1, p2, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$fget_serverURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2$1;->this$1:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;

    iget-object p3, p3, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-static {p3}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$fget_serverURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$fput_serverURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Ljava/lang/String;)V

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2$1;->this$1:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$fget_lblServerURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)Lcom/metamoji/ui/common/UiTextView;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2$1;->this$1:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;

    iget-object p2, p2, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$fget_serverURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 182
    :cond_1
    iget-object p1, p2, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$fget_lblServerURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)Lcom/metamoji/ui/common/UiTextView;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2$1;->this$1:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;

    iget-object p2, p2, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    .line 183
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Url_Comment:I

    .line 184
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 183
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
