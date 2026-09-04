.class final Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;
.super Ljava/lang/Object;
.source "SequenceAssetLoader.java"

# interfaces
.implements Landroidx/media3/transformer/SampleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SequenceAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleConsumerWrapper"
.end annotation


# instance fields
.field private audioLoopingEnded:Z

.field private final sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

.field final synthetic this$0:Landroidx/media3/transformer/SequenceAssetLoader;

.field private totalDurationUs:J

.field private final trackType:I

.field private videoLoopingEnded:Z


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/SequenceAssetLoader;Landroidx/media3/transformer/SampleConsumer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 522
    iput-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p2, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    .line 524
    iput p3, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->trackType:I

    return-void
.end method

.method static synthetic access$2100(Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;)V
    .locals 0

    .line 513
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->onAudioGapSignalled()V

    return-void
.end method

.method private onAudioGapSignalled()V
    .locals 1

    .line 662
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$300(Landroidx/media3/transformer/SequenceAssetLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$400(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->switchAssetLoader()V

    :cond_0
    return-void
.end method

.method private switchAssetLoader()V
    .locals 2

    .line 669
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$600(Landroidx/media3/transformer/SequenceAssetLoader;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    new-instance v1, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 1

    .line 530
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0}, Landroidx/media3/transformer/SampleConsumer;->getInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .line 628
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0}, Landroidx/media3/transformer/SampleConsumer;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getPendingVideoFrameCount()I
    .locals 1

    .line 633
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0}, Landroidx/media3/transformer/SampleConsumer;->getPendingVideoFrameCount()I

    move-result v0

    return v0
.end method

