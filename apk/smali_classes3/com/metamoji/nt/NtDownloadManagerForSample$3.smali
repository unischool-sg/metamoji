.class Lcom/metamoji/nt/NtDownloadManagerForSample$3;
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

.field final synthetic val$isStartupStyle:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDownloadManagerForSample;ZLandroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 219
    iput-object p1, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iput-boolean p2, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->val$isStartupStyle:Z

    iput-object p3, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->val$act:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 222
    iget-boolean v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->val$isStartupStyle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->val$act:Landroidx/fragment/app/FragmentActivity;

    sget v2, Lcom/metamoji/noteanytime/R$id;->progressText:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 225
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_First_Time_Initializing:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->val$act:Landroidx/fragment/app/FragmentActivity;

    sget v2, Lcom/metamoji/noteanytime/R$id;->progressRing:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    .line 227
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iput-object v1, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_progressBar:Landroid/widget/ProgressBar;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iput-object v1, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_downloadProgressDlg:Lcom/metamoji/ui/dialog/UiDownloadProgress;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iget-object v0, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_downloadProgressDlg:Lcom/metamoji/ui/dialog/UiDownloadProgress;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/UiDownloadProgress;->dismiss()V

    .line 240
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample$3;->this$0:Lcom/metamoji/nt/NtDownloadManagerForSample;

    iput-object v1, v0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_downloadProgressDlg:Lcom/metamoji/ui/dialog/UiDownloadProgress;

    :cond_2
    return-void
.end method
