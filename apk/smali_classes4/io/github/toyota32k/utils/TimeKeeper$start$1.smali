.class final Lio/github/toyota32k/utils/TimeKeeper$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TimeKeeper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/utils/TimeKeeper;->start(JZZLkotlin/jvm/functions/Function0;)V
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
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.github.toyota32k.utils.TimeKeeper$start$1"
    f = "TimeKeeper.kt"
    i = {
        0x0,
        0x1,
        0x1
    }
    l = {
        0x38,
        0x41
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "$this$launch",
        "remain"
    }
    nl = {
        0x39,
        0x43
    }
    s = {
        "L$0",
        "L$0",
        "J$0"
    }
    v = 0x2
.end annotation


# instance fields
.field final synthetic $onTimeout:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $repeat:Z

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/github/toyota32k/utils/TimeKeeper;


# direct methods
.method constructor <init>(Lio/github/toyota32k/utils/TimeKeeper;Lkotlin/jvm/functions/Function0;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/toyota32k/utils/TimeKeeper;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/github/toyota32k/utils/TimeKeeper$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->this$0:Lio/github/toyota32k/utils/TimeKeeper;

    iput-object p2, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->$onTimeout:Lkotlin/jvm/functions/Function0;

    iput-boolean p3, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->$repeat:Z

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

    new-instance v0, Lio/github/toyota32k/utils/TimeKeeper$start$1;

    iget-object v1, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->this$0:Lio/github/toyota32k/utils/TimeKeeper;

    iget-object v2, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->$onTimeout:Lkotlin/jvm/functions/Function0;

    iget-boolean v3, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->$repeat:Z

    invoke-direct {v0, v1, v2, v3, p2}, Lio/github/toyota32k/utils/TimeKeeper$start$1;-><init>(Lio/github/toyota32k/utils/TimeKeeper;Lkotlin/jvm/functions/Function0;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/TimeKeeper$start$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/TimeKeeper$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/github/toyota32k/utils/TimeKeeper$start$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/github/toyota32k/utils/TimeKeeper$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 53
    iget v2, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->this$0:Lio/github/toyota32k/utils/TimeKeeper;

    invoke-static {p1}, Lio/github/toyota32k/utils/TimeKeeper;->access$getLogger(Lio/github/toyota32k/utils/TimeKeeper;)Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    const-string v2, "started"

    invoke-virtual {p1, v2}, Lio/github/toyota32k/logger/UtLog;->debug(Ljava/lang/String;)V

    .line 55
    :cond_3
    :goto_0
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 56
    iget-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->this$0:Lio/github/toyota32k/utils/TimeKeeper;

    invoke-static {p1}, Lio/github/toyota32k/utils/TimeKeeper;->access$getPaused$p(Lio/github/toyota32k/utils/TimeKeeper;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    new-instance v2, Lio/github/toyota32k/utils/TimeKeeper$start$1$1;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lio/github/toyota32k/utils/TimeKeeper$start$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->label:I

    invoke-static {p1, v2, v5}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    .line 57
    :cond_4
    :goto_1
    iget-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->this$0:Lio/github/toyota32k/utils/TimeKeeper;

    invoke-static {p1}, Lio/github/toyota32k/utils/TimeKeeper;->access$getTimeout$p(Lio/github/toyota32k/utils/TimeKeeper;)J

    move-result-wide v5

    iget-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->this$0:Lio/github/toyota32k/utils/TimeKeeper;

    invoke-static {p1}, Lio/github/toyota32k/utils/TimeKeeper;->access$getTimeProvider$p(Lio/github/toyota32k/utils/TimeKeeper;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    iget-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->this$0:Lio/github/toyota32k/utils/TimeKeeper;

    invoke-static {p1}, Lio/github/toyota32k/utils/TimeKeeper;->access$getStartTick$p(Lio/github/toyota32k/utils/TimeKeeper;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gtz p1, :cond_6

    .line 60
    iget-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->$onTimeout:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->$repeat:Z

    if-nez p1, :cond_5

    goto :goto_3

    .line 63
    :cond_5
    iget-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->this$0:Lio/github/toyota32k/utils/TimeKeeper;

    invoke-virtual {p1}, Lio/github/toyota32k/utils/TimeKeeper;->touch()V

    :cond_6
    const-wide/16 v7, 0x64

    .line 65
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v7

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->L$0:Ljava/lang/Object;

    iput-wide v5, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->J$0:J

    iput v3, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->label:I

    invoke-static {v7, v8, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    :goto_2
    return-object v1

    .line 67
    :cond_7
    :goto_3
    iget-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper$start$1;->this$0:Lio/github/toyota32k/utils/TimeKeeper;

    invoke-static {p1}, Lio/github/toyota32k/utils/TimeKeeper;->access$getLogger(Lio/github/toyota32k/utils/TimeKeeper;)Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    const-string v0, "finished"

    invoke-virtual {p1, v0}, Lio/github/toyota32k/logger/UtLog;->debug(Ljava/lang/String;)V

    .line 68
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
