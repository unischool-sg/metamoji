.class final Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MessageBoxTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/task/MessageBoxTask$Companion;->yesNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.metamoji.ui.task.MessageBoxTask$Companion$yesNo$4"
    f = "MessageBoxTask.kt"
    i = {}
    l = {
        0x8b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $message:Ljava/lang/String;

.field final synthetic $noLabel:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $yesLabel:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$yesLabel:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$noLabel:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;

    iget-object v1, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$message:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$yesLabel:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$noLabel:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 138
    iget v1, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 139
    iget-object p1, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$callback:Lkotlin/jvm/functions/Function1;

    sget-object v3, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    iget-object v4, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$message:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$yesLabel:Ljava/lang/String;

    iget-object v7, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->$noLabel:Ljava/lang/String;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/ui/task/MessageBoxTask$Companion$yesNo$4;->label:I

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->yesNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
