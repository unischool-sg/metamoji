.class public Lcom/metamoji/ui/dialog/UiAlertDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "UiAlertDialog.java"


# static fields
.field private static sCurrent:Lcom/metamoji/ui/dialog/UiAlertDialog;


# instance fields
.field mAlertDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

.field private mIsLightDismiss:Z

.field private mOnDissmissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiAlertDialog;->mAlertDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/UiAlertDialog;->mIsLightDismiss:Z

    .line 75
    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiAlertDialog;->mOnDissmissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/UiAlertDialog;->mIsLightDismiss:Z

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiAlertDialog;->mOnDissmissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 36
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiAlertDialog;->mAlertDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AlertDialog$Builder;Z)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiAlertDialog;->mOnDissmissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 43
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiAlertDialog;->mAlertDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 44
    iput-boolean p2, p0, Lcom/metamoji/ui/dialog/UiAlertDialog;->mIsLightDismiss:Z

    return-void
.end method

.method public static dismissAllDialogs()V
    .locals 1

    .line 119
    sget-object v0, Lcom/metamoji/ui/dialog/UiAlertDialog;->sCurrent:Lcom/metamoji/ui/dialog/UiAlertDialog;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->setRetainInstance(Z)V

    .line 86
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/UiAlertDialog;->mIsLightDismiss:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiAlertDialog;->mAlertDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->setShowsDialog(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->dismiss()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 107
    :cond_0
    sget-object v0, Lcom/metamoji/ui/dialog/UiAlertDialog;->sCurrent:Lcom/metamoji/ui/dialog/UiAlertDialog;

    if-ne p0, v0, :cond_1

    .line 108
    sput-object v1, Lcom/metamoji/ui/dialog/UiAlertDialog;->sCurrent:Lcom/metamoji/ui/dialog/UiAlertDialog;

    .line 111
    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 127
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiAlertDialog;->mOnDissmissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiAlertDialog;->mOnDissmissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    instance-of v0, v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    sput-object p0, Lcom/metamoji/ui/dialog/UiAlertDialog;->sCurrent:Lcom/metamoji/ui/dialog/UiAlertDialog;

    .line 58
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method
