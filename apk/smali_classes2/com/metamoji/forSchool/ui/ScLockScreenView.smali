.class public Lcom/metamoji/forSchool/ui/ScLockScreenView;
.super Landroidx/fragment/app/DialogFragment;
.source "ScLockScreenView.java"


# instance fields
.field _textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScLockScreenView;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScLockScreenView;->setRetainInstance(Z)V

    .line 50
    new-instance p1, Lcom/metamoji/forSchool/ui/ScLockScreenView$1;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScLockScreenView;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$style;->UiProgressRingTheme:I

    invoke-direct {p1, p0, v0, v1}, Lcom/metamoji/forSchool/ui/ScLockScreenView$1;-><init>(Lcom/metamoji/forSchool/ui/ScLockScreenView;Landroid/content/Context;I)V

    .line 68
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$color;->school_lock_screen_bgColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScLockScreenView;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$layout;->dialog_school_lock_screen:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 76
    sget v1, Lcom/metamoji/noteanytime/R$id;->lockScreen_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScLockScreenView;->_textView:Landroid/widget/TextView;

    .line 79
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScLockScreenView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScLockScreenView;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScLockScreenView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 90
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 98
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScLockScreenView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$style;->ScScreenLockFade:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScLockScreenView;->_textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 108
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ScLockScreenView"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/forSchool/ui/ScLockScreenView;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
