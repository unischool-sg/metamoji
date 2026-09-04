.class final Landroidx/media3/transformer/Transformer$ComponentListener;
.super Ljava/lang/Object;
.source "Transformer.java"

# interfaces
.implements Landroidx/media3/transformer/TransformerInternal$Listener;
.implements Landroidx/media3/transformer/MuxerWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/Transformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/Transformer;


# direct methods
.method private constructor <init>(Landroidx/media3/transformer/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1841
    iput-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/Transformer$1;)V
    .locals 0

    .line 1841
    invoke-direct {p0, p1}, Landroidx/media3/transformer/Transformer$ComponentListener;-><init>(Landroidx/media3/transformer/Transformer;)V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/google/common/collect/ImmutableList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/transformer/ExportResult$ProcessedInput;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1851
    iget-object v0, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v0}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/ExportResult$Builder;->addProcessedInputs(Ljava/util/List;)Landroidx/media3/transformer/ExportResult$Builder;

    if-eqz p2, :cond_0

    .line 1856
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/media3/transformer/ExportResult$Builder;->setAudioEncoderName(Ljava/lang/String;)Landroidx/media3/transformer/ExportResult$Builder;

    :cond_0
    if-eqz p3, :cond_1

    .line 1859
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/media3/transformer/ExportResult$Builder;->setVideoEncoderName(Ljava/lang/String;)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1863
    :cond_1
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/media3/transformer/Transformer;->access$3802(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal;

    .line 1864
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3900(Landroidx/media3/transformer/Transformer;)I

    move-result p1

    .line 1866
    iget-object p3, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1865
    invoke-static {p3}, Landroidx/media3/transformer/Transformer;->access$4000(Landroidx/media3/transformer/Transformer;)V

    return-void

    .line 1866
    :cond_2
    invoke-static {p3}, Landroidx/media3/transformer/Transformer;->access$3900(Landroidx/media3/transformer/Transformer;)I

    move-result p1

    .line 1869
    iget-object p3, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1867
    invoke-static {p3, p2}, Landroidx/media3/transformer/Transformer;->access$2802(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/MuxerWrapper;)Landroidx/media3/transformer/MuxerWrapper;

    .line 1868
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$4100(Landroidx/media3/transformer/Transformer;)V

    return-void

    .line 1869
    :cond_3
    invoke-static {p3}, Landroidx/media3/transformer/Transformer;->access$3900(Landroidx/media3/transformer/Transformer;)I

    move-result p1

    .line 1871
    iget-object p3, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 1870
    invoke-static {p3}, Landroidx/media3/transformer/Transformer;->access$4200(Landroidx/media3/transformer/Transformer;)V

    return-void

    .line 1871
    :cond_4
    invoke-static {p3}, Landroidx/media3/transformer/Transformer;->access$3900(Landroidx/media3/transformer/Transformer;)I

    move-result p1

    .line 1873
    iget-object p3, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 1872
    invoke-static {p3}, Landroidx/media3/transformer/Transformer;->access$4300(Landroidx/media3/transformer/Transformer;)V

    return-void

    .line 1873
    :cond_5
    invoke-static {p3}, Landroidx/media3/transformer/Transformer;->access$3900(Landroidx/media3/transformer/Transformer;)I

    move-result p1

    .line 1878
    iget-object p3, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    .line 1874
    invoke-static {p3, p2}, Landroidx/media3/transformer/Transformer;->access$3702(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/Mp4Info;)Landroidx/media3/transformer/Mp4Info;

    .line 1875
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media3/transformer/ExportResult$Builder;->setOptimizationResult(I)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1876
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3300(Landroidx/media3/transformer/Transformer;)V

    return-void

    .line 1878
    :cond_6
    invoke-static {p3}, Landroidx/media3/transformer/Transformer;->access$3300(Landroidx/media3/transformer/Transformer;)V

    return-void
.end method

.method public onEnded(JJ)V
    .locals 1

    .line 1956
    iget-object v0, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v0}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object v0

    .line 1957
    invoke-virtual {v0, p1, p2}, Landroidx/media3/transformer/ExportResult$Builder;->setApproximateDurationMs(J)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    .line 1958
    invoke-virtual {p1, p3, p4}, Landroidx/media3/transformer/ExportResult$Builder;->setFileSizeBytes(J)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1959
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3800(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/TransformerInternal;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/transformer/TransformerInternal;

    invoke-virtual {p1}, Landroidx/media3/transformer/TransformerInternal;->endWithCompletion()V

    return-void
.end method

.method public onError(Landroidx/media3/transformer/ExportException;)V
    .locals 1

    .line 1965
    iget-object v0, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v0}, Landroidx/media3/transformer/Transformer;->access$3800(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/TransformerInternal;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/TransformerInternal;

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/TransformerInternal;->endWithException(Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method public onError(Lcom/google/common/collect/ImmutableList;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/transformer/ExportException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/transformer/ExportResult$ProcessedInput;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/media3/transformer/ExportException;",
            ")V"
        }
    .end annotation

    .line 1889
    iget v0, p4, Landroidx/media3/transformer/ExportException;->errorCode:I

    const/16 v1, 0x1b5b

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1890
    invoke-static {v0}, Landroidx/media3/transformer/Transformer;->access$4400(Landroidx/media3/transformer/Transformer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v0}, Landroidx/media3/transformer/Transformer;->access$4500(Landroidx/media3/transformer/Transformer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1891
    :cond_0
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1, v2}, Landroidx/media3/transformer/Transformer;->access$2802(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/MuxerWrapper;)Landroidx/media3/transformer/MuxerWrapper;

    .line 1892
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1, v2}, Landroidx/media3/transformer/Transformer;->access$3802(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal;

    .line 1893
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/transformer/ExportResult$Builder;->reset()V

    .line 1894
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroidx/media3/transformer/ExportResult$Builder;->setOptimizationResult(I)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1895
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$2600(Landroidx/media3/transformer/Transformer;)V

    return-void

    .line 1899
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v0}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/ExportResult$Builder;->addProcessedInputs(Ljava/util/List;)Landroidx/media3/transformer/ExportResult$Builder;

    if-eqz p2, :cond_2

    .line 1904
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/media3/transformer/ExportResult$Builder;->setAudioEncoderName(Ljava/lang/String;)Landroidx/media3/transformer/ExportResult$Builder;

    :cond_2
    if-eqz p3, :cond_3

    .line 1907
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/media3/transformer/ExportResult$Builder;->setVideoEncoderName(Ljava/lang/String;)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1910
    :cond_3
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroidx/media3/transformer/ExportResult$Builder;->setExportException(Landroidx/media3/transformer/ExportException;)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1911
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1, p4}, Landroidx/media3/transformer/Transformer;->access$3400(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/ExportException;)V

    .line 1912
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1, v2}, Landroidx/media3/transformer/Transformer;->access$3802(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal;

    return-void
.end method

.method public onSampleWrittenOrDropped()V
    .locals 4

    .line 1947
    iget-object v0, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v0}, Landroidx/media3/transformer/Transformer;->access$4600(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/WatchdogTimer;

    move-result-object v0

    .line 1950
    iget-object v1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    if-eqz v0, :cond_0

    .line 1948
    invoke-static {v1}, Landroidx/media3/transformer/Transformer;->access$4600(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/WatchdogTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/transformer/WatchdogTimer;->reset()V

    return-void

    .line 1950
    :cond_0
    invoke-static {v1}, Landroidx/media3/transformer/Transformer;->access$1100(Landroidx/media3/transformer/Transformer;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-void
.end method

.method public onTrackEnded(ILandroidx/media3/common/Format;II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    .line 1921
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    iget-object p4, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1922
    invoke-virtual {p1, p4}, Landroidx/media3/transformer/ExportResult$Builder;->setAudioMimeType(Ljava/lang/String;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    .line 1923
    invoke-virtual {p1, p3}, Landroidx/media3/transformer/ExportResult$Builder;->setAverageAudioBitrate(I)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1924
    iget p1, p2, Landroidx/media3/common/Format;->channelCount:I

    if-eq p1, v1, :cond_0

    .line 1925
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    iget p3, p2, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {p1, p3}, Landroidx/media3/transformer/ExportResult$Builder;->setChannelCount(I)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1927
    :cond_0
    iget p1, p2, Landroidx/media3/common/Format;->sampleRate:I

    if-eq p1, v1, :cond_3

    .line 1928
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    iget p2, p2, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {p1, p2}, Landroidx/media3/transformer/ExportResult$Builder;->setSampleRate(I)Landroidx/media3/transformer/ExportResult$Builder;

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1931
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1932
    invoke-virtual {p1, v0}, Landroidx/media3/transformer/ExportResult$Builder;->setVideoMimeType(Ljava/lang/String;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    .line 1933
    invoke-virtual {p1, p3}, Landroidx/media3/transformer/ExportResult$Builder;->setAverageVideoBitrate(I)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    iget-object p3, p2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 1934
    invoke-virtual {p1, p3}, Landroidx/media3/transformer/ExportResult$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    .line 1935
    invoke-virtual {p1, p4}, Landroidx/media3/transformer/ExportResult$Builder;->setVideoFrameCount(I)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1936
    iget p1, p2, Landroidx/media3/common/Format;->height:I

    if-eq p1, v1, :cond_2

    .line 1937
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    iget p3, p2, Landroidx/media3/common/Format;->height:I

    invoke-virtual {p1, p3}, Landroidx/media3/transformer/ExportResult$Builder;->setHeight(I)Landroidx/media3/transformer/ExportResult$Builder;

    .line 1939
    :cond_2
    iget p1, p2, Landroidx/media3/common/Format;->width:I

    if-eq p1, v1, :cond_3

    .line 1940
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$ComponentListener;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;

    move-result-object p1

    iget p2, p2, Landroidx/media3/common/Format;->width:I

    invoke-virtual {p1, p2}, Landroidx/media3/transformer/ExportResult$Builder;->setWidth(I)Landroidx/media3/transformer/ExportResult$Builder;

    :cond_3
    return-void
.end method
