.class public final Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;
.super Ljava/lang/Object;
.source "UtImmortalSimpleTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JJ\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\'\u0010\u000b\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000c\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0010\u0011JA\u0010\u0012\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\'\u0010\u000b\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000c\u00a2\u0006\u0002\u0008\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0013JG\u0010\u0014\u001a\u0002H\u0015\"\u0004\u0008\u0000\u0010\u00152\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\'\u0010\u000b\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00150\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000c\u00a2\u0006\u0002\u0008\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0013JY\u0010\u0014\u001a\u0002H\u0015\"\u0004\u0008\u0000\u0010\u00152\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u0002H\u00152\'\u0010\u000b\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00150\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000c\u00a2\u0006\u0002\u0008\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0018R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;",
        "",
        "<init>",
        "()V",
        "defTaskName",
        "",
        "run",
        "Lkotlinx/coroutines/Job;",
        "taskName",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "callback",
        "Lkotlin/Function2;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;",
        "runAsync",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "executeAsync",
        "T",
        "allowSequential",
        "defResult",
        "(Ljava/lang/String;ZLjava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "dialog"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;-><init>()V

    return-void
.end method

.method public static synthetic executeAsync$default(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 37
    const-string p1, "UtImmortalSimpleTask"

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->executeAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic executeAsync$default(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;Ljava/lang/String;ZLjava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 47
    const-string p1, "UtImmortalSimpleTask"

    :cond_0
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->executeAsync(Ljava/lang/String;ZLjava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic run$default(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 23
    const-string p1, "UtImmortalSimpleTask"

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->run(Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic runAsync$default(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 30
    const-string p1, "UtImmortalSimpleTask"

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->runAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final executeAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;

    iget v1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;-><init>(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 37
    iget v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iget-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;->L$0:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 40
    new-instance v2, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    .line 43
    new-instance v4, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$2;

    const/4 v5, 0x0

    invoke-direct {v4, p3, p2, v5}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 40
    invoke-direct {v2, p1, v3, v4}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 43
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$1;->label:I

    invoke-virtual {v2, v0}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->fireAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p3

    .line 44
    :goto_1
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$TResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final executeAsync(Ljava/lang/String;ZLjava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "ZTT;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;

    iget v1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;

    invoke-direct {v0, p0, p5}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;-><init>(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 47
    iget v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->L$2:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iget-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->L$1:Ljava/lang/Object;

    iget-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->L$0:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    new-instance p5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p3, p5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 49
    new-instance v2, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    .line 52
    new-instance v4, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$4;

    const/4 v5, 0x0

    invoke-direct {v4, p5, p4, v5}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 49
    invoke-direct {v2, p1, p2, v4}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 52
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->L$0:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->L$1:Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->L$2:Ljava/lang/Object;

    iput-object p5, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->L$3:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->Z$0:Z

    iput v3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion$executeAsync$3;->label:I

    invoke-virtual {v2, v0}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->fireAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p5

    .line 53
    :goto_1
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p1
.end method

.method public final run(Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    const-string v0, "taskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-direct {v0, p1, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, p2}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->fire(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final runAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->fireAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
