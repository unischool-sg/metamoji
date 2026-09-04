.class public final Lio/github/toyota32k/media/lib/audio/AudioChannel;
.super Ljava/lang/Object;
.source "AudioChannel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/media/lib/audio/AudioChannel$Companion;,
        Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000 12\u00020\u0001:\u000201B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0006J\u0010\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0002J\u001e\u0010$\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\u0006J\u0018\u0010\'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020#H\u0002J \u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0004H\u0002J\u0016\u0010-\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020\u00102\u0006\u0010/\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0018\u0010\u000e\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0008@BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/audio/AudioChannel;",
        "",
        "()V",
        "BYTES_PER_SHORT",
        "",
        "MICROSECS_PER_SEC",
        "",
        "eos",
        "",
        "getEos",
        "()Z",
        "hasData",
        "getHasData",
        "<set-?>",
        "inputEos",
        "mActualDecodedFormat",
        "Landroid/media/MediaFormat;",
        "mEmptyBuffers",
        "Ljava/util/Queue;",
        "Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;",
        "mFilledBuffers",
        "mInputChannelCount",
        "mInputSampleRate",
        "mOutputChannelCount",
        "mOverflowBuffer",
        "mRemixer",
        "Lio/github/toyota32k/media/lib/audio/AudioRemixer;",
        "drainDecoderBufferAndQueue",
        "",
        "decoder",
        "Landroid/media/MediaCodec;",
        "bufferIndex",
        "presentationTimeUs",
        "drainOverflow",
        "outBuff",
        "Ljava/nio/ShortBuffer;",
        "feedEncoder",
        "encoder",
        "timeoutUs",
        "remixAndMaybeFillOverflow",
        "input",
        "sampleCountToDurationUs",
        "sampleCount",
        "sampleRate",
        "channelCount",
        "setActualDecodedFormat",
        "decodedFormat",
        "encodeFormat",
        "AudioBuffer",
        "Companion",
        "libMedia_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BUFFER_INDEX_END_OF_STREAM:I

.field public static final Companion:Lio/github/toyota32k/media/lib/audio/AudioChannel$Companion;

.field private static final logger:Lio/github/toyota32k/media/lib/utils/UtLog;


# instance fields
.field private final BYTES_PER_SHORT:I

.field private final MICROSECS_PER_SEC:J

.field private inputEos:Z

.field private mActualDecodedFormat:Landroid/media/MediaFormat;

.field private final mEmptyBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilledBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mInputChannelCount:I

.field private mInputSampleRate:I

.field private mOutputChannelCount:I

.field private final mOverflowBuffer:Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;

.field private mRemixer:Lio/github/toyota32k/media/lib/audio/AudioRemixer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lio/github/toyota32k/media/lib/audio/AudioChannel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/media/lib/audio/AudioChannel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->Companion:Lio/github/toyota32k/media/lib/audio/AudioChannel$Companion;

    const/4 v0, -0x1

    .line 15
    sput v0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->BUFFER_INDEX_END_OF_STREAM:I

    .line 16
    new-instance v1, Lio/github/toyota32k/media/lib/utils/UtLog;

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v2, "AC"

    const/4 v3, 0x0

    const-string v4, "io.github.toyota32k.media."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lio/github/toyota32k/media/lib/utils/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/media/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lio/github/toyota32k/media/lib/audio/AudioChannel;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->BYTES_PER_SHORT:I

    const-wide/32 v0, 0xf4240

    .line 25
    iput-wide v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->MICROSECS_PER_SEC:J

    .line 27
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mEmptyBuffers:Ljava/util/Queue;

    .line 28
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mFilledBuffers:Ljava/util/Queue;

    .line 42
    new-instance v0, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;-><init>()V

    iput-object v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mOverflowBuffer:Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;

    return-void
.end method

.method public static final synthetic access$getBUFFER_INDEX_END_OF_STREAM$cp()I
    .locals 1

    .line 13
    sget v0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->BUFFER_INDEX_END_OF_STREAM:I

    return v0
.end method

.method public static final synthetic access$getLogger$cp()Lio/github/toyota32k/media/lib/utils/UtLog;
    .locals 1

    .line 13
    sget-object v0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    return-object v0
.end method

.method private final drainOverflow(Ljava/nio/ShortBuffer;)J
    .locals 8

    .line 154
    iget-object v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mOverflowBuffer:Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->getData()Ljava/nio/ShortBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 155
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    .line 156
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    .line 157
    iget-object v3, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mOverflowBuffer:Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;

    invoke-virtual {v3}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->getPresentationTimeUs()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->position()I

    move-result v5

    iget v6, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mInputSampleRate:I

    iget v7, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mOutputChannelCount:I

    invoke-direct {p0, v5, v6, v7}, Lio/github/toyota32k/media/lib/audio/AudioChannel;->sampleCountToDurationUs(III)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 158
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 159
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 160
    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 161
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result p1

    if-lt v2, p1, :cond_1

    .line 162
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-wide v3

    .line 164
    :cond_1
    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    return-wide v3
