.class public Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;
.super Ljava/lang/Object;
.source "LifecycleOwnerHolder.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;
.implements Lio/github/toyota32k/utils/IDisposableEx;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ \u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00042\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u0006\u0010\u0011\u001a\u00020\u0007J\u0016\u0010\u0012\u001a\u00020\u00002\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u0018\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u001b\u001a\u00020\u0007H\u0016R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@CX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "Lio/github/toyota32k/utils/IDisposableEx;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onDestroyed",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V",
        "destroyedCallback",
        "lifecycleOwner",
        "getLifecycleOwner",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "setLifecycleOwner",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "attachOwner",
        "detachOwner",
        "destroyed",
        "onStateChanged",
        "source",
        "event",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "disposed",
        "",
        "getDisposed",
        "()Z",
        "dispose",
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
.field private destroyedCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;-><init>(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->destroyedCallback:Lkotlin/jvm/functions/Function0;

    .line 53
    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;-><init>(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic attachOwner$default(Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->attachOwner(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: attachOwner"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 21
    :cond_0
    iput-object p1, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final attachOwner(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    if-eqz p2, :cond_0

    .line 32
    iput-object p2, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->destroyedCallback:Lkotlin/jvm/functions/Function0;

    :cond_0
    return-object p0
.end method

.method public final destroyed(Lkotlin/jvm/functions/Function0;)Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->destroyedCallback:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final detachOwner()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->detachOwner()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->destroyedCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public getDisposed()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 61
    iget-object p1, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->destroyedCallback:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 62
    :cond_0
    invoke-virtual {p0}, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->detachOwner()V

    :cond_1
    return-void
.end method
