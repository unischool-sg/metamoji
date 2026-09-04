.class public Lcom/metamoji/ui/common/UiAsyncImageView;
.super Landroid/widget/ImageView;
.source "UiAsyncImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;
    }
.end annotation


# instance fields
.field m_iStream:Ljava/io/InputStream;

.field m_maxSize:Lcom/metamoji/cm/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiAsyncImageView;->m_iStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/common/UiAsyncImageView$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ui/common/UiAsyncImageView$1;-><init>(Lcom/metamoji/ui/common/UiAsyncImageView;Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/metamoji/ui/common/UiAsyncImageView;->m_iStream:Ljava/io/InputStream;

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadImageURL(Ljava/lang/String;Lcom/metamoji/cm/Size;)V
    .locals 1

    .line 75
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/ui/common/UiAsyncImageView;->loadImageURL(Ljava/lang/String;Lcom/metamoji/cm/Size;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public loadImageURL(Ljava/lang/String;Lcom/metamoji/cm/Size;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiAsyncImageView;->abort()V

    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 87
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiAsyncImageView;->setVisibility(I)V

    .line 89
    iput-object p2, p0, Lcom/metamoji/ui/common/UiAsyncImageView;->m_maxSize:Lcom/metamoji/cm/Size;

    .line 95
    :try_start_0
    new-instance p2, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;-><init>(Lcom/metamoji/ui/common/UiAsyncImageView;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, p3, v0}, Lcom/metamoji/ui/common/UiAsyncImageView$LoadImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 98
    :catch_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object p2

    .line 99
    new-instance v0, Lcom/metamoji/ui/common/UiAsyncImageView$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/metamoji/ui/common/UiAsyncImageView$2;-><init>(Lcom/metamoji/ui/common/UiAsyncImageView;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    .line 109
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiAsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiAsyncImageView;->abort()V

    :cond_0
    return-void
.end method