.method synthetic lambda$switchAssetLoader$0$androidx-media3-transformer-SequenceAssetLoader$SampleConsumerWrapper()V
    .locals 6

    .line 672
    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$700(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$800(Landroidx/media3/transformer/SequenceAssetLoader;)V

    .line 676
    iget-wide v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->totalDurationUs:J

    iget-object v2, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v2}, Landroidx/media3/transformer/SequenceAssetLoader;->access$900(Landroidx/media3/transformer/SequenceAssetLoader;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->totalDurationUs:J

    .line 677
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1000(Landroidx/media3/transformer/SequenceAssetLoader;)Landroidx/media3/transformer/AssetLoader;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/transformer/AssetLoader;->release()V

    .line 678
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1102(Landroidx/media3/transformer/SequenceAssetLoader;Z)Z

    .line 679
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1208(Landroidx/media3/transformer/SequenceAssetLoader;)I

    .line 680
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1200(Landroidx/media3/transformer/SequenceAssetLoader;)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v2}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1300(Landroidx/media3/transformer/SequenceAssetLoader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 681
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0, v1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1202(Landroidx/media3/transformer/SequenceAssetLoader;I)I

    .line 682
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1408(Landroidx/media3/transformer/SequenceAssetLoader;)I

    .line 684
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1300(Landroidx/media3/transformer/SequenceAssetLoader;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1200(Landroidx/media3/transformer/SequenceAssetLoader;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItem;

    .line 685
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    .line 686
    invoke-static {v1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1600(Landroidx/media3/transformer/SequenceAssetLoader;)Landroidx/media3/transformer/AssetLoader$Factory;

    move-result-object v2

    .line 688
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Looper;

    iget-object v4, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    .line 690
    invoke-static {v4}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1500(Landroidx/media3/transformer/SequenceAssetLoader;)Landroidx/media3/transformer/AssetLoader$CompositionSettings;

    move-result-object v5

    .line 686
    invoke-interface {v2, v0, v3, v4, v5}, Landroidx/media3/transformer/AssetLoader$Factory;->createAssetLoader(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;)Landroidx/media3/transformer/AssetLoader;

    move-result-object v0

    .line 685
    invoke-static {v1, v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1002(Landroidx/media3/transformer/SequenceAssetLoader;Landroidx/media3/transformer/AssetLoader;)Landroidx/media3/transformer/AssetLoader;

    .line 691
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1000(Landroidx/media3/transformer/SequenceAssetLoader;)Landroidx/media3/transformer/AssetLoader;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/transformer/AssetLoader;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 693
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    const/16 v2, 0x3e8

    .line 694
    invoke-static {v0, v2}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object v0

    .line 693
    invoke-virtual {v1, v0}, Landroidx/media3/transformer/SequenceAssetLoader;->onError(Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method public queueInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)I
    .locals 10

    .line 576
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$000(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v2, v0

    .line 578
    :goto_0
    invoke-interface {p2}, Landroidx/media3/common/util/TimestampIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 579
    invoke-interface {p2}, Landroidx/media3/common/util/TimestampIterator;->next()J

    move-result-wide v4

    .line 580
    iget-wide v6, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->totalDurationUs:J

    add-long/2addr v6, v4

    iget-object v8, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v8}, Landroidx/media3/transformer/SequenceAssetLoader;->access$100(Landroidx/media3/transformer/SequenceAssetLoader;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 581
    iget-object v4, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v4}, Landroidx/media3/transformer/SequenceAssetLoader;->access$200(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_0

    return v5

    :cond_0
    cmp-long v0, v2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 585
    iget-boolean p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->videoLoopingEnded:Z

    if-nez p1, :cond_1

    .line 586
    iput-boolean v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->videoLoopingEnded:Z

    .line 587
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->signalEndOfVideoInput()V

    const/4 p1, 0x3

    return p1

    :cond_1
    return v5

    .line 592
    :cond_2
    new-instance v0, Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;

    invoke-interface {p2}, Landroidx/media3/common/util/TimestampIterator;->copyOf()Landroidx/media3/common/util/TimestampIterator;

    move-result-object p2

    invoke-direct {v0, p2, v2, v3}, Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;-><init>(Landroidx/media3/common/util/TimestampIterator;J)V

    .line 593
    iput-boolean v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->videoLoopingEnded:Z

    move-object p2, v0

    goto :goto_1

    :cond_3
    move-wide v2, v4

    goto :goto_0

    .line 599
    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {p2}, Landroidx/media3/common/util/TimestampIterator;->copyOf()Landroidx/media3/common/util/TimestampIterator;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroidx/media3/transformer/SampleConsumer;->queueInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)I

    move-result p1

    return p1
.end method

.method public queueInputBuffer()Z
    .locals 7

    .line 535
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0}, Landroidx/media3/transformer/SampleConsumer;->getInputBuffer()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 536
    iget-wide v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->totalDurationUs:J

    iget-wide v3, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    add-long/2addr v1, v3

    .line 537
    iget-object v3, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v3}, Landroidx/media3/transformer/SequenceAssetLoader;->access$000(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v3}, Landroidx/media3/transformer/SequenceAssetLoader;->access$100(Landroidx/media3/transformer/SequenceAssetLoader;)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-gez v1, :cond_0

    iget-boolean v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->audioLoopingEnded:Z

    if-eqz v1, :cond_2

    .line 538
    :cond_0
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$200(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->audioLoopingEnded:Z

    if-nez v1, :cond_1

    .line 539
    iget-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v1, 0x4

    .line 540
    invoke-virtual {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 543
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0}, Landroidx/media3/transformer/SampleConsumer;->queueInputBuffer()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 544
    iput-boolean v4, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->audioLoopingEnded:Z

    .line 545
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$300(Landroidx/media3/transformer/SequenceAssetLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_1
    return v2

    .line 550
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 551
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$300(Landroidx/media3/transformer/SequenceAssetLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 552
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$400(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$000(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 553
    :cond_3
    iget v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->trackType:I

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$000(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$500(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 557
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0}, Landroidx/media3/transformer/SampleConsumer;->queueInputBuffer()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0

    .line 559
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    const-wide/16 v1, 0x0

    .line 560
    iput-wide v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 562
    :goto_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$300(Landroidx/media3/transformer/SequenceAssetLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_5

    .line 563
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->switchAssetLoader()V

    :cond_5
    return v4

    .line 569
    :cond_6
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0}, Landroidx/media3/transformer/SampleConsumer;->queueInputBuffer()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return v4
.end method

.method public queueInputTexture(IJ)I
    .locals 4

    .line 614
    iget-wide v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->totalDurationUs:J

    add-long/2addr v0, p2

    .line 615
    iget-object v2, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v2}, Landroidx/media3/transformer/SequenceAssetLoader;->access$000(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v2}, Landroidx/media3/transformer/SequenceAssetLoader;->access$100(Landroidx/media3/transformer/SequenceAssetLoader;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 616
    iget-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {p1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$200(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->videoLoopingEnded:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 617
    iput-boolean p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->videoLoopingEnded:Z

    .line 618
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->signalEndOfVideoInput()V

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    .line 623
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/transformer/SampleConsumer;->queueInputTexture(IJ)I

    move-result p1

    return p1
.end method

.method public registerVideoFrame(J)Z
    .locals 4

    .line 638
    iget-wide v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->totalDurationUs:J

    add-long/2addr v0, p1

    .line 639
    iget-object v2, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v2}, Landroidx/media3/transformer/SequenceAssetLoader;->access$000(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v2}, Landroidx/media3/transformer/SequenceAssetLoader;->access$100(Landroidx/media3/transformer/SequenceAssetLoader;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 640
    iget-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {p1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$200(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->videoLoopingEnded:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 641
    iput-boolean p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->videoLoopingEnded:Z

    .line 642
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->signalEndOfVideoInput()V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 647
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0, p1, p2}, Landroidx/media3/transformer/SampleConsumer;->registerVideoFrame(J)Z

    move-result p1

    return p1
.end method

.method public setOnInputFrameProcessedListener(Landroidx/media3/common/OnInputFrameProcessedListener;)V
    .locals 1

    .line 604
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0, p1}, Landroidx/media3/transformer/SampleConsumer;->setOnInputFrameProcessedListener(Landroidx/media3/common/OnInputFrameProcessedListener;)V

    return-void
.end method

.method public setOnInputSurfaceReadyListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 609
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0, p1}, Landroidx/media3/transformer/SampleConsumer;->setOnInputSurfaceReadyListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public signalEndOfVideoInput()V
    .locals 1

    .line 652
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$300(Landroidx/media3/transformer/SequenceAssetLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 653
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$000(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->videoLoopingEnded:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$400(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->sampleConsumer:Landroidx/media3/transformer/SampleConsumer;

    invoke-interface {v0}, Landroidx/media3/transformer/SampleConsumer;->signalEndOfVideoInput()V

    return-void

    .line 656
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$300(Landroidx/media3/transformer/SequenceAssetLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    .line 657
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->switchAssetLoader()V

    :cond_2
    return-void
.end method
