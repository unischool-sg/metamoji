.class final Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;
.super Ljava/lang/Object;
.source "TransformerInternal.java"

# interfaces
.implements Landroidx/media3/transformer/AssetLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/TransformerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SequenceAssetLoaderListener"
.end annotation


# instance fields
.field private final audioMixerFactory:Landroidx/media3/transformer/AudioMixer$Factory;

.field private final composition:Landroidx/media3/transformer/Composition;

.field private currentSequenceDurationUs:J

.field private final debugViewProvider:Landroidx/media3/common/DebugViewProvider;

.field private final fallbackListener:Landroidx/media3/transformer/FallbackListener;

.field private final firstEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

.field private final logSessionId:Landroid/media/metrics/LogSessionId;

.field private final sequenceIndex:I

.field final synthetic this$0:Landroidx/media3/transformer/TransformerInternal;

.field private final transformationRequest:Landroidx/media3/transformer/TransformationRequest;

.field private final videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/TransformerInternal;ILandroidx/media3/transformer/Composition;Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/AudioMixer$Factory;Landroidx/media3/common/VideoFrameProcessor$Factory;Landroidx/media3/transformer/FallbackListener;Landroidx/media3/common/DebugViewProvider;Landroid/media/metrics/LogSessionId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 592
    iput-object p1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput p2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->sequenceIndex:I

    .line 594
    iget-object p1, p3, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-object p1, p1, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/EditedMediaItem;

    iput-object p1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->firstEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    .line 595
    iput-object p3, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->composition:Landroidx/media3/transformer/Composition;

    .line 596
    iput-object p4, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->transformationRequest:Landroidx/media3/transformer/TransformationRequest;

    .line 597
    iput-object p5, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->audioMixerFactory:Landroidx/media3/transformer/AudioMixer$Factory;

    .line 598
    iput-object p6, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    .line 599
    iput-object p7, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->fallbackListener:Landroidx/media3/transformer/FallbackListener;

    .line 600
    iput-object p8, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->debugViewProvider:Landroidx/media3/common/DebugViewProvider;

    .line 601
    iput-object p9, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->logSessionId:Landroid/media/metrics/LogSessionId;

    return-void
.end method

