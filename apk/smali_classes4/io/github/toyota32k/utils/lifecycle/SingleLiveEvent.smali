.class public final Lio/github/toyota32k/utils/lifecycle/SingleLiveEvent;
.super Ljava/lang/Object;
.source "SingleLiveEvent.kt"

# interfaces
.implements Lio/github/toyota32k/utils/lifecycle/ISingleLiveEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/github/toyota32k/utils/lifecycle/ISingleLiveEvent<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u000fJ \u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u000e\u0010\u0013\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\r2\u000e\u0010\u0013\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0014H\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/github/toyota32k/utils/lifecycle/SingleLiveEvent;",
        "T",
        "",
        "Lio/github/toyota32k/utils/lifecycle/ISingleLiveEvent;",
        "<init>",
        "()V",
        "subject",
        "Lio/github/toyota32k/utils/lifecycle/SingleLiveData;",
        "liveData",
        "Landroidx/lifecycle/LiveData;",
        "getLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "fire",
        "",
        "v",
        "(Ljava/lang/Object;)V",
        "observe",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "removeObserver",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final subject:Lio/github/toyota32k/utils/lifecycle/SingleLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/toyota32k/utils/lifecycle/SingleLiveData<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/SingleLiveData;

    invoke-direct {v0}, Lio/github/toyota32k/utils/lifecycle/SingleLiveData;-><init>()V

    iput-object v0, p0, Lio/github/toyota32k/utils/lifecycle/SingleLiveEvent;->subject:Lio/github/toyota32k/utils/lifecycle/SingleLiveData;

    return-void
.end method


# virtual methods
.method public final fire(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/SingleLiveEvent;->subject:Lio/github/toyota32k/utils/lifecycle/SingleLiveData;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/utils/lifecycle/SingleLiveData;->setValue(Ljava/lang/Object;)V

    return-void
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

    .line 31
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/SingleLiveEvent;->subject:Lio/github/toyota32k/utils/lifecycle/SingleLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/SingleLiveEvent;->subject:Lio/github/toyota32k/utils/lifecycle/SingleLiveData;

    invoke-virtual {v0, p1, p2}, Lio/github/toyota32k/utils/lifecycle/SingleLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public removeObserver(Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/SingleLiveEvent;->subject:Lio/github/toyota32k/utils/lifecycle/SingleLiveData;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/utils/lifecycle/SingleLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
