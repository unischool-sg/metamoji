.class public Lcom/metamoji/ui/dialog/UiDownloadProgress;
.super Landroidx/fragment/app/DialogFragment;
.source "UiDownloadProgress.java"

# interfaces
.implements Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;


# instance fields
.field m_cancelButton:Lcom/metamoji/ui/common/UiButtonHeader;

.field m_cancelButtonVisibility:I

.field m_downloadSize:I

.field m_indeterminate:Z

.field m_maxSize:I

.field m_progressBar:Landroid/widget/ProgressBar;

.field m_task:Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_cancelButtonVisibility:I

    .line 25
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_indeterminate:Z

    .line 26
    iput v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_maxSize:I

    .line 27
    iput v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_downloadSize:I

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/UiDownloadProgress;->setRetainInstance(Z)V

    .line 36
    new-instance v0, Lcom/metamoji/ui/dialog/UiDownloadProgress$1;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDownloadProgress;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/metamoji/ui/dialog/UiDownloadProgress$1;-><init>(Lcom/metamoji/ui/dialog/UiDownloadProgress;Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 57
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDownloadProgress;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/metamoji/noteanytime/R$layout;->dialog_download_progress:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 59
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 62
    sget p1, Lcom/metamoji/noteanytime/R$id;->progressBar:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_progressBar:Landroid/widget/ProgressBar;

    .line 63
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_indeterminate:Z

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 64
    iget-boolean p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_indeterminate:Z

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_maxSize:I

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 66
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_downloadSize:I

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 70
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->progressCancelButton:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_cancelButton:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 71
    sget v1, Lcom/metamoji/noteanytime/R$string;->Button_Cancel_J:I

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 72
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_cancelButton:Lcom/metamoji/ui/common/UiButtonHeader;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 73
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_cancelButton:Lcom/metamoji/ui/common/UiButtonHeader;

    iget v1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_cancelButtonVisibility:I

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_cancelButton:Lcom/metamoji/ui/common/UiButtonHeader;

    new-instance v1, Lcom/metamoji/ui/dialog/UiDownloadProgress$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/UiDownloadProgress$2;-><init>(Lcom/metamoji/ui/dialog/UiDownloadProgress;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_task:Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1, p0}, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->setUiDownloadProgress(Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)V

    .line 88
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDownloadProgress;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDownloadProgress;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDownloadProgress;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 110
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public setCancelButtonVisibility(I)V
    .locals 1

    .line 97
    iput p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_cancelButtonVisibility:I

    .line 98
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_cancelButton:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setCancelableTask(Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_task:Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;

    return-void
.end method

.method public setProgress(II)V
    .locals 1

    .line 130
    iget v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_maxSize:I

    if-eq v0, p1, :cond_0

    .line 131
    iput p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_maxSize:I

    .line 132
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 136
    :cond_0
    iget p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_downloadSize:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_downloadSize:I

    .line 137
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    :cond_1
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1

    .line 148
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_indeterminate:Z

    .line 149
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgress;->m_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_0
    return-void
.end method
