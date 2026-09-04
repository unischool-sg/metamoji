.class public final Landroidx/media3/transformer/ExperimentalFrameExtractor;
.super Ljava/lang/Object;
.source "ExperimentalFrameExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;,
        Landroidx/media3/transformer/ExperimentalFrameExtractor$Frame;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final configuration:Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;

.field private final context:Landroid/content/Context;

.field private effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private mediaItem:Landroidx/media3/common/MediaItem;

.field private final released:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->context:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->configuration:Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;

    .line 197
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 198
    invoke-static {}, Landroidx/media3/inspector/FrameExtractorInternal;->getInstance()Landroidx/media3/inspector/FrameExtractorInternal;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/inspector/FrameExtractorInternal;->addReference()V

    return-void
.end method

.method static synthetic lambda$getFrame$0(Landroidx/media3/inspector/FrameExtractor$Frame;)Landroidx/media3/transformer/ExperimentalFrameExtractor$Frame;
    .locals 4

    .line 259
    new-instance v0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Frame;

    iget-wide v1, p0, Landroidx/media3/inspector/FrameExtractor$Frame;->presentationTimeMs:J

    iget-object p0, p0, Landroidx/media3/inspector/FrameExtractor$Frame;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Landroidx/media3/transformer/ExperimentalFrameExtractor$Frame;-><init>(JLandroid/graphics/Bitmap;Landroidx/media3/transformer/ExperimentalFrameExtractor$1;)V

    return-object v0
.end method


# virtual methods
.method public getFrame(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/transformer/ExperimentalFrameExtractor$Frame;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->configuration:Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;

    iget-object v0, v0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/transformer/ExperimentalFrameExtractor;->getFrame(JLandroidx/media3/exoplayer/SeekParameters;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public getFrame(JLandroidx/media3/exoplayer/SeekParameters;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/media3/exoplayer/SeekParameters;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/transformer/ExperimentalFrameExtractor$Frame;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "getFrame() called on a released ExperimentalFrameExtractor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 242
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->mediaItem:Landroidx/media3/common/MediaItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->effects:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "setMediaItem must be called first."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 243
    new-instance v2, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    iget-object v3, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->context:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v5, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->effects:Ljava/util/List;

    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->configuration:Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;

    iget-object v7, v0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->configuration:Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;

    iget-object v8, v0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->configuration:Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;

    iget-boolean v9, v0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Configuration;->extractHdrFrames:Z

    move-wide v10, p1

    move-object v6, p3

    invoke-direct/range {v2 .. v11}, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;-><init>(Landroid/content/Context;Landroidx/media3/common/MediaItem;Ljava/util/List;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/GlObjectsProvider;ZJ)V

    .line 255
    invoke-static {}, Landroidx/media3/inspector/FrameExtractorInternal;->getInstance()Landroidx/media3/inspector/FrameExtractorInternal;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/media3/inspector/FrameExtractorInternal;->submitTask(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 257
    new-instance p2, Landroidx/media3/transformer/ExperimentalFrameExtractor$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroidx/media3/transformer/ExperimentalFrameExtractor$$ExternalSyntheticLambda0;-><init>()V

    .line 260
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 257
    invoke-static {p1, p2, p3}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 2

    .line 268
    iget-object v0, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-static {}, Landroidx/media3/inspector/FrameExtractorInternal;->getInstance()Landroidx/media3/inspector/FrameExtractorInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/inspector/FrameExtractorInternal;->releaseReference()V

    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 213
    iput-object p2, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor;->effects:Ljava/util/List;

    return-void
.end method
