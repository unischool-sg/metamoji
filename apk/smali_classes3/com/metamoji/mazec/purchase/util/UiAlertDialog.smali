.class public Lcom/metamoji/mazec/purchase/util/UiAlertDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "UiAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/purchase/util/UiAlertDialog$DialogListener;
    }
.end annotation


# static fields
.field public static final TYPE_OK:I = 0x0

.field public static final TYPE_SELECT:I = 0x1

.field private static sCurrent:Lcom/metamoji/mazec/purchase/util/UiAlertDialog;


# instance fields
.field mAlertDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

.field mListener:Lcom/metamoji/mazec/purchase/util/UiAlertDialog$DialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->mAlertDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 27
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->mListener:Lcom/metamoji/mazec/purchase/util/UiAlertDialog$DialogListener;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->mListener:Lcom/metamoji/mazec/purchase/util/UiAlertDialog$DialogListener;

    .line 42
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->mAlertDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public static dismissAllDialogs()V
    .locals 1

    .line 114
    sget-object v0, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->sCurrent:Lcom/metamoji/mazec/purchase/util/UiAlertDialog;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->setRetainInstance(Z)V

    .line 86
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->mAlertDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->setShowsDialog(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->dismiss()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 107
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 108
    sget-object v0, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->sCurrent:Lcom/metamoji/mazec/purchase/util/UiAlertDialog;

    if-ne p0, v0, :cond_1

    .line 109
    sput-object v1, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->sCurrent:Lcom/metamoji/mazec/purchase/util/UiAlertDialog;

    :cond_1
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    instance-of v0, v0, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    sput-object p0, Lcom/metamoji/mazec/purchase/util/UiAlertDialog;->sCurrent:Lcom/metamoji/mazec/purchase/util/UiAlertDialog;

    .line 57
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 59
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 62
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method
