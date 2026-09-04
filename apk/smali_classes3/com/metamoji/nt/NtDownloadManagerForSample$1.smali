.class Lcom/metamoji/nt/NtDownloadManagerForSample$1;
.super Ljava/lang/Object;
.source "NtDownloadManagerForSample.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDownloadManagerForSample;->performDownload(ZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

.field final synthetic val$act:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$fm:Landroidx/fragment/app/FragmentManager;

.field final synthetic val$isStartupStyle:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDownloadManagerForSample;ZLandroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iput-boolean p2, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->val$isStartupStyle:Z

    iput-object p3, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->val$act:Landroidx/fragment/app/FragmentActivity;

    iput-object p4, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->val$fm:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 118
    iget-boolean v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->val$isStartupStyle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->val$act:Landroidx/fragment/app/FragmentActivity;

    sget v2, Lcom/metamoji/noteanytime/R$id;->progressRing:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    .line 121
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->val$act:Landroidx/fragment/app/FragmentActivity;

    sget v2, Lcom/metamoji/noteanytime/R$id;->progressText:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    sget v2, Lcom/metamoji/noteanytime/R$string;->Now_Downloading:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v2, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->val$act:Landroidx/fragment/app/FragmentActivity;

    sget v3, Lcom/metamoji/noteanytime/R$id;->progressBar:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_progressBar:Landroid/widget/ProgressBar;

    .line 125
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v2, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->val$act:Landroidx/fragment/app/FragmentActivity;

    sget v3, Lcom/metamoji/noteanytime/R$id;->progressCancelButton:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object v2, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 127
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    new-instance v2, Lcom/metamoji/ui/dialog/UiDownloadProgress;

    invoke-direct {v2}, Lcom/metamoji/ui/dialog/UiDownloadProgress;-><init>()V

    iput-object v2, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_downloadProgressDlg:Lcom/metamoji/ui/dialog/UiDownloadProgress;

    .line 131
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_downloadProgressDlg:Lcom/metamoji/ui/dialog/UiDownloadProgress;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/UiDownloadProgress;->setCancelable(Z)V

    .line 132
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_downloadProgressDlg:Lcom/metamoji/ui/dialog/UiDownloadProgress;

    iget-object v1, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$1;->val$fm:Landroidx/fragment/app/FragmentManager;

    const-string v2, "Download_Progress"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/UiDownloadProgress;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
