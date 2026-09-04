.class final Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UtActivityConnectorImmortalTaskBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "owner",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.lib.dialog.connector.UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1"
    f = "UtActivityConnectorImmortalTaskBase.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x20
    }
    m = "invokeSuspend"
    n = {
        "owner",
        "store",
        "connector"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $connectorName:Ljava/lang/String;

.field final synthetic $launch:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
            "**>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;


# direct methods
.method constructor <init>(Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
            "**>;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->this$0:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->$connectorName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->$launch:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->this$0:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;

    iget-object v2, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->$connectorName:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->$launch:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;-><init>(Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/metamoji/lib/dialog/UtDialogOwner;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->invoke(Lcom/metamoji/lib/dialog/UtDialogOwner;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;

    iget-object v0, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;

    iget-object v0, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/connector/IUtActivityConnectorStore;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    invoke-static {v0}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStoreKt;->asActivityConnectorStore(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/connector/IUtActivityConnectorStore;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 31
    iget-object v2, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->this$0:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;->getTaskName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->$connectorName:Ljava/lang/String;

    invoke-interface {p1, v2, v4}, Lcom/metamoji/lib/dialog/connector/IUtActivityConnectorStore;->getActivityConnector(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/lib/dialog/connector/UtActivityConnector;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 32
    iget-object v4, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->this$0:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;

    iget-object v5, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->$launch:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->L$3:Ljava/lang/Object;

    iput-object v5, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->L$4:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->label:I

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {v0, v3}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 33
    invoke-static {v4, v3}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;->access$setContinuation(Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;Lkotlin/coroutines/Continuation;)V

    .line 34
    invoke-interface {v5, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    return-object v0

    .line 31
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;->$connectorName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no such connector: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "task owner must be IUtActivityConnectorStore."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
