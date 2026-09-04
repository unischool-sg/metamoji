.class public final Lcom/metamoji/ui/UiWaitScreen;
.super Ljava/lang/Object;
.source "UiProgressRing.kt"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u000c\u0012\u0008\u0012\u00060\u0003R\u00020\u00040\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000bH\u0016J\u0008\u0010\u0017\u001a\u00020\u0015H\u0016J\u0017\u0010\u0018\u001a\u00020\u00152\u000c\u0010\u0019\u001a\u0008\u0018\u00010\u0003R\u00020\u0004H\u0096\u0002J\u0008\u0010\u001a\u001a\u00020\u0015H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR$\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b8F@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/metamoji/ui/UiWaitScreen;",
        "Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;",
        "Lcom/metamoji/cm/ICmEventHandler;",
        "Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;",
        "Lcom/metamoji/ui/UiCurrentActivityManager;",
        "<init>",
        "()V",
        "TAG",
        "",
        "activeFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "getActiveFlow",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "v",
        "active",
        "getActive",
        "()Z",
        "setActive",
        "(Z)V",
        "start",
        "",
        "immediately",
        "end",
        "invoke",
        "info",
        "ensureShow",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/metamoji/ui/UiWaitScreen;

.field public static final TAG:Ljava/lang/String; = "UiProgressRing2"

.field private static final activeFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/ui/UiWaitScreen;

    invoke-direct {v0}, Lcom/metamoji/ui/UiWaitScreen;-><init>()V

    sput-object v0, Lcom/metamoji/ui/UiWaitScreen;->INSTANCE:Lcom/metamoji/ui/UiWaitScreen;

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/UiWaitScreen;->activeFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ensureShow()V
    .locals 7

    .line 71
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/ui/UiWaitScreen$ensureShow$1;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/metamoji/ui/UiWaitScreen$ensureShow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final setActive(Z)V
    .locals 1

    .line 51
    sget-object v0, Lcom/metamoji/ui/UiWaitScreen;->activeFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 3

    .line 60
    sget-object v0, Lcom/metamoji/ui/UiProgressRing;->Companion:Lcom/metamoji/ui/UiProgressRing$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiProgressRing$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcom/metamoji/ui/UiWaitScreen;->setActive(Z)V

    return-void
.end method

.method public final getActive()Z
    .locals 1

    .line 50
    sget-object v0, Lcom/metamoji/ui/UiWaitScreen;->activeFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getActiveFlow()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/metamoji/ui/UiWaitScreen;->activeFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public invoke(Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;)V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/ui/UiWaitScreen;->getActive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;->getNewActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/metamoji/ui/UiWaitScreen;->ensureShow()V

    :cond_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiWaitScreen;->invoke(Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;)V

    return-void
.end method

.method public start(Z)V
    .locals 2

    .line 54
    sget-object p1, Lcom/metamoji/ui/UiProgressRing;->Companion:Lcom/metamoji/ui/UiProgressRing$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ui/UiProgressRing$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 55
    invoke-direct {p0, v1}, Lcom/metamoji/ui/UiWaitScreen;->setActive(Z)V

    .line 56
    invoke-direct {p0}, Lcom/metamoji/ui/UiWaitScreen;->ensureShow()V

    return-void
.end method
