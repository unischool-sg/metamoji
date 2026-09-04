.class public final Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;
.super Ljava/lang/Object;
.source "LiveDataReactiveStreams.kt"

# interfaces
.implements Lorg/reactivestreams/Subscription;
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveDataPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveDataSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/Subscription;",
        "Landroidx/lifecycle/Observer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u00020\u00022\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0003B-\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00018\u0001H\u0016\u00a2\u0006\u0002\u0010%J\u0010\u0010*\u001a\u00020(2\u0006\u0010+\u001a\u00020\u001cH\u0016J\u0008\u0010,\u001a\u00020(H\u0016R\u0019\u0010\u0004\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001e\u0010!\u001a\u0004\u0018\u00018\u0001X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010&\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006-"
    }
    d2 = {
        "Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;",
        "T",
        "Lorg/reactivestreams/Subscription;",
        "Landroidx/lifecycle/Observer;",
        "subscriber",
        "Lorg/reactivestreams/Subscriber;",
        "lifecycle",
        "Landroidx/lifecycle/LifecycleOwner;",
        "liveData",
        "Landroidx/lifecycle/LiveData;",
        "<init>",
        "(Lorg/reactivestreams/Subscriber;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;)V",
        "getSubscriber",
        "()Lorg/reactivestreams/Subscriber;",
        "getLifecycle",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "getLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "canceled",
        "",
        "getCanceled",
        "()Z",
        "setCanceled",
        "(Z)V",
        "observing",
        "getObserving",
        "setObserving",
        "requested",
        "",
        "getRequested",
        "()J",
        "setRequested",
        "(J)V",
        "latest",
        "getLatest",
        "()Ljava/lang/Object;",
        "setLatest",
        "(Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "onChanged",
        "",
        "value",
        "request",
        "n",
        "cancel",
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
.field private volatile canceled:Z

.field private latest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final lifecycle:Landroidx/lifecycle/LifecycleOwner;

.field private final liveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field private observing:Z

.field private requested:J

.field private final subscriber:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->subscriber:Lorg/reactivestreams/Subscriber;

    .line 82
    iput-object p2, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->lifecycle:Landroidx/lifecycle/LifecycleOwner;

    .line 83
    iput-object p3, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->liveData:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method static final cancel$lambda$0(Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;)V
    .locals 2

    .line 150
    iget-boolean v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->observing:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->liveData:Landroidx/lifecycle/LiveData;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->observing:Z

    :cond_0
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->latest:Ljava/lang/Object;

    return-void
.end method

.method static final request$lambda$0(Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;J)V
    .locals 7

    .line 116
    iget-boolean v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->canceled:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_2

    .line 120
    iput-boolean v2, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->canceled:Z

    .line 121
    iget-boolean p1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->observing:Z

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->liveData:Landroidx/lifecycle/LiveData;

    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->observing:Z

    .line 125
    :cond_1
    iput-object v1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->latest:Ljava/lang/Object;

    .line 126
    iget-object p0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->subscriber:Lorg/reactivestreams/Subscriber;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-positive request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 132
    :cond_2
    iget-wide v3, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->requested:J

    add-long v5, v3, p1

    cmp-long v0, v5, v3

    if-ltz v0, :cond_3

    add-long/2addr v3, p1

    goto :goto_0

    :cond_3
    const-wide v3, 0x7fffffffffffffffL

    .line 131
    :goto_0
    iput-wide v3, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->requested:J

    .line 133
    iget-boolean p1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->observing:Z

    if-nez p1, :cond_4

    .line 134
    iput-boolean v2, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->observing:Z

    .line 135
    iget-object p1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->liveData:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->lifecycle:Landroidx/lifecycle/LifecycleOwner;

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    .line 136
    :cond_4
    iget-object p1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->latest:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 137
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->onChanged(Ljava/lang/Object;)V

    .line 138
    iput-object v1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->latest:Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 145
    iget-boolean v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->canceled:Z

    .line 149
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;)V

    invoke-virtual {v0, v1}, Landroidx/arch/core/executor/ArchTaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getCanceled()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->canceled:Z

    return v0
.end method

.method public final getLatest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->latest:Ljava/lang/Object;

    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->lifecycle:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public final getLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->liveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getObserving()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->observing:Z

    return v0
.end method

.method public final getRequested()J
    .locals 2

    .line 89
    iget-wide v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->requested:J

    return-wide v0
.end method

.method public final getSubscriber()Lorg/reactivestreams/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->subscriber:Lorg/reactivestreams/Subscriber;

    return-object v0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 95
    iget-boolean v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->canceled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-wide v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->requested:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->latest:Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 101
    iget-wide v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->requested:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    .line 102
    iput-wide v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->requested:J

    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    iput-object p1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->latest:Ljava/lang/Object;

    return-void
.end method

.method public request(J)V
    .locals 2

    .line 110
    iget-boolean v0, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    .line 114
    new-instance v1, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription$$ExternalSyntheticLambda1;-><init>(Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;J)V

    invoke-virtual {v0, v1}, Landroidx/arch/core/executor/ArchTaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setCanceled(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->canceled:Z

    return-void
.end method

.method public final setLatest(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->latest:Ljava/lang/Object;

    return-void
.end method

.method public final setObserving(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->observing:Z

    return-void
.end method

.method public final setRequested(J)V
    .locals 0

    .line 89
    iput-wide p1, p0, Landroidx/lifecycle/LiveDataPublisher$LiveDataSubscription;->requested:J

    return-void
.end method
