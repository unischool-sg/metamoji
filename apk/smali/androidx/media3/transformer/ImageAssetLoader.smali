.class public final Landroidx/media3/transformer/ImageAssetLoader;
.super Ljava/lang/Object;
.source "ImageAssetLoader.java"

# interfaces
.implements Landroidx/media3/transformer/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/ImageAssetLoader$Factory;
    }
.end annotation


# static fields
.field private static final QUEUE_BITMAP_INTERVAL_MS:I = 0xa


# instance fields
.field private final bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

.field private final context:Landroid/content/Context;

.field private final editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

.field private final listener:Landroidx/media3/transformer/AssetLoader$Listener;

.field private volatile progress:I

.field private progressState:I

.field private final retainHdrFromUltraHdrImage:Z

.field private sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/common/util/BitmapLoader;Z)V
    .locals 4

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iget-wide v0, p2, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

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
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 115
    iget v0, p2, Landroidx/media3/transformer/EditedMediaItem;->frameRate:I

    const v3, -0x7fffffff

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 116
    iput-object p1, p0, Landroidx/media3/transformer/ImageAssetLoader;->context:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Landroidx/media3/transformer/ImageAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    .line 118
    iput-object p3, p0, Landroidx/media3/transformer/ImageAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    .line 119
    iput-object p4, p0, Landroidx/media3/transformer/ImageAssetLoader;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    .line 120
    iput-boolean p5, p0, Landroidx/media3/transformer/ImageAssetLoader;->retainHdrFromUltraHdrImage:Z

    .line 121
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/ImageAssetLoader;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 122
    iput v2, p0, Landroidx/media3/transformer/ImageAssetLoader;->progressState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/common/util/BitmapLoader;ZLandroidx/media3/transformer/ImageAssetLoader$1;)V
    .locals 0

    .line 60
    invoke-direct/range {p0 .. p5}, Landroidx/media3/transformer/ImageAssetLoader;-><init>(Landroid/content/Context;Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/common/util/BitmapLoader;Z)V

    return-void
.end method

.method static synthetic access$102(Landroidx/media3/transformer/ImageAssetLoader;I)I
    .locals 0

    .line 60
    iput p1, p0, Landroidx/media3/transformer/ImageAssetLoader;->progress:I

    return p1
.end method

.method static synthetic access$200(Landroidx/media3/transformer/ImageAssetLoader;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Landroidx/media3/transformer/ImageAssetLoader;->retainHdrFromUltraHdrImage:Z

    return p0
.end method

.method static synthetic access$300(Landroidx/media3/transformer/ImageAssetLoader;)Landroidx/media3/transformer/AssetLoader$Listener;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/media3/transformer/ImageAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/transformer/ImageAssetLoader;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/media3/transformer/ImageAssetLoader;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/transformer/ImageAssetLoader;Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/ImageAssetLoader;->queueBitmapInternal(Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V

    return-void
.end method

.method private queueBitmapInternal(Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V
    .locals 7

    .line 204
    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    const-wide/16 v1, 0xa

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    invoke-interface {v0, p2}, Landroidx/media3/transformer/AssetLoader$Listener;->onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SampleConsumer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    .line 206
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Landroidx/media3/transformer/ImageAssetLoader$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroidx/media3/transformer/ImageAssetLoader$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/transformer/ImageAssetLoader;Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v1, v2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 213
    :cond_0
    new-instance v3, Landroidx/media3/common/util/ConstantRateTimestampIterator;

    iget-object v4, p0, Landroidx/media3/transformer/ImageAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-wide v4, v4, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    iget-object v6, p0, Landroidx/media3/transformer/ImageAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget v6, v6, Landroidx/media3/transformer/EditedMediaItem;->frameRate:I

    int-to-float v6, v6

    invoke-direct {v3, v4, v5, v6}, Landroidx/media3/common/util/ConstantRateTimestampIterator;-><init>(JF)V

    .line 214
    invoke-interface {v0, p1, v3}, Landroidx/media3/transformer/SampleConsumer;->queueInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)I

    move-result v0

    const/4 v3, 0x1

    const/16 v4, 0x64

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_1

    .line 229
    iput v4, p0, Landroidx/media3/transformer/ImageAssetLoader;->progress:I

    return-void

    .line 232
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 225
    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Landroidx/media3/transformer/ImageAssetLoader$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroidx/media3/transformer/ImageAssetLoader$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/transformer/ImageAssetLoader;Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v1, v2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 221
    :cond_3
    iput v4, p0, Landroidx/media3/transformer/ImageAssetLoader;->progress:I

    .line 222
    iget-object p1, p0, Landroidx/media3/transformer/ImageAssetLoader;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {p1}, Landroidx/media3/transformer/SampleConsumer;->signalEndOfVideoInput()V
    :try_end_0
    .catch Landroidx/media3/transformer/ExportException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 237
    iget-object p2, p0, Landroidx/media3/transformer/ImageAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 235
    iget-object p2, p0, Landroidx/media3/transformer/ImageAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    invoke-interface {p2, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    :goto_0
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

    .line 190
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getProgress(Landroidx/media3/transformer/ProgressHolder;)I
    .locals 2

    .line 182
    iget v0, p0, Landroidx/media3/transformer/ImageAssetLoader;->progressState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 183
    iget v0, p0, Landroidx/media3/transformer/ImageAssetLoader;->progress:I

    iput v0, p1, Landroidx/media3/transformer/ProgressHolder;->progress:I

    .line 185
    :cond_0
    iget p1, p0, Landroidx/media3/transformer/ImageAssetLoader;->progressState:I

    return p1
.end method

.method synthetic lambda$queueBitmapInternal$0$androidx-media3-transformer-ImageAssetLoader(Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/ImageAssetLoader;->queueBitmapInternal(Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V

    return-void
.end method

.method synthetic lambda$queueBitmapInternal$1$androidx-media3-transformer-ImageAssetLoader(Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/ImageAssetLoader;->queueBitmapInternal(Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 195
    iput v0, p0, Landroidx/media3/transformer/ImageAssetLoader;->progressState:I

    .line 196
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x2

    .line 130
    iput v0, p0, Landroidx/media3/transformer/ImageAssetLoader;->progressState:I

    .line 131
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    iget-object v1, p0, Landroidx/media3/transformer/ImageAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-wide v1, v1, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    invoke-interface {v0, v1, v2}, Landroidx/media3/transformer/AssetLoader$Listener;->onDurationUs(J)V

    .line 132
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackCount(I)V

    .line 136
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader;->context:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media3/transformer/ImageAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object v1, v1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-static {v0, v1}, Landroidx/media3/transformer/TransformerUtil;->getImageMimeType(Landroid/content/Context;Landroidx/media3/common/MediaItem;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v1, p0, Landroidx/media3/transformer/ImageAssetLoader;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    invoke-interface {v1, v0}, Landroidx/media3/common/util/BitmapLoader;->supportsMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader;->bitmapLoader:Landroidx/media3/common/util/BitmapLoader;

    iget-object v1, p0, Landroidx/media3/transformer/ImageAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object v1, v1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v1, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 144
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Landroidx/media3/common/util/BitmapLoader;->loadBitmap(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_1

    .line 138
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to load a Bitmap from unsupported MIME type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 147
    :goto_1
    new-instance v1, Landroidx/media3/transformer/ImageAssetLoader$1;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/ImageAssetLoader$1;-><init>(Landroidx/media3/transformer/ImageAssetLoader;)V

    iget-object v2, p0, Landroidx/media3/transformer/ImageAssetLoader;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
