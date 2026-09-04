.class public Lcom/metamoji/mazec/purchase/LbDownloadUtil;
.super Ljava/lang/Object;
.source "LbDownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;,
        Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;
    }
.end annotation


# static fields
.field static s_cookieStore:Ljava/net/CookieManager;


# instance fields
.field m_lockThread:Ljava/lang/Object;

.field m_outputFile:Ljava/io/File;

.field m_progressDlg:Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;

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
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sput-object v0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->s_cookieStore:Ljava/net/CookieManager;

    .line 72
    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkContentType(Lokhttp3/MediaType;Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-virtual {p0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object p0

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
    const/4 p0, 0x0

    return p0
.end method

.method public static deleteDirOrFile(Ljava/io/File;)Z
    .locals 6

    .line 370
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 374
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 377
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->deleteDirOrFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static deleteDirOrFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 394
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->deleteDirOrFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static downloadWithProgressDialog(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;

    invoke-direct {v0}, Lcom/metamoji/mazec/purchase/LbDownloadUtil;-><init>()V

    .line 57
    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->doDownload(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getTemporaryDataDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected complatedNotify()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_lockThread:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_lockThread:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    .line 125
    iput-object v1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_progressDlg:Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;

    .line 126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected doDownload(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 92
    iput-object p2, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_outputFile:Ljava/io/File;

    .line 93
    iput-object p3, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_progressDlg:Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;

    const/4 p2, 0x0

    .line 94
    iput-object p2, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_retMap:Ljava/util/Map;

    .line 95
    iput-object p0, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_lockThread:Ljava/lang/Object;

    .line 98
    :try_start_0
    new-instance p2, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;

    invoke-direct {p2, p0}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;-><init>(Lcom/metamoji/mazec/purchase/LbDownloadUtil;)V

    if-eqz p3, :cond_0

    .line 100
    invoke-interface {p3, p2}, Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;->setCancelableTask(Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;)V

    .line 103
    :cond_0
    invoke-static {p2, p1}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->executeAsyncTask(Landroid/os/AsyncTask;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_lockThread:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    iget-object p2, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_lockThread:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    .line 108
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

    .line 110
    const-string p2, "[LbDownloadUtil] doDownload Error."

    invoke-static {p1, p2}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 112
    :goto_0
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->m_retMap:Ljava/util/Map;

    return-object p1
.end method
