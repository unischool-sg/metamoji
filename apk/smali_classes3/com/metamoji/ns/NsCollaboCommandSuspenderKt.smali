.class public final Lcom/metamoji/ns/NsCollaboCommandSuspenderKt;
.super Ljava/lang/Object;
.source "NsCollaboCommandSuspender.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002H\u0086@\u00a2\u0006\u0002\u0010\u0003\u001a2\u0010\u0004\u001a\u00020\u0005*\u0004\u0018\u00010\u00022\u001c\u0010\u0006\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007H\u0086@\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "waitForSignal",
        "",
        "Lcom/metamoji/ns/NsCollaboCommandSuspender;",
        "(Lcom/metamoji/ns/NsCollaboCommandSuspender;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "waitAndExecute",
        "",
        "fn",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lcom/metamoji/ns/NsCollaboCommandSuspender;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$waitAndExecute$getString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt;->waitAndExecute$getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final waitAndExecute(Lcom/metamoji/ns/NsCollaboCommandSuspender;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ns/NsCollaboCommandSuspender;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;

    iget v1, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;

    invoke-direct {v0, p2}, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 87
    iget v2, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/ns/NsCollaboCommandSuspender;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/ns/NsCollaboCommandSuspender;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/ns/NsCollaboCommandSuspender;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->label:I

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt;->waitForSignal(Lcom/metamoji/ns/NsCollaboCommandSuspender;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 89
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->label:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_3

    .line 97
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 92
    :cond_7
    sget-object p2, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;

    const-class v2, Lcom/metamoji/ns/NsCollaboCommandSuspender;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getName(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$2;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/ns/NsCollaboCommandSuspenderKt$waitAndExecute$1;->label:I

    invoke-virtual {p2, v2, v4, v0}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->runAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_3
    return-object v1

    .line 97
    :cond_8
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final waitAndExecute$getString(I)Ljava/lang/String;
    .locals 1

    .line 91
    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final waitForSignal(Lcom/metamoji/ns/NsCollaboCommandSuspender;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ns/NsCollaboCommandSuspender;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboCommandSuspender;->waitFor(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    .line 80
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
