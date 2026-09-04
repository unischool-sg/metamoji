.class public final Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;
.super Ljava/lang/Object;
.source "Listeners.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;
.implements Lcom/metamoji/lib/utils/ListenerKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/Listeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OwneredInvoker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "Lcom/metamoji/lib/utils/ListenerKey<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0007H\u0017J\u0015\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00028\u0000H\u0017\u00a2\u0006\u0002\u0010\u001dR\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "Lcom/metamoji/lib/utils/ListenerKey;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "fn",
        "Lkotlin/Function1;",
        "",
        "<init>",
        "(Lcom/metamoji/lib/utils/Listeners;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V",
        "getFn",
        "()Lkotlin/jvm/functions/Function1;",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "getLifecycle",
        "()Landroidx/lifecycle/Lifecycle;",
        "setLifecycle",
        "(Landroidx/lifecycle/Lifecycle;)V",
        "onStateChanged",
        "source",
        "event",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "dispose",
        "alive",
        "",
        "getAlive",
        "()Z",
        "invoke",
        "arg",
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
.field private final fn:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private lifecycle:Landroidx/lifecycle/Lifecycle;

.field final synthetic this$0:Lcom/metamoji/lib/utils/Listeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Listeners<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/utils/Listeners;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;->this$0:Lcom/metamoji/lib/utils/Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;->fn:Lkotlin/jvm/functions/Function1;

    .line 49
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    .line 50
    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 49
    iput-object p1, p0, Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-void
.end method

.method private final getAlive()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;->this$0:Lcom/metamoji/lib/utils/Listeners;

    const/4 v2, 0x0

    .line 63
    iput-object v2, p0, Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 64
    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 65
    invoke-static {v1}, Lcom/metamoji/lib/utils/Listeners;->access$getBusy$p(Lcom/metamoji/lib/utils/Listeners;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-static {v1}, Lcom/metamoji/lib/utils/Listeners;->access$getFunctions$p(Lcom/metamoji/lib/utils/Listeners;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 69
    :cond_0
    invoke-static {v1}, Lcom/metamoji/lib/utils/Listeners;->access$getTobeDeleted$p(Lcom/metamoji/lib/utils/Listeners;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final getFn()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;->fn:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;->getAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;->fn:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;->dispose()V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;->dispose()V

    :cond_0
    return-void
.end method

.method public final setLifecycle(Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/metamoji/lib/utils/Listeners$OwneredInvoker;->lifecycle:Landroidx/lifecycle/Lifecycle;

    return-void
.end method
