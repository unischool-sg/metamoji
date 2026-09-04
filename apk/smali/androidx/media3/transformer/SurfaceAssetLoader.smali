.class public final Landroidx/media3/transformer/SurfaceAssetLoader;
.super Ljava/lang/Object;
.source "SurfaceAssetLoader.java"

# interfaces
.implements Landroidx/media3/transformer/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/SurfaceAssetLoader$Callback;,
        Landroidx/media3/transformer/SurfaceAssetLoader$Factory;
    }
.end annotation


# static fields
.field public static final MEDIA_ITEM_URI_SCHEME:Ljava/lang/String; = "transformer_surface_asset"


# instance fields
.field private final callback:Landroidx/media3/transformer/SurfaceAssetLoader$Callback;

.field private contentFormat:Landroidx/media3/common/Format;

.field private final editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

.field private final handler:Landroid/os/Handler;

.field private isStarted:Z

.field private isVideoEndOfStreamSignaled:Z

.field private final listener:Landroidx/media3/transformer/AssetLoader$Listener;

.field private progressState:I

.field private sampleConsumer:Landroidx/media3/transformer/SampleConsumer;


# direct methods
.method private constructor <init>(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/SurfaceAssetLoader$Callback;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    .line 122
    iput-object p3, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    .line 123
    iput-object p4, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->callback:Landroidx/media3/transformer/SurfaceAssetLoader$Callback;

    .line 124
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 125
    iput p1, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->progressState:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/SurfaceAssetLoader$Callback;Landroidx/media3/transformer/SurfaceAssetLoader$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/transformer/SurfaceAssetLoader;-><init>(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/SurfaceAssetLoader$Callback;)V

    return-void
.end method

.method private maybeFinishPreparation()V
    .locals 3

    .line 192
    iget-boolean v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->isStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->contentFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackCount(I)V

    .line 196
    iget-object v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {v0, v1, v2}, Landroidx/media3/transformer/AssetLoader$Listener;->onDurationUs(J)V

    .line 197
    iget-object v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    iget-object v1, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->contentFormat:Landroidx/media3/common/Format;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackAdded(Landroidx/media3/common/Format;I)Z

    .line 199
    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    iget-object v1, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->contentFormat:Landroidx/media3/common/Format;

    invoke-interface {v0, v1}, Landroidx/media3/transformer/AssetLoader$Listener;->onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SampleConsumer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/SampleConsumer;

    iput-object v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    .line 200
    new-instance v1, Landroidx/media3/transformer/SurfaceAssetLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/SurfaceAssetLoader$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/transformer/SurfaceAssetLoader;)V

    invoke-interface {v0, v1}, Landroidx/media3/transformer/SampleConsumer;->setOnInputSurfaceReadyListener(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroidx/media3/transformer/ExportException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 205
    iget-object v1, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    invoke-interface {v1, v0}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    :goto_0
    const/4 v0, 0x3

    .line 207
    iput v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->progressState:I

    :cond_1
    :goto_1
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

    .line 183
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getEditedMediaItem()Landroidx/media3/transformer/EditedMediaItem;
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    return-object v0
.end method

.method public getProgress(Landroidx/media3/transformer/ProgressHolder;)I
    .locals 0

    .line 178
    iget p1, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->progressState:I

    return p1
.end method

.method synthetic lambda$maybeFinishPreparation$2$androidx-media3-transformer-SurfaceAssetLoader()V
    .locals 3

    .line 202
    iget-object v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->callback:Landroidx/media3/transformer/SurfaceAssetLoader$Callback;

    iget-object v1, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    .line 203
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v1}, Landroidx/media3/transformer/SampleConsumer;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->editedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    .line 202
    invoke-interface {v0, v1, v2}, Landroidx/media3/transformer/SurfaceAssetLoader$Callback;->onSurfaceReady(Landroid/view/Surface;Landroidx/media3/transformer/EditedMediaItem;)V

    return-void
.end method

.method synthetic lambda$setContentFormat$0$androidx-media3-transformer-SurfaceAssetLoader(Landroidx/media3/common/Format;)V
    .locals 2

    .line 139
    iput-object p1, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->contentFormat:Landroidx/media3/common/Format;

    .line 141
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/transformer/SurfaceAssetLoader;->maybeFinishPreparation()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 143
    iget-object v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    const/16 v1, 0x3e8

    invoke-static {p1, v1}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method synthetic lambda$signalEndOfInput$1$androidx-media3-transformer-SurfaceAssetLoader()V
    .locals 3

    .line 158
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->isVideoEndOfStreamSignaled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 159
    iput-boolean v1, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->isVideoEndOfStreamSignaled:Z

    .line 160
    invoke-interface {v0}, Landroidx/media3/transformer/SampleConsumer;->signalEndOfVideoInput()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 163
    iget-object v1, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setContentFormat(Landroidx/media3/common/Format;)V
    .locals 4

    .line 133
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/raw"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 134
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 135
    iget v0, p1, Landroidx/media3/common/Format;->height:I

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 136
    iget-object v0, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/ColorInfo;

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo;->isDataSpaceValid()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 137
    iget-object v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/transformer/SurfaceAssetLoader$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroidx/media3/transformer/SurfaceAssetLoader$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/transformer/SurfaceAssetLoader;Landroidx/media3/common/Format;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public signalEndOfInput()V
    .locals 2

    .line 155
    iget-object v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/transformer/SurfaceAssetLoader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/SurfaceAssetLoader$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/transformer/SurfaceAssetLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Landroidx/media3/transformer/SurfaceAssetLoader;->isStarted:Z

    .line 173
    invoke-direct {p0}, Landroidx/media3/transformer/SurfaceAssetLoader;->maybeFinishPreparation()V

    return-void
.end method
