.class public Lcom/metamoji/ns/direction/NsRecvInvoker;
.super Lcom/metamoji/ns/direction/NsInvoker;
.source "NsRecvInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final INVOKER_NAME:Ljava/lang/String; = "RecvInvoker"

.field static final MAX_INTERBAL:J = 0x7d0L

.field static final ONE_PORTION:I = 0x14

.field static final sThreadFactory:Lcom/metamoji/cm/CmThreadFactory;


# instance fields
.field private final mActionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mDelegate:Lcom/metamoji/ns/direction/INsInvokerDelegate;

.field mEvent:Lcom/metamoji/cm/ResetableEvent;

.field private mLogMode:Z

.field private mPause:Z


# direct methods
.method static bridge synthetic -$$Nest$fputmLogMode(Lcom/metamoji/ns/direction/NsRecvInvoker;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mLogMode:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/metamoji/cm/CmThreadFactory;

    const-string v1, "RecvInvoker"

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/ns/direction/NsRecvInvoker;->sThreadFactory:Lcom/metamoji/cm/CmThreadFactory;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 34
    const-string p1, "RecvInvoker"

    sget-object p2, Lcom/metamoji/ns/direction/NsRecvInvoker;->sThreadFactory:Lcom/metamoji/cm/CmThreadFactory;

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ns/direction/NsInvoker;-><init>(Ljava/lang/String;Lcom/metamoji/cm/CmThreadFactory;)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mDelegate:Lcom/metamoji/ns/direction/INsInvokerDelegate;

    .line 21
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mActionQueue:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mPause:Z

    .line 36
    iput-boolean p1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mLogMode:Z

    .line 37
    new-instance p2, Lcom/metamoji/cm/ResetableEvent;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mEvent:Lcom/metamoji/cm/ResetableEvent;

    .line 38
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$001(Lcom/metamoji/ns/direction/NsRecvInvoker;)V
    .locals 0

    .line 17
    invoke-super {p0}, Lcom/metamoji/ns/direction/NsInvoker;->dispose()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 61
    new-instance v0, Lcom/metamoji/ns/direction/NsRecvInvoker$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/direction/NsRecvInvoker$1;-><init>(Lcom/metamoji/ns/direction/NsRecvInvoker;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected getNext()Ljava/lang/Runnable;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-boolean v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mAlive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mPause:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mActionQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mActionQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    monitor-exit v0

    return-object v1

    .line 135
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasNext()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-boolean v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mAlive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mPause:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mActionQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public invoke(Ljava/lang/Runnable;)Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-boolean v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mAlive:Z

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 51
    monitor-exit v0

    return p1

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mActionQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    .line 55
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isPausing()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-boolean v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mPause:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pause(Z)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-boolean v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mAlive:Z

    if-nez v1, :cond_0

    .line 98
    monitor-exit v0

    return-void

    .line 100
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mPause:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 101
    :goto_0
    iput-boolean p1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mPause:Z

    if-eqz v1, :cond_2

    .line 103
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mActionQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 104
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    .line 107
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 12

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 164
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {v2}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 167
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsRecvInvoker;->getNext()Ljava/lang/Runnable;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "RecvInvoker: %d actions."

    if-eqz v4, :cond_6

    if-nez v1, :cond_2

    .line 170
    :try_start_1
    iget-object v6, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mDelegate:Lcom/metamoji/ns/direction/INsInvokerDelegate;

    invoke-interface {v6, p0}, Lcom/metamoji/ns/direction/INsInvokerDelegate;->invokerWillBeginOperation(Lcom/metamoji/ns/direction/NsInvoker;)V

    .line 173
    :cond_2
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 175
    iget-boolean v4, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mAlive:Z

    if-nez v4, :cond_3

    .line 176
    const-string v4, "RecvInvoker: thread terminated."

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 182
    iget-boolean v4, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mLogMode:Z

    if-nez v4, :cond_4

    const/16 v4, 0x14

    if-ge v1, v4, :cond_5

    :cond_4
    sub-long v8, v6, v2

    const-wide/16 v10, 0x7d0

    cmp-long v4, v8, v10

    if-lez v4, :cond_1

    .line 183
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v4, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mDelegate:Lcom/metamoji/ns/direction/INsInvokerDelegate;

    invoke-interface {v4, p0}, Lcom/metamoji/ns/direction/INsInvokerDelegate;->invokerDidEndOperation(Lcom/metamoji/ns/direction/NsInvoker;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v0

    move-wide v2, v6

    goto :goto_1

    :catch_0
    move-exception v4

    .line 190
    :try_start_2
    const-string v5, "RecvInvoker: exception occurred in invoker action."

    invoke-static {v4, v5}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-lez v1, :cond_0

    .line 194
    iget-boolean v2, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mLogMode:Z

    if-nez v2, :cond_0

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mDelegate:Lcom/metamoji/ns/direction/INsInvokerDelegate;

    invoke-interface {v1, p0}, Lcom/metamoji/ns/direction/INsInvokerDelegate;->invokerDidEndOperation(Lcom/metamoji/ns/direction/NsInvoker;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 201
    const-string v1, "RecvInvoker: thread interrupted."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public setDelegate(Lcom/metamoji/ns/direction/INsInvokerDelegate;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsRecvInvoker;->mDelegate:Lcom/metamoji/ns/direction/INsInvokerDelegate;

    return-void
.end method

.method public setLogMode(Z)V
    .locals 1

    .line 146
    new-instance v0, Lcom/metamoji/ns/direction/NsRecvInvoker$2;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ns/direction/NsRecvInvoker$2;-><init>(Lcom/metamoji/ns/direction/NsRecvInvoker;Z)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void
.end method
