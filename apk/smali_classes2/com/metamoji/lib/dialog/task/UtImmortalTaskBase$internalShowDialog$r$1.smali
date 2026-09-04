.class final Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UtImmortalTaskBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->internalShowDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtImmortalTaskBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtImmortalTaskBase.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,145:1\n1#2:146\n*E\n"
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
    c = "com.metamoji.lib.dialog.task.UtImmortalTaskBase$internalShowDialog$r$1"
    f = "UtImmortalTaskBase.kt"
    i = {
        0x1
    }
    l = {
        0x84,
        0x85
    }
    m = "invokeSuspend"
    n = {
        "owner"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $dialogSource:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "TD;>;"
        }
    .end annotation
.end field

.field final synthetic $tag:Ljava/lang/String;

.field final synthetic $takeOwner:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "+TD;>;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->$takeOwner:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->this$0:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    iput-object p3, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->$dialogSource:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->$tag:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->$takeOwner:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->this$0:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    iget-object v3, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->$dialogSource:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->$tag:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 131
    iget v1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

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

    .line 132
    iget-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->$takeOwner:Lkotlin/jvm/functions/Function1;

    iput v3, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->label:I

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 131
    :cond_3
    :goto_0
    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    .line 133
    iget-object v1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->this$0:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    iget-object v3, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->$dialogSource:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->$tag:Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->L$3:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;->label:I

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    new-instance v5, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-direct {v5, v6}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v6, v5

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 134
    invoke-virtual {v1, v6}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->setContinuation(Lkotlin/coroutines/Continuation;)V

    .line 135
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/lib/dialog/IUtDialog;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/metamoji/lib/dialog/IUtDialog;->setImmortalTaskName(Ljava/lang/String;)V

    invoke-static {v3, p1, v4}, Lcom/metamoji/lib/dialog/UtDialogOwnerKt;->show(Lcom/metamoji/lib/dialog/IUtDialog;Lcom/metamoji/lib/dialog/UtDialogOwner;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v5}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_4

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4
    if-ne p1, v0, :cond_5

    :goto_1
    return-object v0

    :cond_5
    return-object p1
.end method
