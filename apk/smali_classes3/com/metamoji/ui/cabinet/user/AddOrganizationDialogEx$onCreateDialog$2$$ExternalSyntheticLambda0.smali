.class public final synthetic Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;

.field public final synthetic f$1:Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;

    return-void
.end method


# virtual methods
.method public final onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$onCreateDialog$2;->onClick$lambda$0(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method
