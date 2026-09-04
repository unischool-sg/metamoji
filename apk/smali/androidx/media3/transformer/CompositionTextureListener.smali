.class final Landroidx/media3/transformer/CompositionTextureListener;
.super Ljava/lang/Object;
.source "CompositionTextureListener.java"

# interfaces
.implements Landroidx/media3/effect/GlTextureProducer$Listener;


# static fields
.field private static final TIMEOUT_MS:I = 0x64


# instance fields
.field private final composition:Landroidx/media3/transformer/Composition;

.field private final frameAggregator:Landroidx/media3/transformer/FrameAggregator;

.field private final pendingFrameInformation:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sequenceIndex:I


# direct methods
.method constructor <init>(Landroidx/media3/transformer/Composition;ILandroidx/media3/transformer/FrameAggregator;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/media3/transformer/CompositionTextureListener;->composition:Landroidx/media3/transformer/Composition;

    .line 54
    iput p2, p0, Landroidx/media3/transformer/CompositionTextureListener;->sequenceIndex:I

    .line 55
    iput-object p3, p0, Landroidx/media3/transformer/CompositionTextureListener;->frameAggregator:Landroidx/media3/transformer/FrameAggregator;

    .line 56
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/CompositionTextureListener;->pendingFrameInformation:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic lambda$onTextureRendered$0(Landroidx/media3/effect/GlTextureProducer;JLandroidx/media3/common/GlTextureInfo;)V
    .locals 0

    .line 89
    invoke-interface {p0, p1, p2}, Landroidx/media3/effect/GlTextureProducer;->releaseOutputTexture(J)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    .line 107
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionTextureListener;->pendingFrameInformation:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    .line 108
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 114
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-void

    :catch_0
    move-exception v0

    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 111
    new-instance v1, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {v1, v0}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onTextureRendered(Landroidx/media3/effect/GlTextureProducer;Landroidx/media3/common/GlTextureInfo;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    .line 74
    :try_start_0
    iget-object p5, p0, Landroidx/media3/transformer/CompositionTextureListener;->pendingFrameInformation:Ljava/util/concurrent/BlockingQueue;

    sget-object p6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x64

    .line 75
    invoke-interface {p5, v0, v1, p6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/Pair;

    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/Pair;

    .line 76
    iget-object p6, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p6, v0, p3

    if-nez p6, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    invoke-static {p6}, Lcom/google/common/base/Preconditions;->checkState(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    iget-object p5, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    .line 85
    new-instance p6, Landroidx/media3/effect/GlTextureFrame$Builder;

    .line 88
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media3/transformer/CompositionTextureListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p3, p4}, Landroidx/media3/transformer/CompositionTextureListener$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/effect/GlTextureProducer;J)V

    invoke-direct {p6, p2, v0, v1}, Landroidx/media3/effect/GlTextureFrame$Builder;-><init>(Landroidx/media3/common/GlTextureInfo;Ljava/util/concurrent/Executor;Landroidx/media3/common/util/Consumer;)V

    .line 90
    invoke-virtual {p6, p3, p4}, Landroidx/media3/effect/GlTextureFrame$Builder;->setPresentationTimeUs(J)Landroidx/media3/effect/GlTextureFrame$Builder;

    move-result-object p1

    new-instance p2, Landroidx/media3/transformer/CompositionFrameMetadata;

    iget-object p3, p0, Landroidx/media3/transformer/CompositionTextureListener;->composition:Landroidx/media3/transformer/Composition;

    iget p4, p0, Landroidx/media3/transformer/CompositionTextureListener;->sequenceIndex:I

    invoke-direct {p2, p3, p4, p5}, Landroidx/media3/transformer/CompositionFrameMetadata;-><init>(Landroidx/media3/transformer/Composition;II)V

    .line 91
    invoke-virtual {p1, p2}, Landroidx/media3/effect/GlTextureFrame$Builder;->setMetadata(Landroidx/media3/effect/Frame$Metadata;)Landroidx/media3/effect/GlTextureFrame$Builder;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroidx/media3/effect/GlTextureFrame$Builder;->build()Landroidx/media3/effect/GlTextureFrame;

    move-result-object p1

    .line 93
    iget-object p2, p0, Landroidx/media3/transformer/CompositionTextureListener;->frameAggregator:Landroidx/media3/transformer/FrameAggregator;

    iget p3, p0, Landroidx/media3/transformer/CompositionTextureListener;->sequenceIndex:I

    invoke-virtual {p2, p1, p3}, Landroidx/media3/transformer/FrameAggregator;->queueFrame(Landroidx/media3/effect/GlTextureFrame;I)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 81
    :goto_1
    new-instance p2, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {p2, p1}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 79
    new-instance p2, Landroidx/media3/common/VideoFrameProcessingException;

    invoke-direct {p2, p1}, Landroidx/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method willFlush()V
    .locals 3

    .line 132
    iget-object v0, p0, Landroidx/media3/transformer/CompositionTextureListener;->pendingFrameInformation:Ljava/util/concurrent/BlockingQueue;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method willOutputFrame(JI)V
    .locals 1

    .line 123
    iget-object v0, p0, Landroidx/media3/transformer/CompositionTextureListener;->pendingFrameInformation:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
