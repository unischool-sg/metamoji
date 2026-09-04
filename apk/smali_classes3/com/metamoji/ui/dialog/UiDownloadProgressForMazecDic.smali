.class public Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;
.super Landroidx/fragment/app/DialogFragment;
.source "UiDownloadProgressForMazecDic.java"

# interfaces
.implements Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;


# instance fields
.field m_cancelButton:Lcom/metamoji/ui/common/UiButtonHeader;

.field m_cancelButtonVisibility:I

.field m_dlLabel:Landroid/widget/TextView;

.field m_dlg:Landroid/app/Dialog;

.field m_downloadSize:I

.field m_indeterminate:Z

.field m_maxSize:I

.field m_progressBar:Landroid/widget/ProgressBar;

.field m_task:Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_cancelButtonVisibility:I

    .line 26
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_indeterminate:Z

    .line 27
    iput v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_maxSize:I

    .line 28
    iput v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_downloadSize:I

    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_dlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->setRetainInstance(Z)V

    .line 38
    new-instance v0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic$1;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic$1;-><init>(Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_dlg:Landroid/app/Dialog;

    .line 57
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 59
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 60
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$layout;->dialog_download_progress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 61
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 64
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_dlg:Landroid/app/Dialog;

    sget v0, Lcom/metamoji/noteanytime/R$id;->progressText:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_dlLabel:Landroid/widget/TextView;

    .line 67
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_dlg:Landroid/app/Dialog;

    sget v0, Lcom/metamoji/noteanytime/R$id;->progressBar:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_progressBar:Landroid/widget/ProgressBar;

    .line 68
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_indeterminate:Z

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 69
    iget-boolean p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_indeterminate:Z

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_progressBar:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_maxSize:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 71
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_progressBar:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_downloadSize:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_dlg:Landroid/app/Dialog;

    sget v0, Lcom/metamoji/noteanytime/R$id;->progressCancelButton:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_cancelButton:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 76
    sget v0, Lcom/metamoji/noteanytime/R$string;->Button_Cancel_J:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 77
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_cancelButton:Lcom/metamoji/ui/common/UiButtonHeader;

    sget v0, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 78
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_cancelButton:Lcom/metamoji/ui/common/UiButtonHeader;

    iget v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_cancelButtonVisibility:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_cancelButton:Lcom/metamoji/ui/common/UiButtonHeader;

    new-instance v0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic$2;-><init>(Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_task:Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p1, p0}, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->setUiDownloadProgress(Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)V

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 94
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_dlg:Landroid/app/Dialog;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 115
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public setCancelButtonVisibility(I)V
    .locals 1

    .line 102
    iput p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_cancelButtonVisibility:I

    .line 103
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_cancelButton:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setCancelableTask(Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_task:Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;

    return-void
.end method

.method public setDownloadLabel(Ljava/lang/String;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_dlLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setProgress(II)V
    .locals 1

    .line 135
    iget v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_maxSize:I

    if-eq v0, p1, :cond_0

    .line 136
    iput p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_maxSize:I

    .line 137
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 141
    :cond_0
    iget p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_downloadSize:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_downloadSize:I

    .line 142
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    :cond_1
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1

    .line 153
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_indeterminate:Z

    .line 154
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_0
    return-void
.end method
