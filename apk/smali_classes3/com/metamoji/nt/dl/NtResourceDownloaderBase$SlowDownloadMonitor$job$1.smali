.class final Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtResourceDownloaderBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;-><init>(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lcom/metamoji/nt/dl/INtDownloadCanceller;)V
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
    value = "SMAP\nNtResourceDownloaderBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NtResourceDownloaderBase.kt\ncom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,610:1\n1#2:611\n*E\n"
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
    c = "com.metamoji.nt.dl.NtResourceDownloaderBase$SlowDownloadMonitor$job$1"
    f = "NtResourceDownloaderBase.kt"
    i = {
        0x0,
        0x0,
        0x1
    }
    l = {
        0x19a,
        0x19d
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "cur",
        "$this$launch"
    }
    s = {
        "L$0",
        "J$0",
        "L$0"
    }
.end annotation


# instance fields
.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

.field final synthetic this$1:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    iput-object p2, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$1:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;

    iget-object v1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    iget-object v2, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$1:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    invoke-direct {v0, v1, v2, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;-><init>(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 370
    iget v3, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v6, v5

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_2
    move v6, v5

    goto/16 :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 371
    :goto_0
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 372
    iget-object v3, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    invoke-virtual {v3}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->getCanceller()Lcom/metamoji/nt/dl/INtDownloadCanceller;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/metamoji/nt/dl/INtDownloadCanceller;->isCancelled()Z

    move-result v3

    if-ne v3, v5, :cond_4

    .line 374
    iget-object v0, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$1:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".SlowDownloadMonitor.job ... cancelling with canceller."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 375
    iget-object v0, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$1:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->cancelDownload()V

    goto/16 :goto_6

    .line 377
    :cond_4
    iget-object v3, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$1:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    invoke-virtual {v3}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->getCancellableState()Z

    move-result v3

    if-nez v3, :cond_2

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 379
    iget-object v3, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$1:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    .line 380
    iget-object v8, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    invoke-static {v8, v6, v7}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->access$criteria_1_duration_remaining(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;J)Z

    move-result v8

    const/16 v9, 0x3e8

    if-ne v8, v5, :cond_5

    .line 381
    iget-object v8, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$1:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 382
    iget-object v10, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    invoke-static {v10}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->access$getInitialTime$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;)J

    move-result-wide v10

    sub-long v10, v6, v10

    int-to-long v12, v9

    div-long/2addr v10, v12

    .line 383
    iget-object v9, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    invoke-static {v9}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->access$getTotalBytes$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;)J

    move-result-wide v12

    iget-object v9, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    invoke-static {v9}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->access$getReceivedBytes$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".SlowDownloadMonitor.job ... cancel enabled (criteria-1).\n  duration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sec\n  remaining="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 381
    invoke-static {v8}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 387
    :cond_5
    iget-object v8, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    invoke-static {v8, v6, v7}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->access$criteria_2_no_response(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;J)Z

    move-result v8

    if-ne v8, v5, :cond_6

    .line 388
    iget-object v8, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$1:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 389
    iget-object v10, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    invoke-static {v10}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->access$getLatestTouch$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;)J

    move-result-wide v10

    sub-long v10, v6, v10

    int-to-long v12, v9

    div-long/2addr v10, v12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".SlowDownloadMonitor.job ... cancel enabled (criteria-2).\n  no response="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sec"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 388
    invoke-static {v8}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 393
    :cond_6
    iget-object v8, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    invoke-static {v8, v6, v7}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->access$criteria_3_ave_bit_rate(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;J)Z

    move-result v8

    if-ne v8, v5, :cond_7

    .line 394
    iget-object v8, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$1:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 395
    iget-object v10, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    invoke-static {v10}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->access$getInitialTime$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;)J

    move-result-wide v10

    sub-long v10, v6, v10

    int-to-long v12, v9

    div-long/2addr v10, v12

    .line 396
    iget-object v9, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    invoke-static {v9}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->access$getReceivedBytes$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;)J

    move-result-wide v14

    const/16 v9, 0x8

    int-to-long v4, v9

    mul-long/2addr v14, v4

    mul-long/2addr v14, v12

    iget-object v4, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    invoke-static {v4}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->access$getInitialTime$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;)J

    move-result-wide v4

    sub-long v4, v6, v4

    div-long/2addr v14, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".SlowDownloadMonitor.job ... cancel enabled (criteria-3).\n  duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sec\n  bit-rate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    .line 400
    :cond_7
    iget-object v4, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    invoke-static {v4, v6, v7}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->access$criteria_4_absolute_duration(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;J)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 401
    iget-object v4, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$1:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 402
    iget-object v5, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    invoke-static {v5}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->access$getInitialTime$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;)J

    move-result-wide v10

    sub-long v10, v6, v10

    int-to-long v8, v9

    div-long/2addr v10, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".SlowDownloadMonitor.job ... cancel enabled (criteria-4).\n  duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sec\n  (only debug)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 401
    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    .line 379
    :goto_2
    invoke-static {v3, v5}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->access$setCancellableState$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Z)V

    .line 409
    iget-object v3, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$1:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    invoke-virtual {v3}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->getCancellableState()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 410
    iget-object v3, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$1:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    sget-object v4, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;->CANCEL_ENABLED:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->L$0:Ljava/lang/Object;

    iput-wide v6, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->J$0:J

    const/4 v6, 0x1

    iput v6, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->label:I

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->fire(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_a

    goto :goto_4

    :cond_9
    const/4 v6, 0x1

    .line 413
    :cond_a
    :goto_3
    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->label:I

    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_b

    :goto_4
    return-object v0

    :cond_b
    :goto_5
    move v5, v6

    goto/16 :goto_0

    .line 415
    :cond_c
    :goto_6
    iget-object v0, v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor$job$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v3}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;->access$setJob$p(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$SlowDownloadMonitor;Lkotlinx/coroutines/Job;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 416
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    .line 415
    monitor-exit v2

    throw v0
.end method
