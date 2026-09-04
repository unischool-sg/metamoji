.class public final Lcom/metamoji/lib/utils/UtResetableEvent;
.super Ljava/lang/Object;
.source "UtResetableEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\u000c\u001a\u00020\nJ\u000e\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eJ\u001f\u0010\u000f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u0012\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UtResetableEvent;",
        "",
        "initialSignaled",
        "",
        "autoReset",
        "<init>",
        "(ZZ)V",
        "mSemaphore",
        "Ljava/util/concurrent/Semaphore;",
        "set",
        "",
        "reset",
        "waitOne",
        "ms",
        "",
        "withLock",
        "T",
        "action",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "utils"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final autoReset:Z

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/metamoji/lib/utils/UtResetableEvent;->autoReset:Z

    .line 16
    new-instance p2, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object p2, p0, Lcom/metamoji/lib/utils/UtResetableEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    if-nez p1, :cond_0

    .line 20
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    :cond_0
    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtResetableEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    return-void
.end method

.method public final set()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtResetableEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    return-void
.end method

.method public final waitOne()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtResetableEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 36
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/UtResetableEvent;->autoReset:Z

    .line 39
    iget-object v1, p0, Lcom/metamoji/lib/utils/UtResetableEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    return-void

    .line 39
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final waitOne(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtResetableEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/lib/utils/UtResetableEvent;->autoReset:Z

    .line 52
    iget-object p2, p0, Lcom/metamoji/lib/utils/UtResetableEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

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

.method public final withLock(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtResetableEvent;->waitOne()V

    .line 60
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
