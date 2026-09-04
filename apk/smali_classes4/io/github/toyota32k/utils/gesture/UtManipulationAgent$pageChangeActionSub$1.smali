.class final Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UtManipulationAgent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->pageChangeActionSub(Lio/github/toyota32k/utils/gesture/Orientation;)Z
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
    c = "io.github.toyota32k.utils.gesture.UtManipulationAgent$pageChangeActionSub$1"
    f = "UtManipulationAgent.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x142,
        0x14c
    }
    m = "invokeSuspend"
    n = {
        "slideOutUpdater",
        "slideOut",
        "slideOutUpdater",
        "slideInUpdater",
        "slideOut",
        "slideIn"
    }
    nl = {
        0x143,
        0x14f
    }
    s = {
        "L$0",
        "F$0",
        "L$0",
        "L$1",
        "F$0",
        "F$1"
    }
    v = 0x2
.end annotation


# instance fields
.field final synthetic $c:F

.field final synthetic $contentSize:F

.field final synthetic $direction:Lio/github/toyota32k/utils/gesture/Direction;

.field final synthetic $orientation:Lio/github/toyota32k/utils/gesture/Orientation;

.field F$0:F

.field F$1:F

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;


# direct methods
.method constructor <init>(FFLio/github/toyota32k/utils/gesture/Orientation;Lio/github/toyota32k/utils/gesture/UtManipulationAgent;Lio/github/toyota32k/utils/gesture/Direction;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lio/github/toyota32k/utils/gesture/Orientation;",
            "Lio/github/toyota32k/utils/gesture/UtManipulationAgent;",
            "Lio/github/toyota32k/utils/gesture/Direction;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$contentSize:F

    iput p2, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$c:F

    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$orientation:Lio/github/toyota32k/utils/gesture/Orientation;

    iput-object p4, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    iput-object p5, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$direction:Lio/github/toyota32k/utils/gesture/Direction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;FFF)Lkotlin/Unit;
    .locals 0

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    .line 318
    invoke-static {p0, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setTranslationX(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final invokeSuspend$lambda$1(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;FFF)Lkotlin/Unit;
    .locals 0

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    .line 320
    invoke-static {p0, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setTranslationY(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final invokeSuspend$lambda$2(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;FF)Lkotlin/Unit;
    .locals 0

    mul-float/2addr p2, p1

    sub-float/2addr p1, p2

    .line 328
    invoke-static {p0, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setTranslationX(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final invokeSuspend$lambda$3(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;FF)Lkotlin/Unit;
    .locals 0

    mul-float/2addr p2, p1

    sub-float/2addr p1, p2

    .line 330
    invoke-static {p0, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setTranslationY(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;

    iget v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$contentSize:F

    iget v2, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$c:F

    iget-object v3, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$orientation:Lio/github/toyota32k/utils/gesture/Orientation;

    iget-object v4, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    iget-object v5, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$direction:Lio/github/toyota32k/utils/gesture/Direction;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;-><init>(FFLio/github/toyota32k/utils/gesture/Orientation;Lio/github/toyota32k/utils/gesture/UtManipulationAgent;Lio/github/toyota32k/utils/gesture/Direction;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 314
    iget v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->label:I

    const-wide/16 v2, 0x96

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->F$0:F

    iget-object v6, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 316
    :try_start_2
    iget p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$contentSize:F

    iget v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$c:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr p1, v1

    iget v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$c:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, p1

    .line 317
    iget-object p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$orientation:Lio/github/toyota32k/utils/gesture/Orientation;

    sget-object v9, Lio/github/toyota32k/utils/gesture/Orientation;->Horizontal:Lio/github/toyota32k/utils/gesture/Orientation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v10, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    if-ne p1, v9, :cond_3

    :try_start_3
    iget p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$c:F

    new-instance v9, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1$$ExternalSyntheticLambda0;

    invoke-direct {v9, v10, p1, v1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1$$ExternalSyntheticLambda0;-><init>(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;FF)V

    goto :goto_0

    :cond_3
    iget p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$c:F

    new-instance v9, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1$$ExternalSyntheticLambda1;

    invoke-direct {v9, v10, p1, v1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1$$ExternalSyntheticLambda1;-><init>(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;FF)V

    .line 322
    :goto_0
    iget-object p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-static {p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$getAnimationHandler$p(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;)Lio/github/toyota32k/utils/gesture/UtManipulationAgent$AnimationHandler;

    move-result-object p1

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->L$0:Ljava/lang/Object;

    iput v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->F$0:F

    iput v6, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->label:I

    invoke-virtual {p1, v2, v3, v9, v10}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$AnimationHandler;->suspendStart(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_4

    :cond_4
    move-object v6, v9

    .line 323
    :goto_1
    iget-object p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-static {p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$getTargetViewInfo$p(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;)Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    move-result-object p1

    iget-object v9, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$orientation:Lio/github/toyota32k/utils/gesture/Orientation;

    iget-object v10, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$direction:Lio/github/toyota32k/utils/gesture/Direction;

    invoke-interface {p1, v9, v10}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->changePage(Lio/github/toyota32k/utils/gesture/Orientation;Lio/github/toyota32k/utils/gesture/Direction;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 324
    iget-object p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-static {p1, v7}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setScale(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    .line 325
    iget p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$contentSize:F

    neg-float p1, p1

    iget v9, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$c:F

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    mul-float/2addr p1, v9

    .line 326
    iget-object v9, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$orientation:Lio/github/toyota32k/utils/gesture/Orientation;

    sget-object v10, Lio/github/toyota32k/utils/gesture/Orientation;->Horizontal:Lio/github/toyota32k/utils/gesture/Orientation;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v11, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    if-ne v9, v10, :cond_5

    :try_start_4
    invoke-static {v11, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setTranslationX(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    goto :goto_2

    :cond_5
    invoke-static {v11, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setTranslationY(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    .line 327
    :goto_2
    iget-object v9, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->$orientation:Lio/github/toyota32k/utils/gesture/Orientation;

    sget-object v10, Lio/github/toyota32k/utils/gesture/Orientation;->Horizontal:Lio/github/toyota32k/utils/gesture/Orientation;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v11, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    if-ne v9, v10, :cond_6

    :try_start_5
    new-instance v9, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1$$ExternalSyntheticLambda2;

    invoke-direct {v9, v11, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1$$ExternalSyntheticLambda2;-><init>(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    goto :goto_3

    :cond_6
    new-instance v9, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1$$ExternalSyntheticLambda3;

    invoke-direct {v9, v11, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1$$ExternalSyntheticLambda3;-><init>(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    .line 332
    :goto_3
    iget-object v10, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-static {v10}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$getAnimationHandler$p(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;)Lio/github/toyota32k/utils/gesture/UtManipulationAgent$AnimationHandler;

    move-result-object v10

    move-object v11, p0

    check-cast v11, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->L$0:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->L$1:Ljava/lang/Object;

    iput v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->F$0:F

    iput p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->F$1:F

    iput v5, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->label:I

    invoke-virtual {v10, v2, v3, v9, v11}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$AnimationHandler;->suspendStart(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne p1, v0, :cond_7

    :goto_4
    return-object v0

    .line 335
    :cond_7
    :goto_5
    iget-object p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-static {p1, v4}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setChangingPageNow$p(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;Z)V

    .line 336
    iget-object p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-static {p1, v8}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setTranslationX(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    .line 337
    iget-object p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-static {p1, v8}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setTranslationY(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    .line 338
    iget-object p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-static {p1, v7}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setScale(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    .line 340
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 335
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-static {v0, v4}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setChangingPageNow$p(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;Z)V

    .line 336
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-static {v0, v8}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setTranslationX(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    .line 337
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-static {v0, v8}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setTranslationY(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    .line 338
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->this$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-static {v0, v7}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->access$setScale(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V

    throw p1
.end method
