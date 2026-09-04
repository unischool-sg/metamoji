.class final Landroidx/lifecycle/PublisherLiveData;
.super Landroidx/lifecycle/LiveData;
.source "LiveDataReactiveStreams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/PublisherLiveData$LiveDataSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u000fB\u0015\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u000c\u001a\u00020\rH\u0014J\u0008\u0010\u000e\u001a\u00020\rH\u0014R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\u0007\u001a\u0012\u0012\u000e\u0012\u000c0\tR\u0008\u0012\u0004\u0012\u00028\u00000\u00000\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/lifecycle/PublisherLiveData;",
        "T",
        "Landroidx/lifecycle/LiveData;",
        "publisher",
        "Lorg/reactivestreams/Publisher;",
        "<init>",
        "(Lorg/reactivestreams/Publisher;)V",
        "subscriber",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Landroidx/lifecycle/PublisherLiveData$LiveDataSubscriber;",
        "getSubscriber",
        "()Ljava/util/concurrent/atomic/AtomicReference;",
        "onActive",
        "",
        "onInactive",
        "LiveDataSubscriber",
        "lifecycle-reactivestreams"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final publisher:Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final subscriber:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/lifecycle/PublisherLiveData<",
            "TT;>.",
            "LiveDataSubscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Publisher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "publisher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/PublisherLiveData;->publisher:Lorg/reactivestreams/Publisher;

    .line 196
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/PublisherLiveData;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final getSubscriber()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/lifecycle/PublisherLiveData<",
            "TT;>.",
            "LiveDataSubscriber;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroidx/lifecycle/PublisherLiveData;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method protected onActive()V
    .locals 2

    .line 199
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    .line 200
    new-instance v0, Landroidx/lifecycle/PublisherLiveData$LiveDataSubscriber;

    invoke-direct {v0, p0}, Landroidx/lifecycle/PublisherLiveData$LiveDataSubscriber;-><init>(Landroidx/lifecycle/PublisherLiveData;)V

    .line 201
    iget-object v1, p0, Landroidx/lifecycle/PublisherLiveData;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Landroidx/lifecycle/PublisherLiveData;->publisher:Lorg/reactivestreams/Publisher;

    check-cast v0, Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method

.method protected onInactive()V
    .locals 2

    .line 206
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onInactive()V

    .line 207
    iget-object v0, p0, Landroidx/lifecycle/PublisherLiveData;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/PublisherLiveData$LiveDataSubscriber;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroidx/lifecycle/PublisherLiveData$LiveDataSubscriber;->cancelSubscription()V

    :cond_0
    return-void
.end method