.method private createDecodedSampleExporter(Landroidx/media3/common/Format;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 709
    iget-object v1, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/transformer/TransformerUtil;->getProcessedTrackType(Ljava/lang/String;)I

    move-result v1

    .line 710
    iget-object v2, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v2}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->getSampleExporter(I)Landroidx/media3/transformer/SampleExporter;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v12, 0x1

    if-nez v2, :cond_0

    move v2, v12

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 711
    iget-object v2, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 712
    invoke-static {v2}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v2

    iget v5, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->sequenceIndex:I

    invoke-virtual {v2, v5, v1}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->getAssetLoaderInputFormat(II)Landroidx/media3/common/Format;

    move-result-object v2

    .line 713
    iget-object v1, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 714
    iget-object v1, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v1}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v13

    new-instance v1, Landroidx/media3/transformer/AudioSampleExporter;

    iget-object v4, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->transformationRequest:Landroidx/media3/transformer/TransformationRequest;

    iget-object v5, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->firstEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object v6, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->composition:Landroidx/media3/transformer/Composition;

    iget-object v6, v6, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    iget-object v6, v6, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    iget-object v7, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->audioMixerFactory:Landroidx/media3/transformer/AudioMixer$Factory;

    iget-object v8, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 723
    invoke-static {v8}, Landroidx/media3/transformer/TransformerInternal;->access$600(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/CapturingEncoderFactory;

    move-result-object v8

    iget-object v9, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 724
    invoke-static {v9}, Landroidx/media3/transformer/TransformerInternal;->access$200(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/MuxerWrapper;

    move-result-object v9

    iget-object v10, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->fallbackListener:Landroidx/media3/transformer/FallbackListener;

    iget-object v11, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->logSessionId:Landroid/media/metrics/LogSessionId;

    invoke-direct/range {v1 .. v11}, Landroidx/media3/transformer/AudioSampleExporter;-><init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/EditedMediaItem;Lcom/google/common/collect/ImmutableList;Landroidx/media3/transformer/AudioMixer$Factory;Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/FallbackListener;Landroid/media/metrics/LogSessionId;)V

    .line 714
    invoke-virtual {v13, v12, v1}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->registerSampleExporter(ILandroidx/media3/transformer/SampleExporter;)V

    return-void

    .line 729
    :cond_1
    iget-object v1, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 731
    iget-object v1, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->transformationRequest:Landroidx/media3/transformer/TransformationRequest;

    iget v1, v1, Landroidx/media3/transformer/TransformationRequest;->hdrMode:I

    if-ne v1, v12, :cond_2

    move v4, v12

    .line 733
    :cond_2
    iget-object v1, v2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 735
    invoke-static {v1}, Landroidx/media3/transformer/TransformerUtil;->getValidColor(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/ColorInfo;

    move-result-object v1

    .line 734
    invoke-static {v1, v4}, Landroidx/media3/transformer/TransformerUtil;->getDecoderOutputColor(Landroidx/media3/common/ColorInfo;Z)Landroidx/media3/common/ColorInfo;

    move-result-object v1

    .line 738
    invoke-virtual {v2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    goto :goto_1

    .line 739
    :cond_3
    iget-object v1, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 742
    invoke-virtual {v3}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, v3, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 743
    invoke-static {v2}, Landroidx/media3/transformer/TransformerUtil;->getValidColor(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/ColorInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 744
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    :goto_1
    move-object v4, v1

    .line 751
    iget-object v1, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v1}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v1

    new-instance v2, Landroidx/media3/transformer/VideoSampleExporter;

    iget-object v3, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 754
    invoke-static {v3}, Landroidx/media3/transformer/TransformerInternal;->access$700(Landroidx/media3/transformer/TransformerInternal;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->transformationRequest:Landroidx/media3/transformer/TransformationRequest;

    iget-object v6, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->composition:Landroidx/media3/transformer/Composition;

    iget-object v6, v6, Landroidx/media3/transformer/Composition;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    iget-object v7, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->composition:Landroidx/media3/transformer/Composition;

    iget-object v7, v7, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    iget-object v7, v7, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    iget-object v8, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    iget-object v9, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 760
    invoke-static {v9}, Landroidx/media3/transformer/TransformerInternal;->access$600(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/CapturingEncoderFactory;

    move-result-object v9

    iget-object v10, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 761
    invoke-static {v10}, Landroidx/media3/transformer/TransformerInternal;->access$200(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/MuxerWrapper;

    move-result-object v10

    new-instance v11, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener$$ExternalSyntheticLambda0;

    invoke-direct {v11, v0}, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;)V

    iget-object v12, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->fallbackListener:Landroidx/media3/transformer/FallbackListener;

    iget-object v13, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->debugViewProvider:Landroidx/media3/common/DebugViewProvider;

    iget-object v14, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 765
    invoke-static {v14}, Landroidx/media3/transformer/TransformerInternal;->access$800(Landroidx/media3/transformer/TransformerInternal;)J

    move-result-wide v14

    move-object/from16 p1, v2

    iget-object v2, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 766
    invoke-static {v2}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->hasMultipleConcurrentVideoTracks()Z

    move-result v16

    iget-object v2, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 767
    invoke-static {v2}, Landroidx/media3/transformer/TransformerInternal;->access$900(Landroidx/media3/transformer/TransformerInternal;)Lcom/google/common/collect/ImmutableList;

    move-result-object v17

    iget-object v2, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 768
    invoke-static {v2}, Landroidx/media3/transformer/TransformerInternal;->access$1000(Landroidx/media3/transformer/TransformerInternal;)I

    move-result v18

    iget-object v2, v0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->logSessionId:Landroid/media/metrics/LogSessionId;

    move-object/from16 v19, v2

    move-object/from16 v2, p1

    invoke-direct/range {v2 .. v19}, Landroidx/media3/transformer/VideoSampleExporter;-><init>(Landroid/content/Context;Landroidx/media3/common/Format;Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/common/VideoCompositorSettings;Ljava/util/List;Landroidx/media3/common/VideoFrameProcessor$Factory;Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/common/util/Consumer;Landroidx/media3/transformer/FallbackListener;Landroidx/media3/common/DebugViewProvider;JZLcom/google/common/collect/ImmutableList;ILandroid/media/metrics/LogSessionId;)V

    const/4 v3, 0x2

    .line 751
    invoke-virtual {v1, v3, v2}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->registerSampleExporter(ILandroidx/media3/transformer/SampleExporter;)V

    return-void

    .line 746
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "assetLoaderOutputFormat has to have a audio, video or image mimetype."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/media3/transformer/ExportException;->createForUnexpected(Ljava/lang/Exception;)Landroidx/media3/transformer/ExportException;

    move-result-object v1

    throw v1
.end method

.method private createEncodedSampleExporter(I)V
    .locals 8

    .line 775
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v0}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->getSampleExporter(I)Landroidx/media3/transformer/SampleExporter;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 776
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->composition:Landroidx/media3/transformer/Composition;

    iget-object v0, v0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    iget v2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->sequenceIndex:I

    .line 777
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-virtual {v0}, Landroidx/media3/transformer/EditedMediaItemSequence;->hasGaps()Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v1, "Gaps can not be transmuxed."

    .line 776
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 778
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v0}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v0

    new-instance v1, Landroidx/media3/transformer/EncodedSampleExporter;

    iget-object v2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 781
    invoke-static {v2}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v2

    iget v3, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->sequenceIndex:I

    invoke-virtual {v2, v3, p1}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->getAssetLoaderInputFormat(II)Landroidx/media3/common/Format;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->transformationRequest:Landroidx/media3/transformer/TransformationRequest;

    iget-object v4, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 783
    invoke-static {v4}, Landroidx/media3/transformer/TransformerInternal;->access$200(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/MuxerWrapper;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->fallbackListener:Landroidx/media3/transformer/FallbackListener;

    iget-object v6, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 785
    invoke-static {v6}, Landroidx/media3/transformer/TransformerInternal;->access$800(Landroidx/media3/transformer/TransformerInternal;)J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Landroidx/media3/transformer/EncodedSampleExporter;-><init>(Landroidx/media3/common/Format;Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/FallbackListener;J)V

    .line 778
    invoke-virtual {v0, p1, v1}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->registerSampleExporter(ILandroidx/media3/transformer/SampleExporter;)V

    return-void
.end method

.method private onMediaItemChanged(IJZ)V
    .locals 4

    .line 792
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v0}, Landroidx/media3/transformer/TransformerInternal;->access$1100(Landroidx/media3/transformer/TransformerInternal;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 797
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v0}, Landroidx/media3/transformer/TransformerInternal;->access$000(Landroidx/media3/transformer/TransformerInternal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 798
    :try_start_0
    iget-object v1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v1}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v1

    iget v2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->sequenceIndex:I

    invoke-virtual {v1, v2}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->sequenceHasMultipleTracks(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 801
    monitor-exit v0

    return-void

    .line 803
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 805
    iget-object p1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->composition:Landroidx/media3/transformer/Composition;

    iget-object p1, p1, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    iget v0, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->sequenceIndex:I

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-boolean p1, p1, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    if-eqz p1, :cond_2

    :goto_0
    return-void

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, v1

    .line 808
    :goto_1
    const-string v2, "MediaItem duration required for sequence looping could not be extracted."

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 811
    iget-wide v2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->currentSequenceDurationUs:J

    add-long/2addr v2, p2

    iput-wide v2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->currentSequenceDurationUs:J

    .line 813
    iget-object p1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {p1}, Landroidx/media3/transformer/TransformerInternal;->access$1200(Landroidx/media3/transformer/TransformerInternal;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    if-eqz p4, :cond_4

    .line 816
    :try_start_1
    iget-object p2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {p2}, Landroidx/media3/transformer/TransformerInternal;->access$1310(Landroidx/media3/transformer/TransformerInternal;)I

    .line 818
    :cond_4
    iget-object p2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {p2}, Landroidx/media3/transformer/TransformerInternal;->access$1300(Landroidx/media3/transformer/TransformerInternal;)I

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    .line 819
    :goto_2
    iget-wide p2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->currentSequenceDurationUs:J

    iget-object p4, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {p4}, Landroidx/media3/transformer/TransformerInternal;->access$1400(Landroidx/media3/transformer/TransformerInternal;)J

    move-result-wide v2

    cmp-long p2, p2, v2

    if-gtz p2, :cond_6

    if-eqz v0, :cond_7

    .line 821
    :cond_6
    iget-object p2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    iget-wide p3, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->currentSequenceDurationUs:J

    .line 822
    invoke-static {p2}, Landroidx/media3/transformer/TransformerInternal;->access$1400(Landroidx/media3/transformer/TransformerInternal;)J

    move-result-wide v2

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    .line 821
    invoke-static {p2, p3, p4}, Landroidx/media3/transformer/TransformerInternal;->access$1402(Landroidx/media3/transformer/TransformerInternal;J)J

    .line 823
    :goto_3
    iget-object p2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {p2}, Landroidx/media3/transformer/TransformerInternal;->access$300(Landroidx/media3/transformer/TransformerInternal;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_7

    .line 824
    iget-object p2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {p2}, Landroidx/media3/transformer/TransformerInternal;->access$300(Landroidx/media3/transformer/TransformerInternal;)Ljava/util/List;

    move-result-object p2

    .line 825
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/transformer/SequenceAssetLoader;

    iget-object p3, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 827
    invoke-static {p3}, Landroidx/media3/transformer/TransformerInternal;->access$1400(Landroidx/media3/transformer/TransformerInternal;)J

    move-result-wide p3

    .line 826
    invoke-virtual {p2, p3, p4, v0}, Landroidx/media3/transformer/SequenceAssetLoader;->setMaxSequenceDurationUs(JZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 830
    :cond_7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 803
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private shouldTranscode(Landroidx/media3/common/Format;I)Z
    .locals 10

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/2addr p2, v2

    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    .line 839
    :goto_3
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 841
    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/transformer/TransformerUtil;->getProcessedTrackType(Ljava/lang/String;)I

    move-result v3

    if-nez p2, :cond_4

    move p1, v2

    goto/16 :goto_8

    :cond_4
    if-ne v3, v2, :cond_5

    .line 847
    iget-object v5, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->composition:Landroidx/media3/transformer/Composition;

    iget v6, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->sequenceIndex:I

    iget-object v7, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->transformationRequest:Landroidx/media3/transformer/TransformationRequest;

    iget-object p2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 853
    invoke-static {p2}, Landroidx/media3/transformer/TransformerInternal;->access$600(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/CapturingEncoderFactory;

    move-result-object v8

    iget-object p2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 854
    invoke-static {p2}, Landroidx/media3/transformer/TransformerInternal;->access$200(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/MuxerWrapper;

    move-result-object v9

    move-object v4, p1

    .line 848
    invoke-static/range {v4 .. v9}, Landroidx/media3/transformer/TransformerUtil;->shouldTranscodeAudio(Landroidx/media3/common/Format;Landroidx/media3/transformer/Composition;ILandroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/transformer/MuxerWrapper;)Z

    move-result p1

    goto :goto_8

    :cond_5
    move-object v4, p1

    const/4 p1, 0x2

    if-ne v3, p1, :cond_a

    move-object v3, v4

    .line 856
    iget-object v4, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->composition:Landroidx/media3/transformer/Composition;

    iget v5, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->sequenceIndex:I

    iget-object v6, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->transformationRequest:Landroidx/media3/transformer/TransformationRequest;

    iget-object p1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 862
    invoke-static {p1}, Landroidx/media3/transformer/TransformerInternal;->access$600(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/CapturingEncoderFactory;

    move-result-object v7

    iget-object p1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 863
    invoke-static {p1}, Landroidx/media3/transformer/TransformerInternal;->access$200(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/MuxerWrapper;

    move-result-object v8

    .line 857
    invoke-static/range {v3 .. v8}, Landroidx/media3/transformer/TransformerUtil;->shouldTranscodeVideo(Landroidx/media3/common/Format;Landroidx/media3/transformer/Composition;ILandroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/transformer/MuxerWrapper;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    iget-object p2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->firstEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object p2, p2, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 864
    invoke-static {p1, p2}, Landroidx/media3/transformer/TransformerInternal;->access$1500(Landroidx/media3/transformer/TransformerInternal;Landroidx/media3/common/MediaItem;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move p1, v1

    goto :goto_5

    :cond_7
    :goto_4
    move p1, v2

    .line 865
    :goto_5
    iget-object p2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 866
    invoke-static {p2}, Landroidx/media3/transformer/TransformerInternal;->access$1600(Landroidx/media3/transformer/TransformerInternal;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    move p2, v1

    goto :goto_7

    :cond_9
    :goto_6
    move p2, v2

    :goto_7
    const-string v4, "Transcoding is required for track %s but MP4 edit list trimming is enabled. Disable mp4EditListTrimEnabled or ensure this track does not require transcoding."

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 867
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 865
    invoke-static {p2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_8

    :cond_a
    move p1, v1

    :goto_8
    if-eqz p1, :cond_b

    if-eqz v0, :cond_c

    :cond_b
    move v1, v2

    .line 873
    :cond_c
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return p1
.end method


# virtual methods
.method synthetic lambda$onOutputFormat$0$androidx-media3-transformer-TransformerInternal$SequenceAssetLoaderListener(ILandroidx/media3/transformer/GraphInput;Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;ZJ)V
    .locals 0

    .line 677
    invoke-direct {p0, p1, p4, p5, p7}, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->onMediaItemChanged(IJZ)V

    .line 678
    invoke-interface/range {p2 .. p9}, Landroidx/media3/transformer/GraphInput;->onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;ZJ)V

    return-void
.end method

.method public onDurationUs(J)V
    .locals 0

    return-void
.end method

.method public onError(Landroidx/media3/transformer/ExportException;)V
    .locals 1

    .line 701
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/TransformerInternal;->endWithException(Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method public onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SampleConsumer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 653
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v0}, Landroidx/media3/transformer/TransformerInternal;->access$000(Landroidx/media3/transformer/TransformerInternal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 654
    :try_start_0
    iget-object v1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v1}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->hasRegisteredAllTracks()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 655
    monitor-exit v0

    return-object v2

    .line 658
    :cond_0
    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/transformer/TransformerUtil;->getProcessedTrackType(Ljava/lang/String;)I

    move-result v1

    .line 659
    iget-object v3, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v3}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->shouldTranscode(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 660
    iget-object v3, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v3}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->getIndexForPrimarySequence(I)I

    move-result v3

    iget v4, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->sequenceIndex:I

    if-ne v3, v4, :cond_2

    .line 661
    invoke-direct {p0, p1}, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->createDecodedSampleExporter(Landroidx/media3/common/Format;)V

    goto :goto_0

    .line 664
    :cond_1
    invoke-direct {p0, v1}, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->createEncodedSampleExporter(I)V

    .line 668
    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v3}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->getSampleExporter(I)Landroidx/media3/transformer/SampleExporter;

    move-result-object v3

    if-nez v3, :cond_3

    .line 670
    monitor-exit v0

    return-object v2

    .line 673
    :cond_3
    iget-object v2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->firstEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget v4, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->sequenceIndex:I

    .line 674
    invoke-virtual {v3, v2, p1, v4}, Landroidx/media3/transformer/SampleExporter;->getInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;I)Landroidx/media3/transformer/GraphInput;

    move-result-object p1

    .line 675
    new-instance v2, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;ILandroidx/media3/transformer/GraphInput;)V

    .line 681
    iget-object v4, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v4}, Landroidx/media3/transformer/TransformerInternal;->access$300(Landroidx/media3/transformer/TransformerInternal;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->sequenceIndex:I

    .line 682
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/transformer/SequenceAssetLoader;

    .line 683
    invoke-virtual {v4, v2, v1}, Landroidx/media3/transformer/SequenceAssetLoader;->addOnMediaItemChangedListener(Landroidx/media3/transformer/OnMediaItemChangedListener;I)V

    .line 684
    iget-object v2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v2}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->registerGraphInput(I)V

    .line 689
    iget-object v2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v2}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->hasAssociatedAllTracksWithGraphInput(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 690
    iget-object v1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v1}, Landroidx/media3/transformer/TransformerInternal;->access$400(Landroidx/media3/transformer/TransformerInternal;)V

    .line 691
    iget-object v1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v1}, Landroidx/media3/transformer/TransformerInternal;->access$500(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    const/4 v2, 0x2

    .line 692
    invoke-interface {v1, v2, v3}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v1

    .line 693
    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 695
    :cond_4
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 696
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTrackAdded(Landroidx/media3/common/Format;I)Z
    .locals 4

    .line 627
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/transformer/TransformerUtil;->getProcessedTrackType(Ljava/lang/String;)I

    move-result v0

    .line 629
    iget-object v1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v1}, Landroidx/media3/transformer/TransformerInternal;->access$000(Landroidx/media3/transformer/TransformerInternal;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 630
    :try_start_0
    iget-object v2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v2}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v2

    iget v3, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->sequenceIndex:I

    invoke-virtual {v2, v3, p1}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->registerTrack(ILandroidx/media3/common/Format;)V

    .line 631
    iget-object v2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v2}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->hasRegisteredAllTracks()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    iget-object v2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v2}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->getOutputTrackCount()I

    move-result v2

    .line 633
    iget-object v3, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v3}, Landroidx/media3/transformer/TransformerInternal;->access$200(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/MuxerWrapper;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/media3/transformer/MuxerWrapper;->setTrackCount(I)V

    .line 634
    iget-object v3, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->fallbackListener:Landroidx/media3/transformer/FallbackListener;

    invoke-virtual {v3, v2}, Landroidx/media3/transformer/FallbackListener;->setTrackCount(I)V

    .line 638
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->shouldTranscode(Landroidx/media3/common/Format;I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 639
    iget-object v2, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 640
    invoke-static {v2}, Landroidx/media3/transformer/TransformerUtil;->getProcessedTrackType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 642
    iget-object v2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    .line 643
    invoke-static {v2}, Landroidx/media3/transformer/TransformerInternal;->access$200(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/MuxerWrapper;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->firstEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object v3, v3, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v3, v3, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    .line 642
    invoke-static {v2, v3, p1}, Landroidx/media3/transformer/TransformerUtil;->maybeSetMuxerWrapperAdditionalRotationDegrees(Landroidx/media3/transformer/MuxerWrapper;Lcom/google/common/collect/ImmutableList;Landroidx/media3/common/Format;)V

    .line 645
    :cond_1
    iget-object p1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {p1}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->setShouldTranscode(IZ)V

    .line 646
    monitor-exit v1

    return p2

    :catchall_0
    move-exception p1

    .line 647
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTrackCount(I)V
    .locals 3

    if-gtz p1, :cond_0

    .line 610
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AssetLoader instances must provide at least 1 track."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e9

    .line 611
    invoke-static {p1, v0}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object p1

    .line 610
    invoke-virtual {p0, p1}, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->onError(Landroidx/media3/transformer/ExportException;)V

    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v0}, Landroidx/media3/transformer/TransformerInternal;->access$000(Landroidx/media3/transformer/TransformerInternal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 618
    :try_start_0
    iget-object v1, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->this$0:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v1}, Landroidx/media3/transformer/TransformerInternal;->access$100(Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;

    move-result-object v1

    iget v2, p0, Landroidx/media3/transformer/TransformerInternal$SequenceAssetLoaderListener;->sequenceIndex:I

    invoke-virtual {v1, v2, p1}, Landroidx/media3/transformer/TransformerInternal$AssetLoaderInputTracker;->setTrackCount(II)V

    .line 619
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
