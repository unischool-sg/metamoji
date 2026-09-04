.class final Lio/github/toyota32k/media/lib/converter/Converter$execute$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Converter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/media/lib/converter/Converter;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.github.toyota32k.media.lib.converter.Converter$execute$2"
    f = "Converter.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/github/toyota32k/media/lib/converter/Converter;


# direct methods
.method constructor <init>(Lio/github/toyota32k/media/lib/converter/Converter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/toyota32k/media/lib/converter/Converter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/github/toyota32k/media/lib/converter/Converter$execute$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;->this$0:Lio/github/toyota32k/media/lib/converter/Converter;

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

    new-instance v0, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;->this$0:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-direct {v0, v1, p2}, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;-><init>(Lio/github/toyota32k/media/lib/converter/Converter;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lio/github/toyota32k/media/lib/converter/ConvertResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 416
    iget v0, v1, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;->label:I

    if-nez v0, :cond_13

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    .line 418
    :try_start_0
    sget-object v3, Lio/github/toyota32k/media/lib/track/AudioTrack;->Companion:Lio/github/toyota32k/media/lib/track/AudioTrack$Companion;

    iget-object v4, v1, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;->this$0:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v4}, Lio/github/toyota32k/media/lib/converter/Converter;->getInPath()Lio/github/toyota32k/media/lib/converter/AndroidFile;

    move-result-object v4

    iget-object v5, v1, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;->this$0:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v5}, Lio/github/toyota32k/media/lib/converter/Converter;->getAudioStrategy()Lio/github/toyota32k/media/lib/format/IAudioStrategy;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/github/toyota32k/media/lib/track/AudioTrack$Companion;->create(Lio/github/toyota32k/media/lib/converter/AndroidFile;Lio/github/toyota32k/media/lib/format/IAudioStrategy;)Lio/github/toyota32k/media/lib/track/AudioTrack;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    iget-object v4, v1, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;->this$0:Lio/github/toyota32k/media/lib/converter/Converter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    move-object v5, v3

    check-cast v5, Lio/github/toyota32k/media/lib/track/AudioTrack;

    .line 419
    sget-object v6, Lio/github/toyota32k/media/lib/track/VideoTrack;->Companion:Lio/github/toyota32k/media/lib/track/VideoTrack$Companion;

    invoke-virtual {v4}, Lio/github/toyota32k/media/lib/converter/Converter;->getInPath()Lio/github/toyota32k/media/lib/converter/AndroidFile;

    move-result-object v7

    invoke-virtual {v4}, Lio/github/toyota32k/media/lib/converter/Converter;->getVideoStrategy()Lio/github/toyota32k/media/lib/format/IVideoStrategy;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lio/github/toyota32k/media/lib/track/VideoTrack$Companion;->create(Lio/github/toyota32k/media/lib/converter/AndroidFile;Lio/github/toyota32k/media/lib/format/IVideoStrategy;)Lio/github/toyota32k/media/lib/track/VideoTrack;

    move-result-object v6

    check-cast v6, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    move-object v7, v6

    check-cast v7, Lio/github/toyota32k/media/lib/track/VideoTrack;

    .line 420
    new-instance v8, Lio/github/toyota32k/media/lib/track/Muxer;

    invoke-virtual {v4}, Lio/github/toyota32k/media/lib/converter/Converter;->getInPath()Lio/github/toyota32k/media/lib/converter/AndroidFile;

    move-result-object v9

    invoke-virtual {v4}, Lio/github/toyota32k/media/lib/converter/Converter;->getOutPath()Lio/github/toyota32k/media/lib/converter/AndroidFile;

    move-result-object v10

    if-eqz v5, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    invoke-direct {v8, v9, v10, v12}, Lio/github/toyota32k/media/lib/track/Muxer;-><init>(Lio/github/toyota32k/media/lib/converter/AndroidFile;Lio/github/toyota32k/media/lib/converter/AndroidFile;Z)V

    check-cast v8, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object v9, v8

    check-cast v9, Lio/github/toyota32k/media/lib/track/Muxer;

    .line 421
    sget-object v10, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Progress$Companion;

    invoke-virtual {v9}, Lio/github/toyota32k/media/lib/track/Muxer;->getDurationUs()J

    move-result-wide v12

    invoke-virtual {v4}, Lio/github/toyota32k/media/lib/converter/Converter;->getTrimmingRange()Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    move-result-object v14

    invoke-virtual {v4}, Lio/github/toyota32k/media/lib/converter/Converter;->getOnProgress()Lkotlin/jvm/functions/Function1;

    move-result-object v15

    invoke-virtual {v10, v12, v13, v14, v15}, Lio/github/toyota32k/media/lib/converter/Converter$Progress$Companion;->create(JLio/github/toyota32k/media/lib/converter/TrimmingRange;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/media/lib/converter/Converter$Progress;

    move-result-object v10

    .line 422
    invoke-virtual {v4}, Lio/github/toyota32k/media/lib/converter/Converter;->getTrimmingRange()Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    move-result-object v12

    invoke-virtual {v7, v12}, Lio/github/toyota32k/media/lib/track/VideoTrack;->setTrimmingRange(Lio/github/toyota32k/media/lib/converter/TrimmingRange;)V

    if-nez v5, :cond_1

    goto :goto_1

    .line 423
    :cond_1
    invoke-virtual {v4}, Lio/github/toyota32k/media/lib/converter/Converter;->getTrimmingRange()Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    move-result-object v4

    invoke-virtual {v5, v4}, Lio/github/toyota32k/media/lib/track/AudioTrack;->setTrimmingRange(Lio/github/toyota32k/media/lib/converter/TrimmingRange;)V

    .line 427
    :goto_1
    new-instance v4, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;

    invoke-direct {v4, v9, v7, v5}, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;-><init>(Lio/github/toyota32k/media/lib/track/Muxer;Lio/github/toyota32k/media/lib/track/VideoTrack;Lio/github/toyota32k/media/lib/track/AudioTrack;)V

    :cond_2
    :goto_2
    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    .line 428
    :cond_3
    :goto_3
    invoke-virtual {v4}, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->getEos()Z

    move-result v17

    if-nez v17, :cond_10

    .line 429
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 437
    invoke-virtual {v4, v0}, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->next(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 438
    invoke-virtual {v7}, Lio/github/toyota32k/media/lib/track/VideoTrack;->getDecoder()Lio/github/toyota32k/media/lib/codec/VideoDecoder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/github/toyota32k/media/lib/codec/VideoDecoder;->getEos()Z

    move-result v17

    if-eqz v17, :cond_3

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Lio/github/toyota32k/media/lib/track/AudioTrack;->getDecoder()Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    move-result-object v17

    if-nez v17, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual/range {v17 .. v17}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getEos()Z

    move-result v17

    if-nez v17, :cond_6

    goto :goto_3

    :cond_6
    :goto_4
    add-int/lit8 v11, v16, 0x1

    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-gez v16, :cond_7

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    goto :goto_5

    .line 442
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    const-wide/16 v18, 0x3a98

    cmp-long v16, v16, v18

    if-lez v16, :cond_a

    const/16 v12, 0x3e8

    if-le v11, v12, :cond_a

    .line 443
    sget-object v12, Lio/github/toyota32k/media/lib/converter/Converter;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Companion;

    invoke-virtual {v12}, Lio/github/toyota32k/media/lib/converter/Converter$Companion;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v12

    const-string v13, "decoders reached EOS but encoder not working ... forced to stop muxer"

    invoke-virtual {v12, v13}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v7}, Lio/github/toyota32k/media/lib/track/VideoTrack;->getEncoder()Lio/github/toyota32k/media/lib/codec/VideoEncoder;

    move-result-object v12

    invoke-virtual {v12, v9}, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->forceEos(Lio/github/toyota32k/media/lib/track/Muxer;)Z

    if-nez v5, :cond_8

    goto :goto_5

    .line 445
    :cond_8
    invoke-virtual {v5}, Lio/github/toyota32k/media/lib/track/AudioTrack;->getEncoder()Lio/github/toyota32k/media/lib/codec/AudioEncoder;

    move-result-object v12

    if-nez v12, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v12, v9}, Lio/github/toyota32k/media/lib/codec/AudioEncoder;->forceEos(Lio/github/toyota32k/media/lib/track/Muxer;)Z

    move-result v12

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    :cond_a
    :goto_5
    move/from16 v16, v11

    goto :goto_3

    :cond_b
    if-eqz v10, :cond_2

    .line 456
    invoke-virtual {v7}, Lio/github/toyota32k/media/lib/track/VideoTrack;->getEncoder()Lio/github/toyota32k/media/lib/codec/VideoEncoder;

    move-result-object v11

    invoke-virtual {v11}, Lio/github/toyota32k/media/lib/codec/VideoEncoder;->getWrittenPresentationTimeUs()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->setVideoProgressInUs(J)V

    if-nez v5, :cond_c

    :goto_6
    move-object v11, v2

    goto :goto_7

    .line 457
    :cond_c
    invoke-virtual {v5}, Lio/github/toyota32k/media/lib/track/AudioTrack;->getEncoder()Lio/github/toyota32k/media/lib/codec/AudioEncoder;

    move-result-object v11

    if-nez v11, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v11}, Lio/github/toyota32k/media/lib/codec/AudioEncoder;->getWrittenPresentationTimeUs()J

    move-result-wide v11

    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v11

    :goto_7
    if-nez v11, :cond_e

    invoke-virtual {v10}, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->getVideoProgressInUs()J

    move-result-wide v11

    goto :goto_8

    :cond_e
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    :goto_8
    invoke-virtual {v10, v11, v12}, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->setAudioProgressInUs(J)V

    goto/16 :goto_2

    .line 430
    :cond_f
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v4, "cancelled"

    invoke-direct {v0, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    if-nez v10, :cond_11

    goto :goto_9

    .line 461
    :cond_11
    invoke-virtual {v10}, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->finish()V

    .line 462
    :goto_9
    sget-object v0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->Companion:Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;->getSucceeded()Lio/github/toyota32k/media/lib/converter/ConvertResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 420
    :try_start_4
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 419
    :try_start_5
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 418
    :try_start_6
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    return-object v0

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 420
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-static {v8, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    move-object v4, v0

    .line 419
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-static {v6, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    move-object v4, v0

    .line 418
    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    move-object v3, v0

    .line 466
    sget-object v0, Lio/github/toyota32k/media/lib/converter/Converter;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/Converter$Companion;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v0, v3, v2, v4, v2}, Lio/github/toyota32k/media/lib/utils/UtLog;->stackTrace$default(Lio/github/toyota32k/media/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 467
    iget-object v0, v1, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;->this$0:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/Converter;->getDeleteOutputOnError()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 469
    :try_start_d
    iget-object v0, v1, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;->this$0:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/Converter;->getOutPath()Lio/github/toyota32k/media/lib/converter/AndroidFile;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/AndroidFile;->delete()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v0

    .line 471
    sget-object v2, Lio/github/toyota32k/media/lib/converter/Converter;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Companion;

    invoke-virtual {v2}, Lio/github/toyota32k/media/lib/converter/Converter$Companion;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v2

    iget-object v4, v1, Lio/github/toyota32k/media/lib/converter/Converter$execute$2;->this$0:Lio/github/toyota32k/media/lib/converter/Converter;

    invoke-virtual {v4}, Lio/github/toyota32k/media/lib/converter/Converter;->getOutPath()Lio/github/toyota32k/media/lib/converter/AndroidFile;

    move-result-object v4

    const-string v5, "cannot delete output file: "

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lio/github/toyota32k/media/lib/utils/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 474
    :cond_12
    :goto_a
    sget-object v0, Lio/github/toyota32k/media/lib/converter/ConvertResult;->Companion:Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;

    invoke-virtual {v0, v3}, Lio/github/toyota32k/media/lib/converter/ConvertResult$Companion;->error(Ljava/lang/Throwable;)Lio/github/toyota32k/media/lib/converter/ConvertResult;

    move-result-object v0

    return-object v0

    .line 417
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
