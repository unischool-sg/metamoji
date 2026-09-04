.class Lcom/metamoji/mazec/purchase/util/UiDownloadProgress$2;
.super Ljava/lang/Object;
.source "UiDownloadProgress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;)V
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
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress$2;->this$0:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress$2;->this$0:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    iget-object p1, p1, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;->m_task:Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;

    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress$2$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/purchase/util/UiDownloadProgress$2$1;-><init>(Lcom/metamoji/mazec/purchase/util/UiDownloadProgress$2;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 90
    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
