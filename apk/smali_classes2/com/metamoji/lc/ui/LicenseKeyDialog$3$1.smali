.class Lcom/metamoji/lc/ui/LicenseKeyDialog$3$1;
.super Ljava/lang/Object;
.source "LicenseKeyDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/lc/ui/LicenseKeyDialog$3;


# direct methods
.method constructor <init>(Lcom/metamoji/lc/ui/LicenseKeyDialog$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$1;->this$1:Lcom/metamoji/lc/ui/LicenseKeyDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$1;->this$1:Lcom/metamoji/lc/ui/LicenseKeyDialog$3;

    iget-object v0, v0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->val$editUserid:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$1;->this$1:Lcom/metamoji/lc/ui/LicenseKeyDialog$3;

    iget-object v0, v0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->val$editPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3$1;->this$1:Lcom/metamoji/lc/ui/LicenseKeyDialog$3;

    iget-object v0, v0, Lcom/metamoji/lc/ui/LicenseKeyDialog$3;->val$buttonOK:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method
