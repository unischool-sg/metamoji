.class final Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UtActivityConnectorImmortalTaskBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;->launchActivityConnector(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.metamoji.lib.dialog.connector.UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1"
    f = "UtActivityConnectorImmortalTaskBase.kt"
    i = {}
    l = {
        0x1d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
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
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->this$0:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->$connectorName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->$launch:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;

    iget-object v0, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->this$0:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->$connectorName:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->$launch:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;-><init>(Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 28
    iget v1, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->this$0:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;

    new-instance v1, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;

    iget-object v3, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->this$0:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;

    iget-object v4, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->$connectorName:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->$launch:Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1$1;-><init>(Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase$launchActivityConnector$r$1;->label:I

    invoke-virtual {p1, v1, v3}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorImmortalTaskBase;->withOwner(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method
