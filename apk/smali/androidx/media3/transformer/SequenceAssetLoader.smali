.class final Landroidx/media3/transformer/SequenceAssetLoader;
.super Ljava/lang/Object;
.source "SequenceAssetLoader.java"

# interfaces
.implements Landroidx/media3/transformer/AssetLoader;
.implements Landroidx/media3/transformer/AssetLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/SequenceAssetLoader$GapInterceptingAssetLoaderFactory;,
        Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;,
        Landroidx/media3/transformer/SequenceAssetLoader$GapSignalingAssetLoader;,
        Landroidx/media3/transformer/SequenceAssetLoader$ClippingIterator;
    }
.end annotation


# static fields
.field private static final BLANK_IMAGE_BITMAP_FORMAT:Landroidx/media3/common/Format;

.field private static final BLANK_IMAGE_BITMAP_HEIGHT:I = 0x1

.field private static final BLANK_IMAGE_BITMAP_WIDTH:I = 0x1

.field private static final BLANK_IMAGE_FRAME_RATE:F = 30.0f

.field private static final FORCE_AUDIO_TRACK_FORMAT:Landroidx/media3/common/Format;

.field private static final RETRY_DELAY_MS:I = 0xa


# instance fields
.field private final assetLoaderFactory:Landroidx/media3/transformer/AssetLoader$Factory;

.field private final compositionSettings:Landroidx/media3/transformer/AssetLoader$CompositionSettings;

.field private volatile currentAssetDurationAfterEffectsAppliedUs:J

.field private volatile currentAssetDurationUs:J

.field private currentAssetLoader:Landroidx/media3/transformer/AssetLoader;

.field private currentAudioInputFormat:Landroidx/media3/common/Format;

.field private currentMediaItemIndex:I

.field private currentVideoInputFormat:Landroidx/media3/common/Format;

.field private decodeAudio:Z

.field private decodeVideo:Z

.field private final editedMediaItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroidx/media3/common/util/HandlerWrapper;

.field private isCurrentAssetFirstAsset:Z

.field private final isLooping:Z

.field private volatile isMaxSequenceDurationUsFinal:Z

.field private isTrackCountReported:Z

.field private volatile maxSequenceDurationUs:J

.field private final mediaItemChangedListenersByTrackType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/transformer/OnMediaItemChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final nonEndedTrackCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final processedInputsBuilder:Lcom/google/common/collect/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "Landroidx/media3/transformer/ExportResult$ProcessedInput;",
            ">;"
        }
    .end annotation
.end field

.field private processedInputsSize:I

.field private volatile released:Z

.field private final reportedTrackCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final sampleConsumersByTrackType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final sequenceAssetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

.field private volatile sequenceHasAudio:Z

.field private volatile sequenceHasVideo:Z

.field private sequenceLoopCount:I

