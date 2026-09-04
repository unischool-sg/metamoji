.class public final synthetic Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;

    invoke-static {v0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;->onCreateDialog$lambda$1(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialogEx;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