.end method

.method private final getHasData()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mFilledBuffers:Ljava/util/Queue;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final remixAndMaybeFillOverflow(Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;Ljava/nio/ShortBuffer;)J
    .locals 6

    .line 170
    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->getData()Ljava/nio/ShortBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 171
    :cond_0
    iget-object v1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mOverflowBuffer:Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;

    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->getData()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 172
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 175
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 176
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "mRemixer"

    if-le v2, v3, :cond_4

    .line 177
    sget-object v2, Lio/github/toyota32k/media/lib/audio/AudioChannel;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string v3, "remix with overflow data"

    invoke-virtual {v2, v3}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 180
    iget-object v2, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mRemixer:Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    if-nez v2, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_1
    invoke-interface {v2, v0, p2}, Lio/github/toyota32k/media/lib/audio/AudioRemixer;->remix(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V

    .line 183
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 187
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->position()I

    move-result p2

    iget v2, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mInputSampleRate:I

    iget v3, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mInputChannelCount:I

    invoke-direct {p0, p2, v2, v3}, Lio/github/toyota32k/media/lib/audio/AudioChannel;->sampleCountToDurationUs(III)J

    move-result-wide v2

    if-eqz v1, :cond_3

    .line 189
    iget-object p2, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mRemixer:Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    if-nez p2, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v4, p2

    :goto_0
    invoke-interface {v4, v0, v1}, Lio/github/toyota32k/media/lib/audio/AudioRemixer;->remix(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V

    .line 192
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 194
    :cond_3
    iget-object p2, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mOverflowBuffer:Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->getPresentationTimeUs()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->setPresentationTimeUs(J)V

    goto :goto_2

    .line 197
    :cond_4
    iget-object v1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mRemixer:Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    if-nez v1, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v4, v1

    :goto_1
    invoke-interface {v4, v0, p2}, Lio/github/toyota32k/media/lib/audio/AudioRemixer;->remix(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V

    .line 199
    :goto_2
    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->getPresentationTimeUs()J

    move-result-wide p1

    return-wide p1
.end method

.method private final sampleCountToDurationUs(III)J
    .locals 4

    int-to-long v0, p1

    int-to-long p1, p2

    .line 150
    iget-wide v2, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->MICROSECS_PER_SEC:J

    mul-long/2addr p1, v2

    div-long/2addr v0, p1

    int-to-long p1, p3

    div-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public final drainDecoderBufferAndQueue(Landroid/media/MediaCodec;IJ)V
    .locals 2

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mActualDecodedFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_4

    .line 77
    sget v0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->BUFFER_INDEX_END_OF_STREAM:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 78
    sget-object p1, Lio/github/toyota32k/media/lib/audio/AudioChannel;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string v0, "detect EOS (push to filledBuffers"

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->inputEos:Z

    .line 80
    move-object p1, v1

    check-cast p1, Ljava/nio/ByteBuffer;

    move-object p1, v1

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 82
    :goto_0
    iget-object v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mEmptyBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;

    if-nez v0, :cond_1

    new-instance v0, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;

    invoke-direct {v0}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;-><init>()V

    .line 84
    :cond_1
    invoke-virtual {v0, p2}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->setBufferIndex(I)V

    .line 85
    invoke-virtual {v0, p3, p4}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->setPresentationTimeUs(J)V

    if-nez p1, :cond_2

    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->setData(Ljava/nio/ShortBuffer;)V

    .line 88
    iget-object p2, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mOverflowBuffer:Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;

    invoke-virtual {p2}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->getData()Ljava/nio/ShortBuffer;

    move-result-object p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    .line 89
    iget-object p2, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mOverflowBuffer:Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 91
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 89
    invoke-virtual {p2, p1}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->setData(Ljava/nio/ShortBuffer;)V

    .line 97
    :cond_3
    iget-object p1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mFilledBuffers:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 75
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Buffer received before format!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final feedEncoder(Landroid/media/MediaCodec;Landroid/media/MediaCodec;J)Z
    .locals 10

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mOverflowBuffer:Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->getData()Ljava/nio/ShortBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->hasRemaining()Z

    move-result v0

    .line 103
    :goto_0
    iget-object v2, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mFilledBuffers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 104
    sget-object p1, Lio/github/toyota32k/media/lib/audio/AudioChannel;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string p2, "no audio data -- bail out"

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return v1

    .line 107
    :cond_1
    invoke-virtual {p2, p3, p4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-gez v3, :cond_2

    .line 109
    sget-object p1, Lio/github/toyota32k/media/lib/audio/AudioChannel;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    sget-object p2, Lio/github/toyota32k/media/lib/audio/AudioChannel$feedEncoder$1;->INSTANCE:Lio/github/toyota32k/media/lib/audio/AudioChannel$feedEncoder$1;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->verbose(Lkotlin/jvm/functions/Function0;)V

    return v1

    .line 113
    :cond_2
    const-string p3, "no output (encoder) buffer."

    const/4 p4, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 114
    sget-object p1, Lio/github/toyota32k/media/lib/audio/AudioChannel;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string v0, "found over flow data"

    invoke-virtual {p1, v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_4

    .line 118
    invoke-virtual {p1, p3}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    return v1

    .line 122
    :cond_4
    invoke-direct {p0, v2}, Lio/github/toyota32k/media/lib/audio/AudioChannel;->drainOverflow(Ljava/nio/ShortBuffer;)J

    move-result-wide v6

    .line 123
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->position()I

    move-result p1

    iget p3, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->BYTES_PER_SHORT:I

    mul-int v5, p1, p3

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return p4

    :cond_5
    move-object v9, v2

    move-object v2, p2

    move-object p2, v9

    .line 126
    iget-object v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mFilledBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;

    if-nez v0, :cond_6

    .line 128
    sget-object p1, Lio/github/toyota32k/media/lib/audio/AudioChannel;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string p2, "filledBuffers queue is empty."

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return v1

    .line 131
    :cond_6
    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->getBufferIndex()I

    move-result v4

    sget v5, Lio/github/toyota32k/media/lib/audio/AudioChannel;->BUFFER_INDEX_END_OF_STREAM:I

    if-ne v4, v5, :cond_7

    .line 132
    sget-object p1, Lio/github/toyota32k/media/lib/audio/AudioChannel;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string p2, "detect EOS (enqueue in encoder)."

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 133
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return v1

    .line 136
    :cond_7
    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p2

    :goto_2
    if-nez p2, :cond_9

    .line 138
    sget-object p1, Lio/github/toyota32k/media/lib/audio/AudioChannel;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    invoke-virtual {p1, p3}, Lio/github/toyota32k/media/lib/utils/UtLog;->info(Ljava/lang/String;)V

    return v1

    .line 142
    :cond_9
    invoke-direct {p0, v0, p2}, Lio/github/toyota32k/media/lib/audio/AudioChannel;->remixAndMaybeFillOverflow(Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;Ljava/nio/ShortBuffer;)J

    move-result-wide v6

    .line 143
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->position()I

    move-result p2

    iget p3, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->BYTES_PER_SHORT:I

    mul-int v5, p2, p3

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 144
    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->getBufferIndex()I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 145
    iget-object p1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mEmptyBuffers:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return p4
.end method

.method public final getEos()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->inputEos:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/github/toyota32k/media/lib/audio/AudioChannel;->getHasData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setActualDecodedFormat(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 3

    const-string v0, "decodedFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodeFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mActualDecodedFormat:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    .line 48
    const-string v1, "mActualDecodedFormat"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    const-string v2, "sample-rate"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mInputSampleRate:I

    .line 49
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_8

    .line 52
    iget-object p1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mActualDecodedFormat:Landroid/media/MediaFormat;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    const-string p1, "channel-count"

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mInputChannelCount:I

    .line 53
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mOutputChannelCount:I

    .line 54
    iget p2, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mInputChannelCount:I

    const-string v0, ") not supported."

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    if-ne p2, v1, :cond_2

    goto :goto_1

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Input channel count ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mInputChannelCount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_4

    goto :goto_2

    .line 58
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Output channel count ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mOutputChannelCount:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    if-le p2, p1, :cond_6

    .line 61
    sget-object p1, Lio/github/toyota32k/media/lib/audio/AudioChannel;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string p2, "down mix"

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 62
    sget-object p1, Lio/github/toyota32k/media/lib/audio/AudioRemixer;->Companion:Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;->getDOWNMIX()Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    move-result-object p1

    goto :goto_3

    :cond_6
    if-ge p2, p1, :cond_7

    .line 64
    sget-object p1, Lio/github/toyota32k/media/lib/audio/AudioChannel;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string p2, "up mix"

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 65
    sget-object p1, Lio/github/toyota32k/media/lib/audio/AudioRemixer;->Companion:Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;->getUPMIX()Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    move-result-object p1

    goto :goto_3

    .line 67
    :cond_7
    sget-object p1, Lio/github/toyota32k/media/lib/audio/AudioChannel;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string p2, "pass through"

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 68
    sget-object p1, Lio/github/toyota32k/media/lib/audio/AudioRemixer;->Companion:Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/audio/AudioRemixer$Companion;->getPASSTHROUGH()Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    move-result-object p1

    .line 60
    :goto_3
    iput-object p1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mRemixer:Lio/github/toyota32k/media/lib/audio/AudioRemixer;

    .line 70
    iget-object p1, p0, Lio/github/toyota32k/media/lib/audio/AudioChannel;->mOverflowBuffer:Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lio/github/toyota32k/media/lib/audio/AudioChannel$AudioBuffer;->setPresentationTimeUs(J)V

    return-void

    .line 50
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Audio sample rate conversion not supported yet."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
