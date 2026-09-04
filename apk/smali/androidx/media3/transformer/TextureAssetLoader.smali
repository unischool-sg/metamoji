.class public final Landroidx/media3/transformer/TextureAssetLoader;
.super Ljava/lang/Object;
.source "TextureAssetLoader.java"

# interfaces
.implements Landroidx/media3/transformer/AssetLoader;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

.field private final editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

.field private final format:Landroidx/media3/common/Format;

.field private final frameProcessedListener:Landroidx/media3/common/OnInputFrameProcessedListener;

.field private isEndOfStreamSignaled:Z

.field private volatile isStarted:Z

.field private isTrackAdded:Z

.field private volatile lastQueuedPresentationTimeUs:J

.field private progressState:I

.field private sampleConsumer:Landroidx/media3/transformer/SampleConsumer;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/common/Format;Landroidx/media3/common/OnInputFrameProcessedListener;)V
    .locals 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iget-wide v0, p1, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 84
    iget v0, p3, Landroidx/media3/common/Format;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v0, p3, Landroidx/media3/common/Format;->width:I

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 85
    iput-object p1, p0, Landroidx/media3/transformer/TextureAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    .line 86
    iput-object p2, p0, Landroidx/media3/transformer/TextureAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    .line 89
    invoke-virtual {p3}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object p2, p3, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 90
    invoke-static {p2}, Landroidx/media3/transformer/TransformerUtil;->getValidColor(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/ColorInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string/jumbo p2, "video/raw"

    .line 91
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/TextureAssetLoader;->format:Landroidx/media3/common/Format;

    .line 93
    iput-object p4, p0, Landroidx/media3/transformer/TextureAssetLoader;->frameProcessedListener:Landroidx/media3/common/OnInputFrameProcessedListener;

    .line 94
    iput v2, p0, Landroidx/media3/transformer/TextureAssetLoader;->progressState:I

    return-void
.end method


# virtual methods
.method public getDecoderNames()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getProgress(Landroidx/media3/transformer/ProgressHolder;)I
    .locals 4

    .line 107
    iget v0, p0, Landroidx/media3/transformer/TextureAssetLoader;->progressState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 108
    iget-wide v0, p0, Landroidx/media3/transformer/TextureAssetLoader;->lastQueuedPresentationTimeUs:J

    iget-object v2, p0, Landroidx/media3/transformer/TextureAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-wide v2, v2, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    .line 109
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/common/util/Util;->percentInt(JJ)I

    move-result v0

    iput v0, p1, Landroidx/media3/transformer/ProgressHolder;->progress:I

    .line 111
    :cond_0
    iget p1, p0, Landroidx/media3/transformer/TextureAssetLoader;->progressState:I

    return p1
.end method

.method public queueInputTexture(IJ)Z
    .locals 5

    const/4 v0, 0x0

    .line 136
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/transformer/TextureAssetLoader;->isTrackAdded:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 137
    iget-boolean v1, p0, Landroidx/media3/transformer/TextureAssetLoader;->isStarted:Z

    if-nez v1, :cond_0

    return v0

    .line 140
    :cond_0
    iget-object v1, p0, Landroidx/media3/transformer/TextureAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    iget-object v4, p0, Landroidx/media3/transformer/TextureAssetLoader;->format:Landroidx/media3/common/Format;

    invoke-interface {v1, v4, v2}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackAdded(Landroidx/media3/common/Format;I)Z

    .line 141
    iput-boolean v3, p0, Landroidx/media3/transformer/TextureAssetLoader;->isTrackAdded:Z

    .line 143
    :cond_1
    iget-object v1, p0, Landroidx/media3/transformer/TextureAssetLoader;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    if-nez v1, :cond_3

    .line 144
    iget-object v1, p0, Landroidx/media3/transformer/TextureAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    iget-object v4, p0, Landroidx/media3/transformer/TextureAssetLoader;->format:Landroidx/media3/common/Format;

    invoke-interface {v1, v4}, Landroidx/media3/transformer/AssetLoader$Listener;->onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SampleConsumer;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 148
    :cond_2
    iput-object v1, p0, Landroidx/media3/transformer/TextureAssetLoader;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    .line 149
    iget-object v4, p0, Landroidx/media3/transformer/TextureAssetLoader;->frameProcessedListener:Landroidx/media3/common/OnInputFrameProcessedListener;

    invoke-interface {v1, v4}, Landroidx/media3/transformer/SampleConsumer;->setOnInputFrameProcessedListener(Landroidx/media3/common/OnInputFrameProcessedListener;)V

    .line 152
    :cond_3
    iget-object v1, p0, Landroidx/media3/transformer/TextureAssetLoader;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/transformer/SampleConsumer;->queueInputTexture(IJ)I

    move-result p1

    if-ne p1, v2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 157
    iput-boolean v3, p0, Landroidx/media3/transformer/TextureAssetLoader;->isEndOfStreamSignaled:Z

    .line 159
    :cond_5
    iput-wide p2, p0, Landroidx/media3/transformer/TextureAssetLoader;->lastQueuedPresentationTimeUs:J
    :try_end_0
    .catch Landroidx/media3/transformer/ExportException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 164
    iget-object p2, p0, Landroidx/media3/transformer/TextureAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    const/16 p3, 0x3e8

    invoke-static {p1, p3}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 162
    iget-object p2, p0, Landroidx/media3/transformer/TextureAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    invoke-interface {p2, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    :goto_0
    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Landroidx/media3/transformer/TextureAssetLoader;->progressState:I

    return-void
.end method

.method public signalEndOfVideoInput()V
    .locals 3

    .line 176
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/transformer/TextureAssetLoader;->isEndOfStreamSignaled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Landroidx/media3/transformer/TextureAssetLoader;->isEndOfStreamSignaled:Z

    .line 178
    iget-object v0, p0, Landroidx/media3/transformer/TextureAssetLoader;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0}, Landroidx/media3/transformer/SampleConsumer;->signalEndOfVideoInput()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 181
    iget-object v1, p0, Landroidx/media3/transformer/TextureAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x2

    .line 99
    iput v0, p0, Landroidx/media3/transformer/TextureAssetLoader;->progressState:I

    .line 100
    iget-object v0, p0, Landroidx/media3/transformer/TextureAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    iget-object v1, p0, Landroidx/media3/transformer/TextureAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-wide v1, v1, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    invoke-interface {v0, v1, v2}, Landroidx/media3/transformer/AssetLoader$Listener;->onDurationUs(J)V

    .line 101
    iget-object v0, p0, Landroidx/media3/transformer/TextureAssetLoader;->assetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackCount(I)V

    .line 102
    iput-boolean v1, p0, Landroidx/media3/transformer/TextureAssetLoader;->isStarted:Z

    return-void
.end method
