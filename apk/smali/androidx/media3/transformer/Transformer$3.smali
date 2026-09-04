.class Landroidx/media3/transformer/Transformer$3;
.super Ljava/lang/Object;
.source "Transformer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/Transformer;->processMediaBeforeFirstSyncSampleAfterTrimStartTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Landroidx/media3/transformer/Mp4Info;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/Transformer;

.field final synthetic val$firstEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

.field final synthetic val$trimEndTimeUs:J

.field final synthetic val$trimStartTimeUs:J


# direct methods
.method constructor <init>(Landroidx/media3/transformer/Transformer;JJLandroidx/media3/transformer/EditedMediaItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1555
    iput-object p1, p0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    iput-wide p2, p0, Landroidx/media3/transformer/Transformer$3;->val$trimEndTimeUs:J

    iput-wide p4, p0, Landroidx/media3/transformer/Transformer$3;->val$trimStartTimeUs:J

    iput-object p6, p0, Landroidx/media3/transformer/Transformer$3;->val$firstEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 1669
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroidx/media3/transformer/ExportResult$Builder;->setOptimizationResult(I)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1670
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$2600(Landroidx/media3/transformer/Transformer;)V

    return-void
.end method

.method public onSuccess(Landroidx/media3/transformer/Mp4Info;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1558
    iget-wide v2, v1, Landroidx/media3/transformer/Mp4Info;->firstSyncSampleTimestampUsAfterTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1559
    iget-object v1, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroidx/media3/transformer/ExportResult$Builder;->setOptimizationResult(I)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1560
    iget-object v1, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v1}, Landroidx/media3/transformer/Transformer;->access$2600(Landroidx/media3/transformer/Transformer;)V

    return-void

    .line 1563
    :cond_0
    iget-wide v2, v1, Landroidx/media3/transformer/Mp4Info;->firstSyncSampleTimestampUsAfterTimeUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    const/4 v3, 0x2

    if-eqz v2, :cond_8

    iget-wide v6, v0, Landroidx/media3/transformer/Transformer$3;->val$trimEndTimeUs:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    iget-wide v4, v1, Landroidx/media3/transformer/Mp4Info;->firstSyncSampleTimestampUsAfterTimeUs:J

    cmp-long v2, v6, v4

    if-gez v2, :cond_1

    goto/16 :goto_3

    .line 1572
    :cond_1
    iget-object v2, v1, Landroidx/media3/transformer/Mp4Info;->audioFormat:Landroidx/media3/common/Format;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroidx/media3/transformer/Mp4Info;->audioFormat:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->sampleRate:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 1573
    iget-object v2, v1, Landroidx/media3/transformer/Mp4Info;->audioFormat:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->sampleRate:I

    const-wide/16 v4, 0x400

    .line 1574
    invoke-static {v4, v5, v2}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v4

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    .line 1577
    :goto_0
    iget-wide v6, v1, Landroidx/media3/transformer/Mp4Info;->firstSyncSampleTimestampUsAfterTimeUs:J

    iget-wide v8, v1, Landroidx/media3/transformer/Mp4Info;->firstVideoSampleTimestampUs:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_3

    .line 1585
    iget-object v2, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1587
    invoke-static {v2}, Landroidx/media3/transformer/Transformer;->access$3600(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Composition;

    move-result-object v4

    iget-wide v5, v0, Landroidx/media3/transformer/Transformer$3;->val$trimStartTimeUs:J

    iget-wide v7, v0, Landroidx/media3/transformer/Transformer$3;->val$trimEndTimeUs:J

    iget-wide v9, v1, Landroidx/media3/transformer/Mp4Info;->durationUs:J

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1586
    invoke-static/range {v4 .. v12}, Landroidx/media3/transformer/TransmuxTranscodeHelper;->buildUponCompositionForTrimOptimization(Landroidx/media3/transformer/Composition;JJJZZ)Landroidx/media3/transformer/Composition;

    move-result-object v1

    .line 1585
    invoke-static {v2, v1}, Landroidx/media3/transformer/Transformer;->access$3602(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/Composition;)Landroidx/media3/transformer/Composition;

    .line 1593
    iget-object v1, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/media3/transformer/ExportResult$Builder;->setOptimizationResult(I)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1595
    iget-object v1, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v1}, Landroidx/media3/transformer/Transformer;->access$2600(Landroidx/media3/transformer/Transformer;)V

    return-void

    .line 1600
    :cond_3
    iget-wide v6, v1, Landroidx/media3/transformer/Mp4Info;->firstSyncSampleTimestampUsAfterTimeUs:J

    iget-wide v8, v0, Landroidx/media3/transformer/Transformer$3;->val$trimStartTimeUs:J

    sub-long/2addr v6, v8

    cmp-long v2, v6, v4

    if-lez v2, :cond_7

    iget-boolean v2, v1, Landroidx/media3/transformer/Mp4Info;->isFirstVideoSampleAfterTimeUsSyncSample:Z

    if-eqz v2, :cond_4

    goto/16 :goto_2

    .line 1616
    :cond_4
    iget-object v2, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    new-instance v3, Landroidx/media3/transformer/MuxerWrapper;

    iget-object v4, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1618
    invoke-static {v4}, Landroidx/media3/transformer/Transformer;->access$2900(Landroidx/media3/transformer/Transformer;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1619
    invoke-static {v5}, Landroidx/media3/transformer/Transformer;->access$1800(Landroidx/media3/transformer/Transformer;)Landroidx/media3/muxer/Muxer$Factory;

    move-result-object v5

    iget-object v6, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1620
    invoke-static {v6}, Landroidx/media3/transformer/Transformer;->access$3000(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Transformer$ComponentListener;

    move-result-object v6

    const/4 v8, 0x0

    iget-object v9, v1, Landroidx/media3/transformer/Mp4Info;->videoFormat:Landroidx/media3/common/Format;

    const/4 v7, 0x1

    invoke-direct/range {v3 .. v9}, Landroidx/media3/transformer/MuxerWrapper;-><init>(Ljava/lang/String;Landroidx/media3/muxer/Muxer$Factory;Landroidx/media3/transformer/MuxerWrapper$Listener;IZLandroidx/media3/common/Format;)V

    .line 1616
    invoke-static {v2, v3}, Landroidx/media3/transformer/Transformer;->access$2802(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/MuxerWrapper;)Landroidx/media3/transformer/MuxerWrapper;

    .line 1624
    iget-object v2, v1, Landroidx/media3/transformer/Mp4Info;->videoFormat:Landroidx/media3/common/Format;

    .line 1625
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/media3/common/Format;

    iget-object v2, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1626
    invoke-static {v2}, Landroidx/media3/transformer/Transformer;->access$3600(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Composition;

    move-result-object v4

    iget-object v2, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1628
    invoke-static {v2}, Landroidx/media3/transformer/Transformer;->access$100(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/TransformationRequest;

    move-result-object v6

    iget-object v2, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1629
    invoke-static {v2}, Landroidx/media3/transformer/Transformer;->access$1700(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Codec$EncoderFactory;

    move-result-object v7

    iget-object v2, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1630
    invoke-static {v2}, Landroidx/media3/transformer/Transformer;->access$2800(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/MuxerWrapper;

    move-result-object v8

    const/4 v5, 0x0

    .line 1624
    invoke-static/range {v3 .. v8}, Landroidx/media3/transformer/TransformerUtil;->shouldTranscodeVideo(Landroidx/media3/common/Format;Landroidx/media3/transformer/Composition;ILandroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/transformer/MuxerWrapper;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v1, Landroidx/media3/transformer/Mp4Info;->audioFormat:Landroidx/media3/common/Format;

    if-eqz v2, :cond_5

    iget-object v3, v1, Landroidx/media3/transformer/Mp4Info;->audioFormat:Landroidx/media3/common/Format;

    iget-object v2, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1634
    invoke-static {v2}, Landroidx/media3/transformer/Transformer;->access$3600(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Composition;

    move-result-object v4

    iget-object v2, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1636
    invoke-static {v2}, Landroidx/media3/transformer/Transformer;->access$100(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/TransformationRequest;

    move-result-object v6

    iget-object v2, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1637
    invoke-static {v2}, Landroidx/media3/transformer/Transformer;->access$1700(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Codec$EncoderFactory;

    move-result-object v7

    iget-object v2, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1638
    invoke-static {v2}, Landroidx/media3/transformer/Transformer;->access$2800(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/MuxerWrapper;

    move-result-object v8

    const/4 v5, 0x0

    .line 1632
    invoke-static/range {v3 .. v8}, Landroidx/media3/transformer/TransformerUtil;->shouldTranscodeAudio(Landroidx/media3/common/Format;Landroidx/media3/transformer/Composition;ILandroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/transformer/MuxerWrapper;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 1646
    :cond_5
    iget-object v2, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v2, v1}, Landroidx/media3/transformer/Transformer;->access$3702(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/Mp4Info;)Landroidx/media3/transformer/Mp4Info;

    .line 1647
    iget-object v2, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1648
    invoke-static {v2}, Landroidx/media3/transformer/Transformer;->access$2800(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/MuxerWrapper;

    move-result-object v2

    iget-object v3, v0, Landroidx/media3/transformer/Transformer$3;->val$firstEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    iget-object v3, v3, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v3, v3, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v1, Landroidx/media3/transformer/Mp4Info;->videoFormat:Landroidx/media3/common/Format;

    .line 1650
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Format;

    .line 1647
    invoke-static {v2, v3, v4}, Landroidx/media3/transformer/TransformerUtil;->maybeSetMuxerWrapperAdditionalRotationDegrees(Landroidx/media3/transformer/MuxerWrapper;Lcom/google/common/collect/ImmutableList;Landroidx/media3/common/Format;)V

    .line 1651
    iget-object v2, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1653
    invoke-static {v2}, Landroidx/media3/transformer/Transformer;->access$3600(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Composition;

    move-result-object v3

    iget-wide v4, v0, Landroidx/media3/transformer/Transformer$3;->val$trimStartTimeUs:J

    iget-wide v6, v1, Landroidx/media3/transformer/Mp4Info;->firstSyncSampleTimestampUsAfterTimeUs:J

    iget-wide v8, v1, Landroidx/media3/transformer/Mp4Info;->durationUs:J

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1652
    invoke-static/range {v3 .. v11}, Landroidx/media3/transformer/TransmuxTranscodeHelper;->buildUponCompositionForTrimOptimization(Landroidx/media3/transformer/Composition;JJJZZ)Landroidx/media3/transformer/Composition;

    move-result-object v13

    .line 1659
    iget-object v12, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1661
    invoke-static {v12}, Landroidx/media3/transformer/Transformer;->access$2800(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/MuxerWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/media3/transformer/MuxerWrapper;

    iget-object v1, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1662
    invoke-static {v1}, Landroidx/media3/transformer/Transformer;->access$3000(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Transformer$ComponentListener;

    move-result-object v15

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    .line 1659
    invoke-static/range {v12 .. v18}, Landroidx/media3/transformer/Transformer;->access$3200(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/Transformer$ComponentListener;JZ)V

    return-void

    .line 1639
    :cond_6
    :goto_1
    iget-object v1, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/transformer/Transformer;->access$2802(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/MuxerWrapper;)Landroidx/media3/transformer/MuxerWrapper;

    .line 1640
    iget-object v1, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroidx/media3/transformer/ExportResult$Builder;->setOptimizationResult(I)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1642
    iget-object v1, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v1}, Landroidx/media3/transformer/Transformer;->access$2600(Landroidx/media3/transformer/Transformer;)V

    return-void

    .line 1603
    :cond_7
    :goto_2
    iget-object v2, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1605
    invoke-static {v2}, Landroidx/media3/transformer/Transformer;->access$3600(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Composition;

    move-result-object v4

    iget-wide v5, v1, Landroidx/media3/transformer/Mp4Info;->firstSyncSampleTimestampUsAfterTimeUs:J

    iget-wide v7, v0, Landroidx/media3/transformer/Transformer$3;->val$trimEndTimeUs:J

    iget-wide v9, v1, Landroidx/media3/transformer/Mp4Info;->durationUs:J

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1604
    invoke-static/range {v4 .. v12}, Landroidx/media3/transformer/TransmuxTranscodeHelper;->buildUponCompositionForTrimOptimization(Landroidx/media3/transformer/Composition;JJJZZ)Landroidx/media3/transformer/Composition;

    move-result-object v1

    .line 1603
    invoke-static {v2, v1}, Landroidx/media3/transformer/Transformer;->access$3602(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/Composition;)Landroidx/media3/transformer/Composition;

    .line 1611
    iget-object v1, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/media3/transformer/ExportResult$Builder;->setOptimizationResult(I)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1613
    iget-object v1, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v1}, Landroidx/media3/transformer/Transformer;->access$2600(Landroidx/media3/transformer/Transformer;)V

    return-void

    .line 1566
    :cond_8
    :goto_3
    iget-object v1, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/media3/transformer/ExportResult$Builder;->setOptimizationResult(I)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1568
    iget-object v1, v0, Landroidx/media3/transformer/Transformer$3;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v1}, Landroidx/media3/transformer/Transformer;->access$2600(Landroidx/media3/transformer/Transformer;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1555
    check-cast p1, Landroidx/media3/transformer/Mp4Info;

    invoke-virtual {p0, p1}, Landroidx/media3/transformer/Transformer$3;->onSuccess(Landroidx/media3/transformer/Mp4Info;)V

    return-void
.end method
