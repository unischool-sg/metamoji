.class final Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;
.super Ljava/lang/Object;
.source "SequenceAssetLoader.java"

# interfaces
.implements Landroidx/media3/transformer/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SequenceAssetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GapSignalingAssetLoader"
.end annotation


# instance fields
.field private final audioTrackDecodedFormat:Landroidx/media3/common/Format;

.field private final audioTrackFormat:Landroidx/media3/common/Format;

.field private final durationUs:J

.field private producedAudio:Z

.field private producedVideo:Z

.field private final shouldProduceAudio:Z

.field private final shouldProduceVideo:Z

.field final synthetic this$0:Landroidx/media3/transformer/SequenceAssetLoader;


# direct methods
.method public static synthetic $r8$lambda$GF9yQ0s07RMIhttZMq83o0l6ngo(Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->outputFormatToSequenceAssetLoader()V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/transformer/SequenceAssetLoader;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 753
    iput-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput-wide p2, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->durationUs:J

    .line 755
    invoke-static {p1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1700(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_1

    invoke-static {p1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1800(Landroidx/media3/transformer/SequenceAssetLoader;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->shouldProduceAudio:Z

    .line 756
    invoke-static {p1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1900(Landroidx/media3/transformer/SequenceAssetLoader;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_3

    invoke-static {p1}, Landroidx/media3/transformer/SequenceAssetLoader;->access$1800(Landroidx/media3/transformer/SequenceAssetLoader;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, p3

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v0

    :goto_3
    iput-boolean p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->shouldProduceVideo:Z

    if-nez p2, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    move p3, v0

    .line 757
    :cond_5
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 758
    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string p2, "audio/raw"

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->audioTrackFormat:Landroidx/media3/common/Format;

    .line 759
    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 761
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const p2, 0xac44

    .line 762
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 763
    invoke-virtual {p1, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 764
    invoke-virtual {p1, v2}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 765
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->audioTrackDecodedFormat:Landroidx/media3/common/Format;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/transformer/SequenceAssetLoader;JLandroidx/media3/transformer/SequenceAssetLoader$1;)V
    .locals 0

    .line 742
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;-><init>(Landroidx/media3/transformer/SequenceAssetLoader;J)V

    return-void
.end method

.method private outputFormatToSequenceAssetLoader()V
    .locals 5

    .line 806
    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->shouldProduceAudio:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->producedAudio:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 807
    :goto_0
    iget-boolean v3, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->shouldProduceVideo:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->producedVideo:Z

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v2

    .line 808
    :goto_3
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    if-eqz v0, :cond_5

    .line 814
    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    iget-object v4, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->audioTrackDecodedFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0, v4}, Landroidx/media3/transformer/SequenceAssetLoader;->onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;

    move-result-object v0

    if-nez v0, :cond_4

    move v1, v2

    goto :goto_4

    .line 818
    :cond_4
    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->access$2100(Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;)V

    .line 819
    iput-boolean v2, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->producedAudio:Z

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_5
    :goto_4
    if-eqz v3, :cond_7

    .line 824
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {}, Landroidx/media3/transformer/SequenceAssetLoader;->access$2000()Landroidx/media3/common/Format;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/media3/transformer/SequenceAssetLoader;->onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_5

    .line 828
    :cond_6
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {}, Landroidx/media3/transformer/SequenceAssetLoader;->access$2200()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/media3/transformer/SequenceAssetLoader;->access$2300(Landroidx/media3/transformer/SequenceAssetLoader;Landroid/graphics/Bitmap;)V

    .line 829
    iput-boolean v2, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->producedVideo:Z

    :cond_7
    move v2, v1

    :goto_5
    if-eqz v2, :cond_8

    .line 833
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceAssetLoader;->access$600(Landroidx/media3/transformer/SequenceAssetLoader;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    new-instance v1, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;)V

    const-wide/16 v2, 0xa

    invoke-interface {v0, v1, v2, v3}, Landroidx/media3/common/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroidx/media3/transformer/ExportException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 838
    :goto_6
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media3/transformer/SequenceAssetLoader;->onError(Landroidx/media3/transformer/ExportException;)V

    goto :goto_8

    .line 836
    :goto_7
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-virtual {v1, v0}, Landroidx/media3/transformer/SequenceAssetLoader;->onError(Landroidx/media3/transformer/ExportException;)V

    :cond_8
    :goto_8
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

    .line 798
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getProgress(Landroidx/media3/transformer/ProgressHolder;)I
    .locals 4

    .line 784
    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->shouldProduceAudio:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->producedAudio:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 785
    :goto_0
    iget-boolean v3, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->shouldProduceVideo:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->producedVideo:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 787
    iput v2, p1, Landroidx/media3/transformer/ProgressHolder;->progress:I

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    const/16 v0, 0x63

    .line 789
    iput v0, p1, Landroidx/media3/transformer/ProgressHolder;->progress:I

    goto :goto_2

    :cond_3
    const/16 v0, 0x32

    .line 791
    iput v0, p1, Landroidx/media3/transformer/ProgressHolder;->progress:I

    :goto_2
    const/4 p1, 0x2

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    .line 770
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    iget-wide v1, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->durationUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/transformer/SequenceAssetLoader;->onDurationUs(J)V

    .line 771
    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->shouldProduceAudio:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->shouldProduceVideo:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 772
    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-virtual {v2, v0}, Landroidx/media3/transformer/SequenceAssetLoader;->onTrackCount(I)V

    .line 773
    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->shouldProduceAudio:Z

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    iget-object v2, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->audioTrackFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0, v2, v1}, Landroidx/media3/transformer/SequenceAssetLoader;->onTrackAdded(Landroidx/media3/common/Format;I)Z

    .line 776
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->shouldProduceVideo:Z

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->this$0:Landroidx/media3/transformer/SequenceAssetLoader;

    invoke-static {}, Landroidx/media3/transformer/SequenceAssetLoader;->access$2000()Landroidx/media3/common/Format;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/media3/transformer/SequenceAssetLoader;->onTrackAdded(Landroidx/media3/common/Format;I)Z

    .line 779
    :cond_2
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;->outputFormatToSequenceAssetLoader()V

    return-void
.end method
