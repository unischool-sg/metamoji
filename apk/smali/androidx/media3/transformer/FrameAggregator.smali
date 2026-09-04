.class Landroidx/media3/transformer/FrameAggregator;
.super Ljava/lang/Object;
.source "FrameAggregator.java"


# instance fields
.field private final downstreamConsumer:Landroidx/media3/common/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/Consumer<",
            "Ljava/util/List<",
            "Landroidx/media3/effect/GlTextureFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private final inputFrames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Queue<",
            "Landroidx/media3/effect/GlTextureFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastQueuedPresentationTimeUs:J

.field private final numSequences:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/util/Consumer<",
            "Ljava/util/List<",
            "Landroidx/media3/effect/GlTextureFrame;",
            ">;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Landroidx/media3/transformer/FrameAggregator;->numSequences:I

    .line 51
    iput-object p2, p0, Landroidx/media3/transformer/FrameAggregator;->downstreamConsumer:Landroidx/media3/common/util/Consumer;

    .line 52
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroidx/media3/transformer/FrameAggregator;->inputFrames:Landroid/util/SparseArray;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 54
    iget-object v0, p0, Landroidx/media3/transformer/FrameAggregator;->inputFrames:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private maybeAggregate()V
    .locals 10

    .line 103
    iget-object v0, p0, Landroidx/media3/transformer/FrameAggregator;->inputFrames:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/effect/GlTextureFrame;

    if-nez v0, :cond_0

    goto :goto_3

    .line 107
    :cond_0
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 108
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    const/4 v3, 0x1

    .line 109
    :goto_0
    iget-object v4, p0, Landroidx/media3/transformer/FrameAggregator;->inputFrames:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 110
    iget-object v4, p0, Landroidx/media3/transformer/FrameAggregator;->inputFrames:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    .line 111
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/effect/GlTextureFrame;

    :goto_1
    if-eqz v5, :cond_1

    .line 115
    iget-wide v6, v5, Landroidx/media3/effect/GlTextureFrame;->presentationTimeUs:J

    iget-wide v8, v0, Landroidx/media3/effect/GlTextureFrame;->presentationTimeUs:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 116
    invoke-virtual {v5}, Landroidx/media3/effect/GlTextureFrame;->release()V

    .line 117
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 118
    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/effect/GlTextureFrame;

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    goto :goto_3

    .line 126
    :cond_2
    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Landroidx/media3/transformer/FrameAggregator;->downstreamConsumer:Landroidx/media3/common/util/Consumer;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 131
    :goto_2
    iget v0, p0, Landroidx/media3/transformer/FrameAggregator;->numSequences:I

    if-ge v1, v0, :cond_4

    .line 132
    iget-object v0, p0, Landroidx/media3/transformer/FrameAggregator;->inputFrames:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public queueFrame(Landroidx/media3/effect/GlTextureFrame;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 69
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 70
    iget v2, p0, Landroidx/media3/transformer/FrameAggregator;->numSequences:I

    if-ge p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    if-nez p2, :cond_3

    .line 74
    iget-wide v0, p1, Landroidx/media3/effect/GlTextureFrame;->presentationTimeUs:J

    iget-wide v2, p0, Landroidx/media3/transformer/FrameAggregator;->lastQueuedPresentationTimeUs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 75
    invoke-virtual {p0}, Landroidx/media3/transformer/FrameAggregator;->releaseAllFrames()V

    .line 77
    :cond_2
    iget-wide v0, p1, Landroidx/media3/effect/GlTextureFrame;->presentationTimeUs:J

    iput-wide v0, p0, Landroidx/media3/transformer/FrameAggregator;->lastQueuedPresentationTimeUs:J

    .line 79
    :cond_3
    iget-object v0, p0, Landroidx/media3/transformer/FrameAggregator;->inputFrames:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-direct {p0}, Landroidx/media3/transformer/FrameAggregator;->maybeAggregate()V

    return-void
.end method

.method public releaseAllFrames()V
    .locals 2

    const/4 v0, 0x0

    .line 89
    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/FrameAggregator;->inputFrames:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 91
    :goto_1
    iget-object v1, p0, Landroidx/media3/transformer/FrameAggregator;->inputFrames:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/effect/GlTextureFrame;

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Landroidx/media3/effect/GlTextureFrame;->release()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
