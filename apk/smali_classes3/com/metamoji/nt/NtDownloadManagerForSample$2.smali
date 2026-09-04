.class Lcom/metamoji/nt/NtDownloadManagerForSample$2;
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


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDownloadManagerForSample;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$2;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$2;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$2;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$2;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_progressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$2;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$2;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_downloadProgressDlg:Lcom/metamoji/ui/dialog/UiDownloadProgress;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$2;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_downloadProgressDlg:Lcom/metamoji/ui/dialog/UiDownloadProgress;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/UiDownloadProgress;->setCancelButtonVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$2;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_downloadProgressDlg:Lcom/metamoji/ui/dialog/UiDownloadProgress;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/dialog/UiDownloadProgress;->setProgressBarIndeterminate(Z)V

    :cond_2
    return-void
.end method
