.class Lcom/metamoji/lc/ui/LicenseKeyDialog$3;
.super Ljava/lang/Object;
.source "LicenseKeyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lc/ui/LicenseKeyDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/lc/ui/LicenseKeyDialog;

.field final synthetic val$buttonOK:Lcom/metamoji/ui/common/UiButton;

.field final synthetic val$dlg:Landroid/app/Dialog;

.field final synthetic val$editPassword:Landroid/widget/EditText;

.field final synthetic val$editUserid:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/metamoji/lc/ui/LicenseKeyDialog;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/metamoji/ui/common/UiButton;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->this$0:Lcom/metamoji/lc/ui/LicenseKeyDialog;

    iput-object p2, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->val$editUserid:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->val$editPassword:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->val$buttonOK:Lcom/metamoji/ui/common/UiButton;

    iput-object p5, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->val$dlg:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 95
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->val$editUserid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->val$editPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->this$0:Lcom/metamoji/lc/ui/LicenseKeyDialog;

    invoke-static {v2, v0}, Lcom/metamoji/lc/ui/LicenseKeyDialog;->-$$Nest$mcreatePasswordForUserId(Lcom/metamoji/lc/ui/LicenseKeyDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    sget v0, Lcom/metamoji/noteanytime/R$string;->lisence_title_input_licensekey:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    sget v1, Lcom/metamoji/noteanytime/R$string;->licensekey_err_invalid_key:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 107
    invoke-static {p1, v0, v1, v2}, Lcom/metamoji/lc/LicenseUtil;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 112
    :cond_1
    new-instance v1, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$1;

    invoke-direct {v1, p0}, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$1;-><init>(Lcom/metamoji/lc/ui/LicenseKeyDialog$3;)V

    invoke-static {v1, p1}, Lcom/metamoji/lc/LicenseUtil;->runOnUiThread(Ljava/lang/Runnable;Landroid/content/Context;)V

    .line 121
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$2;-><init>(Lcom/metamoji/lc/ui/LicenseKeyDialog$3;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 158
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
