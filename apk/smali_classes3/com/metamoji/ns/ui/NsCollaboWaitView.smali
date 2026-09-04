.class public Lcom/metamoji/ns/ui/NsCollaboWaitView;
.super Landroidx/fragment/app/DialogFragment;
.source "NsCollaboWaitView.java"


# instance fields
.field public m_cancelable:Z

.field m_cancenBtn:Lcom/metamoji/ui/common/UiButton;

.field public m_displayView:Z

.field m_guardView:Landroid/view/View;

.field public m_messageId:I

.field m_messageText:Landroid/widget/TextView;

.field public m_taskId:I

.field public m_uiGuard:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 255
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_displayView:Z

    .line 257
    iput v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_messageId:I

    .line 258
    iput v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_taskId:I

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_uiGuard:Z

    .line 260
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_cancelable:Z

    return-void
.end method

.method private removeGuardView()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_guardView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_guardView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_guardView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public cancelable(Z)V
    .locals 2

    .line 203
    iput-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_cancelable:Z

    .line 204
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboWaitView$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/ui/NsCollaboWaitView$2;-><init>(Lcom/metamoji/ns/ui/NsCollaboWaitView;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method handleCancelButtonTap()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_cancenBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 227
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 229
    :cond_0
    iget v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_taskId:I

    invoke-static {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->getTask(I)Lcom/metamoji/ns/task/NsCollaboBgTaskBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->cancel()Z

    :cond_1
    return-void
.end method

.method public hide()V
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->dismissAllowingStateLoss()V

    .line 168
    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->removeGuardView()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    const/4 v0, 0x1

    .line 270
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setRetainInstance(Z)V

    .line 272
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboWaitView$3;

    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$style;->UiProgressRingTheme:I

    invoke-direct {v0, p0, v1, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView$3;-><init>(Lcom/metamoji/ns/ui/NsCollaboWaitView;Landroid/content/Context;I)V

    if-eqz p1, :cond_0

    .line 291
    const-string v1, "m_displayView"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_displayView:Z

    .line 292
    const-string v1, "m_messageId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_messageId:I

    .line 293
    const-string v1, "m_taskId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_taskId:I

    .line 294
    const-string v1, "m_uiGuard"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_uiGuard:Z

    .line 297
    :cond_0
    iget v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_taskId:I

    invoke-static {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->getTask(I)Lcom/metamoji/ns/task/NsCollaboBgTaskBase;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 299
    invoke-virtual {v1, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->setWaitView(Lcom/metamoji/ns/ui/NsCollaboWaitView;)V

    .line 307
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    const-string v2, "HideWaitIndicator"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    iput-boolean v3, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_displayView:Z

    .line 312
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 325
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$layout;->dialog_collabo_waitview:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_guardView:Landroid/view/View;

    .line 326
    iget-boolean v2, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_uiGuard:Z

    if-eqz v2, :cond_2

    .line 329
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 331
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_guardView:Landroid/view/View;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboWaitView$4;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView$4;-><init>(Lcom/metamoji/ns/ui/NsCollaboWaitView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 342
    :cond_2
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 344
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_guardView:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Landroidx/fragment/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_guardView:Landroid/view/View;

    sget v2, Lcom/metamoji/noteanytime/R$id;->panel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 352
    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboWaitView$5;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView$5;-><init>(Lcom/metamoji/ns/ui/NsCollaboWaitView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 361
    :cond_4
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_guardView:Landroid/view/View;

    sget v2, Lcom/metamoji/noteanytime/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_messageText:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 362
    iget v2, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_messageId:I

    if-eqz v2, :cond_5

    .line 363
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 367
    :cond_5
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_guardView:Landroid/view/View;

    sget v2, Lcom/metamoji/noteanytime/R$id;->button_cancel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButton;

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_cancenBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz v1, :cond_8

    .line 369
    iget-boolean v2, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_cancelable:Z

    const/16 v5, 0x8

    if-nez v2, :cond_6

    move v2, v5

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_cancenBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboWaitView$6;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView$6;-><init>(Lcom/metamoji/ns/ui/NsCollaboWaitView;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_8

    .line 378
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_cancenBtn:Lcom/metamoji/ui/common/UiButton;

    const-string v2, "cancenBtnVisibility"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v3, v5

    :goto_2
    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 383
    :cond_8
    iget-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_displayView:Z

    if-nez p1, :cond_9

    .line 385
    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->removeGuardView()V

    .line 389
    :cond_9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 391
    iget-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_uiGuard:Z

    if-nez p1, :cond_a

    .line 395
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboWaitView$7;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView$7;-><init>(Lcom/metamoji/ns/ui/NsCollaboWaitView;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1, v4, v4}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_a
    return-object v0

    .line 302
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->hide()V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 66
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 69
    iget v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_taskId:I

    invoke-static {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->getTask(I)Lcom/metamoji/ns/task/NsCollaboBgTaskBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->setWaitView(Lcom/metamoji/ns/ui/NsCollaboWaitView;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    .line 95
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 84
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 36
    const-string v0, "m_displayView"

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_displayView:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    const-string v0, "m_messageId"

    iget v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_messageId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    const-string v0, "m_taskId"

    iget v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_taskId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    const-string v0, "m_uiGuard"

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_uiGuard:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_cancenBtn:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "cancenBtnVisibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->removeGuardView()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 52
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$style;->UiDialogFade:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method progress()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method setAutoLinearProgressFrom(FFF)V
    .locals 0

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 188
    iput p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_messageId:I

    .line 189
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboWaitView$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboWaitView;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    return-void
.end method

.method public setShowProgress(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    .line 159
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NsCollaboWaitView"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method showProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
