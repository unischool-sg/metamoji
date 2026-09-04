.class final Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtShortcut.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.metamoji.nt.NtShortcut$handleRequestMMJLoc$1$1$1"
    f = "NtShortcut.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x61,
        0x63
    }
    m = "invokeSuspend"
    n = {
        "r3",
        "$i$a$-use-NtShortcut$handleRequestMMJLoc$1$1$1$1",
        "r3",
        "activity",
        "$i$a$-use-NtShortcut$handleRequestMMJLoc$1$1$1$1"
    }
    s = {
        "L$3",
        "I$0",
        "L$2",
        "L$3",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $request3:Lcom/metamoji/cm/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/nt/INtRequestUri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $result:Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/nt/NtShortcut;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/SharedReference;Lcom/metamoji/nt/NtShortcut;Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/nt/INtRequestUri;",
            ">;",
            "Lcom/metamoji/nt/NtShortcut;",
            "Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->$request3:Lcom/metamoji/cm/SharedReference;

    iput-object p2, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->this$0:Lcom/metamoji/nt/NtShortcut;

    iput-object p3, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->$result:Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

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

    new-instance p1, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;

    iget-object v0, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->$request3:Lcom/metamoji/cm/SharedReference;

    iget-object v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->this$0:Lcom/metamoji/nt/NtShortcut;

    iget-object v2, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->$result:Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;-><init>(Lcom/metamoji/cm/SharedReference;Lcom/metamoji/nt/NtShortcut;Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 92
    iget v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$3:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/cm/SharedReference;

    iget-object v0, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

    iget-object v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->I$0:I

    iget-object v3, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/cm/SharedReference;

    iget-object v4, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

    iget-object v5, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/metamoji/nt/NtShortcut;

    iget-object v6, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/io/Closeable;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v6

    move v6, v1

    move-object v1, v7

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v6

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->$request3:Lcom/metamoji/cm/SharedReference;

    move-object v1, p1

    check-cast v1, Ljava/io/Closeable;

    iget-object v5, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->this$0:Lcom/metamoji/nt/NtShortcut;

    iget-object p1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->$result:Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

    :try_start_2
    move-object v4, v1

    check-cast v4, Lcom/metamoji/cm/SharedReference;

    .line 96
    invoke-virtual {v4}, Lcom/metamoji/cm/SharedReference;->get()Ljava/lang/AutoCloseable;

    move-result-object v6

    check-cast v6, Lcom/metamoji/nt/INtRequestUri;

    invoke-interface {v6}, Lcom/metamoji/nt/INtRequestUri;->finishActivity()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 97
    iput-object v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$3:Ljava/lang/Object;

    const/4 v6, 0x0

    iput v6, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->I$0:I

    iput v3, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->label:I

    invoke-static {v5, p0}, Lcom/metamoji/nt/NtShortcut;->access$requireActivity(Lcom/metamoji/nt/NtShortcut;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, v4

    move-object v4, p1

    move-object p1, v3

    move-object v3, v7

    .line 92
    :goto_0
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 98
    invoke-static {p1}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 99
    iput-object v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$2:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->L$3:Ljava/lang/Object;

    iput v6, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->I$0:I

    iput v2, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;->label:I

    invoke-static {v5, p1, p0}, Lcom/metamoji/nt/NtShortcut;->access$savePausingDocument(Lcom/metamoji/nt/NtShortcut;Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object v0, v4

    .line 101
    :goto_2
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->getDriveId()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->getDocId()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->getPageId()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {p1, v2, v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->navigateToDrive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 108
    :cond_5
    invoke-virtual {v4}, Lcom/metamoji/cm/SharedReference;->get()Ljava/lang/AutoCloseable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/INtRequestUri;

    invoke-interface {p1}, Lcom/metamoji/nt/INtRequestUri;->callStartupActivity()V

    .line 110
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x0

    .line 93
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 111
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception p1

    .line 93
    :goto_4
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
