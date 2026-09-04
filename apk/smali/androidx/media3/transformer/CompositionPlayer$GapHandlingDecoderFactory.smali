.class final Landroidx/media3/transformer/CompositionPlayer$GapHandlingDecoderFactory;
.super Ljava/lang/Object;
.source "CompositionPlayer.java"

# interfaces
.implements Landroidx/media3/exoplayer/image/ImageDecoder$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/CompositionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GapHandlingDecoderFactory"
.end annotation


# static fields
.field private static final BLANK_FRAMES_MEDIA_SOURCE_TYPE:Ljava/lang/String; = "composition_player_blank_frames"

.field private static final BLANK_IMAGE_BITMAP_HEIGHT:I = 0x1

.field private static final BLANK_IMAGE_BITMAP_WIDTH:I = 0x1


# instance fields
.field private format:Landroidx/media3/common/Format;

.field private final imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;)V
    .locals 0

    .line 2107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2108
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$GapHandlingDecoderFactory;->imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    return-void
.end method

.method static synthetic lambda$createImageDecoder$0(Landroidx/media3/exoplayer/image/ExternallyLoadedImageDecoder$ExternalImageRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    const/4 p0, 0x1

    .line 2129
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2130
    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2129
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createImageDecoder()Landroidx/media3/exoplayer/image/ImageDecoder;
    .locals 2

    .line 2124
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$GapHandlingDecoderFactory;->format:Landroidx/media3/common/Format;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$GapHandlingDecoderFactory;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "composition_player_blank_frames"

    .line 2126
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2127
    new-instance v0, Landroidx/media3/exoplayer/image/ExternallyLoadedImageDecoder$Factory;

    new-instance v1, Landroidx/media3/transformer/CompositionPlayer$GapHandlingDecoderFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/media3/transformer/CompositionPlayer$GapHandlingDecoderFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/image/ExternallyLoadedImageDecoder$Factory;-><init>(Landroidx/media3/exoplayer/image/ExternallyLoadedImageDecoder$BitmapResolver;)V

    .line 2134
    invoke-virtual {v0}, Landroidx/media3/exoplayer/image/ExternallyLoadedImageDecoder$Factory;->createImageDecoder()Landroidx/media3/exoplayer/image/ExternallyLoadedImageDecoder;

    move-result-object v0

    return-object v0

    .line 2136
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$GapHandlingDecoderFactory;->imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    invoke-interface {v0}, Landroidx/media3/exoplayer/image/ImageDecoder$Factory;->createImageDecoder()Landroidx/media3/exoplayer/image/ImageDecoder;

    move-result-object v0

    return-object v0
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)I
    .locals 2

    .line 2114
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$GapHandlingDecoderFactory;->format:Landroidx/media3/common/Format;

    .line 2115
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "composition_player_blank_frames"

    .line 2116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    .line 2117
    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    .line 2119
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$GapHandlingDecoderFactory;->imageDecoderFactory:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/image/ImageDecoder$Factory;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result p1

    return p1
.end method
