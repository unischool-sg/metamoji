.class public final Landroidx/media3/inspector/FrameExtractor;
.super Ljava/lang/Object;
.source "FrameExtractor.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/inspector/FrameExtractor$Builder;,
        Landroidx/media3/inspector/FrameExtractor$Frame;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final effects:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final extractHdrFrames:Z

.field private final glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

.field private final mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final released:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final seekParameters:Landroidx/media3/exoplayer/SeekParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-string v0, "media3.inspector"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/inspector/FrameExtractor$Builder;)V
    .locals 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-static {p1}, Landroidx/media3/inspector/FrameExtractor$Builder;->access$100(Landroidx/media3/inspector/FrameExtractor$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/inspector/FrameExtractor;->context:Landroid/content/Context;

    .line 214
    invoke-static {p1}, Landroidx/media3/inspector/FrameExtractor$Builder;->access$200(Landroidx/media3/inspector/FrameExtractor$Builder;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/inspector/FrameExtractor;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 215
    invoke-static {p1}, Landroidx/media3/inspector/FrameExtractor$Builder;->access$300(Landroidx/media3/inspector/FrameExtractor$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/inspector/FrameExtractor;->effects:Lcom/google/common/collect/ImmutableList;

    .line 216
    invoke-static {p1}, Landroidx/media3/inspector/FrameExtractor$Builder;->access$400(Landroidx/media3/inspector/FrameExtractor$Builder;)Landroidx/media3/exoplayer/SeekParameters;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/inspector/FrameExtractor;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 217
    invoke-static {p1}, Landroidx/media3/inspector/FrameExtractor$Builder;->access$500(Landroidx/media3/inspector/FrameExtractor$Builder;)Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/inspector/FrameExtractor;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 218
    invoke-static {p1}, Landroidx/media3/inspector/FrameExtractor$Builder;->access$600(Landroidx/media3/inspector/FrameExtractor$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/inspector/FrameExtractor;->extractHdrFrames:Z

    .line 219
    invoke-static {p1}, Landroidx/media3/inspector/FrameExtractor$Builder;->access$700(Landroidx/media3/inspector/FrameExtractor$Builder;)Landroidx/media3/common/GlObjectsProvider;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractor;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    .line 220
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractor;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 221
    invoke-static {}, Landroidx/media3/inspector/FrameExtractorInternal;->getInstance()Landroidx/media3/inspector/FrameExtractorInternal;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/inspector/FrameExtractorInternal;->addReference()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/inspector/FrameExtractor$Builder;Landroidx/media3/inspector/FrameExtractor$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Landroidx/media3/inspector/FrameExtractor;-><init>(Landroidx/media3/inspector/FrameExtractor$Builder;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 282
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractor;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-static {}, Landroidx/media3/inspector/FrameExtractorInternal;->getInstance()Landroidx/media3/inspector/FrameExtractorInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/inspector/FrameExtractorInternal;->releaseReference()V

    return-void
.end method

.method getDecoderCounters()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/exoplayer/DecoderCounters;",
            ">;"
        }
    .end annotation

    .line 290
    invoke-static {}, Landroidx/media3/inspector/FrameExtractorInternal;->getInstance()Landroidx/media3/inspector/FrameExtractorInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/inspector/FrameExtractorInternal;->getDecoderCounters()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public getFrame(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/inspector/FrameExtractor$Frame;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractor;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "getFrame() called on a released FrameExtractor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 236
    :cond_0
    new-instance v0, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    iget-object v1, p0, Landroidx/media3/inspector/FrameExtractor;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/inspector/FrameExtractor;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v3, p0, Landroidx/media3/inspector/FrameExtractor;->effects:Lcom/google/common/collect/ImmutableList;

    iget-object v4, p0, Landroidx/media3/inspector/FrameExtractor;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    iget-object v5, p0, Landroidx/media3/inspector/FrameExtractor;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-object v6, p0, Landroidx/media3/inspector/FrameExtractor;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    iget-boolean v7, p0, Landroidx/media3/inspector/FrameExtractor;->extractHdrFrames:Z

    move-wide v8, p1

    invoke-direct/range {v0 .. v9}, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;-><init>(Landroid/content/Context;Landroidx/media3/common/MediaItem;Ljava/util/List;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/GlObjectsProvider;ZJ)V

    .line 247
    invoke-static {}, Landroidx/media3/inspector/FrameExtractorInternal;->getInstance()Landroidx/media3/inspector/FrameExtractorInternal;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media3/inspector/FrameExtractorInternal;->submitTask(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnail()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/inspector/FrameExtractor$Frame;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroidx/media3/inspector/FrameExtractor;->released:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getThumbnail() called on a released FrameExtractor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 263
    :cond_0
    new-instance v1, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;

    iget-object v2, p0, Landroidx/media3/inspector/FrameExtractor;->context:Landroid/content/Context;

    iget-object v3, p0, Landroidx/media3/inspector/FrameExtractor;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v4, p0, Landroidx/media3/inspector/FrameExtractor;->effects:Lcom/google/common/collect/ImmutableList;

    sget-object v5, Landroidx/media3/exoplayer/SeekParameters;->NEXT_SYNC:Landroidx/media3/exoplayer/SeekParameters;

    iget-object v6, p0, Landroidx/media3/inspector/FrameExtractor;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-object v7, p0, Landroidx/media3/inspector/FrameExtractor;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    iget-boolean v8, p0, Landroidx/media3/inspector/FrameExtractor;->extractHdrFrames:Z

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v1 .. v10}, Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;-><init>(Landroid/content/Context;Landroidx/media3/common/MediaItem;Ljava/util/List;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/GlObjectsProvider;ZJ)V

    .line 273
    invoke-static {}, Landroidx/media3/inspector/FrameExtractorInternal;->getInstance()Landroidx/media3/inspector/FrameExtractorInternal;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/media3/inspector/FrameExtractorInternal;->submitTask(Landroidx/media3/inspector/FrameExtractorInternal$FrameExtractionRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
