.class Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$3;
.super Ljava/lang/Object;
.source "NtDownloadBackgroundTaskForMazecDic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->onDownloadStart(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lang:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;Landroid/content/Context;Ljava/lang/String;)V
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

    .line 306
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$3;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    iput-object p2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$3;->val$lang:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$3;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    iget-object v0, v0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$3;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    iget-object v2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$3;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$3;->val$lang:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->-$$Nest$mgetDownloadLabel(Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->setDownloadLabel(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$3;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    iget-object v0, v0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->setCancelButtonVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$3;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    iget-object v0, v0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->setProgressBarIndeterminate(Z)V

    return-void
.end method
