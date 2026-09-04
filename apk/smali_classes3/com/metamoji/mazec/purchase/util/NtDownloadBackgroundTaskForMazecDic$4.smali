.class Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$4;
.super Ljava/lang/Object;
.source "NtDownloadBackgroundTaskForMazecDic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->onDownloadFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$4;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$4;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    iget-object v0, v0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    invoke-virtual {v0}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$4;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    iget-object v0, v0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->setCancelButtonVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$4;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    iget-object v0, v0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->setProgressBarIndeterminate(Z)V

    :cond_0
    return-void
.end method
