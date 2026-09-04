.class public final Landroidx/media3/inspector/FrameExtractor$Builder;
.super Ljava/lang/Object;
.source "FrameExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/inspector/FrameExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private extractHdrFrames:Z

.field private glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

.field private mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private seekParameters:Landroidx/media3/exoplayer/SeekParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/common/MediaItem;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->context:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 97
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->effects:Ljava/util/List;

    .line 98
    sget-object p1, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 102
    sget-object p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->PREFER_SOFTWARE:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->extractHdrFrames:Z

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/inspector/FrameExtractor$Builder;)Landroid/content/Context;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/inspector/FrameExtractor$Builder;)Landroidx/media3/common/MediaItem;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/inspector/FrameExtractor$Builder;)Ljava/util/List;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->effects:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/inspector/FrameExtractor$Builder;)Landroidx/media3/exoplayer/SeekParameters;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/inspector/FrameExtractor$Builder;)Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/media3/inspector/FrameExtractor$Builder;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->extractHdrFrames:Z

    return p0
.end method

.method static synthetic access$700(Landroidx/media3/inspector/FrameExtractor$Builder;)Landroidx/media3/common/GlObjectsProvider;
    .locals 0

    .line 79
    iget-object p0, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/inspector/FrameExtractor;
    .locals 2

    .line 184
    new-instance v0, Landroidx/media3/inspector/FrameExtractor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/inspector/FrameExtractor;-><init>(Landroidx/media3/inspector/FrameExtractor$Builder;Landroidx/media3/inspector/FrameExtractor$1;)V

    return-object v0
.end method

.method public setEffects(Ljava/util/List;)Landroidx/media3/inspector/FrameExtractor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)",
            "Landroidx/media3/inspector/FrameExtractor$Builder;"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->effects:Ljava/util/List;

    return-object p0
.end method

.method public setExtractHdrFrames(Z)Landroidx/media3/inspector/FrameExtractor$Builder;
    .locals 0

    .line 164
    iput-boolean p1, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->extractHdrFrames:Z

    return-object p0
.end method

.method public setGlObjectsProvider(Landroidx/media3/common/GlObjectsProvider;)Landroidx/media3/inspector/FrameExtractor$Builder;
    .locals 0

    .line 178
    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->glObjectsProvider:Landroidx/media3/common/GlObjectsProvider;

    return-object p0
.end method

.method public setMediaCodecSelector(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)Landroidx/media3/inspector/FrameExtractor$Builder;
    .locals 0

    .line 140
    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    return-object p0
.end method

.method public setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)Landroidx/media3/inspector/FrameExtractor$Builder;
    .locals 0

    .line 127
    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractor$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    return-object p0
.end method
