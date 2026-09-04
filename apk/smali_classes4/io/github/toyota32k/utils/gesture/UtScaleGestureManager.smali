.class public final Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;
.super Ljava/lang/Object;
.source "UtScaleGestureManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB-\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\rJ3\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001a2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 0\u001e\u00a2\u0006\u0002\u0008!R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\""
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;",
        "",
        "applicationContext",
        "Landroid/content/Context;",
        "enableDoubleTap",
        "",
        "manipulationTarget",
        "Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;",
        "minScale",
        "",
        "maxScale",
        "<init>",
        "(Landroid/content/Context;ZLio/github/toyota32k/utils/gesture/IUtManipulationTarget;FF)V",
        "(ZLio/github/toyota32k/utils/gesture/IUtManipulationTarget;FF)V",
        "getManipulationTarget",
        "()Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;",
        "gestureInterpreter",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;",
        "getGestureInterpreter",
        "()Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;",
        "agent",
        "Lio/github/toyota32k/utils/gesture/UtManipulationAgent;",
        "getAgent",
        "()Lio/github/toyota32k/utils/gesture/UtManipulationAgent;",
        "setup",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Landroid/view/View;",
        "setupMe",
        "Lkotlin/Function1;",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IListenerBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
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
.field private final agent:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

.field private final gestureInterpreter:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

.field private final manipulationTarget:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLio/github/toyota32k/utils/gesture/IUtManipulationTarget;FF)V
    .locals 2

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manipulationTarget"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;->manipulationTarget:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    .line 41
    new-instance v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-direct {v0, p1, v1, p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;->gestureInterpreter:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    .line 42
    new-instance p1, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-direct {p1, p3, p4, p5}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;-><init>(Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;FF)V

    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;->agent:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZLio/github/toyota32k/utils/gesture/IUtManipulationTarget;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/high16 p5, 0x41200000    # 10.0f

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    .line 29
    invoke-direct/range {v0 .. v5}, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;-><init>(Landroid/content/Context;ZLio/github/toyota32k/utils/gesture/IUtManipulationTarget;FF)V

    return-void
.end method

.method public constructor <init>(ZLio/github/toyota32k/utils/gesture/IUtManipulationTarget;FF)V
    .locals 7

    const-string v0, "manipulationTarget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;-><init>(Landroid/content/Context;ZLio/github/toyota32k/utils/gesture/IUtManipulationTarget;FF)V

    return-void
.end method

.method public synthetic constructor <init>(ZLio/github/toyota32k/utils/gesture/IUtManipulationTarget;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/high16 p4, 0x41200000    # 10.0f

    .line 35
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;-><init>(ZLio/github/toyota32k/utils/gesture/IUtManipulationTarget;FF)V

    return-void
.end method

.method public static synthetic setup$default(Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 48
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;->setup(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAgent()Lio/github/toyota32k/utils/gesture/UtManipulationAgent;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;->agent:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    return-object v0
.end method

.method public final getGestureInterpreter()Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;->gestureInterpreter:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    return-object v0
.end method

.method public final getManipulationTarget()Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;->manipulationTarget:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    return-object v0
.end method

.method public final setup(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IListenerBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setupMe"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;->gestureInterpreter:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    if-nez p2, :cond_0

    iget-object p2, p0, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;->manipulationTarget:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    invoke-interface {p2}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getParentView()Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->setup(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    .line 50
    iget-object p2, p0, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;->gestureInterpreter:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-virtual {p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getScrollListener()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object p2

    new-instance p3, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager$setup$1;

    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;->agent:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-direct {p3, v0}, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager$setup$1;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, p1, p3}, Lio/github/toyota32k/utils/lifecycle/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;

    .line 51
    iget-object p2, p0, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;->gestureInterpreter:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-virtual {p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getScaleListener()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object p2

    new-instance p3, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager$setup$2;

    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;->agent:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-direct {p3, v0}, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager$setup$2;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, p1, p3}, Lio/github/toyota32k/utils/lifecycle/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;

    return-object p0
.end method
