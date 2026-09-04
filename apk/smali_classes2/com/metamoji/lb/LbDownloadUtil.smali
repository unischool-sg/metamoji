.class public Lcom/metamoji/lb/LbDownloadUtil;
.super Ljava/lang/Object;
.source "LbDownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;,
        Lcom/metamoji/lb/LbDownloadUtil$LbLoginTask;,
        Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;
    }
.end annotation


# instance fields
.field m_lockThread:Ljava/lang/Object;

.field m_outputFile:Ljava/io/File;

.field m_progressDlg:Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;

.field m_retMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkContentType(Lokhttp3/Headers;Ljava/lang/String;)Z
    .locals 1

    .line 78
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static downloadWithProgressDialog(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/metamoji/lb/LbDownloadUtil;

    invoke-direct {v0}, Lcom/metamoji/lb/LbDownloadUtil;-><init>()V

    .line 50
    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/lb/LbDownloadUtil;->doDownload(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static login()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->loginURL()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RetryLogin] URL="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/metamoji/lb/LbDownloadUtil;

    invoke-direct {v1}, Lcom/metamoji/lb/LbDownloadUtil;-><init>()V

    .line 69
    invoke-virtual {v1, v0}, Lcom/metamoji/lb/LbDownloadUtil;->doLogin(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected complatedNotify()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_lockThread:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_lockThread:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    const/4 v1, 0x0

    .line 172
    iput-object v1, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    .line 173
    iput-object v1, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_progressDlg:Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;

    .line 174
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected doDownload(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 103
    iput-object p2, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    .line 104
    iput-object p3, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_progressDlg:Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;

    const/4 p2, 0x0

    .line 105
    iput-object p2, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_retMap:Ljava/util/Map;

    .line 106
    iput-object p0, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_lockThread:Ljava/lang/Object;

    .line 109
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/lb/LbDownloadUtil$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/metamoji/lb/LbDownloadUtil$1;-><init>(Lcom/metamoji/lb/LbDownloadUtil;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 123
    iget-object p1, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_lockThread:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :try_start_1
    iget-object p2, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_lockThread:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    .line 125
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 127
    const-string p2, "[LbDownloadUtil] doDownload Error."

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_retMap:Ljava/util/Map;

    return-object p1
.end method

.method protected doLogin(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_retMap:Ljava/util/Map;

    .line 140
    iput-object p0, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_lockThread:Ljava/lang/Object;

    .line 143
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/lb/LbDownloadUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/lb/LbDownloadUtil$2;-><init>(Lcom/metamoji/lb/LbDownloadUtil;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 154
    iget-object p1, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_lockThread:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_lockThread:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 156
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 158
    const-string v0, "[LbDownloadUtil] doLogin Error."

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 160
    :goto_0
    iget-object p1, p0, Lcom/metamoji/lb/LbDownloadUtil;->m_retMap:Ljava/util/Map;

    return-object p1
.end method
