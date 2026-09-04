.class final Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UtActivityBroker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/broker/UtActivityBroker;->invoke(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;"
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
    c = "com.metamoji.lib.dialog.broker.UtActivityBroker$invoke$3"
    f = "UtActivityBroker.kt"
    i = {
        0x0,
        0x1,
        0x1
    }
    l = {
        0x50,
        0x51
    }
    m = "invokeSuspend"
    n = {
        "$this$run",
        "$this$run",
        "r"
    }
    s = {
        "L$0",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/fragment/app/FragmentActivity;",
            "TO;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $input:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/lib/dialog/broker/UtActivityBroker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/dialog/broker/UtActivityBroker<",
            "TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/metamoji/lib/dialog/broker/UtActivityBroker;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/broker/UtActivityBroker<",
            "TI;TO;>;TI;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-TO;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->this$0:Lcom/metamoji/lib/dialog/broker/UtActivityBroker;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->$input:Ljava/lang/Object;

    iput-object p3, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->$callback:Lkotlin/jvm/functions/Function2;

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

    new-instance v0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->this$0:Lcom/metamoji/lib/dialog/broker/UtActivityBroker;

    iget-object v2, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->$input:Ljava/lang/Object;

    iget-object v3, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;-><init>(Lcom/metamoji/lib/dialog/broker/UtActivityBroker;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 79
    iget v2, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    iget-object p1, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->this$0:Lcom/metamoji/lib/dialog/broker/UtActivityBroker;

    iget-object v2, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->$input:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->label:I

    invoke-virtual {p1, v2, v5}, Lcom/metamoji/lib/dialog/broker/UtActivityBroker;->invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 81
    :cond_3
    :goto_0
    move-object v2, v0

    check-cast v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->label:I

    invoke-static {v2, v5}, Lcom/metamoji/lib/dialog/task/UtTaskExtKt;->getActivity(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    :goto_1
    return-object v1

    :cond_4
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .line 79
    :goto_2
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_5

    .line 83
    iget-object v1, p0, Lcom/metamoji/lib/dialog/broker/UtActivityBroker$invoke$3;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_5
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
