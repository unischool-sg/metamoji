.class final Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;
.super Ljava/lang/Object;
.source "VideoSampleExporter.java"

# interfaces
.implements Landroidx/media3/transformer/GraphInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/VideoSampleExporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoGraphInput"
.end annotation


# instance fields
.field private final initialTimestampOffsetUs:J

.field private final inputIndex:I

.field private final mediaItemOffsetUs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final videoGraph:Landroidx/media3/common/VideoGraph;


# direct methods
.method public constructor <init>(Landroidx/media3/common/VideoGraph;IJ)V
    .locals 0

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput-object p1, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->videoGraph:Landroidx/media3/common/VideoGraph;

    .line 665
    iput p2, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->inputIndex:I

    .line 666
    iput-wide p3, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->initialTimestampOffsetUs:J

    .line 667
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->mediaItemOffsetUs:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private static applyDecoderRotation(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 2

    .line 740
    iget v0, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    return-object p0

    .line 744
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/Format;->height:I

    .line 745
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/Format;->width:I

    .line 746
    invoke-virtual {v0, p0}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 747
    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 748
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method private static getInputTypeForMimeType(Ljava/lang/String;)I
    .locals 3

    .line 753
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 756
    :cond_0
    const-string/jumbo v0, "video/raw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 759
    :cond_1
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 762
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MIME type not supported "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isMediaItemForSurfaceAssetLoader(Landroidx/media3/transformer/EditedMediaItem;)Z
    .locals 1

    .line 767
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 772
    :cond_0
    iget-object p0, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 776
    :cond_1
    const-string/jumbo v0, "transformer_surface_asset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 2

    .line 720
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->videoGraph:Landroidx/media3/common/VideoGraph;

    iget v1, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->inputIndex:I

    invoke-interface {v0, v1}, Landroidx/media3/common/VideoGraph;->getInputSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getPendingVideoFrameCount()I
    .locals 2

    .line 725
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->videoGraph:Landroidx/media3/common/VideoGraph;

    iget v1, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->inputIndex:I

    invoke-interface {v0, v1}, Landroidx/media3/common/VideoGraph;->getPendingInputFrameCount(I)I

    move-result v0

    return v0
.end method

.method public onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;ZJ)V
    .locals 7

    .line 677
    invoke-static {p1}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->isMediaItemForSurfaceAssetLoader(Landroidx/media3/transformer/EditedMediaItem;)Z

    move-result p5

    .line 678
    invoke-virtual {p1, p2, p3}, Landroidx/media3/transformer/EditedMediaItem;->getDurationAfterEffectsApplied(J)J

    move-result-wide p2

    if-eqz p4, :cond_1

    .line 680
    invoke-static {p4}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->applyDecoderRotation(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v3

    .line 681
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->videoGraph:Landroidx/media3/common/VideoGraph;

    iget v1, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->inputIndex:I

    if-eqz p5, :cond_0

    const/4 p4, 0x4

    goto :goto_0

    .line 685
    :cond_0
    iget-object p4, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->getInputTypeForMimeType(Ljava/lang/String;)I

    move-result p4

    :goto_0
    move v2, p4

    iget-object p1, p1, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v4, p1, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    iget-wide p4, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->initialTimestampOffsetUs:J

    iget-object p1, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->mediaItemOffsetUs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 688
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p6

    add-long v5, p4, p6

    .line 681
    invoke-interface/range {v0 .. v6}, Landroidx/media3/common/VideoGraph;->registerInputStream(IILandroidx/media3/common/Format;Ljava/util/List;J)V

    .line 690
    :cond_1
    iget-object p1, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->mediaItemOffsetUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public queueInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)I
    .locals 2

    .line 696
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->videoGraph:Landroidx/media3/common/VideoGraph;

    iget v1, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->inputIndex:I

    invoke-interface {v0, v1, p1, p2}, Landroidx/media3/common/VideoGraph;->queueInputBitmap(ILandroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public queueInputTexture(IJ)I
    .locals 2

    .line 713
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->videoGraph:Landroidx/media3/common/VideoGraph;

    iget v1, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->inputIndex:I

    invoke-interface {v0, v1, p1, p2, p3}, Landroidx/media3/common/VideoGraph;->queueInputTexture(IIJ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public registerVideoFrame(J)Z
    .locals 0

    .line 730
    iget-object p1, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->videoGraph:Landroidx/media3/common/VideoGraph;

    iget p2, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->inputIndex:I

    invoke-interface {p1, p2}, Landroidx/media3/common/VideoGraph;->registerInputFrame(I)Z

    move-result p1

    return p1
.end method

.method public setOnInputFrameProcessedListener(Landroidx/media3/common/OnInputFrameProcessedListener;)V
    .locals 2

    .line 703
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->videoGraph:Landroidx/media3/common/VideoGraph;

    iget v1, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->inputIndex:I

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/VideoGraph;->setOnInputFrameProcessedListener(ILandroidx/media3/common/OnInputFrameProcessedListener;)V

    return-void
.end method

.method public setOnInputSurfaceReadyListener(Ljava/lang/Runnable;)V
    .locals 2

    .line 708
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->videoGraph:Landroidx/media3/common/VideoGraph;

    iget v1, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->inputIndex:I

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/VideoGraph;->setOnInputSurfaceReadyListener(ILjava/lang/Runnable;)V

    return-void
.end method

.method public signalEndOfVideoInput()V
    .locals 2

    .line 735
    iget-object v0, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->videoGraph:Landroidx/media3/common/VideoGraph;

    iget v1, p0, Landroidx/media3/transformer/VideoSampleExporter$VideoGraphInput;->inputIndex:I

    invoke-interface {v0, v1}, Landroidx/media3/common/VideoGraph;->signalEndOfInput(I)V

    return-void
.end method
