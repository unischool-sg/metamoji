.class public final Landroidx/media3/transformer/DefaultDecoderFactory$Builder;
.super Ljava/lang/Object;
.source "DefaultDecoderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/DefaultDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private codecPriority:I

.field private final context:Landroid/content/Context;

.field private dynamicSchedulingEnabled:Z

.field private enableDecoderFallback:Z

.field private listener:Landroidx/media3/transformer/DefaultDecoderFactory$Listener;

.field private mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

.field private shouldConfigureOperatingRate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->context:Landroid/content/Context;

    .line 87
    new-instance p1, Landroidx/media3/transformer/DefaultDecoderFactory$Builder$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroidx/media3/transformer/DefaultDecoderFactory$Builder$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->listener:Landroidx/media3/transformer/DefaultDecoderFactory$Listener;

    const/16 p1, -0x7d0

    .line 88
    iput p1, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->codecPriority:I

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->shouldConfigureOperatingRate:Z

    .line 90
    sget-object p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iput-object p1, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/transformer/DefaultDecoderFactory$Builder;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/transformer/DefaultDecoderFactory$Builder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->enableDecoderFallback:Z

    return p0
.end method

.method static synthetic access$300(Landroidx/media3/transformer/DefaultDecoderFactory$Builder;)Landroidx/media3/transformer/DefaultDecoderFactory$Listener;
    .locals 0

    .line 75
    iget-object p0, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->listener:Landroidx/media3/transformer/DefaultDecoderFactory$Listener;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/transformer/DefaultDecoderFactory$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->codecPriority:I

    return p0
.end method

.method static synthetic access$500(Landroidx/media3/transformer/DefaultDecoderFactory$Builder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->shouldConfigureOperatingRate:Z

    return p0
.end method

.method static synthetic access$600(Landroidx/media3/transformer/DefaultDecoderFactory$Builder;)Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;
    .locals 0

    .line 75
    iget-object p0, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/media3/transformer/DefaultDecoderFactory$Builder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->dynamicSchedulingEnabled:Z

    return p0
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/transformer/DefaultDecoderFactory;
    .locals 2

    .line 194
    new-instance v0, Landroidx/media3/transformer/DefaultDecoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/transformer/DefaultDecoderFactory;-><init>(Landroidx/media3/transformer/DefaultDecoderFactory$Builder;Landroidx/media3/transformer/DefaultDecoderFactory$1;)V

    return-object v0
.end method

.method public experimentalSetDynamicSchedulingEnabled(Z)Landroidx/media3/transformer/DefaultDecoderFactory$Builder;
    .locals 0

    .line 188
    iput-boolean p1, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->dynamicSchedulingEnabled:Z

    return-object p0
.end method

.method public setCodecPriority(I)Landroidx/media3/transformer/DefaultDecoderFactory$Builder;
    .locals 0

    .line 134
    iput p1, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->codecPriority:I

    return-object p0
.end method

.method public setEnableDecoderFallback(Z)Landroidx/media3/transformer/DefaultDecoderFactory$Builder;
    .locals 0

    .line 111
    iput-boolean p1, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->enableDecoderFallback:Z

    return-object p0
.end method

.method public setListener(Landroidx/media3/transformer/DefaultDecoderFactory$Listener;)Landroidx/media3/transformer/DefaultDecoderFactory$Builder;
    .locals 0

    .line 96
    iput-object p1, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->listener:Landroidx/media3/transformer/DefaultDecoderFactory$Listener;

    return-object p0
.end method

.method public setMediaCodecSelector(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)Landroidx/media3/transformer/DefaultDecoderFactory$Builder;
    .locals 0

    .line 166
    iput-object p1, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    return-object p0
.end method

.method public setShouldConfigureOperatingRate(Z)Landroidx/media3/transformer/DefaultDecoderFactory$Builder;
    .locals 0

    .line 155
    iput-boolean p1, p0, Landroidx/media3/transformer/DefaultDecoderFactory$Builder;->shouldConfigureOperatingRate:Z

    return-object p0
.end method
