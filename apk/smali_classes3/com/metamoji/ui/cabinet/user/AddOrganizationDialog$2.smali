.class Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;
.super Ljava/lang/Object;
.source "AddOrganizationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 145
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$fget_processable(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    const-class p1, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 157
    :cond_1
    new-instance v0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$fget_serverURL(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->setServerURL(Ljava/lang/String;)V

    .line 160
    new-instance v1, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2$1;-><init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 195
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
