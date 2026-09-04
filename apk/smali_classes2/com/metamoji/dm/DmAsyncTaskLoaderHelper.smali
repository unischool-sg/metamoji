.class public Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;
.super Landroid/content/AsyncTaskLoader;
.source "DmAsyncTaskLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field _callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;->_callable:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;->loadInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/lang/Void;
    .locals 1

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;->_callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
