.class public final Landroidx/media3/transformer/Transformer;
.super Ljava/lang/Object;
.source "Transformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/Transformer$ComponentListener;,
        Landroidx/media3/transformer/Transformer$Builder;,
        Landroidx/media3/transformer/Transformer$Listener;,
        Landroidx/media3/transformer/Transformer$ProgressState;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_DELAY_BETWEEN_MUXER_SAMPLES_MS:J

.field private static final EXPORTER_NAME:Ljava/lang/String; = "androidx.media3:media3-transformer:1.9.2"

.field public static final PROGRESS_STATE_AVAILABLE:I = 0x2

.field public static final PROGRESS_STATE_NOT_STARTED:I = 0x0

.field public static final PROGRESS_STATE_UNAVAILABLE:I = 0x3

.field public static final PROGRESS_STATE_WAITING_FOR_AVAILABILITY:I = 0x1

.field private static final TRANSFORMER_STATE_COPY_OUTPUT:I = 0x4

.field private static final TRANSFORMER_STATE_PROCESS_AUDIO:I = 0x3

.field private static final TRANSFORMER_STATE_PROCESS_FULL_INPUT:I = 0x0

.field private static final TRANSFORMER_STATE_PROCESS_MEDIA_START:I = 0x5

.field private static final TRANSFORMER_STATE_PROCESS_REMAINING_VIDEO:I = 0x2

.field private static final TRANSFORMER_STATE_REMUX_PROCESSED_VIDEO:I = 0x1

.field private static final TRANSFORMER_STATE_REMUX_REMAINING_MEDIA:I = 0x6


# instance fields
.field private final allowedEncodingRotationDegrees:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final assetLoaderFactory:Landroidx/media3/transformer/AssetLoader$Factory;

.field private final audioMixerFactory:Landroidx/media3/transformer/AudioMixer$Factory;

.field private final audioProcessors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Landroidx/media3/common/util/Clock;

.field private final componentListener:Landroidx/media3/transformer/Transformer$ComponentListener;

.field private composition:Landroidx/media3/transformer/Composition;

.field private final context:Landroid/content/Context;

.field private copyOutputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final debugViewProvider:Landroidx/media3/common/DebugViewProvider;

.field private editingMetricsCollector:Landroidx/media3/transformer/EditingMetricsCollector;

.field private final encoderFactory:Landroidx/media3/transformer/Codec$EncoderFactory;

.field private final exportResultBuilder:Landroidx/media3/transformer/ExportResult$Builder;

.field private exportWatchdogTimer:Landroidx/media3/transformer/WatchdogTimer;

.field private final fileStartsOnVideoFrameEnabled:Z

.field private getResumeMetadataFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/transformer/Transformer$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final looper:Landroid/os/Looper;

.field private final maxDelayBetweenMuxerSamplesMs:J

.field private final maxFramesInEncoder:I

.field private mediaItemInfo:Landroidx/media3/transformer/Mp4Info;

.field private final metricsReporterFactory:Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter$Factory;

.field private final mp4EditListTrimEnabled:Z

.field private final muxerFactory:Landroidx/media3/muxer/Muxer$Factory;

.field private oldFilePath:Ljava/lang/String;

.field private originalComposition:Landroidx/media3/transformer/Composition;

.field private outputFilePath:Ljava/lang/String;

.field private final removeAudio:Z

.field private final removeVideo:Z

.field private remuxingMuxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

.field private resumeMetadata:Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;

.field private final transformationRequest:Landroidx/media3/transformer/TransformationRequest;

.field private transformerInternal:Landroidx/media3/transformer/TransformerInternal;

.field private transformerState:I

.field private final trimOptimizationEnabled:Z

.field private final usePlatformDiagnostics:Z

.field private final videoEffects:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;


