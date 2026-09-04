.class Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;
.super Ljava/lang/Object;
.source "SelectOrganizationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 295
    const-class p1, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 297
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 303
    :cond_0
    new-instance v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;-><init>()V

    .line 305
    new-instance v1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4$1;-><init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 333
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$4;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
