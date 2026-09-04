.class public Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;
.super Landroidx/fragment/app/DialogFragment;
.source "UiDownloadProgress.java"

# interfaces
.implements Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;


# instance fields
.field m_cancelButton:Landroid/widget/TextView;

.field m_cancelButtonVisibility:I

.field m_dlLabel:Landroid/widget/TextView;

.field m_dlg:Landroid/app/Dialog;

.field m_downloadSize:I

.field m_indeterminate:Z

.field m_maxSize:I

.field m_progressBar:Landroid/widget/ProgressBar;

.field m_task:Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_cancelButtonVisibility:I

    .line 30
    iput-boolean v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_indeterminate:Z

    .line 31
    iput v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_maxSize:I

    .line 32
    iput v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_downloadSize:I

    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_dlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->setRetainInstance(Z)V

    .line 41
    new-instance v0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress$1;

    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress$1;-><init>(Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_dlg:Landroid/app/Dialog;

    .line 60
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 62
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 63
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layout.dialog_download_progress_mazec"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 64
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 67
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_dlg:Landroid/app/Dialog;

    const-string v0, "id.progressBar"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_progressBar:Landroid/widget/ProgressBar;

    .line 68
    iget-boolean v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_indeterminate:Z

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 69
    iget-boolean p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_indeterminate:Z

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_progressBar:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_maxSize:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 71
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_progressBar:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_downloadSize:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_dlg:Landroid/app/Dialog;

    const-string v0, "id.progressCancelButton"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_cancelButton:Landroid/widget/TextView;

    .line 78
    iget v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_cancelButtonVisibility:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_cancelButton:Landroid/widget/TextView;

    new-instance v0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress$2;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress$2;-><init>(Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_task:Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1, p0}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;->setUiDownloadProgress(Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;)V

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_dlg:Landroid/app/Dialog;

    const-string v0, "id.progressText"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_dlLabel:Landroid/widget/TextView;

    .line 105
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 106
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_dlg:Landroid/app/Dialog;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 126
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public setCancelButtonVisibility(I)V
    .locals 1

    .line 113
    iput p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_cancelButtonVisibility:I

    .line 114
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_cancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setCancelableTask(Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_task:Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;

    return-void
.end method

.method public setDownloadLabel(Ljava/lang/String;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_dlLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setProgress(II)V
    .locals 1

    .line 146
    iget v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_maxSize:I

    if-eq v0, p1, :cond_0

    .line 147
    iput p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_maxSize:I

    .line 148
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 152
    :cond_0
    iget p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_downloadSize:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_downloadSize:I

    .line 153
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    :cond_1
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1

    .line 164
    iput-boolean p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_indeterminate:Z

    .line 165
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_0
    return-void
.end method