.field private final sequenceTrackTypes:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "audio/mp4a-latm"

    .line 65
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const v1, 0xac44

    .line 66
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 67
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/transformer/SequenceAssetLoader;->FORCE_AUDIO_TRACK_FORMAT:Landroidx/media3/common/Format;

    .line 72
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "image/raw"

    .line 76
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/ColorInfo;->SRGB_BT709_FULL:Landroidx/media3/common/ColorInfo;

    .line 77
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/transformer/SequenceAssetLoader;->BLANK_IMAGE_BITMAP_FORMAT:Landroidx/media3/common/Format;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/AssetLoader$Factory;Landroidx/media3/transformer/AssetLoader$CompositionSettings;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/common/util/Clock;Landroid/os/Looper;)V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iget-object v0, p1, Landroidx/media3/transformer/EditedMediaItemSequence;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    iput-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceTrackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 141
    iget-object v1, p1, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    .line 142
    invoke-static {v0, v1}, Landroidx/media3/transformer/SequenceAssetLoader;->applySequenceTrackTypeConstraints(Ljava/util/Set;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->editedMediaItems:Ljava/util/List;

    .line 143
    iget-boolean p1, p1, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    iput-boolean p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->isLooping:Z

    .line 144
    new-instance p1, Landroidx/media3/transformer/SequenceAssetLoader$GapInterceptingAssetLoaderFactory;

    invoke-direct {p1, p0, p2}, Landroidx/media3/transformer/SequenceAssetLoader$GapInterceptingAssetLoaderFactory;-><init>(Landroidx/media3/transformer/SequenceAssetLoader;Landroidx/media3/transformer/AssetLoader$Factory;)V

    iput-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->assetLoaderFactory:Landroidx/media3/transformer/AssetLoader$Factory;

    .line 145
    iput-object p3, p0, Landroidx/media3/transformer/SequenceAssetLoader;->compositionSettings:Landroidx/media3/transformer/AssetLoader$CompositionSettings;

    .line 146
    iput-object p4, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceAssetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    const/4 p2, 0x0

    .line 147
    invoke-interface {p5, p6, p2}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 148
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sampleConsumersByTrackType:Ljava/util/Map;

    .line 149
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->mediaItemChangedListenersByTrackType:Ljava/util/Map;

    .line 150
    new-instance p2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {p2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iput-object p2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->processedInputsBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 151
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->reportedTrackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 152
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->nonEndedTrackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    .line 153
    iput-boolean p2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->isCurrentAssetFirstAsset:Z

    const/4 p2, 0x0

    .line 159
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/transformer/EditedMediaItem;

    .line 158
    invoke-interface {p1, p2, p6, p0, p3}, Landroidx/media3/transformer/AssetLoader$Factory;->createAssetLoader(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;)Landroidx/media3/transformer/AssetLoader;

    move-result-object p1

    .line 160
    iput-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAssetLoader:Landroidx/media3/transformer/AssetLoader;

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/transformer/SequenceAssetLoader;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->isLooping:Z

    return p0
.end method

.method static synthetic access$100(Landroidx/media3/transformer/SequenceAssetLoader;)J
    .locals 2

    .line 61
    iget-wide v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->maxSequenceDurationUs:J

    return-wide v0
.end method

.method static synthetic access$1000(Landroidx/media3/transformer/SequenceAssetLoader;)Landroidx/media3/transformer/AssetLoader;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAssetLoader:Landroidx/media3/transformer/AssetLoader;

    return-object p0
.end method

.method static synthetic access$1002(Landroidx/media3/transformer/SequenceAssetLoader;Landroidx/media3/transformer/AssetLoader;)Landroidx/media3/transformer/AssetLoader;
    .locals 0

    .line 61
    iput-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAssetLoader:Landroidx/media3/transformer/AssetLoader;

    return-object p1
.end method

.method static synthetic access$1102(Landroidx/media3/transformer/SequenceAssetLoader;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->isCurrentAssetFirstAsset:Z

    return p1
.end method

.method static synthetic access$1200(Landroidx/media3/transformer/SequenceAssetLoader;)I
    .locals 0

    .line 61
    iget p0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentMediaItemIndex:I

    return p0
.end method

.method static synthetic access$1202(Landroidx/media3/transformer/SequenceAssetLoader;I)I
    .locals 0

    .line 61
    iput p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentMediaItemIndex:I

    return p1
.end method

.method static synthetic access$1208(Landroidx/media3/transformer/SequenceAssetLoader;)I
    .locals 2

    .line 61
    iget v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentMediaItemIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentMediaItemIndex:I

    return v0
.end method

.method static synthetic access$1300(Landroidx/media3/transformer/SequenceAssetLoader;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->editedMediaItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1408(Landroidx/media3/transformer/SequenceAssetLoader;)I
    .locals 2

    .line 61
    iget v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceLoopCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceLoopCount:I

    return v0
.end method

.method static synthetic access$1500(Landroidx/media3/transformer/SequenceAssetLoader;)Landroidx/media3/transformer/AssetLoader$CompositionSettings;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->compositionSettings:Landroidx/media3/transformer/AssetLoader$CompositionSettings;

    return-object p0
.end method

.method static synthetic access$1600(Landroidx/media3/transformer/SequenceAssetLoader;)Landroidx/media3/transformer/AssetLoader$Factory;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->assetLoaderFactory:Landroidx/media3/transformer/AssetLoader$Factory;

    return-object p0
.end method

.method static synthetic access$1700(Landroidx/media3/transformer/SequenceAssetLoader;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceHasAudio:Z

    return p0
.end method

.method static synthetic access$1800(Landroidx/media3/transformer/SequenceAssetLoader;)Lcom/google/common/collect/ImmutableSet;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceTrackTypes:Lcom/google/common/collect/ImmutableSet;

    return-object p0
.end method

.method static synthetic access$1900(Landroidx/media3/transformer/SequenceAssetLoader;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceHasVideo:Z

    return p0
.end method

.method static synthetic access$200(Landroidx/media3/transformer/SequenceAssetLoader;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->isMaxSequenceDurationUsFinal:Z

    return p0
.end method

.method static synthetic access$2000()Landroidx/media3/common/Format;
    .locals 1

    .line 61
    sget-object v0, Landroidx/media3/transformer/SequenceAssetLoader;->BLANK_IMAGE_BITMAP_FORMAT:Landroidx/media3/common/Format;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/graphics/Bitmap;
    .locals 1

    .line 61
    invoke-static {}, Landroidx/media3/transformer/SequenceAssetLoader;->getBlankImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Landroidx/media3/transformer/SequenceAssetLoader;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroidx/media3/transformer/SequenceAssetLoader;->insertBlankFrames(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/media3/transformer/SequenceAssetLoader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->nonEndedTrackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/transformer/SequenceAssetLoader;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceAssetLoader;->isLastMediaItemInSequence()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Landroidx/media3/transformer/SequenceAssetLoader;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->decodeAudio:Z

    return p0
.end method

.method static synthetic access$600(Landroidx/media3/transformer/SequenceAssetLoader;)Landroidx/media3/common/util/HandlerWrapper;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->handler:Landroidx/media3/common/util/HandlerWrapper;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/media3/transformer/SequenceAssetLoader;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->released:Z

    return p0
.end method

.method static synthetic access$800(Landroidx/media3/transformer/SequenceAssetLoader;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceAssetLoader;->addCurrentProcessedInput()V

    return-void
.end method

.method static synthetic access$900(Landroidx/media3/transformer/SequenceAssetLoader;)J
    .locals 2

    .line 61
    iget-wide v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAssetDurationAfterEffectsAppliedUs:J

    return-wide v0
.end method

.method private addCurrentProcessedInput()V
    .locals 11

    .line 212
    iget v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceLoopCount:I

    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->editedMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentMediaItemIndex:I

    add-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->processedInputsSize:I

    if-lt v0, v2, :cond_0

    .line 214
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->editedMediaItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItem;

    iget-object v2, v0, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 215
    invoke-virtual {p0}, Landroidx/media3/transformer/SequenceAssetLoader;->getDecoderNames()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 216
    iget-object v9, p0, Landroidx/media3/transformer/SequenceAssetLoader;->processedInputsBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    new-instance v1, Landroidx/media3/transformer/ExportResult$ProcessedInput;

    iget-wide v3, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAssetDurationUs:J

    iget-object v5, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAudioInputFormat:Landroidx/media3/common/Format;

    iget-object v6, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentVideoInputFormat:Landroidx/media3/common/Format;

    const/4 v10, 0x1

    .line 222
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x2

    .line 223
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Landroidx/media3/transformer/ExportResult$ProcessedInput;-><init>(Landroidx/media3/common/MediaItem;JLandroidx/media3/common/Format;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v9, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 224
    iget v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->processedInputsSize:I

    add-int/2addr v0, v10

    iput v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->processedInputsSize:I

    :cond_0
    return-void
.end method

.method private static applySequenceTrackTypeConstraints(Ljava/util/Set;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x2

    .line 404
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 407
    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 409
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/EditedMediaItem;

    .line 410
    invoke-virtual {v1}, Landroidx/media3/transformer/EditedMediaItem;->isGap()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {v1}, Landroidx/media3/transformer/EditedMediaItem;->buildUpon()Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object v2

    iget-boolean v3, v1, Landroidx/media3/transformer/EditedMediaItem;->removeAudio:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_3

    .line 419
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v5

    .line 418
    :goto_2
    invoke-virtual {v2, v3}, Landroidx/media3/transformer/EditedMediaItem$Builder;->setRemoveAudio(Z)Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object v2

    iget-boolean v1, v1, Landroidx/media3/transformer/EditedMediaItem;->removeVideo:Z

    if-nez v1, :cond_4

    const/4 v1, 0x2

    .line 421
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move v4, v5

    .line 420
    :cond_5
    invoke-virtual {v2, v4}, Landroidx/media3/transformer/EditedMediaItem$Builder;->setRemoveVideo(Z)Landroidx/media3/transformer/EditedMediaItem$Builder;

    move-result-object v1

    .line 422
    invoke-virtual {v1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->build()Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v1

    .line 415
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 424
    :cond_6
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static getBlankImageBitmap()Landroid/graphics/Bitmap;
    .locals 3

    const/high16 v0, -0x1000000

    .line 395
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private insertBlankFrames(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 428
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sampleConsumersByTrackType:Ljava/util/Map;

    const/4 v1, 0x2

    .line 429
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;

    .line 430
    new-instance v1, Landroidx/media3/common/util/ConstantRateTimestampIterator;

    iget-wide v2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAssetDurationUs:J

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-direct {v1, v2, v3, v4}, Landroidx/media3/common/util/ConstantRateTimestampIterator;-><init>(JF)V

    invoke-virtual {v0, p1, v1}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->queueInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 434
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->handler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Landroidx/media3/transformer/SequenceAssetLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/transformer/SequenceAssetLoader$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/transformer/SequenceAssetLoader;Landroid/graphics/Bitmap;)V

    const-wide/16 v2, 0xa

    invoke-interface {v0, v1, v2, v3}, Landroidx/media3/common/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 436
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;->signalEndOfVideoInput()V

    return-void
.end method

.method private isLastMediaItemInSequence()Z
    .locals 3

    .line 508
    iget v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentMediaItemIndex:I

    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->editedMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onMediaItemChanged(ILandroidx/media3/common/Format;)V
    .locals 9

    .line 442
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->mediaItemChangedListenersByTrackType:Ljava/util/Map;

    .line 443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/media3/transformer/OnMediaItemChangedListener;

    if-nez v1, :cond_0

    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->editedMediaItems:Ljava/util/List;

    iget v2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentMediaItemIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/media3/transformer/EditedMediaItem;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 452
    iget-boolean v3, p0, Landroidx/media3/transformer/SequenceAssetLoader;->isLooping:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroidx/media3/transformer/SequenceAssetLoader;->decodeAudio:Z

    if-eqz v3, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 454
    :cond_1
    iget-wide v3, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAssetDurationUs:J

    .line 455
    :goto_0
    invoke-virtual {v2}, Landroidx/media3/transformer/EditedMediaItem;->isGap()Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne p1, v0, :cond_2

    const/4 p2, 0x0

    :cond_2
    move-object v5, p2

    .line 458
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceAssetLoader;->isLastMediaItemInSequence()Z

    move-result v6

    const-wide/16 v7, 0x0

    .line 450
    invoke-interface/range {v1 .. v8}, Landroidx/media3/transformer/OnMediaItemChangedListener;->onMediaItemChanged(Landroidx/media3/transformer/EditedMediaItem;JLandroidx/media3/common/Format;ZJ)V

    return-void
.end method


# virtual methods
.method public addOnMediaItemChangedListener(Landroidx/media3/transformer/OnMediaItemChangedListener;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 244
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 245
    iget-object v2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->mediaItemChangedListenersByTrackType:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 246
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->mediaItemChangedListenersByTrackType:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

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

    .line 194
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAssetLoader:Landroidx/media3/transformer/AssetLoader;

    invoke-interface {v0}, Landroidx/media3/transformer/AssetLoader;->getDecoderNames()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getProcessedInputs()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/transformer/ExportResult$ProcessedInput;",
            ">;"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceAssetLoader;->addCurrentProcessedInput()V

    .line 202
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->processedInputsBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getProgress(Landroidx/media3/transformer/ProgressHolder;)I
    .locals 6

    .line 175
    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->isLooping:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 178
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAssetLoader:Landroidx/media3/transformer/AssetLoader;

    invoke-interface {v0, p1}, Landroidx/media3/transformer/AssetLoader;->getProgress(Landroidx/media3/transformer/ProgressHolder;)I

    move-result v0

    .line 179
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->editedMediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    iget v2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentMediaItemIndex:I

    int-to-long v2, v2

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Landroidx/media3/common/util/Util;->percentInt(JJ)I

    move-result v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 186
    iget v0, p1, Landroidx/media3/transformer/ProgressHolder;->progress:I

    div-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 188
    :cond_2
    iput v2, p1, Landroidx/media3/transformer/ProgressHolder;->progress:I

    return v3

    :cond_3
    :goto_0
    return v0
.end method

.method synthetic lambda$insertBlankFrames$1$androidx-media3-transformer-SequenceAssetLoader(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 434
    invoke-direct {p0, p1}, Landroidx/media3/transformer/SequenceAssetLoader;->insertBlankFrames(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method synthetic lambda$onOutputFormat$0$androidx-media3-transformer-SequenceAssetLoader()V
    .locals 1

    .line 385
    invoke-static {}, Landroidx/media3/transformer/SequenceAssetLoader;->getBlankImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/transformer/SequenceAssetLoader;->insertBlankFrames(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onDurationUs(J)V
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 485
    invoke-direct {p0}, Landroidx/media3/transformer/SequenceAssetLoader;->isLastMediaItemInSequence()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const-string v2, "Could not retrieve required duration for EditedMediaItem %s"

    iget v3, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentMediaItemIndex:I

    .line 484
    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 488
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->editedMediaItems:Ljava/util/List;

    iget v2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentMediaItemIndex:I

    .line 489
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItem;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/transformer/EditedMediaItem;->getDurationAfterEffectsApplied(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAssetDurationAfterEffectsAppliedUs:J

    .line 490
    iput-wide p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAssetDurationUs:J

    .line 491
    iget-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->editedMediaItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->isLooping:Z

    if-nez p1, :cond_2

    .line 492
    iget-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceAssetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    iget-wide v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAssetDurationAfterEffectsAppliedUs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/transformer/AssetLoader$Listener;->onDurationUs(J)V

    :cond_2
    return-void
.end method

.method public onError(Landroidx/media3/transformer/ExportException;)V
    .locals 1

    .line 504
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceAssetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    invoke-interface {v0, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method public bridge synthetic onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SampleConsumer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroidx/media3/transformer/SequenceAssetLoader;->onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;

    move-result-object p1

    return-object p1
.end method

.method public onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 315
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/transformer/TransformerUtil;->getProcessedTrackType(Ljava/lang/String;)I

    move-result v0

    .line 321
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v7

    .line 316
    const-string v2, "AssetLoader"

    const-string v3, "OutputFormat"

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-string v6, "%s:%s"

    invoke-static/range {v2 .. v7}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    .line 325
    iget-boolean v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->isCurrentAssetFirstAsset:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 353
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    .line 341
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v1, :cond_3

    if-ne v0, v3, :cond_0

    .line 328
    iput-boolean v5, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceHasVideo:Z

    goto :goto_0

    .line 330
    :cond_0
    iput-boolean v5, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceHasAudio:Z

    .line 333
    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceAssetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    invoke-interface {v1, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SampleConsumer;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    .line 337
    :cond_1
    new-instance v7, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;

    invoke-direct {v7, p0, v1, v0}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;-><init>(Landroidx/media3/transformer/SequenceAssetLoader;Landroidx/media3/transformer/SampleConsumer;I)V

    .line 338
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sampleConsumersByTrackType:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->reportedTrackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 341
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1, v6}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v0, v3, :cond_2

    .line 342
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceAssetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    sget-object v4, Landroidx/media3/transformer/SequenceAssetLoader;->FORCE_AUDIO_TRACK_FORMAT:Landroidx/media3/common/Format;

    .line 346
    invoke-virtual {v4}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v4

    const-string v8, "audio/raw"

    .line 347
    invoke-virtual {v4, v8}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 348
    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 349
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    .line 344
    invoke-interface {v1, v4}, Landroidx/media3/transformer/AssetLoader$Listener;->onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SampleConsumer;

    move-result-object v1

    .line 343
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/SampleConsumer;

    .line 350
    iget-object v4, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sampleConsumersByTrackType:Ljava/util/Map;

    .line 351
    new-instance v8, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;

    invoke-direct {v8, p0, v1, v5}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;-><init>(Landroidx/media3/transformer/SequenceAssetLoader;Landroidx/media3/transformer/SampleConsumer;I)V

    .line 350
    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 353
    :cond_2
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne v0, v5, :cond_5

    .line 355
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceAssetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    sget-object v6, Landroidx/media3/transformer/SequenceAssetLoader;->BLANK_IMAGE_BITMAP_FORMAT:Landroidx/media3/common/Format;

    .line 356
    invoke-interface {v1, v6}, Landroidx/media3/transformer/AssetLoader$Listener;->onOutputFormat(Landroidx/media3/common/Format;)Landroidx/media3/transformer/SampleConsumer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/SampleConsumer;

    .line 357
    iget-object v6, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sampleConsumersByTrackType:Ljava/util/Map;

    .line 358
    new-instance v8, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;

    invoke-direct {v8, p0, v1, v3}, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;-><init>(Landroidx/media3/transformer/SequenceAssetLoader;Landroidx/media3/transformer/SampleConsumer;I)V

    .line 357
    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    if-ne v0, v5, :cond_4

    .line 366
    const-string v1, "The preceding MediaItem does not contain any audio track. If the sequence starts with an item without audio track (like images), followed by items with audio tracks, then EditedMediaItemSequence.Builder.experimentalSetForceAudioTrack() needs to be set to true."

    goto :goto_1

    .line 371
    :cond_4
    const-string v1, "The preceding MediaItem does not contain any video track. If the sequence starts with an item without video track (audio only), followed by items with video tracks, then EditedMediaItemSequence.Builder.experimentalSetForceVideoTrack() needs to be set to true."

    .line 376
    :goto_1
    iget-object v4, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sampleConsumersByTrackType:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;

    invoke-static {v4, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/media3/transformer/SequenceAssetLoader$SampleConsumerWrapper;

    .line 378
    :cond_5
    :goto_2
    invoke-direct {p0, v0, p1}, Landroidx/media3/transformer/SequenceAssetLoader;->onMediaItemChanged(ILandroidx/media3/common/Format;)V

    .line 379
    iget-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->reportedTrackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v5, :cond_7

    iget-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sampleConsumersByTrackType:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v3, :cond_7

    if-ne v0, v5, :cond_6

    .line 383
    sget-object p1, Landroidx/media3/transformer/SequenceAssetLoader;->BLANK_IMAGE_BITMAP_FORMAT:Landroidx/media3/common/Format;

    invoke-direct {p0, v3, p1}, Landroidx/media3/transformer/SequenceAssetLoader;->onMediaItemChanged(ILandroidx/media3/common/Format;)V

    .line 384
    iget-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->nonEndedTrackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 385
    iget-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->handler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v0, Landroidx/media3/transformer/SequenceAssetLoader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/media3/transformer/SequenceAssetLoader$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/transformer/SequenceAssetLoader;)V

    invoke-interface {p1, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-object v7

    .line 388
    :cond_6
    invoke-direct {p0, v5, v2}, Landroidx/media3/transformer/SequenceAssetLoader;->onMediaItemChanged(ILandroidx/media3/common/Format;)V

    :cond_7
    return-object v7
.end method

.method public onTrackAdded(Landroidx/media3/common/Format;I)Z
    .locals 10

    .line 251
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/transformer/TransformerUtil;->getProcessedTrackType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 257
    const-string v3, "audio"

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "video"

    :goto_1
    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object v9

    .line 252
    const-string v4, "AssetLoader"

    const-string v5, "InputFormat"

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-string v8, "%s:%s"

    invoke-static/range {v4 .. v9}, Landroidx/media3/effect/DebugTraceUtil;->logEvent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 261
    iput-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAudioInputFormat:Landroidx/media3/common/Format;

    goto :goto_2

    .line 263
    :cond_2
    iput-object p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentVideoInputFormat:Landroidx/media3/common/Format;

    .line 266
    :goto_2
    iget-boolean v3, p0, Landroidx/media3/transformer/SequenceAssetLoader;->isCurrentAssetFirstAsset:Z

    const/4 v4, 0x2

    if-nez v3, :cond_7

    if-eqz v0, :cond_3

    .line 267
    iget-boolean p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->decodeAudio:Z

    goto :goto_3

    :cond_3
    iget-boolean p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->decodeVideo:Z

    :goto_3
    if-eqz p1, :cond_5

    and-int/2addr p2, v4

    if-eqz p2, :cond_4

    move v1, v2

    .line 269
    :cond_4
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    return p1

    :cond_5
    and-int/2addr p2, v2

    if-eqz p2, :cond_6

    move v1, v2

    .line 271
    :cond_6
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    return p1

    .line 278
    :cond_7
    iget-object v3, p0, Landroidx/media3/transformer/SequenceAssetLoader;->reportedTrackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 279
    iget-object v3, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v0, :cond_8

    move v3, v2

    goto :goto_4

    :cond_8
    move v3, v1

    .line 280
    :goto_4
    iget-object v5, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v0, :cond_9

    move v5, v2

    goto :goto_5

    :cond_9
    move v5, v1

    goto :goto_5

    :cond_a
    move v3, v1

    move v5, v3

    .line 283
    :goto_5
    iget-boolean v6, p0, Landroidx/media3/transformer/SequenceAssetLoader;->isTrackCountReported:Z

    if-nez v6, :cond_d

    .line 284
    iget-object v6, p0, Landroidx/media3/transformer/SequenceAssetLoader;->reportedTrackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v3, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    move v1, v2

    :cond_c
    add-int/2addr v6, v1

    .line 285
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceAssetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    invoke-interface {v1, v6}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackCount(I)V

    .line 286
    iput-boolean v2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->isTrackCountReported:Z

    .line 289
    :cond_d
    iget-object v1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceAssetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    .line 290
    invoke-interface {v1, p1, p2}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackAdded(Landroidx/media3/common/Format;I)Z

    move-result p1

    if-eqz v0, :cond_e

    .line 293
    iput-boolean p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->decodeAudio:Z

    goto :goto_6

    .line 295
    :cond_e
    iput-boolean p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->decodeVideo:Z

    :goto_6
    if-eqz v3, :cond_f

    .line 299
    iget-object p2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceAssetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    sget-object v0, Landroidx/media3/transformer/SequenceAssetLoader;->FORCE_AUDIO_TRACK_FORMAT:Landroidx/media3/common/Format;

    invoke-interface {p2, v0, v4}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackAdded(Landroidx/media3/common/Format;I)Z

    .line 301
    iput-boolean v2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->decodeAudio:Z

    :cond_f
    if-eqz v5, :cond_10

    .line 304
    iget-object p2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceAssetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    sget-object v0, Landroidx/media3/transformer/SequenceAssetLoader;->BLANK_IMAGE_BITMAP_FORMAT:Landroidx/media3/common/Format;

    invoke-interface {p2, v0, v4}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackAdded(Landroidx/media3/common/Format;I)Z

    .line 306
    iput-boolean v2, p0, Landroidx/media3/transformer/SequenceAssetLoader;->decodeVideo:Z

    :cond_10
    return p1
.end method

.method public onTrackCount(I)V
    .locals 1

    .line 498
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->reportedTrackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 499
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->nonEndedTrackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAssetLoader:Landroidx/media3/transformer/AssetLoader;

    invoke-interface {v0}, Landroidx/media3/transformer/AssetLoader;->release()V

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->released:Z

    return-void
.end method

.method public setMaxSequenceDurationUs(JZ)V
    .locals 0

    .line 478
    iput-wide p1, p0, Landroidx/media3/transformer/SequenceAssetLoader;->maxSequenceDurationUs:J

    .line 479
    iput-boolean p3, p0, Landroidx/media3/transformer/SequenceAssetLoader;->isMaxSequenceDurationUsFinal:Z

    return-void
.end method

.method public start()V
    .locals 3

    .line 167
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->currentAssetLoader:Landroidx/media3/transformer/AssetLoader;

    invoke-interface {v0}, Landroidx/media3/transformer/AssetLoader;->start()V

    .line 168
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->editedMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->isLooping:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 169
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceAssetLoader;->sequenceAssetLoaderListener:Landroidx/media3/transformer/AssetLoader$Listener;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {v0, v1, v2}, Landroidx/media3/transformer/AssetLoader$Listener;->onDurationUs(J)V

    return-void
.end method
