.class Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$5;
.super Ljava/lang/Object;
.source "NtDownloadBackgroundTaskForMazecDic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->dismissProgressDlg()V
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

    .line 341
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$5;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$5;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    iget-object v0, v0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    invoke-virtual {v0}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$5;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    iget-object v0, v0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    invoke-virtual {v0}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->dismiss()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$5;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    return-void
.end method
