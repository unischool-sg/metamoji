.class Lcom/metamoji/nt/notify/NtSysInfoManager$1;
.super Ljava/lang/Object;
.source "NtSysInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateExec(ZLcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/notify/NtSysInfoManager;

.field final synthetic val$ntAnytimeButton:Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/notify/NtSysInfoManager;Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;Ljava/lang/String;)V
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

    .line 371
    iput-object p1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$1;->this$0:Lcom/metamoji/nt/notify/NtSysInfoManager;

    iput-object p2, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$1;->val$ntAnytimeButton:Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

    iput-object p3, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    .line 375
    :try_start_0
    new-instance v1, Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;

    iget-object v2, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$1;->this$0:Lcom/metamoji/nt/notify/NtSysInfoManager;

    iget-object v3, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$1;->val$ntAnytimeButton:Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;-><init>(Lcom/metamoji/nt/notify/NtSysInfoManager;Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$1;->val$url:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 378
    :catch_0
    iget-object v1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$1;->this$0:Lcom/metamoji/nt/notify/NtSysInfoManager;

    iget v1, v1, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_state:I

    if-eq v1, v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$1;->this$0:Lcom/metamoji/nt/notify/NtSysInfoManager;

    const/4 v1, 0x2

    iput v1, v0, Lcom/metamoji/nt/notify/NtSysInfoManager;->m_state:I

    :cond_0
    return-void
.end method
