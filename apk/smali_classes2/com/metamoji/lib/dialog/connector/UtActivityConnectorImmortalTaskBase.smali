.class public abstract Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;
.super Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;
.source "UtActivityConnectorImmortalTaskBase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J4\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u00032\u001a\u0010\t\u001a\u0016\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000b\u0012\u0004\u0012\u00020\u000c0\nH\u0086@\u00a2\u0006\u0002\u0010\rJ \u0010\u0006\u001a\u0004\u0018\u0001H\u000e\"\u0006\u0008\u0000\u0010\u000e\u0018\u00012\u0006\u0010\u0008\u001a\u00020\u0003H\u0084H\u00a2\u0006\u0002\u0010\u000fJ.\u0010\u0006\u001a\u0004\u0018\u0001H\u000e\"\u0004\u0008\u0000\u0010\u0010\"\u0006\u0008\u0001\u0010\u000e\u0018\u00012\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u0002H\u0010H\u0084H\u00a2\u0006\u0002\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
        "taskName",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "launchActivityConnector",
        "",
        "connectorName",
        "launch",
        "Lkotlin/Function1;",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnector;",
        "",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "O",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "I",
        "arg",
        "(Ljava/lang/String;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "dialog"
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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const-string v0, "taskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;-><init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static final synthetic access$setContinuation(Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;->setContinuation(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method protected final synthetic launchActivityConnector(Ljava/lang/String;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TI;",
            "Lkotlin/coroutines/Continuation<",
            "-TO;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$5;

    invoke-direct {v0, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$5;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v0, p3}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;->launchActivityConnector(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    const-string p3, "O"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object p2, p1

    check-cast p2, Ljava/lang/Object;

    return-object p1
.end method

.method protected final synthetic launchActivityConnector(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-TO;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$3;->INSTANCE:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$3;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v0, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;->launchActivityConnector(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    const-string v0, "O"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object p2, p1

    check-cast p2, Ljava/lang/Object;

    return-object p1
.end method

.method public final launchActivityConnector(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
            "**>;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;

    iget v1, v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;-><init>(Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 21
    iget v2, v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    sget-object p3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 23
    invoke-interface {p3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;->getTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 26
    sget-object v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    const-string v4, "dialog opening..."

    invoke-virtual {v2, v4}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 28
    sget-object v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getImmortalTaskScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v4, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, p2, v5}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;-><init>(Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$1;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 38
    :cond_3
    :goto_1
    sget-object p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string p2, "dialog closed"

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-object p3

    .line 24
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;->getTaskName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "task("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") is not running"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
