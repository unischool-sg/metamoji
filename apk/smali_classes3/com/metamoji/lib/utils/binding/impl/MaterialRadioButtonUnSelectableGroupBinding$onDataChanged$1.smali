.class final Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MaterialRadioButtonUnSelectableGroupBinding.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->onDataChanged(Ljava/lang/Object;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaterialRadioButtonUnSelectableGroupBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialRadioButtonUnSelectableGroupBinding.kt\ncom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,97:1\n1915#2,2:98\n*S KotlinDebug\n*F\n+ 1 MaterialRadioButtonUnSelectableGroupBinding.kt\ncom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1\n*L\n51#1:98,2\n*E\n"
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
    c = "com.metamoji.lib.utils.binding.impl.MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1"
    f = "MaterialRadioButtonUnSelectableGroupBinding.kt"
    i = {}
    l = {
        0x2e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $id:I

.field final synthetic $view:Lcom/google/android/material/button/MaterialButtonToggleGroup;

.field label:I


# direct methods
.method constructor <init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->$view:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput p2, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->$id:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;

    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->$view:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iget v1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->$id:I

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 45
    iget v1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->label:I

    const-wide/16 v1, 0x32

    invoke-static {v1, v2, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 47
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->$view:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonIds()Ljava/util/List;

    move-result-object p1

    const-string v0, "getCheckedButtonIds(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->$id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->$view:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iget v1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->$id:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    .line 51
    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->$id:I

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;->$view:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 98
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_5

    goto :goto_2

    .line 52
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_4

    .line 53
    :goto_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->uncheck(I)V

    goto :goto_1

    .line 56
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
