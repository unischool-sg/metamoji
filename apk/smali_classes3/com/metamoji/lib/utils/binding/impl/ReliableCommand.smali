.class public final Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;
.super Lcom/metamoji/lib/utils/CommandBase;
.source "ReliableCommand.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/CommandBase<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReliableCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReliableCommand.kt\ncom/metamoji/lib/utils/binding/impl/ReliableCommand\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1#2:71\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001d\u0008\u0016\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\tJ$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00080\u0007H\u0017J\u001c\u0010\u0011\u001a\u00020\r2\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00080\u0007H\u0017J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016J\u0008\u0010\u0013\u001a\u00020\u0008H\u0017J\u0015\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00028\u0000H\u0017\u00a2\u0006\u0002\u0010\u0016R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;",
        "T",
        "",
        "Lcom/metamoji/lib/utils/CommandBase;",
        "<init>",
        "()V",
        "fn",
        "Lkotlin/Function1;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "subject",
        "Lcom/metamoji/lib/utils/SingleLiveData;",
        "disposable",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "bind",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "bindForever",
        "reset",
        "dispose",
        "invoke",
        "value",
        "(Ljava/lang/Object;)V",
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
.field private disposable:Lcom/metamoji/lib/utils/IDisposable;

.field private final subject:Lcom/metamoji/lib/utils/SingleLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/SingleLiveData<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/metamoji/lib/utils/CommandBase;-><init>()V

    .line 32
    new-instance v0, Lcom/metamoji/lib/utils/SingleLiveData;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/SingleLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;->subject:Lcom/metamoji/lib/utils/SingleLiveData;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;->bindForever(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method


# virtual methods
.method public bind(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;->disposable:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;->subject:Lcom/metamoji/lib/utils/SingleLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    invoke-static {v0, p1, p2}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/IDisposable;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;->disposable:Lcom/metamoji/lib/utils/IDisposable;

    return-object p1
.end method

.method public bindForever(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;->disposable:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;->subject:Lcom/metamoji/lib/utils/SingleLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    invoke-static {v0, p1}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserveForever(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/IDisposable;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;->disposable:Lcom/metamoji/lib/utils/IDisposable;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;->disposable:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;->disposable:Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;->subject:Lcom/metamoji/lib/utils/SingleLiveData;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/SingleLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/ReliableCommand;->dispose()V

    return-void
.end method
