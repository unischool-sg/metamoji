.class final Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtShortcut.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShortcut;->handleRequestSSO(Landroid/net/Uri;Lcom/metamoji/cm/SharedReference;Z)V
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
    c = "com.metamoji.nt.NtShortcut$handleRequestSSO$1$1"
    f = "NtShortcut.kt"
    i = {
        0x0
    }
    l = {
        0x80
    }
    m = "invokeSuspend"
    n = {
        "$this$run"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $param1:Ljava/lang/String;

.field final synthetic $param2:Ljava/lang/String;

.field final synthetic $param3:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->$param1:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->$param2:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->$param3:Ljava/lang/String;

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

    new-instance v0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;

    iget-object v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->$param1:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->$param2:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->$param3:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 127
    iget v2, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

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

    .line 128
    const-class p1, Lcom/metamoji/li/LoginActivity;

    new-instance v2, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;

    iget-object v4, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->$param1:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->$param2:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->$param3:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;->label:I

    invoke-virtual {v0, p1, v2, v4}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->withOwner(Ljava/lang/Class;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 136
    :cond_2
    :goto_0
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
