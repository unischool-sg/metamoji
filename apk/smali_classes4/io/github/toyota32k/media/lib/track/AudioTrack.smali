.class public final Lio/github/toyota32k/media/lib/track/AudioTrack;
.super Lio/github/toyota32k/media/lib/track/Track;
.source "AudioTrack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/media/lib/track/AudioTrack$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioTrack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioTrack.kt\nio/github/toyota32k/media/lib/track/AudioTrack\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,32:1\n1#2:33\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\'\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/track/AudioTrack;",
        "Lio/github/toyota32k/media/lib/track/Track;",
        "extractor",
        "Lio/github/toyota32k/media/lib/extractor/Extractor;",
        "inputFormat",
        "Landroid/media/MediaFormat;",
        "strategy",
        "Lio/github/toyota32k/media/lib/format/IAudioStrategy;",
        "trackIdx",
        "",
        "(Lio/github/toyota32k/media/lib/extractor/Extractor;Landroid/media/MediaFormat;Lio/github/toyota32k/media/lib/format/IAudioStrategy;I)V",
        "decoder",
        "Lio/github/toyota32k/media/lib/codec/AudioDecoder;",
        "getDecoder",
        "()Lio/github/toyota32k/media/lib/codec/AudioDecoder;",
        "encoder",
        "Lio/github/toyota32k/media/lib/codec/AudioEncoder;",
        "getEncoder",
        "()Lio/github/toyota32k/media/lib/codec/AudioEncoder;",
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
.field public static final Companion:Lio/github/toyota32k/media/lib/track/AudioTrack$Companion;


# instance fields
.field private final decoder:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

.field private final encoder:Lio/github/toyota32k/media/lib/codec/AudioEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/toyota32k/media/lib/track/AudioTrack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/media/lib/track/AudioTrack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/media/lib/track/AudioTrack;->Companion:Lio/github/toyota32k/media/lib/track/AudioTrack$Companion;

    return-void
.end method

.method private constructor <init>(Lio/github/toyota32k/media/lib/extractor/Extractor;Landroid/media/MediaFormat;Lio/github/toyota32k/media/lib/format/IAudioStrategy;I)V
    .locals 7

    .line 15
    sget-object v0, Lio/github/toyota32k/media/lib/format/DefaultAudioStrategy;->INSTANCE:Lio/github/toyota32k/media/lib/format/DefaultAudioStrategy;

    invoke-virtual {v0, p2, p3}, Lio/github/toyota32k/media/lib/format/DefaultAudioStrategy;->createAudioFormat(Landroid/media/MediaFormat;Lio/github/toyota32k/media/lib/format/IAudioStrategy;)Landroid/media/MediaFormat;

    move-result-object v4

    sget-object v6, Lio/github/toyota32k/media/lib/track/Muxer$SampleType;->Audio:Lio/github/toyota32k/media/lib/track/Muxer$SampleType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lio/github/toyota32k/media/lib/track/Track;-><init>(Lio/github/toyota32k/media/lib/extractor/Extractor;Landroid/media/MediaFormat;Landroid/media/MediaFormat;ILio/github/toyota32k/media/lib/track/Muxer$SampleType;)V

    .line 16
    new-instance p1, Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-direct {p1, v3}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;-><init>(Landroid/media/MediaFormat;)V

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->start()V

    iput-object p1, v1, Lio/github/toyota32k/media/lib/track/AudioTrack;->decoder:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    .line 17
    new-instance p1, Lio/github/toyota32k/media/lib/codec/AudioEncoder;

    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/AudioTrack;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/github/toyota32k/media/lib/codec/AudioEncoder;-><init>(Landroid/media/MediaFormat;)V

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/codec/AudioEncoder;->start()V

    iput-object p1, v1, Lio/github/toyota32k/media/lib/track/AudioTrack;->encoder:Lio/github/toyota32k/media/lib/codec/AudioEncoder;

    return-void
.end method

.method public synthetic constructor <init>(Lio/github/toyota32k/media/lib/extractor/Extractor;Landroid/media/MediaFormat;Lio/github/toyota32k/media/lib/format/IAudioStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/github/toyota32k/media/lib/track/AudioTrack;-><init>(Lio/github/toyota32k/media/lib/extractor/Extractor;Landroid/media/MediaFormat;Lio/github/toyota32k/media/lib/format/IAudioStrategy;I)V

    return-void
.end method


# virtual methods
.method public getDecoder()Lio/github/toyota32k/media/lib/codec/AudioDecoder;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/AudioTrack;->decoder:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    return-object v0
.end method

.method public bridge synthetic getDecoder()Lio/github/toyota32k/media/lib/codec/BaseDecoder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/AudioTrack;->getDecoder()Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    move-result-object v0

    check-cast v0, Lio/github/toyota32k/media/lib/codec/BaseDecoder;

    return-object v0
.end method

.method public getEncoder()Lio/github/toyota32k/media/lib/codec/AudioEncoder;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/github/toyota32k/media/lib/track/AudioTrack;->encoder:Lio/github/toyota32k/media/lib/codec/AudioEncoder;

    return-object v0
.end method

.method public bridge synthetic getEncoder()Lio/github/toyota32k/media/lib/codec/BaseEncoder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/track/AudioTrack;->getEncoder()Lio/github/toyota32k/media/lib/codec/AudioEncoder;

    move-result-object v0

    check-cast v0, Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    return-object v0
.end method
