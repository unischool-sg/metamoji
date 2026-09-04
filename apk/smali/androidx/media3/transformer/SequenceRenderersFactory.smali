.class final Landroidx/media3/transformer/SequenceRenderersFactory;
.super Ljava/lang/Object;
.source "SequenceRenderersFactory.java"

# interfaces
.implements Landroidx/media3/exoplayer/RenderersFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;,
        Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;,
        Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;,
        Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;
    }
.end annotation


# static fields
.field private static final DEFAULT_FRAME_RATE:I = 0x1e


# instance fields
.field private audioRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;

.field private compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

.field private compositionTextureListener:Landroidx/media3/transformer/CompositionTextureListener;

.field private final context:Landroid/content/Context;

.field private final imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

.field private imageRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;

.field private final inputIndex:I

.field private final playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

.field private primaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

.field private secondaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

.field private final videoPrewarmingEnabled:Z

.field private final videoSink:Landroidx/media3/exoplayer/video/VideoSink;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/exoplayer/image/ImageDecoder$Factory;IZ)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->context:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    .line 139
    iput-object p3, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    .line 140
    iput-object p4, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    .line 141
    iput p5, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->inputIndex:I

    .line 142
    iput-boolean p6, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->videoPrewarmingEnabled:Z

    return-void
.end method

