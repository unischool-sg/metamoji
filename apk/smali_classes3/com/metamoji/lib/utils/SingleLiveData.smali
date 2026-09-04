.class public final Lcom/metamoji/lib/utils/SingleLiveData;
.super Landroidx/lifecycle/MutableLiveData;
.source "SingleLiveEvent.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MutableLiveData<",
        "TT;>;",
        "Landroidx/lifecycle/Observer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0003H\u0017J\u0018\u0010\u000e\u001a\u00020\n2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0003H\u0017J\u0018\u0010\u000f\u001a\u00020\n2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0003H\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0017\u0010\u0011\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00018\u0000H\u0017\u00a2\u0006\u0002\u0010\u0013J\u0015\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00028\u0000\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/SingleLiveData;",
        "T",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/Observer;",
        "<init>",
        "()V",
        "pending",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "originalObserver",
        "observe",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "observer",
        "removeObserver",
        "observeForever",
        "removeObservers",
        "setValue",
        "t",
        "(Ljava/lang/Object;)V",
        "onChanged",
        "value",
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
.field private originalObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final pending:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/metamoji/lib/utils/SingleLiveData;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
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

    .line 55
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/SingleLiveData;->hasActiveObservers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iput-object p2, p0, Lcom/metamoji/lib/utils/SingleLiveData;->originalObserver:Landroidx/lifecycle/Observer;

    .line 62
    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/Observer;

    invoke-super {p0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    .line 56
    :cond_0
    sget-object p1, Lcom/metamoji/lib/utils/UtLib;->INSTANCE:Lcom/metamoji/lib/utils/UtLib;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/UtLib;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string p2, "only one observer can be registered to SingleLiveData"

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 57
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SingleLiveData.observe prevent from registering multiple observers."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public observeForever(Landroidx/lifecycle/Observer;)V
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

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/SingleLiveData;->hasActiveObservers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/metamoji/lib/utils/SingleLiveData;->originalObserver:Landroidx/lifecycle/Observer;

    .line 81
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/Observer;

    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void

    .line 75
    :cond_0
    sget-object p1, Lcom/metamoji/lib/utils/UtLib;->INSTANCE:Lcom/metamoji/lib/utils/UtLib;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/UtLib;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string v0, "only one observer can be registered to SingleLiveData"

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 76
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SingleLiveData.observe prevent from registering multiple observers."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/metamoji/lib/utils/SingleLiveData;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/metamoji/lib/utils/SingleLiveData;->originalObserver:Landroidx/lifecycle/Observer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    :cond_0
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

    .line 67
    iget-object v0, p0, Lcom/metamoji/lib/utils/SingleLiveData;->originalObserver:Landroidx/lifecycle/Observer;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/metamoji/lib/utils/SingleLiveData;->originalObserver:Landroidx/lifecycle/Observer;

    .line 69
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/Observer;

    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public removeObservers(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/metamoji/lib/utils/SingleLiveData;->originalObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/metamoji/lib/utils/SingleLiveData;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
