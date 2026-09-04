.class public Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;
.super Ljava/lang/Object;
.source "CmTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/purchase/util/CmTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field _ex:Ljava/lang/Exception;

.field _latch:Ljava/util/concurrent/CountDownLatch;

.field _result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field _target:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/mazec/purchase/util/CmTaskManager;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/purchase/util/CmTaskManager;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;->this$0:Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 208
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;->_ex:Ljava/lang/Exception;

    .line 209
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;->_latch:Ljava/util/concurrent/CountDownLatch;

    .line 210
    iput-object p2, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;->_target:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public await()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;->_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 226
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;->_ex:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;->_result:Ljava/lang/Object;

    return-object v0

    .line 227
    :cond_0
    throw v0
.end method

.method public run()V
    .locals 2

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;->_target:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;->_result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;->_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 218
    :try_start_1
    iput-object v0, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;->_ex:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :goto_1
    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;->_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 221
    throw v0
.end method
