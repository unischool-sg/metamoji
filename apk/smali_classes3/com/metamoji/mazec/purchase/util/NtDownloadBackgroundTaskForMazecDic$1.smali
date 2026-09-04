.class Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$1;
.super Ljava/lang/Object;
.source "NtDownloadBackgroundTaskForMazecDic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->initWithDownloadDic(Ljava/util/LinkedHashMap;Z)V
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

    .line 79
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$1;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 82
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$1;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    new-instance v2, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    invoke-direct {v2}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;-><init>()V

    iput-object v2, v1, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    .line 89
    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$1;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    iget-object v1, v1, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->setCancelable(Z)V

    .line 90
    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$1;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    iget-object v1, v1, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    const-string v2, "Download_Progress"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
