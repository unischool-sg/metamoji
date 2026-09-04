.class public final Lcom/metamoji/lib/dialog/UtDialogExtKt;
.super Ljava/lang/Object;
.source "UtDialogExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u001a5\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042!\u0010\u0005\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0006\u001aE\u0010\u000b\u001a\u0004\u0018\u0001H\u000c\"\u0004\u0008\u0000\u0010\u000c*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042!\u0010\u0005\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u0002H\u000c0\u0006H\u0086@\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "showOnTask",
        "Lkotlinx/coroutines/Job;",
        "Lcom/metamoji/lib/dialog/UtDialog;",
        "tag",
        "",
        "onResult",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "dlg",
        "",
        "showAndGetResult",
        "T",
        "(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "dialog"
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
.method public static final showAndGetResult(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;

    iget v1, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;

    invoke-direct {v0, p3}, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 28
    iget v2, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialog;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialog;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 31
    sget-object p3, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;

    new-instance v4, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;

    const/4 v9, 0x0

    move-object v8, p0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$2;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->L$1:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->L$2:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showAndGetResult$1;->label:I

    invoke-virtual {p3, v5, v4, v0}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->runAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, v6

    .line 36
    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0
.end method

.method public static final showOnTask(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;

    new-instance v0, Lcom/metamoji/lib/dialog/UtDialogExtKt$showOnTask$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, p0, v2}, Lcom/metamoji/lib/dialog/UtDialogExtKt$showOnTask$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->run$default(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method