.method static synthetic access$500(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J
    .locals 0

    .line 70
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/transformer/SequenceRenderersFactory;->getOffsetToCompositionTimeUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/transformer/EditedMediaItem;
    .locals 0

    .line 70
    invoke-static {p0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory;->getEditedMediaItem(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 0

    .line 70
    invoke-static {p0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory;->isLastInSequence(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Landroidx/media3/transformer/SequenceRenderersFactory;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->videoPrewarmingEnabled:Z

    return p0
.end method

.method static synthetic access$900(Landroidx/media3/transformer/SequenceRenderersFactory;)Landroidx/media3/exoplayer/video/VideoSink;
    .locals 0

    .line 70
    iget-object p0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/exoplayer/image/ImageDecoder$Factory;IZ)Landroidx/media3/transformer/SequenceRenderersFactory;
    .locals 7

    .line 121
    new-instance v0, Landroidx/media3/transformer/SequenceRenderersFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media3/transformer/SequenceRenderersFactory;-><init>(Landroid/content/Context;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/exoplayer/image/ImageDecoder$Factory;IZ)V

    return-object v0
.end method

.method private static getEditedMediaItem(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/transformer/EditedMediaItem;
    .locals 2

    .line 285
    iget-object v0, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 286
    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 287
    invoke-virtual {p0, p1, v1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    .line 288
    iget-object p1, p0, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    instance-of p1, p1, Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 289
    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/transformer/EditedMediaItemSequence;

    .line 290
    invoke-static {p0, v0}, Landroidx/media3/transformer/EditedMediaItemSequence;->getEditedMediaItem(Landroidx/media3/transformer/EditedMediaItemSequence;I)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static getOffsetToCompositionTimeUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J
    .locals 2

    .line 272
    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 273
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    neg-long p1, p2

    .line 274
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private static isLastInSequence(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 1

    .line 280
    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createRenderers(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;
    .locals 13

    .line 190
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->audioRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;

    if-nez v0, :cond_0

    .line 192
    new-instance v7, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;

    iget-object v8, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->context:Landroid/content/Context;

    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    iget v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->inputIndex:I

    .line 197
    invoke-virtual {v0, v2}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->createInput(I)Landroidx/media3/transformer/AudioGraphInputAudioSink;

    move-result-object v11

    iget-object v12, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->playbackAudioGraphWrapper:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    move-object v9, p1

    move-object/from16 v10, p3

    invoke-direct/range {v7 .. v12}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/transformer/AudioGraphInputAudioSink;Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)V

    iput-object v7, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->audioRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;

    .line 200
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

    if-eqz v0, :cond_1

    .line 201
    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->audioRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;

    invoke-static {v2, v0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->access$200(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V

    .line 203
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->audioRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_8

    .line 206
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->primaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    if-nez v0, :cond_2

    .line 207
    new-instance v0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->context:Landroid/content/Context;

    new-instance v5, Landroidx/media3/transformer/BufferingVideoSink;

    iget-object v3, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->context:Landroid/content/Context;

    invoke-direct {v5, v3}, Landroidx/media3/transformer/BufferingVideoSink;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;-><init>(Landroidx/media3/transformer/SequenceRenderersFactory;Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/transformer/BufferingVideoSink;)V

    iput-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->primaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    .line 211
    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

    if-eqz v0, :cond_3

    .line 212
    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->primaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    invoke-static {v2, v0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->access$000(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V

    .line 214
    :cond_3
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->compositionTextureListener:Landroidx/media3/transformer/CompositionTextureListener;

    if-eqz v0, :cond_4

    .line 215
    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->primaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    invoke-static {v2, v0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->access$300(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;Landroidx/media3/transformer/CompositionTextureListener;)V

    .line 217
    :cond_4
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->primaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->imageRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;

    if-nez v0, :cond_5

    .line 219
    new-instance v0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;

    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    iget-object v3, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-direct {v0, v2, v3}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;-><init>(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;Landroidx/media3/exoplayer/video/VideoSink;)V

    iput-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->imageRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;

    .line 221
    :cond_5
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

    if-eqz v0, :cond_6

    .line 222
    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->imageRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;

    invoke-static {v2, v0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->access$100(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V

    .line 224
    :cond_6
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->compositionTextureListener:Landroidx/media3/transformer/CompositionTextureListener;

    if-eqz v0, :cond_7

    .line 225
    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->imageRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;

    invoke-static {v2, v0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->access$400(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;Landroidx/media3/transformer/CompositionTextureListener;)V

    .line 227
    :cond_7
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->imageRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v0, 0x0

    .line 229
    new-array v0, v0, [Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/exoplayer/Renderer;

    return-object v0
.end method

.method public createSecondaryRenderer(Landroidx/media3/exoplayer/Renderer;Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)Landroidx/media3/exoplayer/Renderer;
    .locals 6

    .line 241
    iget-boolean p4, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->videoPrewarmingEnabled:Z

    if-eqz p4, :cond_3

    instance-of p1, p1, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    if-eqz p1, :cond_3

    .line 242
    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->secondaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    if-nez p1, :cond_0

    .line 243
    new-instance v0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    iget-object v2, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->context:Landroid/content/Context;

    new-instance v5, Landroidx/media3/transformer/BufferingVideoSink;

    iget-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->context:Landroid/content/Context;

    invoke-direct {v5, p1}, Landroidx/media3/transformer/BufferingVideoSink;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;-><init>(Landroidx/media3/transformer/SequenceRenderersFactory;Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/transformer/BufferingVideoSink;)V

    iput-object v0, v1, Landroidx/media3/transformer/SequenceRenderersFactory;->secondaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 247
    :goto_0
    iget-object p1, v1, Landroidx/media3/transformer/SequenceRenderersFactory;->compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

    if-eqz p1, :cond_1

    .line 248
    iget-object p2, v1, Landroidx/media3/transformer/SequenceRenderersFactory;->secondaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    invoke-static {p2, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->access$000(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V

    .line 250
    :cond_1
    iget-object p1, v1, Landroidx/media3/transformer/SequenceRenderersFactory;->compositionTextureListener:Landroidx/media3/transformer/CompositionTextureListener;

    if-eqz p1, :cond_2

    .line 251
    iget-object p2, v1, Landroidx/media3/transformer/SequenceRenderersFactory;->secondaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    invoke-static {p2, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->access$300(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;Landroidx/media3/transformer/CompositionTextureListener;)V

    .line 253
    :cond_2
    iget-object p1, v1, Landroidx/media3/transformer/SequenceRenderersFactory;->secondaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    return-object p1

    :cond_3
    move-object v1, p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setCompositionTextureListener(Landroidx/media3/transformer/CompositionTextureListener;)V
    .locals 1

    .line 171
    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->compositionTextureListener:Landroidx/media3/transformer/CompositionTextureListener;

    .line 172
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->primaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    if-eqz v0, :cond_0

    .line 173
    invoke-static {v0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->access$300(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;Landroidx/media3/transformer/CompositionTextureListener;)V

    .line 175
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->secondaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    if-eqz v0, :cond_1

    .line 176
    invoke-static {v0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->access$300(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;Landroidx/media3/transformer/CompositionTextureListener;)V

    .line 178
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->imageRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;

    if-eqz v0, :cond_2

    .line 179
    invoke-static {v0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->access$400(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;Landroidx/media3/transformer/CompositionTextureListener;)V

    :cond_2
    return-void
.end method

.method public setOnRenderListener(Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V
    .locals 1

    .line 155
    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->compositionRendererListener:Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;

    .line 156
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->primaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    if-eqz v0, :cond_0

    .line 157
    invoke-static {v0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->access$000(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V

    .line 159
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->secondaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    if-eqz v0, :cond_1

    .line 160
    invoke-static {v0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->access$000(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V

    .line 162
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->imageRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;

    if-eqz v0, :cond_2

    .line 163
    invoke-static {v0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->access$100(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V

    .line 165
    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->audioRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;

    if-eqz v0, :cond_3

    .line 166
    invoke-static {v0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;->access$200(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceAudioRenderer;Landroidx/media3/transformer/SequenceRenderersFactory$CompositionRendererListener;)V

    :cond_3
    return-void
.end method

.method public setRequestMediaCodecToneMapping(Z)V
    .locals 1

    .line 146
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->primaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->setRequestMediaCodecToneMapping(Z)V

    .line 149
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory;->secondaryVideoRenderer:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0, p1}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceVideoRenderer;->setRequestMediaCodecToneMapping(Z)V

    :cond_1
    return-void
.end method
