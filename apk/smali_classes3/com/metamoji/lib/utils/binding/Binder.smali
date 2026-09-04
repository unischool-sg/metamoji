.class public Lcom/metamoji/lib/utils/binding/Binder;
.super Lcom/metamoji/lib/utils/LifecycleDisposer;
.source "Binder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006H\u0096\u0002J\u0011\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006H\u0096\u0002J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0011J\u001f\u0010\u0015\u001a\u00020\u00002\u0012\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0016\"\u00020\u0006\u00a2\u0006\u0002\u0010\u0017J\u0016\u0010\u0015\u001a\u00020\u00002\u000e\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0019J\u001f\u0010\u001a\u001a\u00020\u00002\u0012\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0016\"\u00020\u0006\u00a2\u0006\u0002\u0010\u0017J\'\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\r2\u0017\u0010\u0018\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u001e0\u001d\u00a2\u0006\u0002\u0008\u001fJ\u001c\u0010 \u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\r2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0019R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "Lcom/metamoji/lib/utils/LifecycleDisposer;",
        "<init>",
        "()V",
        "bindings",
        "",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "getBindings",
        "()Ljava/util/List;",
        "plus",
        "disposable",
        "minus",
        "hasOwner",
        "",
        "getHasOwner",
        "()Z",
        "requireOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "getRequireOwner",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "owner",
        "add",
        "",
        "([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;",
        "fn",
        "Lkotlin/Function0;",
        "remove",
        "conditional",
        "condition",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "conditionalAdd",
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


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 10
    invoke-direct {p0, v0, v1, v0}, Lcom/metamoji/lib/utils/LifecycleDisposer;-><init>(Landroidx/lifecycle/LifecycleOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method static final conditionalAdd$lambda$1(Lkotlin/jvm/functions/Function0;Lcom/metamoji/lib/utils/binding/Binder;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$conditional"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 57
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    const/4 v1, 0x0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    .line 58
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final add(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/metamoji/lib/utils/IDisposable;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/IDisposable;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    :cond_0
    return-object p0
.end method

.method public final varargs add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 1

    const-string v0, "bindings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/metamoji/lib/utils/IDisposable;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    return-object p0
.end method

.method public final conditional(ZLkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final conditionalAdd(ZLkotlin/jvm/functions/Function0;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/metamoji/lib/utils/IDisposable;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/metamoji/lib/utils/binding/Binder$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/lib/utils/binding/Binder;->conditional(ZLkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p1

    return-object p1
.end method

.method public final getBindings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/lib/utils/IDisposable;",
            ">;"
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getDisposables()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getHasOwner()Z
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getRequireOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "lifecycleOwner has not be set, call owner() at first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic minus(Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/Binder;->minus(Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/Disposer;

    return-object p1
.end method

.method public minus(Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2

    const-string v0, "disposable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 17
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->remove([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p1

    return-object p1
.end method

.method public final owner(Landroidx/lifecycle/LifecycleOwner;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/Binder;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-object p0
.end method

.method public bridge synthetic plus(Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/Binder;->plus(Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/Disposer;

    return-object p1
.end method

.method public plus(Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2

    const-string v0, "disposable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs remove([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 1

    const-string v0, "bindings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/metamoji/lib/utils/IDisposable;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/Binder;->unregister([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    return-object p0
.end method