# direct methods
.method public static synthetic $r8$lambda$8lELg7x566Qt_02m0rQ6OapW4hs(Landroidx/media3/common/audio/SpeedChangingAudioProcessor;JLandroidx/media3/common/util/TimestampConsumer;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->getSpeedAdjustedTimeAsync(JLandroidx/media3/common/util/TimestampConsumer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 105
    const-string v0, "media3.transformer"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 769
    invoke-static {}, Landroidx/media3/common/util/Util;->isRunningOnEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x61a8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x2710

    :goto_0
    sput-wide v0, Landroidx/media3/transformer/Transformer;->DEFAULT_MAX_DELAY_BETWEEN_MUXER_SAMPLES_MS:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroidx/media3/transformer/TransformationRequest;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ZZZZLcom/google/common/collect/ImmutableList;ZZJILandroidx/media3/common/util/ListenerSet;Landroidx/media3/transformer/AssetLoader$Factory;Landroidx/media3/transformer/AudioMixer$Factory;Landroidx/media3/common/VideoFrameProcessor$Factory;Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/muxer/Muxer$Factory;Landroid/os/Looper;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/util/Clock;Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter$Factory;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/transformer/TransformationRequest;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Effect;",
            ">;ZZZZ",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;ZZJI",
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/transformer/Transformer$Listener;",
            ">;",
            "Landroidx/media3/transformer/AssetLoader$Factory;",
            "Landroidx/media3/transformer/AudioMixer$Factory;",
            "Landroidx/media3/common/VideoFrameProcessor$Factory;",
            "Landroidx/media3/transformer/Codec$EncoderFactory;",
            "Landroidx/media3/muxer/Muxer$Factory;",
            "Landroid/os/Looper;",
            "Landroidx/media3/common/DebugViewProvider;",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter$Factory;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p21

    move-object/from16 v1, p23

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    if-eqz p5, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 909
    :goto_1
    const-string v4, "Audio and video cannot both be removed."

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 910
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->context:Landroid/content/Context;

    .line 911
    iput-object p2, p0, Landroidx/media3/transformer/Transformer;->transformationRequest:Landroidx/media3/transformer/TransformationRequest;

    .line 912
    iput-object p3, p0, Landroidx/media3/transformer/Transformer;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 913
    iput-object p4, p0, Landroidx/media3/transformer/Transformer;->videoEffects:Lcom/google/common/collect/ImmutableList;

    .line 914
    iput-boolean p5, p0, Landroidx/media3/transformer/Transformer;->removeAudio:Z

    .line 915
    iput-boolean p6, p0, Landroidx/media3/transformer/Transformer;->removeVideo:Z

    .line 916
    iput-boolean p7, p0, Landroidx/media3/transformer/Transformer;->trimOptimizationEnabled:Z

    .line 917
    iput-boolean p8, p0, Landroidx/media3/transformer/Transformer;->mp4EditListTrimEnabled:Z

    .line 918
    iput-object p9, p0, Landroidx/media3/transformer/Transformer;->allowedEncodingRotationDegrees:Lcom/google/common/collect/ImmutableList;

    .line 919
    iput-boolean p10, p0, Landroidx/media3/transformer/Transformer;->fileStartsOnVideoFrameEnabled:Z

    move/from16 p1, p11

    .line 920
    iput-boolean p1, p0, Landroidx/media3/transformer/Transformer;->usePlatformDiagnostics:Z

    move-wide/from16 p1, p12

    .line 921
    iput-wide p1, p0, Landroidx/media3/transformer/Transformer;->maxDelayBetweenMuxerSamplesMs:J

    move/from16 p1, p14

    .line 922
    iput p1, p0, Landroidx/media3/transformer/Transformer;->maxFramesInEncoder:I

    move-object/from16 p1, p15

    .line 923
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->listeners:Landroidx/media3/common/util/ListenerSet;

    move-object/from16 p1, p16

    .line 924
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->assetLoaderFactory:Landroidx/media3/transformer/AssetLoader$Factory;

    move-object/from16 p1, p17

    .line 925
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->audioMixerFactory:Landroidx/media3/transformer/AudioMixer$Factory;

    move-object/from16 p1, p18

    .line 926
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    move-object/from16 p1, p19

    .line 927
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->encoderFactory:Landroidx/media3/transformer/Codec$EncoderFactory;

    move-object/from16 p1, p20

    .line 928
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->muxerFactory:Landroidx/media3/muxer/Muxer$Factory;

    .line 929
    iput-object v0, p0, Landroidx/media3/transformer/Transformer;->looper:Landroid/os/Looper;

    move-object/from16 p1, p22

    .line 930
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->debugViewProvider:Landroidx/media3/common/DebugViewProvider;

    .line 931
    iput-object v1, p0, Landroidx/media3/transformer/Transformer;->clock:Landroidx/media3/common/util/Clock;

    move-object/from16 p1, p24

    .line 932
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->metricsReporterFactory:Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter$Factory;

    .line 933
    iput v2, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    const/4 p1, 0x0

    .line 934
    invoke-interface {v1, v0, p1}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/transformer/Transformer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 935
    new-instance p2, Landroidx/media3/transformer/Transformer$ComponentListener;

    invoke-direct {p2, p0, p1}, Landroidx/media3/transformer/Transformer$ComponentListener;-><init>(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/Transformer$1;)V

    iput-object p2, p0, Landroidx/media3/transformer/Transformer;->componentListener:Landroidx/media3/transformer/Transformer$ComponentListener;

    .line 936
    new-instance p1, Landroidx/media3/transformer/ExportResult$Builder;

    invoke-direct {p1}, Landroidx/media3/transformer/ExportResult$Builder;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->exportResultBuilder:Landroidx/media3/transformer/ExportResult$Builder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroidx/media3/transformer/TransformationRequest;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ZZZZLcom/google/common/collect/ImmutableList;ZZJILandroidx/media3/common/util/ListenerSet;Landroidx/media3/transformer/AssetLoader$Factory;Landroidx/media3/transformer/AudioMixer$Factory;Landroidx/media3/common/VideoFrameProcessor$Factory;Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/muxer/Muxer$Factory;Landroid/os/Looper;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/util/Clock;Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter$Factory;Landroidx/media3/transformer/Transformer$1;)V
    .locals 0

    .line 102
    invoke-direct/range {p0 .. p24}, Landroidx/media3/transformer/Transformer;-><init>(Landroid/content/Context;Landroidx/media3/transformer/TransformationRequest;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ZZZZLcom/google/common/collect/ImmutableList;ZZJILandroidx/media3/common/util/ListenerSet;Landroidx/media3/transformer/AssetLoader$Factory;Landroidx/media3/transformer/AudioMixer$Factory;Landroidx/media3/common/VideoFrameProcessor$Factory;Landroidx/media3/transformer/Codec$EncoderFactory;Landroidx/media3/muxer/Muxer$Factory;Landroid/os/Looper;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/util/Clock;Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter$Factory;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/transformer/Transformer;)Landroid/content/Context;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/TransformationRequest;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->transformationRequest:Landroidx/media3/transformer/TransformationRequest;

    return-object p0
.end method

.method static synthetic access$1000(Landroidx/media3/transformer/Transformer;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Landroidx/media3/transformer/Transformer;->usePlatformDiagnostics:Z

    return p0
.end method

.method static synthetic access$1100(Landroidx/media3/transformer/Transformer;)J
    .locals 2

    .line 102
    iget-wide v0, p0, Landroidx/media3/transformer/Transformer;->maxDelayBetweenMuxerSamplesMs:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroidx/media3/transformer/Transformer;)I
    .locals 0

    .line 102
    iget p0, p0, Landroidx/media3/transformer/Transformer;->maxFramesInEncoder:I

    return p0
.end method

.method static synthetic access$1300(Landroidx/media3/transformer/Transformer;)Landroidx/media3/common/util/ListenerSet;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->listeners:Landroidx/media3/common/util/ListenerSet;

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/AssetLoader$Factory;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->assetLoaderFactory:Landroidx/media3/transformer/AssetLoader$Factory;

    return-object p0
.end method

.method static synthetic access$1500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/AudioMixer$Factory;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->audioMixerFactory:Landroidx/media3/transformer/AudioMixer$Factory;

    return-object p0
.end method

.method static synthetic access$1600(Landroidx/media3/transformer/Transformer;)Landroidx/media3/common/VideoFrameProcessor$Factory;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    return-object p0
.end method

.method static synthetic access$1700(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Codec$EncoderFactory;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->encoderFactory:Landroidx/media3/transformer/Codec$EncoderFactory;

    return-object p0
.end method

.method static synthetic access$1800(Landroidx/media3/transformer/Transformer;)Landroidx/media3/muxer/Muxer$Factory;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->muxerFactory:Landroidx/media3/muxer/Muxer$Factory;

    return-object p0
.end method

.method static synthetic access$1900(Landroidx/media3/transformer/Transformer;)Landroid/os/Looper;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/transformer/Transformer;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic access$2000(Landroidx/media3/transformer/Transformer;)Landroidx/media3/common/DebugViewProvider;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->debugViewProvider:Landroidx/media3/common/DebugViewProvider;

    return-object p0
.end method

.method static synthetic access$2100(Landroidx/media3/transformer/Transformer;)Landroidx/media3/common/util/Clock;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->clock:Landroidx/media3/common/util/Clock;

    return-object p0
.end method

.method static synthetic access$2200(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter$Factory;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->metricsReporterFactory:Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter$Factory;

    return-object p0
.end method

.method static synthetic access$2600(Landroidx/media3/transformer/Transformer;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->processFullInput()V

    return-void
.end method

.method static synthetic access$2702(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;)Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;
    .locals 0

    .line 102
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->resumeMetadata:Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;

    return-object p1
.end method

.method static synthetic access$2800(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/MuxerWrapper;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->remuxingMuxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

    return-object p0
.end method

.method static synthetic access$2802(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/MuxerWrapper;)Landroidx/media3/transformer/MuxerWrapper;
    .locals 0

    .line 102
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->remuxingMuxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

    return-object p1
.end method

.method static synthetic access$2900(Landroidx/media3/transformer/Transformer;)Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->outputFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/transformer/Transformer;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->videoEffects:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic access$3000(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Transformer$ComponentListener;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->componentListener:Landroidx/media3/transformer/Transformer$ComponentListener;

    return-object p0
.end method

.method static synthetic access$3100(Landroidx/media3/transformer/Transformer;)Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->oldFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/Transformer$ComponentListener;JZ)V
    .locals 0

    .line 102
    invoke-direct/range {p0 .. p6}, Landroidx/media3/transformer/Transformer;->startInternal(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/Transformer$ComponentListener;JZ)V

    return-void
.end method

.method static synthetic access$3300(Landroidx/media3/transformer/Transformer;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->onExportCompletedWithSuccess()V

    return-void
.end method

.method static synthetic access$3400(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/ExportException;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Landroidx/media3/transformer/Transformer;->onExportCompletedWithError(Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method static synthetic access$3500(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/ExportResult$Builder;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->exportResultBuilder:Landroidx/media3/transformer/ExportResult$Builder;

    return-object p0
.end method

.method static synthetic access$3600(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Composition;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    return-object p0
.end method

.method static synthetic access$3602(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/Composition;)Landroidx/media3/transformer/Composition;
    .locals 0

    .line 102
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    return-object p1
.end method

.method static synthetic access$3702(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/Mp4Info;)Landroidx/media3/transformer/Mp4Info;
    .locals 0

    .line 102
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->mediaItemInfo:Landroidx/media3/transformer/Mp4Info;

    return-object p1
.end method

.method static synthetic access$3800(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/TransformerInternal;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->transformerInternal:Landroidx/media3/transformer/TransformerInternal;

    return-object p0
.end method

.method static synthetic access$3802(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/TransformerInternal;)Landroidx/media3/transformer/TransformerInternal;
    .locals 0

    .line 102
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->transformerInternal:Landroidx/media3/transformer/TransformerInternal;

    return-object p1
.end method

.method static synthetic access$3900(Landroidx/media3/transformer/Transformer;)I
    .locals 0

    .line 102
    iget p0, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    return p0
.end method

.method static synthetic access$400(Landroidx/media3/transformer/Transformer;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Landroidx/media3/transformer/Transformer;->removeAudio:Z

    return p0
.end method

.method static synthetic access$4000(Landroidx/media3/transformer/Transformer;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->processRemainingVideo()V

    return-void
.end method

.method static synthetic access$4100(Landroidx/media3/transformer/Transformer;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->processAudio()V

    return-void
.end method

.method static synthetic access$4200(Landroidx/media3/transformer/Transformer;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->copyOutput()V

    return-void
.end method

.method static synthetic access$4300(Landroidx/media3/transformer/Transformer;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->remuxRemainingMedia()V

    return-void
.end method

.method static synthetic access$4400(Landroidx/media3/transformer/Transformer;)Z
    .locals 0

    .line 102
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->isExportTrimOptimization()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Landroidx/media3/transformer/Transformer;)Z
    .locals 0

    .line 102
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->isExportResumed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/WatchdogTimer;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->exportWatchdogTimer:Landroidx/media3/transformer/WatchdogTimer;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/transformer/Transformer;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Landroidx/media3/transformer/Transformer;->removeVideo:Z

    return p0
.end method

.method static synthetic access$600(Landroidx/media3/transformer/Transformer;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Landroidx/media3/transformer/Transformer;->trimOptimizationEnabled:Z

    return p0
.end method

.method static synthetic access$700(Landroidx/media3/transformer/Transformer;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Landroidx/media3/transformer/Transformer;->mp4EditListTrimEnabled:Z

    return p0
.end method

.method static synthetic access$800(Landroidx/media3/transformer/Transformer;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/media3/transformer/Transformer;->allowedEncodingRotationDegrees:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/media3/transformer/Transformer;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Landroidx/media3/transformer/Transformer;->fileStartsOnVideoFrameEnabled:Z

    return p0
.end method

.method private static addSpeedChangingEffects(Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/transformer/EditedMediaItem;
    .locals 4

    .line 1369
    new-instance v0, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;

    iget-object v1, p0, Landroidx/media3/transformer/EditedMediaItem;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-direct {v0, v1}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;-><init>(Landroidx/media3/common/audio/SpeedProvider;)V

    .line 1370
    new-instance v1, Landroidx/media3/effect/TimestampAdjustment;

    .line 1371
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/common/audio/SpeedChangingAudioProcessor;)V

    iget-object v3, p0, Landroidx/media3/transformer/EditedMediaItem;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-direct {v1, v2, v3}, Landroidx/media3/effect/TimestampAdjustment;-><init>(Landroidx/media3/effect/TimestampAdjustment$TimestampMap;Landroidx/media3/common/audio/SpeedProvider;)V

    .line 1372
    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItem;->buildUpon()Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->setSpeedChangingEffects(Landroidx/media3/common/audio/SpeedChangingAudioProcessor;Landroidx/media3/effect/TimestampAdjustment;)Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItem$Builder;->build()Landroidx/media3/transformer/EditedMediaItem;

    move-result-object p0

    return-object p0
.end method

.method private canCollectEditingMetrics()Z
    .locals 2

    .line 1714
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/media3/transformer/Transformer;->usePlatformDiagnostics:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static compositionContainsSpeedChangingEffects(Landroidx/media3/transformer/Composition;)Z
    .locals 6

    .line 1341
    iget-object v0, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/EditedMediaItemSequence;

    .line 1342
    iget-object v1, v1, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/EditedMediaItem;

    .line 1343
    iget-object v4, v3, Landroidx/media3/transformer/EditedMediaItem;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    sget-object v5, Landroidx/media3/common/audio/SpeedProvider;->DEFAULT:Landroidx/media3/common/audio/SpeedProvider;

    if-ne v4, v5, :cond_2

    iget-object v3, v3, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    .line 1344
    invoke-static {v3, v2}, Landroidx/media3/transformer/TransformerUtil;->containsSpeedChangingEffects(Landroidx/media3/transformer/Effects;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 1349
    :cond_3
    iget-object p0, p0, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    invoke-static {p0, v2}, Landroidx/media3/transformer/TransformerUtil;->containsSpeedChangingEffects(Landroidx/media3/transformer/Effects;Z)Z

    move-result p0

    return p0
.end method

.method private copyOutput()V
    .locals 4

    const/4 v0, 0x4

    .line 1519
    iput v0, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    .line 1520
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroidx/media3/transformer/Transformer;->oldFilePath:Ljava/lang/String;

    .line 1522
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroidx/media3/transformer/Transformer;->outputFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1521
    invoke-static {v0, v1}, Landroidx/media3/transformer/TransmuxTranscodeHelper;->copyFileAsync(Ljava/io/File;Ljava/io/File;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/Transformer;->copyOutputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1524
    new-instance v1, Landroidx/media3/transformer/Transformer$2;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/Transformer$2;-><init>(Landroidx/media3/transformer/Transformer;)V

    iget-object v2, p0, Landroidx/media3/transformer/Transformer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 1539
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/common/util/HandlerWrapper;)V

    .line 1524
    invoke-static {v0, v1, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private getNextAccumulatedProgress(FFLandroidx/media3/transformer/ProgressHolder;)I
    .locals 4

    .line 1246
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->transformerInternal:Landroidx/media3/transformer/TransformerInternal;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_1

    .line 1247
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p3, Landroidx/media3/transformer/ProgressHolder;->progress:I

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    return v2

    :cond_0
    return v3

    .line 1252
    :cond_1
    invoke-virtual {v0, p3}, Landroidx/media3/transformer/TransformerInternal;->getProgress(Landroidx/media3/transformer/ProgressHolder;)I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    return p1

    .line 1267
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1261
    :cond_3
    iget v0, p3, Landroidx/media3/transformer/ProgressHolder;->progress:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr p1, v0

    .line 1262
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p3, Landroidx/media3/transformer/ProgressHolder;->progress:I

    return v3

    .line 1256
    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p3, Landroidx/media3/transformer/ProgressHolder;->progress:I

    cmpl-float p1, p1, v1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v3
.end method

.method private getResumeProgress(Landroidx/media3/transformer/ProgressHolder;)I
    .locals 3

    .line 1205
    iget v0, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const v1, 0x3e19999a    # 0.15f

    .line 1206
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/transformer/Transformer;->getNextAccumulatedProgress(FFLandroidx/media3/transformer/ProgressHolder;)I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x41700001    # 15.000001f

    const v1, 0x3ecccccd    # 0.4f

    .line 1211
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/transformer/Transformer;->getNextAccumulatedProgress(FFLandroidx/media3/transformer/ProgressHolder;)I

    move-result p1

    return p1

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const/high16 v0, 0x425c0000    # 55.0f

    const v1, 0x3e99999a    # 0.3f

    .line 1216
    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/transformer/Transformer;->getNextAccumulatedProgress(FFLandroidx/media3/transformer/ProgressHolder;)I

    move-result p1

    return p1

    :cond_2
    const/high16 v0, 0x42aa0000    # 85.0f

    .line 1222
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroidx/media3/transformer/ProgressHolder;->progress:I

    return v1
.end method

.method private getTrimOptimizationProgress(Landroidx/media3/transformer/ProgressHolder;)I
    .locals 4

    .line 1227
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->mediaItemInfo:Landroidx/media3/transformer/Mp4Info;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1230
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    .line 1231
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Composition;

    iget-object v0, v0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-object v0, v0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItem;

    iget-object v0, v0, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 1232
    iget-object v0, v0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v0, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    .line 1233
    iget-object v2, p0, Landroidx/media3/transformer/Transformer;->mediaItemInfo:Landroidx/media3/transformer/Mp4Info;

    iget-wide v2, v2, Landroidx/media3/transformer/Mp4Info;->firstSyncSampleTimestampUsAfterTimeUs:J

    sub-long/2addr v2, v0

    long-to-float v0, v2

    .line 1234
    iget-object v1, p0, Landroidx/media3/transformer/Transformer;->mediaItemInfo:Landroidx/media3/transformer/Mp4Info;

    iget-wide v1, v1, Landroidx/media3/transformer/Mp4Info;->durationUs:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 1237
    iget v1, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 1238
    invoke-direct {p0, v1, v0, p1}, Landroidx/media3/transformer/Transformer;->getNextAccumulatedProgress(FFLandroidx/media3/transformer/ProgressHolder;)I

    move-result p1

    return p1

    :cond_1
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    .line 1241
    invoke-direct {p0, v1, v2, p1}, Landroidx/media3/transformer/Transformer;->getNextAccumulatedProgress(FFLandroidx/media3/transformer/ProgressHolder;)I

    move-result p1

    return p1
.end method

.method private initialize(Landroidx/media3/transformer/Composition;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "this.composition",
            "this.outputFilePath",
            "this.originalComposition"
        }
    .end annotation

    .line 1406
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->maybeInitializeExportWatchdogTimer()V

    .line 1407
    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->originalComposition:Landroidx/media3/transformer/Composition;

    .line 1408
    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->maybeAddSpeedChangingEffects(Landroidx/media3/transformer/Composition;)Landroidx/media3/transformer/Composition;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    .line 1409
    iput-object p2, p0, Landroidx/media3/transformer/Transformer;->outputFilePath:Ljava/lang/String;

    .line 1410
    iget-object p1, p0, Landroidx/media3/transformer/Transformer;->exportResultBuilder:Landroidx/media3/transformer/ExportResult$Builder;

    invoke-virtual {p1}, Landroidx/media3/transformer/ExportResult$Builder;->reset()V

    return-void
.end method

.method private isExportResumed()Z
    .locals 3

    .line 1187
    iget v0, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private isExportTrimOptimization()Z
    .locals 2

    .line 1194
    iget v0, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isMultiAsset()Z
    .locals 3

    .line 1703
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Composition;

    iget-object v0, v0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    iget-object v0, v0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    .line 1704
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-object v0, v0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1
.end method

.method private isSingleAssetTrimming()Z
    .locals 2

    .line 1167
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->isMultiAsset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1171
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    .line 1172
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Composition;

    iget-object v0, v0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    .line 1174
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-object v0, v0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    .line 1176
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItem;

    iget-object v0, v0, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    .line 1179
    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$prepareEditingMetricsCollector$3(Landroidx/media3/transformer/EditedMediaItem;)Z
    .locals 0

    .line 1822
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object p0, p0, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$prepareEditingMetricsCollector$4(Landroidx/media3/transformer/EditedMediaItemSequence;)Z
    .locals 1

    .line 1820
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    new-instance v0, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$prepareEditingMetricsCollector$5(Landroidx/media3/transformer/EditedMediaItem;)Z
    .locals 0

    .line 1831
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object p0, p0, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$prepareEditingMetricsCollector$6(Landroidx/media3/transformer/EditedMediaItemSequence;)Z
    .locals 1

    .line 1829
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    new-instance v0, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static maybeAddSpeedChangingEffects(Landroidx/media3/transformer/Composition;)Landroidx/media3/transformer/Composition;
    .locals 8

    .line 1353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1354
    iget-object v1, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/EditedMediaItemSequence;

    .line 1355
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    iget-object v4, v2, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/transformer/EditedMediaItem;

    .line 1357
    iget-object v6, v5, Landroidx/media3/transformer/EditedMediaItem;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    sget-object v7, Landroidx/media3/common/audio/SpeedProvider;->DEFAULT:Landroidx/media3/common/audio/SpeedProvider;

    if-ne v6, v7, :cond_0

    .line 1358
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1360
    :cond_0
    invoke-static {v5}, Landroidx/media3/transformer/Transformer;->addSpeedChangingEffects(Landroidx/media3/transformer/EditedMediaItem;)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1363
    :cond_1
    invoke-virtual {v2, v3}, Landroidx/media3/transformer/EditedMediaItemSequence;->copyWithEditedMediaItems(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1365
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/transformer/Composition;->buildUpon()Landroidx/media3/transformer/Composition$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/media3/transformer/Composition$Builder;->setSequences(Ljava/util/List;)Landroidx/media3/transformer/Composition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/transformer/Composition$Builder;->build()Landroidx/media3/transformer/Composition;

    move-result-object p0

    return-object p0
.end method

.method private maybeInitializeExportWatchdogTimer()V
    .locals 4

    .line 1376
    iget-wide v0, p0, Landroidx/media3/transformer/Transformer;->maxDelayBetweenMuxerSamplesMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 1379
    :cond_0
    new-instance v0, Landroidx/media3/transformer/WatchdogTimer;

    iget-wide v1, p0, Landroidx/media3/transformer/Transformer;->maxDelayBetweenMuxerSamplesMs:J

    new-instance v3, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/transformer/Transformer;)V

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/transformer/WatchdogTimer;-><init>(JLandroidx/media3/transformer/WatchdogTimer$Listener;)V

    iput-object v0, p0, Landroidx/media3/transformer/Transformer;->exportWatchdogTimer:Landroidx/media3/transformer/WatchdogTimer;

    .line 1394
    invoke-virtual {v0}, Landroidx/media3/transformer/WatchdogTimer;->start()V

    return-void
.end method

.method private maybeStopExportWatchdogTimer()V
    .locals 1

    .line 1398
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->exportWatchdogTimer:Landroidx/media3/transformer/WatchdogTimer;

    if-eqz v0, :cond_0

    .line 1399
    invoke-virtual {v0}, Landroidx/media3/transformer/WatchdogTimer;->stop()V

    const/4 v0, 0x0

    .line 1400
    iput-object v0, p0, Landroidx/media3/transformer/Transformer;->exportWatchdogTimer:Landroidx/media3/transformer/WatchdogTimer;

    :cond_0
    return-void
.end method

.method private onExportCompletedWithError(Landroidx/media3/transformer/ExportException;)V
    .locals 4

    .line 1784
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->maybeStopExportWatchdogTimer()V

    .line 1785
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->exportResultBuilder:Landroidx/media3/transformer/ExportResult$Builder;

    invoke-virtual {v0}, Landroidx/media3/transformer/ExportResult$Builder;->build()Landroidx/media3/transformer/ExportResult;

    move-result-object v0

    .line 1786
    iget-object v1, p0, Landroidx/media3/transformer/Transformer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/ExportResult;Landroidx/media3/transformer/ExportException;)V

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ListenerSet;->sendEvent(Landroidx/media3/common/util/ListenerSet$Event;)V

    .line 1788
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->canCollectEditingMetrics()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1789
    new-instance v1, Landroidx/media3/transformer/ProgressHolder;

    invoke-direct {v1}, Landroidx/media3/transformer/ProgressHolder;-><init>()V

    .line 1790
    invoke-virtual {p0, v1}, Landroidx/media3/transformer/Transformer;->getProgress(Landroidx/media3/transformer/ProgressHolder;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1793
    iget v1, v1, Landroidx/media3/transformer/ProgressHolder;->progress:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 1795
    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/Transformer;->editingMetricsCollector:Landroidx/media3/transformer/EditingMetricsCollector;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/EditingMetricsCollector;

    .line 1796
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->isExportResumed()Z

    move-result v3

    invoke-virtual {v2, v1, p1, v0, v3}, Landroidx/media3/transformer/EditingMetricsCollector;->onExportError(ILandroidx/media3/transformer/ExportException;Landroidx/media3/transformer/ExportResult;Z)V

    :cond_1
    const/4 p1, 0x0

    .line 1798
    iput p1, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    return-void
.end method

.method private onExportCompletedWithSuccess()V
    .locals 3

    .line 1774
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->maybeStopExportWatchdogTimer()V

    .line 1775
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->exportResultBuilder:Landroidx/media3/transformer/ExportResult$Builder;

    invoke-virtual {v0}, Landroidx/media3/transformer/ExportResult$Builder;->build()Landroidx/media3/transformer/ExportResult;

    move-result-object v0

    .line 1776
    iget-object v1, p0, Landroidx/media3/transformer/Transformer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/ExportResult;)V

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ListenerSet;->sendEvent(Landroidx/media3/common/util/ListenerSet$Event;)V

    .line 1777
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->canCollectEditingMetrics()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1778
    iget-object v1, p0, Landroidx/media3/transformer/Transformer;->editingMetricsCollector:Landroidx/media3/transformer/EditingMetricsCollector;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/EditingMetricsCollector;

    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->isExportResumed()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/media3/transformer/EditingMetricsCollector;->onExportSuccess(Landroidx/media3/transformer/ExportResult;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 1780
    iput v0, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    return-void
.end method

.method private prepareEditingMetricsCollector(Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;)Landroidx/media3/transformer/EditingMetricsCollector;
    .locals 9

    .line 1807
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->muxerFactory:Landroidx/media3/muxer/Muxer$Factory;

    instance-of v1, v0, Landroidx/media3/transformer/InAppMp4Muxer$Factory;

    const-string v2, "androidx.media3:media3-muxer:1.9.2"

    if-eqz v1, :cond_0

    :goto_0
    move-object v6, v2

    goto :goto_1

    .line 1809
    :cond_0
    instance-of v1, v0, Landroidx/media3/transformer/InAppFragmentedMp4Muxer$Factory;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1811
    :cond_1
    instance-of v0, v0, Landroidx/media3/transformer/DefaultMuxer$Factory;

    if-eqz v0, :cond_2

    .line 1812
    sget-object v2, Landroidx/media3/transformer/DefaultMuxer;->MUXER_NAME:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1815
    :goto_1
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    .line 1816
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Composition;

    iget-object v0, v0, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    iget-object v0, v0, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    .line 1818
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Composition;

    iget-object v0, v0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    new-instance v3, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda5;-><init>()V

    .line 1817
    invoke-static {v0, v3}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v7, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v2

    .line 1824
    :goto_3
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    .line 1825
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Composition;

    iget-object v0, v0, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    iget-object v0, v0, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    .line 1827
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Composition;

    iget-object v0, v0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    new-instance v3, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Landroidx/media3/transformer/Transformer$$ExternalSyntheticLambda6;-><init>()V

    .line 1826
    invoke-static {v0, v3}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v8, v1

    goto :goto_5

    :cond_6
    :goto_4
    move v8, v2

    .line 1833
    :goto_5
    new-instance v3, Landroidx/media3/transformer/EditingMetricsCollector;

    const-string v5, "androidx.media3:media3-transformer:1.9.2"

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Landroidx/media3/transformer/EditingMetricsCollector;-><init>(Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v3
.end method

.method private processAudio()V
    .locals 8

    const/4 v0, 0x3

    .line 1497
    iput v0, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    .line 1499
    new-instance v1, Landroidx/media3/transformer/MuxerWrapper;

    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->oldFilePath:Ljava/lang/String;

    .line 1501
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/transformer/Transformer;->muxerFactory:Landroidx/media3/muxer/Muxer$Factory;

    iget-object v4, p0, Landroidx/media3/transformer/Transformer;->componentListener:Landroidx/media3/transformer/Transformer$ComponentListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/transformer/MuxerWrapper;-><init>(Ljava/lang/String;Landroidx/media3/muxer/Muxer$Factory;Landroidx/media3/transformer/MuxerWrapper$Listener;IZLandroidx/media3/common/Format;)V

    .line 1508
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    .line 1510
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Composition;

    iget-object v2, p0, Landroidx/media3/transformer/Transformer;->outputFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1509
    invoke-static {v0, v2}, Landroidx/media3/transformer/TransmuxTranscodeHelper;->createAudioTranscodeAndVideoTransmuxComposition(Landroidx/media3/transformer/Composition;Ljava/lang/String;)Landroidx/media3/transformer/Composition;

    move-result-object v2

    iget-object v4, p0, Landroidx/media3/transformer/Transformer;->componentListener:Landroidx/media3/transformer/Transformer$ComponentListener;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move-object v1, p0

    .line 1508
    invoke-direct/range {v1 .. v7}, Landroidx/media3/transformer/Transformer;->startInternal(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/Transformer$ComponentListener;JZ)V

    return-void
.end method

.method private processFullInput()V
    .locals 10

    const/4 v0, 0x0

    .line 1414
    iput v0, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    .line 1415
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    .line 1416
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/media3/transformer/Composition;

    new-instance v3, Landroidx/media3/transformer/MuxerWrapper;

    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->outputFilePath:Ljava/lang/String;

    .line 1418
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroidx/media3/transformer/Transformer;->muxerFactory:Landroidx/media3/muxer/Muxer$Factory;

    iget-object v6, p0, Landroidx/media3/transformer/Transformer;->componentListener:Landroidx/media3/transformer/Transformer$ComponentListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Landroidx/media3/transformer/MuxerWrapper;-><init>(Ljava/lang/String;Landroidx/media3/muxer/Muxer$Factory;Landroidx/media3/transformer/MuxerWrapper$Listener;IZLandroidx/media3/common/Format;)V

    iget-object v4, p0, Landroidx/media3/transformer/Transformer;->componentListener:Landroidx/media3/transformer/Transformer$ComponentListener;

    const-wide/16 v5, 0x0

    move-object v1, p0

    .line 1415
    invoke-direct/range {v1 .. v7}, Landroidx/media3/transformer/Transformer;->startInternal(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/Transformer$ComponentListener;JZ)V

    return-void
.end method

.method private processMediaBeforeFirstSyncSampleAfterTrimStartTime()V
    .locals 8

    const/4 v0, 0x5

    .line 1543
    iput v0, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    .line 1544
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    .line 1545
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Composition;

    iget-object v0, v0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-object v0, v0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/media3/transformer/EditedMediaItem;

    .line 1546
    iget-object v0, v7, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v5, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    .line 1547
    iget-object v0, v7, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v3, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    .line 1548
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->context:Landroid/content/Context;

    iget-object v1, v7, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v1, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 1551
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1549
    invoke-static {v0, v1, v5, v6}, Landroidx/media3/transformer/TransmuxTranscodeHelper;->getMp4Info(Landroid/content/Context;Ljava/lang/String;J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1553
    new-instance v1, Landroidx/media3/transformer/Transformer$3;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/transformer/Transformer$3;-><init>(Landroidx/media3/transformer/Transformer;JJLandroidx/media3/transformer/EditedMediaItem;)V

    iget-object v3, v2, Landroidx/media3/transformer/Transformer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 1673
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/common/util/HandlerWrapper;)V

    .line 1553
    invoke-static {v0, v1, v4}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private processRemainingVideo()V
    .locals 10

    const/4 v0, 0x2

    .line 1478
    iput v0, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    .line 1479
    iget-object v1, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    .line 1481
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/Composition;

    .line 1482
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/transformer/Transformer;->resumeMetadata:Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;

    .line 1480
    invoke-static {v1, v0, v2}, Landroidx/media3/transformer/TransmuxTranscodeHelper;->buildUponComposition(Landroidx/media3/transformer/Composition;Ljava/util/Set;Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;)Landroidx/media3/transformer/Composition;

    move-result-object v4

    .line 1485
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->remuxingMuxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->remuxingMuxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

    invoke-virtual {v0}, Landroidx/media3/transformer/MuxerWrapper;->changeToAppendMode()V

    .line 1488
    iget-object v5, p0, Landroidx/media3/transformer/Transformer;->remuxingMuxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

    iget-object v6, p0, Landroidx/media3/transformer/Transformer;->componentListener:Landroidx/media3/transformer/Transformer$ComponentListener;

    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->resumeMetadata:Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;

    .line 1492
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;

    iget-wide v7, v0, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;->lastSyncSampleTimestampUs:J

    const/4 v9, 0x0

    move-object v3, p0

    .line 1488
    invoke-direct/range {v3 .. v9}, Landroidx/media3/transformer/Transformer;->startInternal(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/Transformer$ComponentListener;JZ)V

    return-void
.end method

.method private remuxProcessedVideo()V
    .locals 4

    const/4 v0, 0x1

    .line 1430
    iput v0, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    .line 1431
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->context:Landroid/content/Context;

    iget-object v1, p0, Landroidx/media3/transformer/Transformer;->oldFilePath:Ljava/lang/String;

    .line 1433
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/Composition;

    .line 1432
    invoke-static {v0, v1, v2}, Landroidx/media3/transformer/TransmuxTranscodeHelper;->getResumeMetadataAsync(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/transformer/Composition;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/Transformer;->getResumeMetadataFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1434
    new-instance v1, Landroidx/media3/transformer/Transformer$1;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/Transformer$1;-><init>(Landroidx/media3/transformer/Transformer;)V

    iget-object v2, p0, Landroidx/media3/transformer/Transformer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 1474
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/common/util/HandlerWrapper;)V

    .line 1434
    invoke-static {v0, v1, v3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private remuxRemainingMedia()V
    .locals 14

    const/4 v1, 0x6

    .line 1677
    iput v1, p0, Landroidx/media3/transformer/Transformer;->transformerState:I

    .line 1678
    iget-object v1, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    .line 1679
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/Composition;

    iget-object v1, v1, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/EditedMediaItemSequence;

    iget-object v1, v1, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/EditedMediaItem;

    .line 1680
    iget-object v2, p0, Landroidx/media3/transformer/Transformer;->mediaItemInfo:Landroidx/media3/transformer/Mp4Info;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/Mp4Info;

    .line 1681
    iget-object v3, v1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v3, v3, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v3, v3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    .line 1682
    iget-object v1, v1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v1, v1, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v8, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    .line 1683
    iget-object v5, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    iget-wide v6, v2, Landroidx/media3/transformer/Mp4Info;->firstSyncSampleTimestampUsAfterTimeUs:J

    iget-wide v10, v2, Landroidx/media3/transformer/Mp4Info;->durationUs:J

    const/4 v12, 0x1

    const/4 v13, 0x1

    .line 1684
    invoke-static/range {v5 .. v13}, Landroidx/media3/transformer/TransmuxTranscodeHelper;->buildUponCompositionForTrimOptimization(Landroidx/media3/transformer/Composition;JJJZZ)Landroidx/media3/transformer/Composition;

    move-result-object v1

    .line 1691
    iget-object v5, p0, Landroidx/media3/transformer/Transformer;->remuxingMuxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    iget-object v5, p0, Landroidx/media3/transformer/Transformer;->remuxingMuxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

    invoke-virtual {v5}, Landroidx/media3/transformer/MuxerWrapper;->changeToAppendMode()V

    .line 1693
    iget-object v5, p0, Landroidx/media3/transformer/Transformer;->remuxingMuxerWrapper:Landroidx/media3/transformer/MuxerWrapper;

    move-wide v6, v3

    iget-object v3, p0, Landroidx/media3/transformer/Transformer;->componentListener:Landroidx/media3/transformer/Transformer$ComponentListener;

    iget-wide v8, v2, Landroidx/media3/transformer/Mp4Info;->firstSyncSampleTimestampUsAfterTimeUs:J

    sub-long/2addr v8, v6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v5

    move-wide v4, v8

    invoke-direct/range {v0 .. v6}, Landroidx/media3/transformer/Transformer;->startInternal(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/Transformer$ComponentListener;JZ)V

    return-void
.end method

.method private shouldApplyMp4EditListTrim()Z
    .locals 1

    .line 1183
    iget-boolean v0, p0, Landroidx/media3/transformer/Transformer;->mp4EditListTrimEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->isSingleAssetTrimming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startInternal(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/Transformer$ComponentListener;JZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 1723
    iget-object v1, v0, Landroidx/media3/transformer/Transformer;->transformerInternal:Landroidx/media3/transformer/TransformerInternal;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "There is already an export in progress."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1724
    iget-object v1, v0, Landroidx/media3/transformer/Transformer;->transformationRequest:Landroidx/media3/transformer/TransformationRequest;

    .line 1725
    iget v2, v3, Landroidx/media3/transformer/Composition;->hdrMode:I

    if-eqz v2, :cond_1

    .line 1727
    invoke-virtual {v1}, Landroidx/media3/transformer/TransformationRequest;->buildUpon()Landroidx/media3/transformer/TransformationRequest$Builder;

    move-result-object v1

    iget v2, v3, Landroidx/media3/transformer/Composition;->hdrMode:I

    invoke-virtual {v1, v2}, Landroidx/media3/transformer/TransformationRequest$Builder;->setHdrMode(I)Landroidx/media3/transformer/TransformationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/transformer/TransformationRequest$Builder;->build()Landroidx/media3/transformer/TransformationRequest;

    move-result-object v1

    :cond_1
    move-object v4, v1

    .line 1730
    invoke-direct {v0}, Landroidx/media3/transformer/Transformer;->canCollectEditingMetrics()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1731
    iget-object v1, v0, Landroidx/media3/transformer/Transformer;->metricsReporterFactory:Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter$Factory;

    .line 1732
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter$Factory;

    invoke-interface {v1}, Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter$Factory;->create()Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;

    move-result-object v1

    .line 1733
    instance-of v5, v1, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;

    if-eqz v5, :cond_2

    .line 1734
    move-object v2, v1

    check-cast v2, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;

    .line 1735
    invoke-virtual {v2}, Landroidx/media3/transformer/EditingMetricsCollector$DefaultMetricsReporter;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v2

    .line 1737
    :cond_2
    invoke-direct {v0, v1}, Landroidx/media3/transformer/Transformer;->prepareEditingMetricsCollector(Landroidx/media3/transformer/EditingMetricsCollector$MetricsReporter;)Landroidx/media3/transformer/EditingMetricsCollector;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/transformer/Transformer;->editingMetricsCollector:Landroidx/media3/transformer/EditingMetricsCollector;

    :cond_3
    move-object/from16 v19, v2

    .line 1739
    new-instance v13, Landroidx/media3/transformer/FallbackListener;

    iget-object v1, v0, Landroidx/media3/transformer/Transformer;->originalComposition:Landroidx/media3/transformer/Composition;

    .line 1741
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/Composition;

    iget-object v2, v0, Landroidx/media3/transformer/Transformer;->listeners:Landroidx/media3/common/util/ListenerSet;

    iget-object v5, v0, Landroidx/media3/transformer/Transformer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-direct {v13, v1, v2, v5, v4}, Landroidx/media3/transformer/FallbackListener;-><init>(Landroidx/media3/transformer/Composition;Landroidx/media3/common/util/ListenerSet;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/transformer/TransformationRequest;)V

    .line 1745
    iget-object v5, v0, Landroidx/media3/transformer/Transformer;->assetLoaderFactory:Landroidx/media3/transformer/AssetLoader$Factory;

    .line 1746
    invoke-static {}, Landroidx/media3/effect/DebugTraceUtil;->reset()V

    .line 1747
    new-instance v1, Landroidx/media3/transformer/TransformerInternal;

    iget-object v2, v0, Landroidx/media3/transformer/Transformer;->context:Landroid/content/Context;

    iget-object v6, v0, Landroidx/media3/transformer/Transformer;->audioMixerFactory:Landroidx/media3/transformer/AudioMixer$Factory;

    iget-object v7, v0, Landroidx/media3/transformer/Transformer;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    if-eqz p6, :cond_4

    .line 1756
    new-instance v8, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;

    iget-object v9, v0, Landroidx/media3/transformer/Transformer;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Landroidx/media3/transformer/DefaultEncoderFactory$Builder;->build()Landroidx/media3/transformer/DefaultEncoderFactory;

    move-result-object v8

    goto :goto_1

    .line 1757
    :cond_4
    iget-object v8, v0, Landroidx/media3/transformer/Transformer;->encoderFactory:Landroidx/media3/transformer/Codec$EncoderFactory;

    :goto_1
    iget-object v9, v0, Landroidx/media3/transformer/Transformer;->allowedEncodingRotationDegrees:Lcom/google/common/collect/ImmutableList;

    iget v10, v0, Landroidx/media3/transformer/Transformer;->maxFramesInEncoder:I

    iget-object v14, v0, Landroidx/media3/transformer/Transformer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    iget-object v15, v0, Landroidx/media3/transformer/Transformer;->debugViewProvider:Landroidx/media3/common/DebugViewProvider;

    iget-object v11, v0, Landroidx/media3/transformer/Transformer;->clock:Landroidx/media3/common/util/Clock;

    .line 1768
    invoke-direct {v0}, Landroidx/media3/transformer/Transformer;->shouldApplyMp4EditListTrim()Z

    move-result v20

    move-object/from16 v12, p3

    move-wide/from16 v17, p4

    move/from16 v21, p6

    move-object/from16 v16, v11

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v21}, Landroidx/media3/transformer/TransformerInternal;-><init>(Landroid/content/Context;Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/TransformationRequest;Landroidx/media3/transformer/AssetLoader$Factory;Landroidx/media3/transformer/AudioMixer$Factory;Landroidx/media3/common/VideoFrameProcessor$Factory;Landroidx/media3/transformer/Codec$EncoderFactory;Lcom/google/common/collect/ImmutableList;ILandroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/TransformerInternal$Listener;Landroidx/media3/transformer/FallbackListener;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/util/Clock;JLandroid/media/metrics/LogSessionId;ZZ)V

    iput-object v1, v0, Landroidx/media3/transformer/Transformer;->transformerInternal:Landroidx/media3/transformer/TransformerInternal;

    .line 1770
    invoke-virtual {v1}, Landroidx/media3/transformer/TransformerInternal;->start()V

    return-void
.end method

.method private verifyApplicationThread()V
    .locals 2

    .line 1708
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/transformer/Transformer;->looper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    return-void

    .line 1709
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transformer is accessed on the wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addListener(Landroidx/media3/transformer/Transformer$Listener;)V
    .locals 1

    .line 951
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->verifyApplicationThread()V

    .line 952
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public buildUpon()Landroidx/media3/transformer/Transformer$Builder;
    .locals 2

    .line 941
    new-instance v0, Landroidx/media3/transformer/Transformer$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/transformer/Transformer$Builder;-><init>(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/Transformer$1;)V

    return-object v0
.end method

.method public cancel()V
    .locals 6

    .line 1279
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->verifyApplicationThread()V

    .line 1280
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->transformerInternal:Landroidx/media3/transformer/TransformerInternal;

    if-nez v0, :cond_0

    .line 1281
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->maybeStopExportWatchdogTimer()V

    return-void

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1285
    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/transformer/TransformerInternal;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    new-instance v0, Landroidx/media3/transformer/ProgressHolder;

    invoke-direct {v0}, Landroidx/media3/transformer/ProgressHolder;-><init>()V

    .line 1288
    invoke-virtual {p0, v0}, Landroidx/media3/transformer/Transformer;->getProgress(Landroidx/media3/transformer/ProgressHolder;)I

    move-result v4

    .line 1289
    iput-object v3, p0, Landroidx/media3/transformer/Transformer;->transformerInternal:Landroidx/media3/transformer/TransformerInternal;

    .line 1291
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->canCollectEditingMetrics()Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v4, v2, :cond_1

    .line 1294
    iget v1, v0, Landroidx/media3/transformer/ProgressHolder;->progress:I

    .line 1296
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->editingMetricsCollector:Landroidx/media3/transformer/EditingMetricsCollector;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditingMetricsCollector;

    invoke-virtual {v0, v1}, Landroidx/media3/transformer/EditingMetricsCollector;->onExportCancelled(I)V

    .line 1300
    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->getResumeMetadataFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1301
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->getResumeMetadataFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 1303
    :cond_3
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->copyOutputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1304
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->copyOutputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 1306
    :cond_4
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->maybeStopExportWatchdogTimer()V

    return-void

    :catchall_0
    move-exception v0

    .line 1287
    new-instance v4, Landroidx/media3/transformer/ProgressHolder;

    invoke-direct {v4}, Landroidx/media3/transformer/ProgressHolder;-><init>()V

    .line 1288
    invoke-virtual {p0, v4}, Landroidx/media3/transformer/Transformer;->getProgress(Landroidx/media3/transformer/ProgressHolder;)I

    move-result v5

    .line 1289
    iput-object v3, p0, Landroidx/media3/transformer/Transformer;->transformerInternal:Landroidx/media3/transformer/TransformerInternal;

    .line 1291
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->canCollectEditingMetrics()Z

    move-result v3

    if-eqz v3, :cond_6

    if-ne v5, v2, :cond_5

    .line 1294
    iget v1, v4, Landroidx/media3/transformer/ProgressHolder;->progress:I

    .line 1296
    :cond_5
    iget-object v2, p0, Landroidx/media3/transformer/Transformer;->editingMetricsCollector:Landroidx/media3/transformer/EditingMetricsCollector;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/EditingMetricsCollector;

    invoke-virtual {v2, v1}, Landroidx/media3/transformer/EditingMetricsCollector;->onExportCancelled(I)V

    .line 1298
    :cond_6
    throw v0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 1133
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->looper:Landroid/os/Looper;

    return-object v0
.end method

.method public getProgress(Landroidx/media3/transformer/ProgressHolder;)I
    .locals 1

    .line 1152
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->verifyApplicationThread()V

    .line 1153
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->isExportResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    invoke-direct {p0, p1}, Landroidx/media3/transformer/Transformer;->getResumeProgress(Landroidx/media3/transformer/ProgressHolder;)I

    move-result p1

    return p1

    .line 1157
    :cond_0
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->isExportTrimOptimization()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    invoke-direct {p0, p1}, Landroidx/media3/transformer/Transformer;->getTrimOptimizationProgress(Landroidx/media3/transformer/ProgressHolder;)I

    move-result p1

    return p1

    .line 1161
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->transformerInternal:Landroidx/media3/transformer/TransformerInternal;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 1163
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/media3/transformer/TransformerInternal;->getProgress(Landroidx/media3/transformer/ProgressHolder;)I

    move-result p1

    return p1
.end method

.method synthetic lambda$maybeInitializeExportWatchdogTimer$0$androidx-media3-transformer-Transformer()V
    .locals 3

    .line 1383
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-wide v1, p0, Landroidx/media3/transformer/Transformer;->maxDelayBetweenMuxerSamplesMs:J

    .line 1389
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1390
    invoke-static {}, Landroidx/media3/effect/DebugTraceUtil;->generateTraceSummary()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1386
    const-string v2, "Abort: no output sample written in the last %d milliseconds. DebugTrace: %s"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1b5a

    .line 1384
    invoke-static {v0, v1}, Landroidx/media3/transformer/ExportException;->createForMuxer(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object v0

    .line 1392
    iget-object v1, p0, Landroidx/media3/transformer/Transformer;->transformerInternal:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/TransformerInternal;

    invoke-virtual {v1, v0}, Landroidx/media3/transformer/TransformerInternal;->endWithException(Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method synthetic lambda$onExportCompletedWithError$2$androidx-media3-transformer-Transformer(Landroidx/media3/transformer/ExportResult;Landroidx/media3/transformer/ExportException;Landroidx/media3/transformer/Transformer$Listener;)V
    .locals 1

    .line 1787
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Composition;

    invoke-interface {p3, v0, p1, p2}, Landroidx/media3/transformer/Transformer$Listener;->onError(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/ExportResult;Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method synthetic lambda$onExportCompletedWithSuccess$1$androidx-media3-transformer-Transformer(Landroidx/media3/transformer/ExportResult;Landroidx/media3/transformer/Transformer$Listener;)V
    .locals 1

    .line 1776
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/Composition;

    invoke-interface {p2, v0, p1}, Landroidx/media3/transformer/Transformer$Listener;->onCompleted(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/ExportResult;)V

    return-void
.end method

.method public removeAllListeners()V
    .locals 1

    .line 972
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->verifyApplicationThread()V

    .line 973
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->clear()V

    return-void
.end method

.method public removeListener(Landroidx/media3/transformer/Transformer$Listener;)V
    .locals 1

    .line 962
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->verifyApplicationThread()V

    .line 963
    iget-object v0, p0, Landroidx/media3/transformer/Transformer;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public resume(Landroidx/media3/transformer/Composition;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1333
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->verifyApplicationThread()V

    .line 1334
    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->compositionContainsSpeedChangingEffects(Landroidx/media3/transformer/Composition;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1335
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/Transformer;->initialize(Landroidx/media3/transformer/Composition;Ljava/lang/String;)V

    .line 1336
    iput-object p3, p0, Landroidx/media3/transformer/Transformer;->oldFilePath:Ljava/lang/String;

    .line 1337
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->remuxProcessedVideo()V

    return-void
.end method

.method public start(Landroidx/media3/common/MediaItem;Ljava/lang/String;)V
    .locals 3

    .line 1119
    new-instance v0, Landroidx/media3/transformer/EditedMediaItem$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;-><init>(Landroidx/media3/common/MediaItem;)V

    iget-boolean p1, p0, Landroidx/media3/transformer/Transformer;->removeAudio:Z

    .line 1121
    invoke-virtual {v0, p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->setRemoveAudio(Z)Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/media3/transformer/Transformer;->removeVideo:Z

    .line 1122
    invoke-virtual {p1, v0}, Landroidx/media3/transformer/EditedMediaItem$Builder;->setRemoveVideo(Z)Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object p1

    new-instance v0, Landroidx/media3/transformer/Effects;

    iget-object v1, p0, Landroidx/media3/transformer/Transformer;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Landroidx/media3/transformer/Transformer;->videoEffects:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2}, Landroidx/media3/transformer/Effects;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 1123
    invoke-virtual {p1, v0}, Landroidx/media3/transformer/EditedMediaItem$Builder;->setEffects(Landroidx/media3/transformer/Effects;)Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object p1

    .line 1124
    invoke-virtual {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->build()Landroidx/media3/transformer/EditedMediaItem;

    move-result-object p1

    .line 1125
    invoke-virtual {p0, p1, p2}, Landroidx/media3/transformer/Transformer;->start(Landroidx/media3/transformer/EditedMediaItem;Ljava/lang/String;)V

    return-void
.end method

.method public start(Landroidx/media3/transformer/Composition;Ljava/lang/String;)V
    .locals 9

    .line 1039
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->verifyApplicationThread()V

    .line 1040
    invoke-direct {p0, p1, p2}, Landroidx/media3/transformer/Transformer;->initialize(Landroidx/media3/transformer/Composition;Ljava/lang/String;)V

    .line 1041
    iget-boolean p1, p0, Landroidx/media3/transformer/Transformer;->trimOptimizationEnabled:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->isSingleAssetTrimming()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1042
    invoke-direct {p0}, Landroidx/media3/transformer/Transformer;->processMediaBeforeFirstSyncSampleAfterTrimStartTime()V

    return-void

    .line 1044
    :cond_0
    iget-object v1, p0, Landroidx/media3/transformer/Transformer;->composition:Landroidx/media3/transformer/Composition;

    new-instance v2, Landroidx/media3/transformer/MuxerWrapper;

    iget-object v3, p0, Landroidx/media3/transformer/Transformer;->outputFilePath:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/transformer/Transformer;->muxerFactory:Landroidx/media3/muxer/Muxer$Factory;

    iget-object v5, p0, Landroidx/media3/transformer/Transformer;->componentListener:Landroidx/media3/transformer/Transformer$ComponentListener;

    iget-boolean v7, p0, Landroidx/media3/transformer/Transformer;->fileStartsOnVideoFrameEnabled:Z

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroidx/media3/transformer/MuxerWrapper;-><init>(Ljava/lang/String;Landroidx/media3/muxer/Muxer$Factory;Landroidx/media3/transformer/MuxerWrapper$Listener;IZLandroidx/media3/common/Format;)V

    iget-object v3, p0, Landroidx/media3/transformer/Transformer;->componentListener:Landroidx/media3/transformer/Transformer$ComponentListener;

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/transformer/Transformer;->startInternal(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/Transformer$ComponentListener;JZ)V

    return-void
.end method

.method public start(Landroidx/media3/transformer/EditedMediaItem;Ljava/lang/String;)V
    .locals 4

    .line 1086
    new-instance v0, Landroidx/media3/transformer/Composition$Builder;

    new-instance v1, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    const/4 v2, 0x1

    new-array v2, v2, [Landroidx/media3/transformer/EditedMediaItem;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;-><init>([Landroidx/media3/transformer/EditedMediaItem;)V

    .line 1087
    invoke-virtual {v1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->build()Landroidx/media3/transformer/EditedMediaItemSequence;

    move-result-object p1

    new-array v1, v3, [Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-direct {v0, p1, v1}, Landroidx/media3/transformer/Composition$Builder;-><init>(Landroidx/media3/transformer/EditedMediaItemSequence;[Landroidx/media3/transformer/EditedMediaItemSequence;)V

    .line 1088
    invoke-virtual {v0}, Landroidx/media3/transformer/Composition$Builder;->build()Landroidx/media3/transformer/Composition;

    move-result-object p1

    .line 1086
    invoke-virtual {p0, p1, p2}, Landroidx/media3/transformer/Transformer;->start(Landroidx/media3/transformer/Composition;Ljava/lang/String;)V

    return-void
.end method
