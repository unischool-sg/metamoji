.class public final Lcom/metamoji/ui/UiCameraBroker$take$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UiCameraBroker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/UiCameraBroker;->take(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
    value = "SMAP\nUiCameraBroker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UiCameraBroker.kt\ncom/metamoji/ui/UiCameraBroker$take$4\n+ 2 UtImmortalTaskDef.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskDefKt\n*L\n1#1,225:1\n41#2:226\n*S KotlinDebug\n*F\n+ 1 UiCameraBroker.kt\ncom/metamoji/ui/UiCameraBroker$take$4\n*L\n212#1:226\n*E\n"
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
    xi = 0xb0
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.ui.UiCameraBroker$take$4"
    f = "UiCameraBroker.kt"
    i = {
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0xd3,
        0xe2,
        0xd6
    }
    m = "invokeSuspend"
    n = {
        "file",
        "$this$withOwner$iv",
        "$i$f$withOwner",
        "file",
        "$this$withOwner$iv",
        "it",
        "activity",
        "$i$f$withOwner",
        "$i$a$-withOwner-UiCameraBroker$take$4$1"
    }
    s = {
        "L$0",
        "L$1",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $fn:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "TT;",
            "Lcom/metamoji/ui/UiCameraBroker$MediaFile;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $outputFileName:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/ui/UiCameraBroker;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/UiCameraBroker;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/UiCameraBroker;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TT;-",
            "Lcom/metamoji/ui/UiCameraBroker$MediaFile;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/UiCameraBroker$take$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->this$0:Lcom/metamoji/ui/UiCameraBroker;

    iput-object p2, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->$outputFileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->$fn:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/metamoji/ui/UiCameraBroker$take$4;

    iget-object v0, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->this$0:Lcom/metamoji/ui/UiCameraBroker;

    iget-object v1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->$outputFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->$fn:Lkotlin/jvm/functions/Function3;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/metamoji/ui/UiCameraBroker$take$4;-><init>(Lcom/metamoji/ui/UiCameraBroker;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiCameraBroker$take$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiCameraBroker$take$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/UiCameraBroker$take$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/UiCameraBroker$take$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 210
    iget v1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$4:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    iget-object v1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$3:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    iget-object v1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    iget-object v1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->I$0:I

    iget-object v4, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function3;

    iget-object v6, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    iget-object v7, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 211
    iget-object p1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->this$0:Lcom/metamoji/ui/UiCameraBroker;

    iget-object v1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->$outputFileName:Ljava/lang/String;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->label:I

    invoke-virtual {p1, v1, v6}, Lcom/metamoji/ui/UiCameraBroker;->take(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    check-cast p1, Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    if-nez p1, :cond_5

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 212
    :cond_5
    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v6

    iget-object v4, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->$fn:Lkotlin/jvm/functions/Function3;

    .line 226
    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->I$0:I

    iput v5, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->label:I

    invoke-interface {v6, v1}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    goto :goto_2

    :cond_6
    move-object v7, p1

    move-object p1, v1

    move v1, v2

    .line 210
    :goto_1
    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    .line 213
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const-string v9, "T"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object v5, v8

    check-cast v5, Landroidx/fragment/app/FragmentActivity;

    if-eqz v8, :cond_8

    move-object v5, v8

    check-cast v5, Landroidx/fragment/app/FragmentActivity;

    .line 214
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$2:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$3:Ljava/lang/Object;

    iput-object v7, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->L$4:Ljava/lang/Object;

    iput v1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->I$0:I

    iput v2, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->I$1:I

    iput v3, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->label:I

    invoke-interface {v4, v8, v7, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_2
    return-object v0

    :cond_7
    move-object v0, v7

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->dispose(Z)V

    .line 216
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 211
    iget-object p1, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->this$0:Lcom/metamoji/ui/UiCameraBroker;

    iget-object v0, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->$outputFileName:Ljava/lang/String;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/UiCameraBroker;->take(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    if-eqz p1, :cond_1

    .line 212
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/ui/UiCameraBroker$take$4;->$fn:Lkotlin/jvm/functions/Function3;

    .line 226
    invoke-interface {v0, v1}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialogOwner;

    .line 213
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    const-string v3, "T"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x0

    .line 214
    invoke-interface {v2, v0, p1, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/UiCameraBroker$MediaFile;->dispose(Z)V

    goto :goto_0

    .line 213
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 215
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 216
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 211
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
