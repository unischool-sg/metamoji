.class final Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtResourceDownloadManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/dl/NtResourceDownloadManager;->download()Z
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
    c = "com.metamoji.nt.dl.NtResourceDownloadManager$download$1"
    f = "NtResourceDownloadManager.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x3,
        0x3
    }
    l = {
        0x7a,
        0x85,
        0x85,
        0x85
    }
    m = "invokeSuspend"
    n = {
        "$this$runBlocking",
        "tempDir",
        "dir",
        "t",
        "result",
        "$this$runBlocking",
        "tempDir",
        "$this$runBlocking",
        "tempDir",
        "$this$runBlocking",
        "tempDir"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$4",
        "I$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/nt/dl/NtResourceDownloadManager;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/dl/NtResourceDownloadManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/dl/NtResourceDownloadManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;

    iget-object v1, p0, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    invoke-direct {v0, v1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;-><init>(Lcom/metamoji/nt/dl/NtResourceDownloadManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 104
    iget v0, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->label:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v8, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v2, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    iget v0, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->I$0:I

    iget-object v2, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    iget v0, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->I$0:I

    iget-object v10, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    iget-object v10, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/io/File;

    iget-object v12, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/io/File;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    :try_start_1
    sget-object v0, Lcom/metamoji/nt/dl/NtDownloadUtil;->INSTANCE:Lcom/metamoji/nt/dl/NtDownloadUtil;

    invoke-static {v0, v9, v8, v9}, Lcom/metamoji/nt/dl/NtDownloadUtil;->createTempDirectory$default(Lcom/metamoji/nt/dl/NtDownloadUtil;Ljava/lang/String;ILjava/lang/Object;)Ljava/io/File;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v12, :cond_9

    .line 110
    :try_start_2
    iget-object v0, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    invoke-static {v0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->access$getTargets$p(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v10, v0

    move v0, v8

    move-object v11, v12

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    .line 111
    iget-object v14, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    invoke-static {v14}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->access$getCanceller$p(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)Lcom/metamoji/nt/dl/INtDownloadCanceller;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-interface {v14}, Lcom/metamoji/nt/dl/INtDownloadCanceller;->isCancelled()Z

    move-result v14

    if-ne v14, v8, :cond_4

    move v14, v8

    goto :goto_1

    :cond_4
    move v14, v7

    :goto_1
    if-eqz v14, :cond_5

    .line 112
    const-string v0, "NtResourceDownloadManager.download(): cancelled by canceller."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    :goto_2
    move v0, v7

    goto :goto_4

    .line 116
    :cond_5
    iget-object v14, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    invoke-static {v14}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->access$getCancelling(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 117
    const-string v0, "NtResourceDownloadManager.download(): cancel cancellable targets."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 121
    :cond_6
    iget-object v14, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-object v15, v13

    check-cast v15, Lcom/metamoji/nt/dl/INtCancellableDownloader;

    invoke-static {v14, v15}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->access$setCurrentCancellable$p(Lcom/metamoji/nt/dl/NtResourceDownloadManager;Lcom/metamoji/nt/dl/INtCancellableDownloader;)V

    .line 122
    iget-object v14, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    invoke-static {v14}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->access$getCanceller$p(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)Lcom/metamoji/nt/dl/INtDownloadCanceller;

    move-result-object v14

    move-object v15, v1

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$3:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$4:Ljava/lang/Object;

    iput v0, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->I$0:I

    iput v8, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->label:I

    invoke-virtual {v13, v11, v14, v15}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->download(Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, v3, :cond_7

    goto/16 :goto_7

    :cond_7
    :goto_3
    const/4 v4, 0x4

    goto :goto_0

    .line 129
    :cond_8
    :goto_4
    invoke-static {v12}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 130
    iget-object v4, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    monitor-enter v2

    .line 131
    :try_start_3
    sget-object v5, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->COMPLETED:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    invoke-static {v4, v5}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->access$setPreCheckResult$p(Lcom/metamoji/nt/dl/NtResourceDownloadManager;Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;)V

    .line 132
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    monitor-exit v2

    .line 133
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1$2;

    iget-object v10, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    invoke-direct {v5, v10, v9}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1$2;-><init>(Lcom/metamoji/nt/dl/NtResourceDownloadManager;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v10, v1

    check-cast v10, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$0:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$4:Ljava/lang/Object;

    iput v0, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->I$0:I

    iput v6, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->label:I

    invoke-static {v4, v5, v10}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_b

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    .line 130
    monitor-exit v2

    throw v0

    .line 107
    :cond_9
    :try_start_4
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v4, "NtResourceDownloadManager: temporary directory not created."

    invoke-direct {v0, v4}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v12, v9

    .line 126
    :goto_5
    :try_start_5
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 129
    invoke-static {v12}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 130
    iget-object v0, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    monitor-enter v2

    .line 131
    :try_start_6
    sget-object v4, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->COMPLETED:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    invoke-static {v0, v4}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->access$setPreCheckResult$p(Lcom/metamoji/nt/dl/NtResourceDownloadManager;Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;)V

    .line 132
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 130
    monitor-exit v2

    .line 133
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1$2;

    iget-object v6, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    invoke-direct {v4, v6, v9}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1$2;-><init>(Lcom/metamoji/nt/dl/NtResourceDownloadManager;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$0:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$4:Ljava/lang/Object;

    iput v7, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->I$0:I

    iput v5, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->label:I

    invoke-static {v0, v4, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    goto :goto_7

    :cond_a
    move v0, v7

    :cond_b
    :goto_6
    if-eqz v0, :cond_c

    move v7, v8

    :cond_c
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catchall_3
    move-exception v0

    .line 130
    monitor-exit v2

    throw v0

    :catchall_4
    move-exception v0

    .line 129
    invoke-static {v12}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 130
    iget-object v4, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    monitor-enter v2

    .line 131
    :try_start_7
    sget-object v5, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;->COMPLETED:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;

    invoke-static {v4, v5}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->access$setPreCheckResult$p(Lcom/metamoji/nt/dl/NtResourceDownloadManager;Lcom/metamoji/nt/dl/NtResourceDownloaderBase$PreCheckResult;)V

    .line 132
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 130
    monitor-exit v2

    .line 133
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1$2;

    iget-object v6, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    invoke-direct {v5, v6, v9}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1$2;-><init>(Lcom/metamoji/nt/dl/NtResourceDownloadManager;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$0:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->L$4:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager$download$1;->label:I

    invoke-static {v4, v5, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_d

    :goto_7
    return-object v3

    :cond_d
    :goto_8
    throw v0

    :catchall_5
    move-exception v0

    .line 130
    monitor-exit v2

    throw v0
.end method
