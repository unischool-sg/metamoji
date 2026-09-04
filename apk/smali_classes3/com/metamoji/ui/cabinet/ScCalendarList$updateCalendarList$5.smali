.class final Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ScCalendarList.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ScCalendarList;->updateCalendarList(Ljava/util/List;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.metamoji.ui.cabinet.ScCalendarList$updateCalendarList$5"
    f = "ScCalendarList.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0xd0,
        0xd2
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "it",
        "task",
        "$i$a$-let-ScCalendarList$updateCalendarList$5$1",
        "$this$launch",
        "it",
        "task",
        "$i$a$-let-ScCalendarList$updateCalendarList$5$1"
    }
    s = {
        "L$0",
        "L$1",
        "L$3",
        "I$0",
        "L$0",
        "L$1",
        "L$3",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ScCalendarList;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/ScCalendarList;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/ScCalendarList;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->this$0:Lcom/metamoji/ui/cabinet/ScCalendarList;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->this$0:Lcom/metamoji/ui/cabinet/ScCalendarList;

    invoke-direct {v0, v1, p2}, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;-><init>(Lcom/metamoji/ui/cabinet/ScCalendarList;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 205
    iget v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->I$0:I

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v5

    move v5, v2

    move-object v2, p1

    move-object p1, v6

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->I$0:I

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v7

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 206
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->this$0:Lcom/metamoji/ui/cabinet/ScCalendarList;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ScCalendarList;->getTasks()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 208
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$1:Ljava/lang/Object;

    iput-object v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$2:Ljava/lang/Object;

    iput-object v6, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$3:Ljava/lang/Object;

    iput v5, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->I$0:I

    iput v4, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->label:I

    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v9, v6

    move-object v6, v2

    move v2, v5

    move-object v5, v9

    .line 209
    :goto_1
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->ensureActive(Lkotlinx/coroutines/CoroutineScope;)V

    .line 210
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->L$3:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->I$0:I

    iput v3, p0, Lcom/metamoji/ui/cabinet/ScCalendarList$updateCalendarList$5;->label:I

    invoke-interface {v5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_4

    :goto_2
    return-object v1

    :cond_4
    move v5, v2

    move-object v2, v6

    goto :goto_0

    .line 213
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
