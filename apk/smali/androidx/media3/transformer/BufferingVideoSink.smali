.class final Landroidx/media3/transformer/BufferingVideoSink;
.super Ljava/lang/Object;
.source "BufferingVideoSink.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private isInitialized:Z

.field private final pendingOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;",
            ">;"
        }
    .end annotation
.end field

.field private placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

.field private videoSink:Landroidx/media3/exoplayer/video/VideoSink;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/media3/transformer/BufferingVideoSink;->context:Landroid/content/Context;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/BufferingVideoSink;->pendingOperations:Ljava/util/List;

    return-void
.end method

.method private executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V
    .locals 1

    .line 283
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    .line 284
    invoke-interface {p1, v0}, Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;->execute(Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->pendingOperations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getPlaceholderSurface()Landroidx/media3/exoplayer/video/PlaceholderSurface;
    .locals 2

    .line 291
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->newInstance(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 294
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    return-object v0
.end method

.method static synthetic lambda$join$8(ZLandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    .line 271
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/video/VideoSink;->join(Z)V

    return-void
.end method

.method static synthetic lambda$onInputStreamChanged$7(ILandroidx/media3/common/Format;JILjava/util/List;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 1

    move-object v0, p1

    move p1, p0

    move-object p0, p6

    move-object p6, p5

    move p5, p4

    move-wide p3, p2

    move-object p2, v0

    .line 223
    invoke-interface/range {p0 .. p6}, Landroidx/media3/exoplayer/video/VideoSink;->onInputStreamChanged(ILandroidx/media3/common/Format;JILjava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setBufferTimestampAdjustmentUs$4(JLandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    .line 196
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setBufferTimestampAdjustmentUs(J)V

    return-void
.end method

.method static synthetic lambda$setChangeFrameRateStrategy$6(ILandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    .line 211
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/video/VideoSink;->setChangeFrameRateStrategy(I)V

    return-void
.end method

.method static synthetic lambda$setListener$0(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    .line 95
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic lambda$setOutputSurfaceInfo$5(Landroid/view/Surface;Landroidx/media3/common/util/Size;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    .line 201
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    return-void
.end method

.method static synthetic lambda$setPlaybackSpeed$2(FLandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    .line 185
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/video/VideoSink;->setPlaybackSpeed(F)V

    return-void
.end method

.method static synthetic lambda$setVideoEffects$3(Ljava/util/List;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    .line 190
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/video/VideoSink;->setVideoEffects(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setVideoFrameMetadataListener$1(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    .line 180
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/video/VideoSink;->setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    return-void
.end method


# virtual methods
.method public allowReleaseFirstFrameBeforeStarted()V
    .locals 1

    .line 229
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda10;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public clearOutputSurfaceInfo()V
    .locals 1

    .line 206
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public clearPendingOperations()V
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->pendingOperations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public flush(Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->flush(Z)V

    :cond_0
    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 174
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/transformer/BufferingVideoSink;->getPlaceholderSurface()Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSink()Landroidx/media3/exoplayer/video/VideoSink;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    return-object v0
.end method

.method public handleInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)Z
    .locals 1

    .line 253
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->handleInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public handleInputFrame(JLandroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z
    .locals 1

    .line 241
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/video/VideoSink;->handleInputFrame(JLandroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public initialize(Landroidx/media3/common/Format;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->initialize(Landroidx/media3/common/Format;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Landroidx/media3/transformer/BufferingVideoSink;->isInitialized:Z

    return p1
.end method

.method public isEnded()Z
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->isInitialized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isReady(Z)Z
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->isReady(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public join(Z)V
    .locals 1

    .line 271
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda4;-><init>(Z)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public onInputStreamChanged(ILandroidx/media3/common/Format;JILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/Format;",
            "JI",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 221
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda7;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda7;-><init>(ILandroidx/media3/common/Format;JILjava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public redraw()V
    .locals 1

    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public release()V
    .locals 1

    .line 276
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda14;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    .line 277
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    :cond_0
    return-void
.end method

.method public render(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoSink;->render(JJ)V

    :cond_0
    return-void
.end method

.method public setBufferTimestampAdjustmentUs(J)V
    .locals 1

    .line 195
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .locals 1

    .line 211
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda15;-><init>(I)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 95
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 1

    .line 201
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda3;-><init>(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    .line 185
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda6;-><init>(F)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 190
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda9;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 1

    .line 179
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public setVideoSink(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 3

    .line 62
    iput-object p1, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/BufferingVideoSink;->pendingOperations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 69
    iget-object v2, p0, Landroidx/media3/transformer/BufferingVideoSink;->pendingOperations:Ljava/util/List;

    if-ge v0, v1, :cond_1

    .line 67
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;

    invoke-interface {v1, p1}, Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;->execute(Landroidx/media3/exoplayer/video/VideoSink;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method

.method public signalEndOfCurrentInputStream()V
    .locals 1

    .line 147
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public signalEndOfInput()V
    .locals 1

    .line 152
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda8;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public startRendering()V
    .locals 1

    .line 85
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda13;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public stopRendering()V
    .locals 1

    .line 90
    new-instance v0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method
