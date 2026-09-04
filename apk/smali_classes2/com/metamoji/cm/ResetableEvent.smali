.class public Lcom/metamoji/cm/ResetableEvent;
.super Ljava/lang/Object;
.source "ResetableEvent.java"


# instance fields
.field private mAutoReset:Z

.field private mSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p2, p0, Lcom/metamoji/cm/ResetableEvent;->mAutoReset:Z

    .line 20
    new-instance p2, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object p2, p0, Lcom/metamoji/cm/ResetableEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    :cond_0
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/cm/ResetableEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    return-void
.end method

.method public set()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/metamoji/cm/ResetableEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    return-void
.end method

.method public waitOne()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/metamoji/cm/ResetableEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 37
    iget-boolean v0, p0, Lcom/metamoji/cm/ResetableEvent;->mAutoReset:Z

    .line 40
    iget-object v1, p0, Lcom/metamoji/cm/ResetableEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    return-void

    .line 40
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public waitOne(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/metamoji/cm/ResetableEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/cm/ResetableEvent;->mAutoReset:Z

    .line 52
    iget-object p2, p0, Lcom/metamoji/cm/ResetableEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_0
    return v2
.end method
