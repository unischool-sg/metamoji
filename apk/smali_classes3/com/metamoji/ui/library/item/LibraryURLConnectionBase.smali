.class public abstract Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;
.super Ljava/lang/Object;
.source "LibraryURLConnectionBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;
    }
.end annotation


# instance fields
.field protected m_httpCall:Lokhttp3/Call;

.field protected m_pageView:Lcom/metamoji/ui/library/item/LibraryStorePageView;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->m_pageView:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->m_httpCall:Lokhttp3/Call;

    return-void
.end method


# virtual methods
.method protected connectionAbort()V
    .locals 2

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->m_httpCall:Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 76
    :try_start_1
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    :try_start_2
    const-string v1, "[URLConnectionBase] URLConnection request cancel FAILED!!"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->m_httpCall:Lokhttp3/Call;

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected abstract connectionDidFinishLoading(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected createCall(Ljava/lang/String;)Lokhttp3/Call;
    .locals 2

    .line 126
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 127
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 128
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public destory()V
    .locals 3

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->m_pageView:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    .line 51
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$1;-><init>(Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;)V

    .line 62
    :try_start_0
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public requestAsync()V
    .locals 5

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->connectionAbort()V

    .line 93
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;->requestUrl()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[LibraryURLConnectionBase] URL="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 96
    :try_start_0
    new-instance v1, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;-><init>(Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$DownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 99
    :catch_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 100
    new-instance v2, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$2;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase$2;-><init>(Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;Ljava/lang/String;)V

    const-wide/16 v3, 0x1f4

    .line 110
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected abstract requestUrl()Ljava/lang/String;
.end method
