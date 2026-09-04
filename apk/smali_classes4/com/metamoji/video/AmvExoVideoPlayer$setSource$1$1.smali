.class final Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AmvExoVideoPlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.metamoji.video.AmvExoVideoPlayer$setSource$1$1"
    f = "AmvExoVideoPlayer.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $autoPlay:Z

.field final synthetic $playFrom:J

.field final synthetic $source:Lcom/metamoji/video/IAmvSource;

.field final synthetic $uri:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lcom/metamoji/video/AmvExoVideoPlayer;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/metamoji/video/AmvExoVideoPlayer;Lcom/metamoji/video/IAmvSource;JZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/metamoji/video/AmvExoVideoPlayer;",
            "Lcom/metamoji/video/IAmvSource;",
            "JZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    iput-object p3, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$source:Lcom/metamoji/video/IAmvSource;

    iput-wide p4, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$playFrom:J

    iput-boolean p6, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$autoPlay:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;

    iget-object v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    iget-object v3, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$source:Lcom/metamoji/video/IAmvSource;

    iget-wide v4, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$playFrom:J

    iget-boolean v6, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$autoPlay:Z

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;-><init>(Landroid/net/Uri;Lcom/metamoji/video/AmvExoVideoPlayer;Lcom/metamoji/video/IAmvSource;JZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 505
    iget v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 506
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$uri:Landroid/net/Uri;

    .line 509
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    if-nez p1, :cond_0

    .line 507
    invoke-static {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMBindings$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$source:Lcom/metamoji/video/IAmvSource;

    invoke-interface {v0}, Lcom/metamoji/video/IAmvSource;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->getSourceChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    iget-object v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$source:Lcom/metamoji/video/IAmvSource;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 510
    new-instance p1, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    .line 511
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    iget-object v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvExoVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroidx/media3/datasource/DataSource$Factory;

    .line 510
    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 512
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$uri:Landroid/net/Uri;

    invoke-static {v0}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    move-result-object p1

    const-string v0, "createMediaSource(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource;

    invoke-static {v0, p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$setMMediaSource$p(Lcom/metamoji/video/AmvExoVideoPlayer;Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 515
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMPlayer$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    .line 516
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMPlayer$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    .line 517
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMClipping$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    move-result-object p1

    if-nez p1, :cond_1

    iget-wide v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$playFrom:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 518
    :cond_1
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    iget-wide v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$playFrom:J

    invoke-static {p1, v0, v1}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$playerSeek(Lcom/metamoji/video/AmvExoVideoPlayer;J)V

    .line 520
    :cond_2
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMPlayer$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    iget-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$setSource$1$1;->$autoPlay:Z

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 522
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 505
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
